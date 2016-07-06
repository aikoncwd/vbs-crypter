Randomize
Set oARG=WScript.Arguments
Set oFSO=CreateObject("Scripting.FileSystemObject")
If oARG.Count=0 Then WScript.Quit
For Each File In oARG
	Set s=oFSO.OpenTextFile(File,1)
	Set o=oFSO.CreateTextFile(File& "_.vbs",True)
	o.WriteLine "Execute("& r(s.readall)& ")"
Next
Function r(x)
	for i=1 To Len(x)
		e=e& "chr("& f(asc(mid(x,i,1)))& ")& "
	next
	r=Left(e,Len(e)-2)
End Function
Function f(n)
	m=int(rnd*99)+1
	If n mod m=0 Then
		t=(n/m)& "*"& m
	Else
		u=int(rnd*3)
		If u=0 Then t=(n+m)& "-"& m
		If u=1 Then t=(n-m)& "+"& m
		If u=2 Then t=(n*m)& "/"& m
	End If
	f=t
End Function
