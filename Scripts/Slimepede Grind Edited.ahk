﻿#SingleInstance Force
#Requires AutoHotkey v2.0

;Timings in miliseconds
movingTimeWithRunning := 8000
questTime := 172000 
loadingTimeQuest := 7000 ;You might need to adjust this if your PC is loading the quest longer than 7 seconds
loadingTimeTown := 10000 ;same with time for loading back into town, but the generous spam time should be okay with it
spamTime := 15000

$F1::{
	loop{
		TeleportToQuestCounter()
		GoToQuestCounterAndGetSlimepedeQuest()
		EmbarkOnQuest()

		;Loading quest
		Sleep loadingTimeQuest

		MoveCharacterToLocationAtStart()

		;wait for quest to end
		startTime := A_TickCount
		Loop {
			MoveCharacterAndShoot()
		} Until (A_TickCount - startTime > questTime)
		ClearKeys()

		;wait for results to show up
		Sleep 15000

		;Spoms LMB to get through menus faster
		startTime := A_TickCount
		Loop {
			FireWeapon()
			Sleep 200
		} Until (A_TickCount - startTime > spamTime)
		ClearKeys()

		;wait for loading and to make sure everything's synced
		Sleep loadingTimeTown
	}
}

TeleportToQuestCounter(){
	SendInput "{r down}"
	Sleep 50
	SendInput "{r up}"
	Sleep 4000
	SendEvent "{LButton Down}"
	Sleep 200
	SendEvent "{LButton up}"
	Sleep 2000
	SendEvent "{LButton Down}"
	Sleep 200
	SendEvent "{LButton up}"
	Sleep 3000
	SendInput "{w down}"
	Sleep 1000
	SendInput "{w up}"
	Sleep 200
}

GoToQuestCounterAndGetSlimepedeQuest(){
	SendInput "{f down}"
	Sleep 200
	SendInput "{f up}"
	Sleep 4000

	SendEvent "{LButton Down}"
	Sleep 50
	SendEvent "{LButton up}"
	Sleep 1500
	SendEvent "{LButton Down}"
	Sleep 50
	SendEvent "{LButton up}"
	Sleep 1500
	SendEvent "{LButton Down}"
	Sleep 50
	SendEvent "{LButton up}"
	Sleep 1500
	SendEvent "{LButton Down}"
	Sleep 50
	SendEvent "{LButton up}"
	Sleep 1500
	SendEvent "{LButton Down}"
	Sleep 50
	SendEvent "{LButton up}"
	Sleep 3000
}

EmbarkOnQuest(){
	SendInput "{3 down}"
	Sleep 50
	SendInput "{3 up}"
	Sleep 3000
	SendEvent "{LButton Down}"
	Sleep 200
	SendEvent "{LButton up}"
}

MoveCharacterToLocationAtStart(){
	SendInput "{LShift down}{w down}"
	Sleep movingTimeWithRunning
	SendInput "{LShift up}{w up}"
}

MoveCharacterAndShoot(){
	SendInput "{w down}"
	Sleep 20
	FireWeapon()
	SendInput "{w up}"
	Sleep 20
	FireWeapon()

	SendInput "{d down}"
	Sleep 20
	FireWeapon()
	SendInput "{d up}"
	Sleep 20
	FireWeapon()

	SendInput "{s down}"
	Sleep 20
	FireWeapon()
	SendInput "{s up}"
	Sleep 20
	FireWeapon()

	SendInput "{a down}"
	Sleep 20
	FireWeapon()
	SendInput "{a up}"
	Sleep 20
	FireWeapon()
}

FireWeapon(){
	SendEvent "{LButton}"
	Sleep 5
	SendEvent "{LButton}"
	Sleep 5
}

ClearKeys(){
	SendInput "{w up}"
	Sleep 5
	SendInput "{a up}"
	Sleep 5
	SendInput "{s up}"
	Sleep 5
	SendInput "{d up}"
	Sleep 5
	SendEvent "{LButton up}"
	Sleep 5
}

$`::{
	ClearKeys()
	exitapp
}
