import io
import re
import base64
import subprocess
from bottle import *

filename_regex = r'^\s*\.TF\s*(?P<filename>.*?),.*?\s*?(?:;.*)?$'
errors_regex = r'^(?P<errors>\d+) Errors? found during assembly\.$'

@get('/')
def root():
    with open('skeleton.asm') as f:
        return template('main.tpl', code=f.read())

@get('/download.js')
def download():
    return static_file('download.js')

@post('/assemble')
def upload():
    m = re.search(filename_regex, request.body.getvalue().decode('utf-8'), re.MULTILINE)
    filename = m.group('filename') if m is not None else None
    if not filename or '/' in filename:
        return {'error': True, 'err_type': 'Invalid filename', 'err_msg': 'The filename "{}" is invalid'.format(filename)}

    with open('temp.asm', 'wb') as f:
        f.write(request.body.getvalue().replace(filename.encode('utf-8'), b'temp.prg'))
    try:
        listing = subprocess.check_output(['sbasm3/sbasm', 'temp.asm'], stderr=subprocess.STDOUT).decode('utf-8').strip()
    except subprocess.CalledProcessError as e:
        listing = e.output.decode('utf-8').strip()
    m = re.search(errors_regex, listing, re.MULTILINE)
    if m is None: print(listing)
    errors = int(m.group('errors'))
    if errors:
        os.remove('temp.asm')
        return {'error': True, 'err_type': 'Assembly error', 'err_msg': '{} error{} found'.format(errors, '' if errors == 1 else 's'), 'listing': listing}

    with open('temp.prg', 'rb') as f:
        prg = f.read()
        os.remove('temp.asm')
        os.remove('temp.prg')
        return {'error': False, 'listing': listing, 'filename': filename, 'file': 'data:application/octet-stream;base64,' + base64.b64encode(prg).decode('ascii')}

application = default_app()

if __name__ == '__main__':
    run(app=application, host='0.0.0.0', port=8080, debug=True, reloader=True)
