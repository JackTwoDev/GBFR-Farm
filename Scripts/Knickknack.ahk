#SingleInstance Force
#Requires AutoHotkey v2.0

;Timings in miliseconds

$F1::{
	loop{
    ;Open Knickknacks
	  SendEvent "{LButton Down}"
	  Sleep 50
	  SendEvent "{LButton up}"
	  Sleep 1500
	  SendEvent "{LButton Down}"
	  Sleep 50
	  SendEvent "{LButton up}"
	  Sleep 1500

    ;Sell Knickknacks
	  SendInput "{Tab Down}"
	  Sleep 50
	  SendEvent "{Tab up}"
	  Sleep 1500
	  SendInput "{3 Down}"
	  Sleep 50
	  SendInput "{3 up}"
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
	  SendInput "{s Down}"
	  Sleep 50
	  SendEvent "{s up}"
	  Sleep 1500
	  SendEvent "{LButton Down}"
	  Sleep 50
	  SendEvent "{LButton up}"
	  Sleep 1500
	  SendEvent "{LButton Down}"
	  Sleep 50
	  SendEvent "{LButton up}"
	  Sleep 1500

    ;Close Knickknack
	  SendEvent "{RButton Down}"
	  Sleep 50
	  SendEvent "{RButton up}"
	  Sleep 1500
	  SendEvent "{RButton Down}"
	  Sleep 50
	  SendEvent "{RButton up}"
	  Sleep 1500
	  SendInput "{s Down}"
	  Sleep 50
	  SendEvent "{s up}"
	  Sleep 1500

    ;Open Transmute
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
	  SendInput "{s Down}"
	  Sleep 50
	  SendEvent "{s up}"
	  Sleep 1500
	  SendEvent "{LButton Down}"
	  Sleep 50
	  SendEvent "{LButton up}"
	  Sleep 1500
	  SendEvent "{LButton Down}"
	  Sleep 50
	  SendEvent "{LButton up}"
	  Sleep 5000
	  SendEvent "{LButton Down}"
	  Sleep 50
	  SendEvent "{LButton up}"
	  Sleep 1500
	  SendEvent "{RButton Down}"
	  Sleep 50
	  SendEvent "{RButton up}"
	  Sleep 1500
	  SendInput "{w Down}"
	  Sleep 50
	  SendInput "{w up}"
	  Sleep 1500
	}
}
$`::{
	ClearKeys()
	exitapp
}
