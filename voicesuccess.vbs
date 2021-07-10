' REM CALLED FROM [cracker.bat BY cscript //B] ARGS [] LINE [25]

Dim speaks, speech, speaks2, speaks3
speaks="HE TERMINADO EL TRABAJO. LA CLAVE FUE ENCONTRADA"
speaks2=".INICIANDO LA SECUENCIA DE SONIDOS HASTA QUE SE RECIBA LA LETRA, 'O'"
speaks3="."
Set speech=CreateObject("sapi.spvoice")
speech.Speak speaks
WScript.Sleep (100)
speech.Speak speaks2
WScript.Sleep (500)
speech.Speak speaks3