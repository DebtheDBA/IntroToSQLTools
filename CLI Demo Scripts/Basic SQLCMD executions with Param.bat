SET lastnamevar=%1

sqlcmd -SLabrador -E -d Superheroes -i "C:\GitRepo\IntroToSQLTools\CLI Demo Scripts\SELECT_with_Variable.sql" -o "C:\GitRepo\IntroToSQLTools\Output Files\BatchVar_Output.txt" -v lastname=%lastnamevar%

