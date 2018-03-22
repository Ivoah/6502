<!doctype html>
<html lang="en">
    <head>
        <title>6502 Assembler</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.35.0/codemirror.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.35.0/codemirror.min.js"></script>

        <script src="http://danml.com/js/download.js"></script>

        <script type="text/javascript">
            window.onload = function() {
                var editor = CodeMirror.fromTextArea(document.getElementById("codemirror"), {
                    lineNumbers: true
                });

                $(".alert .close").on("click", function(e) {
                    $(this).parent().hide();
                });

                $("#assemble").click(function() {
                    $("#error").hide();
                    $.ajax({
                        url: "/assemble",
                        method : "POST",
                        dataType: "json",
                        data: editor.getValue(),
                    }).done(function(data) {
                        $("#listing").text(data["listing"]);
                        if (data["error"]) {
                            $("#err_type").text(data["err_type"])
                            $("#err_msg").text(data["err_msg"]);
                            $("#error").show();
                        } else {
                            download(data["file"], data["filename"], "application/octet-stream");
                        }
                    });
                    return false;
                });
            }
        </script>
        <style>
            html, body {
                margin: 0px;
                height: 100%;
            }

            #container {
                display: flex;
                height: calc(100% - 56px);
            }

            #left {
                width: 50%;
                padding: 10px;
            }

            #right {
                width: 50%;
                padding: 10px;
            }

            .CodeMirror {
                border: 3px solid #ccc;
                border-radius: 5px 5px 0px 0px;
                height: 100%;
                font-size: 10pt;
            }

            #listing {
                margin: 0px;
                background: #f5f5f5;
                border: 3px solid #ccc;
                border-radius: 5px;
                padding: 10px;
                height: 100%;
                overflow: auto;
            }

            .alert {
                margin: 10px;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-light bg-light">
            <span class="navbar-brand mb-0 h1">6502 Assembler</span>
            <a class="btn btn-outline-info mr-auto" href="https://files.ivoah.net/symon.jar">Download Symon</a>
            <button class="btn btn-outline-success" id="assemble">Assemble</button>
        </nav>
        <div class="alert alert-danger" role="alert" id="error" style="display:none;">
            <strong id="err_type"></strong>: <span id="err_msg"></span>
            <button type="button" class="close" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div id="container">
            <div id="left">
                <textarea id="codemirror">{{code}}</textarea>
            </div>
            <div id="right">
                <pre id="listing"></pre>
            </div>
        </div>
    </body>
</html>
