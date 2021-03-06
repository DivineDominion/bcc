' Tests whether exceptions are caught correctly in simple Try-Catch constructs.

SuperStrict
Framework BRL.StandardIO


Print; Print 1
Try
	Print "try"
Catch e:String
	Print "catch " + e
End Try


Print; Print 2
Try
	Print "try"
	Throw "ex"
Catch e:String
	Print "catch " + e
End Try


Print; Print 3
Try
	Try
		Print "try"
		Throw "ex"
	Catch e:String
		Print "catch " + e
	End Try
Catch e:String
	Print "catch2 " + e
End Try


Print; Print 4
Try
	Try
		Print "try"
		Throw "ex"
	Catch e:TStream
		Print "this should not happen"
	End Try
Catch e:String
	Print "catch2 " + e
End Try

