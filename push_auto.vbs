' Lance push.bat sans afficher la moindre fenetre.
' C'est ce fichier que la tache planifiee doit executer, pas push.bat directement.
Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
dossier = fso.GetParentFolderName(WScript.ScriptFullName)
shell.Run """" & dossier & "\push.bat"" auto", 0, False
