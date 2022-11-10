param ($lastname = $arg[0])
	
write-host "My parameter is: $lastname"

invoke-sqlcmd -ServerInstance "Labrador" -Database Superheroes -InputFile "C:\GitRepo\IntroToSQLTools\CLI Demo Scripts\SELECT_with_Variable.sql" -Variable lastname=$lastname | Format-Table | Out-File "C:\GitRepo\IntroToSQLTools\Output Files\PSVar_Output.txt"

