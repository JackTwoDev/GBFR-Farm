#SingleInstance Force
#Requires AutoHotkey v2.0

;Timings in miliseconds
questTime := 1080000
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

		;wait for quest to end
		startTime := A_TickCount
		Loop {
			MoveCharacterAndShoot()
		} Until (A_TickCount - startTime > questTime)
		ClearKeys()

		;wait for results to show up
		Sleep 45000

		;Spoms LMB to get through menus faster
		startTime := A_TickCount
		Loop {
			SpamLeft()
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
	SendInput "{w Down}"
	Sleep 50
	SendInput "{w up}"
	Sleep 1500
	SendInput "{w Down}"
	Sleep 50
	SendInput "{w up}"
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

MoveCharacterAndShoot(){
	SendInput "{w down}"
	Sleep 20
	FireWeapon()
	SendInput "{w up}"
	Sleep 20
	FireWeapon()

  	SendInput "{b down}"
	Sleep 20
	FireWeapon()
	SendInput "{b up}"
	Sleep 20
	FireWeapon()
}

FireWeapon(){
	SendEvent "{RButton}"
	Sleep 5
	SendEvent "{RButton}"
	Sleep 5
}

SpamLeft(){
	SendEvent "{LButton}"
	Sleep 5
	SendEvent "{LButton}"
	Sleep 5
}

ClearKeys(){
	SendInput "{w up}"
	Sleep 5
	SendEvent "{RButton up}"
	Sleep 5
	SendEvent "{LButton up}"
	Sleep 5
	SendInput "{b up}"
	Sleep 5
}

$`::{
	ClearKeys()
	exitapp
}
