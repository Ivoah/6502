import io
import re
import base64
import subprocess
from bottle import *

filename_regex = r'^\s*\.TF\s*(?P<filename>.*?),.*?\s*?(?:;.*)?$'
errors_regex = r'^(?P<errors>\d+) Errors? found during assembly\.$'

@get('/')
def root():
    return template('main.tpl', code=open('skeleton.asm').read())

@post('/assemble')
def upload():
    m = re.search(filename_regex, request.body.getvalue().decode('utf-8'), re.MULTILINE)
    filename = m.group('filename') if m is not None else None
    if not filename or '/' in filename:
        return {'error': True, 'err_type': 'Invalid filename', 'err_msg': f'The filename "{filename}" is invalid'}

    with open('temp.asm', 'wb') as f:
        f.write(request.body.getvalue().replace(filename.encode('utf-8'), b'temp.prg'))
    sbasm = subprocess.run(['sbasm3/sbasm', 'temp.asm'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    listing = sbasm.stdout.decode('utf-8').strip()
    m = re.search(errors_regex, listing, re.MULTILINE)
    if m is None: print(listing)
    errors = int(m.group('errors'))
    if errors:
        return {'error': True, 'err_type': 'Assembly error', 'err_msg': f'{errors} error{"" if errors == 1 else "s"} found', 'listing': listing}

    with open('temp.prg', 'rb') as f:
        return {'error': False, 'listing': listing, 'filename': filename, 'file': 'data:application/octet-stream;base64,' + base64.b64encode(f.read()).decode('ascii')}

run()
