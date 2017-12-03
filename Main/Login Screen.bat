:: Start withh basic Titleing and batch settings
@Echo OFF
Title Batch Chat 2.0
mode con: cols=70 lines=10

:Session:
Echo.
Echo Have a session to return to?
ECho.
Set /p opt1=">>> "
If %opt1%==No goto First
set /p Remvar=<"C:\Users\SnGRa\Desktop\Project Old School\Data\SessionNumber.txt"

echo Loading Session # %Remvar% ...
Ping 1.1.1.1 -n 1 -w 600 >NUL
If %Remvar%==1 goto AdminChat
goto First
:First:
cls
Echo Welcome to The Batch Chat System 2.0!
PING 1.1.1.1 -n 1 -w 600 >NUL
Echo.
Echo.
Echo.
set /a adminpsw=0
set /p User= User Name: 
set /p Psw=  Password: 

:: Security checks (If/And statements really)
If Not %User%==Admin goto SecureMe
If %User%==Admin goto Secure1
goto Error

:Secure1:
If Not %Psw%==admin goto SecurityErr
Echo Security Check: OK!
Set /a adminpsw=%adminpsw%+2

PING 1.1.1.1 -n 1 -w 1000 >NUL
If %Psw%==admin goto Secured
goto Error

:SecureMe:
Echo Security Level is %adminpsw%
Echo.
echo Enter '1' to continue or '0' to cancle.
Echo.
Set /p opt=">>> "

if %opt%==0 goto First
if %opt%==1 goto Main
Goto Error

:Secured:
Echo Security Level is %adminpsw%
Echo.
echo Enter '1' to continue or '0' to cancle.
Echo.
Set /p opt=">>> "

if %opt%==0 goto First
if %opt%==1 goto Admin
Pause >NUL
Goto Error

:SecurityErr:
cls
Echo !!!ACCESS DENIED!!!
Echo.
Echo Press any Key to Exit
Pause >Nul
Exit
Goto Error

:Main:
cls
Echo Welcome to The Batch Chat System! Select an Option. Logged in as: %User%
Echo.
Echo.
EchO.
Echo      Main Chat(1)                          Games(Unavailable)
Echo.
Echo Buisness (Unavailable)                    Random(Unavailable)
Echo.
Set /p opt2=">>> "
If %opt2%==1 goto MainChat
goto Error

:MainChat:
mode con: cols=95 lines=30
cls
Title Batch Chat 2.0      User: %User%
Echo Welcome to the Main Chat page!
Echo.
Echo.
Echo.
Type "C:\Users\SnGRa\Desktop\Project Old School\Main\Chats\MainChat.txt"
Echo.
ECho.
ECho Hit 'Enter' to send.
Set /p Text="[%User%]: "
Echo   %Text%>>"C:\Users\SnGRa\Desktop\Project Old School\Main\Chats\MainChat.txt" :[%User%]
Set /a Text=""
goto MainChat
goto Error

:Admin:
cls
Title Batch Chat 2.0      User: %User%
echo Welcome to the Admin Page!
Echo.
Echo.
Echo.
Echo.
Set /p Opt=">>> "
If %Opt%==Chat goto AdminChat
PAUSE


:AdminChat:
mode con: cols=95 lines=30
cls
Echo Welcome To The Admin Chat Board!
Echo Select One! (Type Chat Value and "Clr" to clear Selected Chat. Syntax: Clr1   :: Type "ClrALL" to clear all chats!)
Echo RemSession to remeber session
Echo.
EchO.
Echo      Main Chat(1)                          Games(Unavailable)
Echo.
Echo Buisness (Unavailable)                    Random(Unavailable)
Echo.
Set /p opt2=">>> "
If %opt2%==1 goto AdMainChat
If %opt2%==Clr1 goto clr
If %opt2%==RemSession goto RemSession1
Goto Error

:RemSession1:
Echo What session Do you Wish to Return to On exit?
Set /p Remvar=">>> "
break>C:\Users\SnGRa\Desktop\Project Old School\Data\SessionNumber.txt"
Echo %Remvar%>>"C:\Users\SnGRa\Desktop\Project Old School\Data\SessionNumber.txt"
goto AdminChat

:AdMainChat:

cls
Echo Welcome to the Main Chat page!
Echo.
Echo.
Echo.
Type "C:\Users\SnGRa\Desktop\Project Old School\Main\Chats\MainChat.txt"
Echo.
ECho.
ECho Hit 'Enter' to send.
Set /p Text="[Admin]: "
Echo [Admin]: %Text%>>"C:\Users\SnGRa\Desktop\Project Old School\Main\Chats\MainChat.txt"
goto AdMainChat

:clr:
break>"C:\Users\SnGRa\Desktop\Project Old School\Main\Chats\MainChat.txt"
goto AdMainChat

:Error:
Echo Uh Oh! Something went wrong!
PAUSE
