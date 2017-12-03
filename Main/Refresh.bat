@Echo Off
:Loop:
cls
Type "C:\Users\SnGRa\Desktop\Project Old School\Main\Chats\MainChat.txt"
PING 1.1.1.1 -n 1 -w 100 >NUL
goto Loop