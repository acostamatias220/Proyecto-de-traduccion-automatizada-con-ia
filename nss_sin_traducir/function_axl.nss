//=============================================================================//
.//“V‘‚Ó‚í‚Ó‚í‰_ƒvƒƒZƒX
//=============================================================================//

//---------------------------------------------------------------//
..HevenCloud
//---------------------------------------------------------------//
function HevenCloud($ŽžŠÔ,$‘Ò‚¿)
{
//—h‚ê‚é‰_‚ÌƒvƒƒZƒX
	CreateTextureEX("@‚b/‰_‚P", 501, Center, Middle, "cg/ef/ef_ct_“V‘‰_01.png");
		Move("@‚b/‰_‚P", 0, @140, @-110, null, true);

	CreateTextureEX("@‚b/‰_‚S", 504, Center, Middle, "cg/ef/ef_ct_“V‘‰_04.png");
		Move("@‚b/‰_‚S", 0, @100, @-20, null, true);

	CreateTextureEX("@‚b/‰_‚Q", 503, Center, Middle, "cg/ef/ef_ct_“V‘‰_02.png");
		Move("@‚b/‰_‚Q", 0, @-150, @0, null, true);

	CreateTextureEX("@‚b/‰_‚R", 502, Center, Middle, "cg/ef/ef_ct_“V‘‰_03.png");
		Move("@‚b/‰_‚R", 0, @-150, @-80, null, true);

	Request("@‚b/‰_*", Smoothing);
	Zoom("@‚b/‰_*", 0, 500, 500, null, true);


//ƒvƒƒZƒX‚Ì’è‹`
	CreateProcess("“V‘‰_‚P", 10000, 0, 0, "CloudMove1");
	SetAlias("“V‘‰_‚P","“V‘‰_‚P");
	CreateProcess("“V‘‰_‚Q", 10000, 0, 0, "CloudMove2");
	SetAlias("“V‘‰_‚Q","“V‘‰_‚Q");
	CreateProcess("“V‘‰_‚R", 10000, 0, 0, "CloudMove3");
	SetAlias("“V‘‰_‚R","“V‘‰_‚R");
	CreateProcess("“V‘‰_‚S", 10000, 0, 0, "CloudMove4");
	SetAlias("“V‘‰_‚S","“V‘‰_‚S");

//ƒvƒƒZƒXƒXƒ^[ƒg
	Request("“V‘‰_*", Start);
	Fade("@‚b/‰_*", $ŽžŠÔ, 1000, null, $‘Ò‚¿);
}

//---------------------------------------------------------------//
..HevenCloudEnd
//---------------------------------------------------------------//
function HevenCloudEnd($ŽžŠÔ,$‰_‘Ò‚¿)
{

	if($‰_‘Ò‚¿==false){
		Fade("@‚b/‰_*", $ŽžŠÔ, 0, null, false);

		CreateProcess("“V‘I—¹", 10000, 0, 0, "CloudDelete");
		Request("“V‘I—¹", Start);
		Request("“V‘I—¹", Disused);
		$‰_ŽžŠÔ=$ŽžŠÔ;
	}else{
		Fade("@‚b/‰_*", $ŽžŠÔ, 0, null, true);

		Request("“V‘‰_*", Stop);
		Delete("@‰_*");
		Delete("“V‘‰_*");
	}
}

//---------------------------------------------------------------//
..CloudDelete
//---------------------------------------------------------------//
function CloudDelete()
{
	Wait($‰_ŽžŠÔ);
	Request("@“V‘‰_*", Stop);
	Delete("@‰_*");
	Delete("@“V‘‰_*");
}

//---------------------------------------------------------------//
..CloudMove1
//---------------------------------------------------------------//
function CloudMove1()
{
		Move("@‚b/‰_‚P", 4000, @-25, @0, AxlDxl, true);

	while(1)
	{
		Move("@‚b/‰_‚P", 4000, @50, @0, AxlDxl, true);
		Wait(200);
		Move("@‚b/‰_‚P", 4000, @-50, @0, AxlDxl, true);
		Wait(200);
	}

}

//---------------------------------------------------------------//
..CloudMove2
//---------------------------------------------------------------//
function CloudMove2()
{
		Move("@‚b/‰_‚Q", 4200, @25, @0, AxlDxl, true);

	while(1)
	{
		Move("@‚b/‰_‚Q", 4200, @-50, @0, AxlDxl, true);
		Wait(200);
		Move("@‚b/‰_‚Q", 4200, @50, @0, AxlDxl, true);
		Wait(200);
	}

}

//---------------------------------------------------------------//
..CloudMove3
//---------------------------------------------------------------//
function CloudMove3()
{
		Move("@‚b/‰_‚R", 6000, @25, @0, AxlDxl, true);

	while(1)
	{
		Move("@‚b/‰_‚R", 6000, @-50, @0, AxlDxl, true);
		Wait(200);
		Move("@‚b/‰_‚R", 6000, @50, @0, AxlDxl, true);
		Wait(200);
	}

}

//---------------------------------------------------------------//
..CloudMove4
//---------------------------------------------------------------//
function CloudMove4()
{
		Move("@‚b/‰_‚S", 5000, @-25, @0, AxlDxl, true);

	while(1)
	{
		Move("@‚b/‰_‚S", 5000, @50, @0, AxlDxl, true);
		Wait(200);
		Move("@‚b/‰_‚S", 5000, @-50, @0, AxlDxl, true);
		Wait(200);
	}

}

//=============================================================================//
.//“V‘‚Ó‚í‚Ó‚í‰_ƒvƒƒZƒX‚QLock
//=============================================================================//

//---------------------------------------------------------------//
..HevenLockCloud
//---------------------------------------------------------------//
function HevenLockCloud()
{
//—h‚ê‚é‰_‚ÌƒvƒƒZƒX
	CreateTextureEX("“Ü‚P", 1790, Center, Middle, "cg/ef/ef_ct_“V‘‰_01.png");
		Move("“Ü‚P", 0, @250, @-70, null, true);

	CreateTextureEX("“Ü‚S", 2000, Center, Middle, "cg/ef/ef_ct_“V‘‰_04.png");
		Move("“Ü‚S", 0, @100, @-260, null, true);

	CreateTextureEX("“Ü‚Q", 1900, Center, Middle, "cg/ef/ef_ct_“V‘‰_02.png");
		Move("“Ü‚Q", 0, @-300, @0, null, true);

	CreateTextureEX("“Ü‚R", 1800, Center, Middle, "cg/ef/ef_ct_“V‘‰_03.png");
		Move("“Ü‚R", 0, @-200, @-180, null, true);

	Request("@“Ü*", Smoothing);
	Request("@“Ü*", Lock);

//ƒvƒƒZƒX‚Ì’è‹`
	CreateProcess("“V‘“Ü‚P", 10000, 0, 0, "CloudLockMove1");
	SetAlias("“V‘“Ü‚P","“V‘“Ü‚P");
	CreateProcess("“V‘“Ü‚Q", 10000, 0, 0, "CloudLockMove2");
	SetAlias("“V‘“Ü‚Q","“V‘“Ü‚Q");
	CreateProcess("“V‘“Ü‚R", 10000, 0, 0, "CloudLockMove3");
	SetAlias("“V‘“Ü‚R","“V‘“Ü‚R");
	CreateProcess("“V‘“Ü‚S", 10000, 0, 0, "CloudLockMove4");
	SetAlias("“V‘“Ü‚S","“V‘“Ü‚S");

	Request("@“V‘“Ü*", Lock);

}

function HevenLock_start($ŽžŠÔ,$‘Ò‚¿){

//ƒvƒƒZƒXƒXƒ^[ƒg
	Request("@“V‘“Ü*", Start);

	Fade("@“Ü*", $ŽžŠÔ, 1000, null, $‘Ò‚¿);

}

//---------------------------------------------------------------//
..HevenLockCloudEnd
//---------------------------------------------------------------//
function HevenLockCloudEnd($ŽžŠÔ,$“Ü‘Ò‚¿)
{

	if($“Ü‘Ò‚¿==false){
		Fade("“Ü*", $ŽžŠÔ, 0, null, false);

		CreateProcess("“V‘I—¹", 10000, 0, 0, "CloudDelete");
		Request("“V‘I—¹", Start);
		Request("“V‘I—¹", Disused);
		$“ÜŽžŠÔ=$ŽžŠÔ;
	}else{
		Fade("“Ü*", $ŽžŠÔ, 0, null, true);
		Request("@“V‘“Ü*", UnLock);
		Request("“V‘“Ü*", UnLock);
		Request("“V‘“Ü*", Stop);
		Request("@“Ü*", UnLock);
		Delete("@“Ü*");
		Delete("@“V‘“Ü*");
	}
}

//---------------------------------------------------------------//
..CloudLockDelete
//---------------------------------------------------------------//
function CloudLockDelete()
{
	Wait($“ÜŽžŠÔ);
	Request("@“V‘“Ü*", UnLock);
		Request("“V‘“Ü*", UnLock);
	Request("@“V‘“Ü*", Stop);
	Request("@“Ü*", UnLock);
	Delete("@“Ü*");
	Delete("@“V‘“Ü*");
}

//---------------------------------------------------------------//
..CloudLockMove1
//---------------------------------------------------------------//
function CloudLockMove1()
{
		Move("@“Ü‚P", 4000, @-25, @0, AxlDxl, true);

	while(1)
	{
		Move("@“Ü‚P", 4000, @50, @0, AxlDxl, true);
		Wait(200);
		Move("@“Ü‚P", 4000, @-50, @0, AxlDxl, true);
		Wait(200);
	}

}

//---------------------------------------------------------------//
..CloudLockMove2
//---------------------------------------------------------------//
function CloudLockMove2()
{
		Move("@“Ü‚Q", 4200, @25, @0, AxlDxl, true);

	while(1)
	{
		Move("@“Ü‚Q", 4200, @-50, @0, AxlDxl, true);
		Wait(200);
		Move("@“Ü‚Q", 4200, @50, @0, AxlDxl, true);
		Wait(200);
	}

}

//---------------------------------------------------------------//
..CloudLockMove3
//---------------------------------------------------------------//
function CloudLockMove3()
{
		Move("@“Ü‚R", 6000, @25, @0, AxlDxl, true);

	while(1)
	{
		Move("@“Ü‚R", 6000, @-50, @0, AxlDxl, true);
		Wait(200);
		Move("@“Ü‚R", 6000, @50, @0, AxlDxl, true);
		Wait(200);
	}

}

//---------------------------------------------------------------//
..CloudLockMove4
//---------------------------------------------------------------//
function CloudLockMove4()
{
		Move("@“Ü‚S", 5000, @-25, @0, AxlDxl, true);

	while(1)
	{
		Move("@“Ü‚S", 5000, @50, @0, AxlDxl, true);
		Wait(200);
		Move("@“Ü‚S", 5000, @-50, @0, AxlDxl, true);
		Wait(200);
	}

}

//=============================================================================//
.//“V‘‰_ˆø‚«Œp‚¬—p
//=============================================================================//
//---------------------------------------------------------------//
..HevenCloudWindow00
//---------------------------------------------------------------//
function HevenCloudWindow00($ŽžŠÔ,$‘Ò‚¿)
{
//—h‚ê‚é‰_‚ÌƒvƒƒZƒX
	CreateTexture("@windowC/‰_‚P", 1790, Center, Middle, "cg/ef/ef_ct_“V‘‰_01.png");
	CreateTexture("@windowC/‰_‚Q", 1810, Center, Middle, "cg/ef/ef_ct_“V‘‰_02.png");
	CreateTexture("@windowC/‰_‚R", 1820, Center, Middle, "cg/ef/ef_ct_“V‘‰_03.png");
	CreateTexture("@windowC/‰_‚S", 1830, Center, Middle, "cg/ef/ef_ct_“V‘‰_04.png");

	Fade("@windowC/‰_‚P", 0, 0, null, false);
	Fade("@windowC/‰_‚Q", 0, 0, null, false);
	Fade("@windowC/‰_‚R", 0, 0, null, false);
	Fade("@windowC/‰_‚S", 0, 0, null, true);

	SetAlias("@windowC/‰_‚P","‰_‚P");
	SetAlias("@windowC/‰_‚Q","‰_‚Q");
	SetAlias("@windowC/‰_‚R","‰_‚R");
	SetAlias("@windowC/‰_‚S","‰_‚S");

	Move("@‰_‚P", 0, @250, @-70, null, true);
	Move("@‰_‚Q", 0, @-300, @0, null, true);
	Move("@‰_‚R", 0, @-200, @-180, null, true);
	Move("@‰_‚S", 0, @100, @-260, null, true);

	Request("@‰_*", Smoothing);
	Request("@‰_*", Lock);

//ƒvƒƒZƒX‚Ì’è‹`
	CreateProcess("@windowC/“V‘‰_‚P", 10000, 0, 0, "CloudMoveWindow1");
	SetAlias("@windowC/“V‘‰_‚P","“V‘‰_‚P");
	CreateProcess("@windowC/“V‘‰_‚Q", 10000, 0, 0, "CloudMoveWindow2");
	SetAlias("@windowC/“V‘‰_‚Q","“V‘‰_‚Q");
	CreateProcess("@windowC/“V‘‰_‚R", 10000, 0, 0, "CloudMoveWindow3");
	SetAlias("@windowC/“V‘‰_‚R","“V‘‰_‚R");
	CreateProcess("@windowC/“V‘‰_‚S", 10000, 0, 0, "CloudMoveWindow4");
	SetAlias("@windowC/“V‘‰_‚S","“V‘‰_‚S");


	Request("@“V‘‰_*", Lock);

//ƒvƒƒZƒXƒXƒ^[ƒg
	Request("@“V‘‰_*", Start);
	Fade("@‰_*", $ŽžŠÔ, 1000, null, $‘Ò‚¿);
}

//---------------------------------------------------------------//
..HevenCloudWindowEnd
//---------------------------------------------------------------//
function HevenCloudWindowEnd($ŽžŠÔ,$‰_‘Ò‚¿)
{

	if($‰_‘Ò‚¿==false){
		Fade("@‰_*", $ŽžŠÔ, 0, null, false);

		CreateProcess("“V‘I—¹", 10000, 0, 0, "CloudWindowDelete");
		Request("“V‘I—¹", Start);
		Request("“V‘I—¹", Disused);
		$‰_ŽžŠÔ=$ŽžŠÔ;
	}else{
		Fade("@‰_*", $ŽžŠÔ, 0, null, true);
		Request("@‰_*", UnLock);
		Request("@“V‘‰_*", Stop);
		Delete("@‰_*");
		Request("@“V‘‰_*", UnLock);
		Delete("@“V‘‰_*");
	}
}

//---------------------------------------------------------------//
..CloudWindowDelete
//---------------------------------------------------------------//
function CloudWindowDelete()
{
	Wait($‰_ŽžŠÔ);
	Request("@“V‘‰_*", Stop);
	Request("@‰_*", UnLock);
	Delete("@‰_*");
	Request("@“V‘‰_*", UnLock);
	Delete("@“V‘‰_*");
}

//---------------------------------------------------------------//
..CloudMoveWindow1
//---------------------------------------------------------------//
function CloudMoveWindow1()
{
		Move("@‰_‚P", 4000, @-25, @0, AxlDxl, true);

	while(1)
	{
		Move("@‰_‚P", 4000, @50, @0, AxlDxl, true);
		Wait(200);
		Move("@‰_‚P", 4000, @-50, @0, AxlDxl, true);
		Wait(200);
	}

}

//---------------------------------------------------------------//
..CloudMoveWindow2
//---------------------------------------------------------------//
function CloudMoveWindow2()
{
		Move("@‰_‚Q", 4200, @25, @0, AxlDxl, true);

	while(1)
	{
		Move("@‰_‚Q", 4200, @-50, @0, AxlDxl, true);
		Wait(200);
		Move("@‰_‚Q", 4200, @50, @0, AxlDxl, true);
		Wait(200);
	}

}

//---------------------------------------------------------------//
..CloudMoveWindow3
//---------------------------------------------------------------//
function CloudMoveWindow3()
{
		Move("@‰_‚R", 6000, @25, @0, AxlDxl, true);

	while(1)
	{
		Move("@‰_‚R", 6000, @-50, @0, AxlDxl, true);
		Wait(200);
		Move("@‰_‚R", 6000, @50, @0, AxlDxl, true);
		Wait(200);
	}

}

//---------------------------------------------------------------//
..CloudMoveWindow4
//---------------------------------------------------------------//
function CloudMoveWindow4()
{
		Move("@‰_‚S", 5000, @-25, @0, AxlDxl, true);

	while(1)
	{
		Move("@‰_‚S", 5000, @50, @0, AxlDxl, true);
		Wait(200);
		Move("@‰_‚S", 5000, @-50, @0, AxlDxl, true);
		Wait(200);
	}

}

//=============================================================================//
.//ƒeƒLƒXƒgŠÖŒW
//=============================================================================//
//---------------------------------------------------------------//
..TextBoxDelete
//---------------------------------------------------------------//
function TextBoxDelete($BoxDeleteTime)
{
	Fade("@boxH*",$BoxDeleteTime,0,null,true);
	Fade("@boxM*",$BoxDeleteTime,0,null,true);
}

//=============================================================================//
.//•\Ž¦ŠÖŒW
//=============================================================================//
//---------------------------------------------------------------//
..YSetTest
//---------------------------------------------------------------//
function YSetTest()
{
//‚r‚f‚Å‚Ì—§‚¿ŠGƒ_ƒ~[‚ÌˆÊ’u’²®ƒ}ƒNƒ
	Move($nut, 0, @0, @+96, null, true);
}

//---------------------------------------------------------------//
..SetTextMyƒ[ƒ‹ƒeƒLƒXƒg•\Ž¦—pz
//---------------------------------------------------------------//
//’ÊíƒEƒBƒ“ƒhƒE—p
function SetTextM()
{
	//LockVideo(true);
	SetFont("‚l‚rƒSƒVƒbƒN", 28, #FFFFFF, #222222, 500, AROUND);
	SetVertex("$SYSTEM_present_text", 0, 0);

	$LoadTextWsize = 756;
	LoadText("$\•¶–¼","$SYSTEM_present_preprocess","$SYSTEM_present_text",$LoadTextWsize,150,0,40);
	//LoadText("$\•¶–¼","$SYSTEM_present_preprocess","$SYSTEM_present_text",676,150,0,40);

	$CenterTxtSetPoi = (ImageHorizon("$SYSTEM_present_text")/2*-1)+512;
	$MiddleTxtSetPoi = (ImageVertical("$SYSTEM_present_text")/2*-1)+288;
	Move("$SYSTEM_present_text", 0, $CenterTxtSetPoi, $MiddleTxtSetPoi, null, true);


	Request("$SYSTEM_present_text", Lock);
//	Request("$SYSTEM_present_text", Erase);
	Request("$SYSTEM_present_text", Hideable);

	//LockVideo(false);

}

//---------------------------------------------------------------//
..TypeBeginMyƒ[ƒ‹ƒeƒLƒXƒg•\Ž¦—p¦ƒeƒXƒg—pz
//---------------------------------------------------------------//
function TypeBeginM2()
{

	$SYSTEM_position_x_text_icon = 910;
	$SYSTEM_position_y_text_icon = 536;

	$BoxFadeTime=150;

	$boxtype = $SYSTEM_present_preprocess;
	$textnumber = $SYSTEM_present_text;

	if($FwH_text_Window==true){
		if($FwH_text_Window_begin==true){
			$FwH_text_Window_begin=false;
//‰ñ‘z—p‰Šú‰»ƒtƒ‰ƒO
			$‰ñ‘z="";
//‰ñ‘z—pƒtƒF[ƒh
			Fade("@Face_Sepia", 0, 300, null, false);
			FadeFwH($BoxFadeTime,false);
			Fade("@boxH",$BoxFadeTime,0,null,false);
		}
		Fade("@boxTH",$BoxFadeTime,1000,null,true);
	}else{
		Fade("@boxTH",$BoxFadeTime,0,null,false);
		Fade("@boxH",$BoxFadeTime,1000,null,true);
	}

	if(!$PLACE_end){
		$SYSTEM_text_auto_lock=false;
	}

	Request($textnumber, Enter);

	WaitText($textnumber, null);

	Request($textnumber, UnLock);
	Request($textnumber, Disused);
	Fade($textnumber, 0, 0, null, false);

	if($FwH_text_Window==true){
	DeleteComic();
		Fade("@Face_Sepia", $BoxFadeTime, 0, null, false);
		DeleteFwH($BoxFadeTime,false);
		Fade("@boxTH",$BoxFadeTime,0,null,true);
		Fade("@boxH*",$BoxFadeTime,0,null,true);
		Delete("@Face_Sepia");
	}else{
		Fade("@boxH*",$BoxFadeTime,1000,null,true);
	}

	BoxOut();

}

//=============================================================================//
.//‰‰o“ˆêŒn
//=============================================================================//
//---------------------------------------------------------------//
..EndingReady
//---------------------------------------------------------------//
function EndingReady()
{
	TextBoxDelete(1000);
	Wait(1000);
	SetVolumeEX("SE*", 2000, 0, null);
	PrintGO("ã”wŒi", 20000);
	CreateColorSP("ŠGF•", 50, "#000000");
	FadeDelete("ã”wŒi", 2000, null, true);
	SetVolumeEX("@xbgm*", 6000, 0, null);

	Wait(1000);

	CreateColorEX("ŠGIà", 20000, "#000000");
	Fade("ŠGIà", 2000, 1000, null, true);
	WaitPlay("@bgm*", null);
	Wait(2000);
	Delete("ŠGF•");
}

//---------------------------------------------------------------//
..EndFileBlackOut
//---------------------------------------------------------------//
function EndFileBlackOut(—Dæ“x, ˆ—ŽžŠÔ)
{
	$NutSetName = "ŠGEndFileBlack";
	CreateColorEX($NutSetName, —Dæ“x, "#000000");

	SetVolumeEX("SE*", ˆ—ŽžŠÔ, 0, null);
	SetVolumeEX("@xbgm*", ˆ—ŽžŠÔ, 0, null);
	Fade($NutSetName, ˆ—ŽžŠÔ, 1000, null, true);

	Wait(32);

	PrintBG2("ŠG‹Uã”wŒi");

	Wait(32);

//	FadeDelete("ŠG‹Uã”wŒi", 0, null, true);
}


//---------------------------------------------------------------//
..SceneOut
//---------------------------------------------------------------//
function SceneOut(—Dæ“x, ˆ—ŽžŠÔ, $SceneData)
{
	$SceneOutData = "cg/data/" + $SceneData + ".png";
	CreateColorSP("ŠGF‰‰o•", —Dæ“x, "#000000");
	DrawTransition("ŠGF‰‰o•", ˆ—ŽžŠÔ, 0, 1000, 100, null, $SceneOutData, true);
}

//---------------------------------------------------------------//
..SceneIn
//---------------------------------------------------------------//
function SceneIn(ˆ—ŽžŠÔ, $SceneData)
{
	$SceneInData = "cg/data/" + $SceneData + ".png";
	DrawTransition("@ŠGF‰‰o•", ˆ—ŽžŠÔ, 1000, 0, 100, null, $SceneInData, true);
	Delete("@ŠGF‰‰o•");

	TakeRatePicAuto();//š“k•àFƒAƒUƒiƒGƒ‹ƒXƒNƒŠ[ƒ“
}

//---------------------------------------------------------------//
..SnowDrop
//---------------------------------------------------------------//
function SnowDrop($SnowStartTime)
{
//~áƒV[ƒ“—p‚Ìƒ}ƒNƒ‚Å‚·

	if($SnowDropNow == true){
	}else{

	CreateName("Snow");
	//CreateWindow("Snow", 0, 0, 0, 1024, 576, false);
	SetAlias("Snow","Snow");
	Request("Snow", Lock);

	$SYSTEM_effect_drop_image = "cg/ef/efDro_á001.png";
	$SYSTEM_effect_drop_dencity = 256;
	$SYSTEM_effect_drop_speed = 5;
	$SYSTEM_effect_drop_swing= 4;
	CreateEffect("Snow/ŠG‰‰oá‰œ", 11, 1024, 0, 1024, 576, "Drop");
	SetAlias("Snow/ŠG‰‰oá‰œ","Snow/ŠG‰‰oá‰œ");
	Request("Snow/ŠG‰‰oá‰œ", Lock);
	Fade("Snow/ŠG‰‰oá‰œ", 0, 0, null, true);
	Move("Snow/ŠG‰‰oá‰œ", 0, 0, @0, null, true);

	$SYSTEM_effect_drop_image = "cg/ef/efDro_á001.png";
	$SYSTEM_effect_drop_dencity = 128;
	$SYSTEM_effect_drop_speed = 10;
	$SYSTEM_effect_drop_swing= 1;
	CreateEffect("Snow/ŠG‰‰oá‘O", 1000, 1024, 0, 1024, 576, "Drop");
	SetAlias("Snow/ŠG‰‰oá‘O","Snow/ŠG‰‰oá‘O");
	Request("Snow/ŠG‰‰oá‘O", Lock);
	Fade("Snow/ŠG‰‰oá‘O", 0, 0, null, true);
	Move("Snow/ŠG‰‰oá‘O", 0, 0, @0, null, true);

	CreateProcess("Snow/ƒvƒƒZƒX", 0, 0, 0, "SnowDropAct");
	SetAlias("Snow/ƒvƒƒZƒX","Snow/ƒvƒƒZƒX");
	Request("Snow/ƒvƒƒZƒX", Start);
	Request("Snow/ƒvƒƒZƒX", Lock);

	}
}

function SnowDropAct()
{
	$SnowDropNow = true;

	$FrontSnowStartDrawTime = $SnowStartTime*10;
	$SnowStartWaitTime = $SnowStartTime*5;

	$BackSnowStartTime = $SnowStartTime*2;
	$BackSnowStartDrawTime = $FrontSnowStartDrawTime*2;

	Fade("@Snow/ŠG‰‰oá‰œ", $SnowStartTime, 500, null, false);
	DrawTransition("@Snow/ŠG‰‰oá‰œ", $FrontSnowStartDrawTime, 0, 1000, 300, null, "cg/data/slide_02_00_0.png", false);

	Wait($SnowStartWaitTime);

	Fade("@Snow/ŠG‰‰oá‘O", $BackSnowStartTime, 800, null, false);
	DrawTransition("@Snow/ŠG‰‰oá‘O", $BackSnowStartDrawTime, 0, 1000, 300, null, "cg/data/slide_02_00_0.png", true);

}

//---------------------------------------------------------------//
..SnowDropDelete
//---------------------------------------------------------------//
function SnowDropDelete($SnowDeleteTime)
{
	if($SYSTEM_skip==true){
	Request("@Snow/ŠG‰‰oá‘O", UnLock);
	Request("@Snow/ŠG‰‰oá‰œ", UnLock);
	Request("@Snow", UnLock);
	Request("@Snow/ƒvƒƒZƒX", UnLock);
	Request("@Snow/ƒvƒƒZƒX", Stop);
	Delete("@Snow");
	$SnowDropNow = false;
	}else{
	CreateProcess("áƒvƒƒZƒXƒfƒŠ[ƒg", 0, 0, 0, "SnowDropDeleteAct");
	SetAlias("áƒvƒƒZƒXƒfƒŠ[ƒg","áƒvƒƒZƒXƒfƒŠ[ƒg");
	Request("áƒvƒƒZƒXƒfƒŠ[ƒg", Start);
	Request("áƒvƒƒZƒXƒfƒŠ[ƒg", Disused);
	}
}

function SnowDropDeleteAct()
{
	Request("@Snow/ŠG‰‰oá‘O", UnLock);
	Request("@Snow/ŠG‰‰oá‰œ", UnLock);
	Request("@Snow", UnLock);
	Request("@Snow/ƒvƒƒZƒX", UnLock);

	$BackSnowDeleteTime = $SnowDeleteTime*2;
	$SnowDeleteWaitTime = $SnowDeleteTime/2;

	Fade("@Snow/ŠG‰‰oá‰œ", $SnowDeleteTime, 0, null, false);
	Wait($SnowDeleteWaitTime);
	Fade("@Snow/ŠG‰‰oá‘O", $BackSnowDeleteTime, 0, null, true);
	Request("@Snow/ƒvƒƒZƒX", Stop);
	Delete("@Snow");
	$SnowDropNow = false;
}

//---------------------------------------------------------------//
..FeatherDrop
//---------------------------------------------------------------//
function FeatherDrop($FeatherStartTime)
{
//~‰HƒV[ƒ“—p‚Ìƒ}ƒNƒ‚Å‚·

	if($FeatherDropNow == true){
	}else{

	CreateName("Feather");
	//CreateWindow("Feather", 0, 0, 0, 1024, 576, false);
	SetAlias("Feather","Feather");
	Request("Feather", Lock);

	$SYSTEM_effect_drop_image = "cg/ef/efDro_‰H003.png";
	$SYSTEM_effect_drop_dencity = 12;
	$SYSTEM_effect_drop_speed = 0;
	$SYSTEM_effect_drop_swing= 40;
	$SYSTEM_effect_drop_rotate_z = 2;
	CreateEffect("Feather/ŠG‰‰o‰H‰œ", 11, 1024, 0, 1024, 576, "Drop");
	SetAlias("Feather/ŠG‰‰o‰H‰œ","Feather/ŠG‰‰o‰H‰œ");
	Request("Feather/ŠG‰‰o‰H‰œ", Lock);
	Fade("Feather/ŠG‰‰o‰H‰œ", 0, 0, null, true);
	Move("Feather/ŠG‰‰o‰H‰œ", 0, 0, @0, null, true);

	$SYSTEM_effect_drop_image = "cg/ef/efDro_‰H003.png";
	$SYSTEM_effect_drop_dencity = 6;
	$SYSTEM_effect_drop_speed = 2;
	$SYSTEM_effect_drop_swing= 1;
	$SYSTEM_effect_drop_rotate_z = 4;
	CreateEffect("Feather/ŠG‰‰o‰H‘O", 1000, 1024, 0, 1024, 576, "Drop");
	SetAlias("Feather/ŠG‰‰o‰H‘O","Feather/ŠG‰‰o‰H‘O");
	Request("Feather/ŠG‰‰o‰H‘O", Lock);
	Request("Feather/ŠG‰‰o‰H‘O", AddRender);
	Fade("Feather/ŠG‰‰o‰H‘O", 0, 0, null, true);
	Move("Feather/ŠG‰‰o‰H‘O", 0, 0, @0, null, true);

	CreateProcess("Feather/ƒvƒƒZƒX", 0, 0, 0, "FeatherDropAct");
	SetAlias("Feather/ƒvƒƒZƒX","Feather/ƒvƒƒZƒX");
	Request("Feather/ƒvƒƒZƒX", Start);
	Request("Feather/ƒvƒƒZƒX", Lock);

	}
}

function FeatherDropAct()
{
	$FeatherDropNow = true;

	$FrontFeatherStartDrawTime = $FeatherStartTime*10;
	$FeatherStartWaitTime = $FeatherStartTime*5;

	$BackFeatherStartTime = $FeatherStartTime*2;
	$BackFeatherStartDrawTime = $FrontFeatherStartDrawTime*2;

	Fade("@Feather/ŠG‰‰o‰H‰œ", $FeatherStartTime, 500, null, false);
	DrawTransition("@Feather/ŠG‰‰o‰H‰œ", $FrontFeatherStartDrawTime, 0, 1000, 300, null, "cg/data/slide_02_00_0.png", false);

	Wait($FeatherStartWaitTime);

	Fade("@Feather/ŠG‰‰o‰H‘O", $BackFeatherStartTime, 800, null, false);
	DrawTransition("@Feather/ŠG‰‰o‰H‘O", $BackFeatherStartDrawTime, 0, 1000, 300, null, "cg/data/slide_02_00_0.png", true);

}

//---------------------------------------------------------------//
..FeatherDropDelete
//---------------------------------------------------------------//
function FeatherDropDelete($FeatherDeleteTime)
{
	if($SYSTEM_skip==true){
	Request("@Feather/ŠG‰‰o‰H‘O", UnLock);
	Request("@Feather/ŠG‰‰o‰H‰œ", UnLock);
	Request("@Feather", UnLock);
	Request("@Feather/ƒvƒƒZƒX", UnLock);
	Request("@Feather/ƒvƒƒZƒX", Stop);
	Delete("@Feather");
	$FeatherDropNow = false;
	}else{
	CreateProcess("‰HƒvƒƒZƒXƒfƒŠ[ƒg", 0, 0, 0, "FeatherDropDeleteAct");
	SetAlias("‰HƒvƒƒZƒXƒfƒŠ[ƒg","‰HƒvƒƒZƒXƒfƒŠ[ƒg");
	Request("‰HƒvƒƒZƒXƒfƒŠ[ƒg", Start);
	Request("‰HƒvƒƒZƒXƒfƒŠ[ƒg", Disused);
	}

}

function FeatherDropDeleteAct()
{
	Request("@Feather/ŠG‰‰o‰H‘O", UnLock);
	Request("@Feather/ŠG‰‰o‰H‰œ", UnLock);
	Request("@Feather", UnLock);
	Request("@Feather/ƒvƒƒZƒX", UnLock);

	$BackFeatherDeleteTime = $FeatherDeleteTime*2;
	$FeatherDeleteWaitTime = $FeatherDeleteTime/2;

	Fade("@Feather/ŠG‰‰o‰H‰œ", $FeatherDeleteTime, 0, null, false);
	Wait($FeatherDeleteWaitTime);
	Fade("@Feather/ŠG‰‰o‰H‘O", $BackFeatherDeleteTime, 0, null, true);
	Request("@Feather/ƒvƒƒZƒX", Stop);
	Delete("@Feather");
	$FeatherDropNow = false;
}

//---------------------------------------------------------------//
..GameEnd_StartAnctionyƒXƒ}ƒKz
//---------------------------------------------------------------//
function GameEnd_StartAnction()
{
	PrintBG("ã”wŒi", 30000);

	CreateColorSP("•–‹", 18000, "BLACK");
	CreateColorSP("”’–‹", 500, "WHITE");
	CreateColorEX("ƒmƒCƒY‚P", 15000, "BLACK");
	CreateColorEX("ƒmƒCƒY‚Q", 1000, "BLACK");

	CreateSE("SE01","se‹[‰¹_ƒmƒCƒY_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("ŠG”wŒi1", 1, Center, 150, "cg/ef/ef_bg_I—¹ƒRƒ“ƒg.jpg");
	Fade("ŠG”wŒi1", 0, 1000, null, true);


	Fade("ƒmƒCƒY‚Q",0,1000,null,true);
	DrawTransition("ƒmƒCƒY‚Q", 1000, 0, 700, 100, null, "cg/data/noize_01_00_0.png", false);
	Fade("ƒmƒCƒY‚P",0,1000,null,true);
	DrawTransition("ƒmƒCƒY‚P", 1000, 700, 0, 100, null, "cg/data/noize_01_00_0.png", false);


	Fade("•–‹", 0, 300, null, true);

	FadeDelete("ã”wŒi", 0, true);


	Fade("ƒmƒCƒY‚P",30,0,null,true);
	Fade("ƒmƒCƒY‚P",30,1000,null,true);
	Fade("ƒmƒCƒY‚P",30,0,null,true);
	Fade("ƒmƒCƒY‚P",30,1000,null,true);
	Fade("ƒmƒCƒY‚P",30,0,null,true);
	Fade("ƒmƒCƒY‚P",30,1000,null,true);
	Fade("ƒmƒCƒY‚P",30,0,null,true);
	Fade("ƒmƒCƒY‚P",30,1000,null,true);



	Move("ŠG”wŒi1", 300, @0, @-150, null, false);
	FadeDelete("•–‹", 200, null, false);
	DrawDelete("”’–‹", 150, 1000, null, "wave_01_00_0", false);
	DrawDelete("ƒmƒCƒY‚P", 100, 1000, null, "circle_03_00_0", true);
	DrawDelete("ƒmƒCƒY‚Q", 100, 1000, null, "circle_03_00_1", true);



	SetVolumeEX("SE01", 0, 1, null);
	Wait(100);

	SetVolumeEX("SE01", 0, 700, null);

	Wait(50);
	SetVolumeEX("SE01", 0, 0, null);

	WaitKey(1000);

}

//---------------------------------------------------------------//
..GameEnd_EndAnctionyƒXƒ}ƒKz
//---------------------------------------------------------------//
function GameEnd_EndAnction()
{
	//‰¼“ü‚ê
	PrintBG("ã”wŒi", 30001);
	CreateColorSP("•–‹", 30000, "BLACK");

	SetVolumeEX("SE*", 100, 0, null);

	CreateSE("SE01","seƒƒJ_ƒeƒŒƒr_ƒeƒŒƒrÁ‚·");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("ã”wŒi", 200, 1000, 0, Dxl3, true);
	FadeDelete("ã”wŒi", 0, null, true);

	//WaitKey();

}

//---------------------------------------------------------------//
..KoreJikenStart
//---------------------------------------------------------------//
function KoreJikenSet()
{
//Œb“ß‚±‚ê‚ÍŽ–Œ‰‰oF‘fÞ’è‹`


	CreateTextureEX("KoreJikenÅŒã01", 902, Center, Middle, "cg/ev/ev0000Œb“ß‚±‚ê‚ÍŽ–ŒIH.jpg");
	CreateTextureEX("KoreJikenÅŒã02", 20000, 300, 0, "cg/ef/ev0000Ž–Œ_07.png");
	CreateTextureEX("KoreJikenÅŒã03", 901, 0, 0, "cg/ef/ev0000Ž–Œ_08.jpg");
	CreateTextureEX("KoreJikenÅŒã04", 901, 0, 0, "cg/ev/ev0000Œb“ß‚±‚ê‚ÍŽ–ŒIH_ƒGƒtƒF.png");
	CreateTextureEX("KoreJikenÅŒã05", 900, Center, Middle, "cg/ev/ev0000Œb“ß‚±‚ê‚ÍŽ–ŒIHŽ„•ž_Œ¢.png");
	CreateTextureEX("KoreJikenÅŒã06", 900, Center, Middle, "cg/ev/ev0000Œb“ß‚±‚ê‚ÍŽ–ŒIHŽ„•ž_Œb“ß.png");


	CreateTextureEX("KoreJikenŽ–Œ01", 905, Center, Middle, "cg/ef/ev0000Ž–Œ_01.png");
	CreateTextureEX("KoreJikenŽ–Œ02", 905, Center, Middle, "cg/ef/ev0000Ž–Œ_02.png");
	CreateTextureEX("KoreJikenŽ–Œ03", 905, Center, Middle, "cg/ef/ev0000Ž–Œ_03.png");
	CreateTextureEX("KoreJikenŽ–Œ04", 905, Center, Middle, "cg/ef/ev0000Ž–Œ_04.png");
	CreateTextureEX("KoreJikenŽ–Œ05", 905, 120, -230, "cg/ef/ev0000Ž–Œ_05.png");
	Zoom("KoreJikenŽ–Œ05", 0, 500, 500, null, true);
	CreateTextureEX("KoreJikenŽ–Œ06a", 901, 355, -50, "cg/ef/ev0000Ž–Œ_06.png");
	CreateTextureEX("KoreJikenŽ–Œ06b", 901, 470, -40, "cg/ef/ev0000Ž–Œ_06.png");
	CreateTextureEX("KoreJikenŽ–Œ06c", 901, 390, -220, "cg/ef/ev0000Ž–Œ_06.png");
	Zoom("KoreJikenŽ–Œ06a", 0, 600, 600, null, true);
	Zoom("KoreJikenŽ–Œ06b", 0, 600, 600, null, true);
	Zoom("KoreJikenŽ–Œ06c", 0, 600, 600, null, true);

	CreateColorEX("KoreJikenŽ–ŒF100", 900, "BLACK");
	CreateColorEX("KoreJikenŽ–ŒF200", 1000, "WHITE");

	Request("KoreJiken*", Lock);


}

//Œb“ß‚±‚ê‚ÍŽ–Œ‰‰o
function KoreJikenStart()
{

//ŽžŠÔ‚ð”ñ•\Ž¦
	ClockDelete(200,false);

	Move("@KoreJikenÅŒã02", 0, 300, 0, null, true);
	Move("@KoreJikenÅŒã03", 0, 0, 0, null, true);
	Move("@KoreJikenÅŒã04", 0, 0, 0, null, true);
	Move("@KoreJikenÅŒã05", 0, 0, 0, null, true);
	Move("@KoreJikenÅŒã06", 0, 0, 0, null, true);
	Move("@KoreJikenŽ–Œ05", 0, 120, -230, null, true);
	Zoom("@KoreJikenŽ–Œ05", 0, 500, 500, null, true);
	Move("@KoreJikenŽ–Œ06a", 0, 355, -50, null, true);
	Move("@KoreJikenŽ–Œ06b", 0, 470, -40, null, true);
	Move("@KoreJikenŽ–Œ06c", 0, 390, -220, null, true);

	Zoom("@KoreJikenŽ–Œ06a", 0, 600, 600, null, true);
	Zoom("@KoreJikenŽ–Œ06b", 0, 600, 600, null, true);
	Zoom("@KoreJikenŽ–Œ06c", 0, 600, 600, null, true);

	CreateSE("SEKoreJiken","se‹[‰¹_Œb“ß‘M‚­");

	Fade("@KoreJikenŽ–ŒF100", 200, 1000, null, true);

	Fade("@KoreJikenŽ–Œ01", 0, 1000, null, true);
	Wait(80);
	Fade("@KoreJikenŽ–Œ02", 0, 1000, null, true);
	Fade("@KoreJikenŽ–Œ01", 0, 0, null, true);
	Wait(70);
	Fade("@KoreJikenŽ–Œ03", 0, 1000, null, true);
	Fade("@KoreJikenŽ–Œ02", 0, 0, null, true);
	Wait(50);
	Fade("@KoreJikenŽ–Œ04", 0, 1000, null, true);
	Fade("@KoreJikenŽ–Œ03", 0, 0, null, true);
	Wait(50);

	Rotate("@KoreJikenŽ–Œ05", 0, @0, @0, 40, null,true);
	Zoom("@KoreJikenŽ–Œ05", 0, 900, 900, null, true);
	Fade("@KoreJikenŽ–Œ06a", 0, 1000, null, true);
	Fade("@KoreJikenŽ–Œ05", 0, 1000, null, true);
	Fade("@KoreJikenŽ–Œ04", 0, 0, null, true);

	Wait(50);

	Zoom("@KoreJikenŽ–Œ06a", 0, 800, 800, null, true);
	Fade("@KoreJikenŽ–Œ06b", 0, 1000, null, true);
	Rotate("@KoreJikenŽ–Œ05", 0, @0, @0, 0, null,true);
	Zoom("@KoreJikenŽ–Œ05", 0, 600, 600, null, true);

	Wait(50);

	Zoom("@KoreJikenŽ–Œ06a", 0, 1000, 1000, null, true);
	Zoom("@KoreJikenŽ–Œ06b", 0, 800, 800, null, true);
	Fade("@KoreJikenŽ–Œ06c", 0, 1000, null, true);
	Rotate("@KoreJikenŽ–Œ05", 0, @0, @0, -20, null,true);
	Zoom("@KoreJikenŽ–Œ05", 0, 700, 700, null, true);

	Wait(100);
	Fade("@KoreJikenŽ–Œ06*", 0, 500, null, true);
	Zoom("@KoreJikenŽ–Œ06a", 0, 1200, 1200, null, true);
	Zoom("@KoreJikenŽ–Œ06b", 0, 1000, 1000, null, true);
	Zoom("@KoreJikenŽ–Œ06c", 0, 900, 900, null, true);
	Rotate("@KoreJikenŽ–Œ05", 0, @0, @0, -30, null,true);
	Zoom("@KoreJikenŽ–Œ05", 0, 800, 800, null, true);

	Wait(100);
	Zoom("@KoreJikenŽ–Œ06a", 0, 1400, 1400, null, true);
	Zoom("@KoreJikenŽ–Œ06b", 0, 1200, 1200, null, true);
	Zoom("@KoreJikenŽ–Œ06c", 0, 1100, 1100, null, true);
	Rotate("@KoreJikenŽ–Œ05", 0, @0, @0, -40, null,true);
	Zoom("@KoreJikenŽ–Œ05", 0, 800, 800, null, true);

	Wait(50);

	Zoom("@KoreJikenŽ–Œ06a", 0, 1700, 1700, null, true);
	Zoom("@KoreJikenŽ–Œ06b", 0, 1300, 1300, null, true);
	Zoom("@KoreJikenŽ–Œ06c", 0, 1200, 1200, null, true);
	Rotate("@KoreJikenŽ–Œ05", 0, @0, @0, -70, null,true);
	Zoom("@KoreJikenŽ–Œ05", 0, 1000, 1000, null, true);

	Wait(30);

	Zoom("@KoreJikenŽ–Œ06a", 0, 2500, 2500, null, true);
	Zoom("@KoreJikenŽ–Œ06b", 0, 1600, 1600, null, true);
	Zoom("@KoreJikenŽ–Œ06c", 0, 1500, 1500, null, true);
	Rotate("@KoreJikenŽ–Œ05", 0, @0, @0, -110, null,true);
	Zoom("@KoreJikenŽ–Œ05", 0, 2000, 2000, null, true);

	Wait(30);

	Zoom("@KoreJikenŽ–Œ06a", 0, 3000, 3000, null, true);
	Zoom("@KoreJikenŽ–Œ06b", 0, 2000, 2000, null, true);
	Zoom("@KoreJikenŽ–Œ06c", 0, 1800, 1800, null, true);
	Rotate("@KoreJikenŽ–Œ05", 0, @0, @0, -110, null,true);
	Zoom("@KoreJikenŽ–Œ05", 0, 4000, 4000, null, true);

	Wait(30);

	Fade("@KoreJikenŽ–ŒF200", 0, 1000, null, true);
	Fade("@KoreJikenŽ–Œ", 0, 1000, null, true);
	MusicStart("@SEKoreJiken",0,700,0,1000,null,false);
	Wait(30);
	Fade("@KoreJikenÅŒã02", 0, 1000, null, true);
	Fade("@KoreJikenÅŒã03", 0, 1000, null, true);
	Fade("@KoreJikenÅŒã04", 0, 1000, null, true);
	Fade("@KoreJikenÅŒã05", 0, 1000, null, true);
	Fade("@KoreJikenÅŒã06", 0, 1000, null, true);
//	Delete("@KoreJikenŽ–Œ*");
	Fade("@KoreJikenŽ–Œ*", 0, 0, null, true);

	Wait(20);
	Fade("@KoreJikenÅŒã04", 0, 0, null, true);
	Wait(20);
	Fade("@KoreJikenÅŒã04", 0, 1000, null, true);
	Wait(20);
	Fade("@KoreJikenÅŒã04", 0, 0, null, true);
	Wait(20);
	Fade("@KoreJikenÅŒã04", 0, 1000, null, true);
	Wait(20);

	Move("@KoreJikenÅŒã02", 300, 0, 0, Dxl2, true);

	Fade("@KoreJikenÅŒã01", 0, 1000, null, true);
//	Delete("@KoreJikenÅŒã02");
//	Delete("@KoreJikenÅŒã03");
//	Delete("@KoreJikenÅŒã04");
//	Fade("@KoreJikenÅŒã02", 0, 0, null, true);
	Fade("@KoreJikenÅŒã03", 0, 0, null, true);
	Fade("@KoreJikenÅŒã04", 0, 0, null, true);



}

//---------------------------------------------------------------//
..KoreJikenFade
//---------------------------------------------------------------//
function KoreJikenFade($bln)
{

	Fade("@KoreJikenÅŒã02", 1000, 0, null, false);
	Fade("@KoreJikenÅŒã01", 1000, 0, null, true);
//	FadeDelete("@KoreJikenÅŒã01", 1000, null, true);
	Move("@KoreJikenÅŒã05", 300, 200, 300, Axl2, true);

//ŽžŠÔ‚ðÄ•\Ž¦
	ClockPass($NowOclock);
	Wait(200);
	Fade("@KoreJikenÅŒã*", 200, 0, null, $bln);

//	FadeDelete("@KoreJikenÅŒã*", 200, null, $bln);
}

//---------------------------------------------------------------//
..KoreJikenEnd
//---------------------------------------------------------------//
function KoreJikenEnd($bln)
{
	Request("@KoreJiken*", UnLock);
	FadeDelete("@KoreJikenÅŒã01", 1000, null, false);
	FadeDelete("@KoreJikenÅŒã02", 1000, null, true);
	Move("@KoreJikenÅŒã05", 300, 200, 300, Axl2, true);
	Delete("@KoreJikenŽ–Œ*");

//ŽžŠÔ‚ðÄ•\Ž¦
	ClockPass($NowOclock);
	Wait(200);

	FadeDelete("@KoreJikenÅŒã*", 200, null, $bln);
}



//---------------------------------------------------------------//
..KagomeColor
//---------------------------------------------------------------//
function KagomeColor($ƒJƒSƒ–¼,$•`‰æ—Dæ“x,•b”,‘Ò‚¿)
{
	//šƒƒbƒNÝ’u
	LockVideo(true);

	CreateEffect("ŠGƒJƒSƒ‚P", $•`‰æ—Dæ“x, 0, 0, 1024, 576, "Plain");
	SetAlias("ŠGƒJƒSƒ‚P","ŠGƒJƒSƒ‚P");
	Request("ŠGƒJƒSƒ‚P",Passive);
	SetTone("ŠGƒJƒSƒ‚P", Monochrome);

	CreateEffect("ŠGƒJƒSƒ‚Q", $•`‰æ—Dæ“x, 0, 0, 1024, 576, "Plain");
	SetAlias("ŠGƒJƒSƒ‚Q","ŠGƒJƒSƒ‚Q");
	Request("ŠGƒJƒSƒ‚Q",Passive);
	SetTone("ŠGƒJƒSƒ‚Q", Monochrome);
	Request("ŠGƒJƒSƒ‚Q", OverlayRender);

	CreateColorEX("ŠGƒJƒSƒF", $•`‰æ—Dæ“x, "#fdf202");
	Request("ŠGƒJƒSƒF", MulRender);
	Fade("ŠGƒJƒSƒF", 0, 1000, null, true);

	Fade($‹ŒƒJƒSƒ–¼, 0, 0, null, true);

	$•`‰æ—Dæ“x‚Q=$•`‰æ—Dæ“x+1;
	CreateEffect($ƒJƒSƒ–¼, $•`‰æ—Dæ“x‚Q, 0, 0, 1024, 576, "Plain");
	SetAlias($ƒJƒSƒ–¼,$ƒJƒSƒ–¼);
	Request($ƒJƒSƒ–¼,Passive);
	Fade($ƒJƒSƒ–¼, 0, 0, null, true);

	Delete("ŠGƒJƒSƒ*");
	Fade($‹ŒƒJƒSƒ–¼, 0, 1000, null, true);

	//šƒƒbƒNÝ’u
	LockVideo(false);

	Fade($ƒJƒSƒ–¼, •b”, 1000, null, ‘Ò‚¿);
	$‹ŒƒJƒSƒ–¼=$ƒJƒSƒ–¼;
}


//---------------------------------------------------------------//
..KagomeColorDraw
//---------------------------------------------------------------//
function KagomeColorDraw($ƒJƒSƒ–¼,$•`‰æ—Dæ“x, •b”, ‹«ŠE, ƒeƒ“ƒ|, $KagomeDraw, $KagomeDrawWait);
{
	//šƒƒbƒNÝ’u
	LockVideo(true);

	CreateEffect("ŠGƒJƒSƒ‚P", $•`‰æ—Dæ“x, 0, 0, 1024, 576, "Plain");
	SetAlias("ŠGƒJƒSƒ‚P","ŠGƒJƒSƒ‚P");
	Request("ŠGƒJƒSƒ‚P",Passive);
	SetTone("ŠGƒJƒSƒ‚P", Monochrome);

	CreateEffect("ŠGƒJƒSƒ‚Q", $•`‰æ—Dæ“x, 0, 0, 1024, 576, "Plain");
	SetAlias("ŠGƒJƒSƒ‚Q","ŠGƒJƒSƒ‚Q");
	Request("ŠGƒJƒSƒ‚Q",Passive);
	SetTone("ŠGƒJƒSƒ‚Q", Monochrome);
	Request("ŠGƒJƒSƒ‚Q", OverlayRender);

	CreateColorEX("ŠGƒJƒSƒF", $•`‰æ—Dæ“x, "#fdf202");
	Request("ŠGƒJƒSƒF", MulRender);
	Fade("ŠGƒJƒSƒF", 0, 1000, null, true);

	Fade($‹ŒƒJƒSƒ–¼, 0, 0, null, true);

	$•`‰æ—Dæ“x‚Q=$•`‰æ—Dæ“x+1;
	CreateEffect($ƒJƒSƒ–¼, $•`‰æ—Dæ“x‚Q, 0, 0, 1024, 576, "Plain");
	SetAlias($ƒJƒSƒ–¼,$ƒJƒSƒ–¼);
	Request($ƒJƒSƒ–¼,Passive);
	Fade($ƒJƒSƒ–¼, 0, 0, null, true);

	Delete("ŠGƒJƒSƒ*");
	Fade($‹ŒƒJƒSƒ–¼, 0, 1000, null, true);

	//šƒƒbƒNÝ’u
	LockVideo(false);

	$KagomeDrawNut="cg/data/" + $KagomeDraw + ".png";
	DrawTransition($ƒJƒSƒ–¼, •b”, 0, 1000, ‹«ŠE, ƒeƒ“ƒ|, $KagomeDrawNut, false);
	Fade($ƒJƒSƒ–¼, 0, 1000, null, false);

	if($KagomeDrawWait==true){
		WaitAction($ƒJƒSƒ–¼, null);
	}else if($•š‚¹!=false){
		Wait($KagomeDrawWait);
	}

	$‹ŒƒJƒSƒ–¼=$ƒJƒSƒ–¼;
}


//---------------------------------------------------------------//
..KagomeColorAuto
//---------------------------------------------------------------//
function KagomeColorAuto($•`‰æ—Dæ“x,•b”,‘Ò‚¿)
{
	//šƒƒbƒNÝ’u
	LockVideo(true);

	$MaxKagomeColorNum=2;

	//ƒ}ƒbƒNƒX’l’²®
	$KagomeColorNum++;
	if($KagomeColorNum>$MaxKagomeColorNum){
		$KagomeColorNum=1;
	}
	$KagomeColorNut=String("%s%02d","OnKG",$KagomeColorNum);

	//‹ŒƒJƒSƒ–¼
	$PreKagomeColorNum=$KagomeColorNum-1;
	if($PreKagomeColorNum==0){
		$PreKagomeColorNum=$MaxKagomeColorNum;
	}
	$PreKagomeColorNut=String("%s%02d","OnKG",$PreKagomeColorNum);

	CreateEffect("ŠGƒJƒSƒ‚P", $•`‰æ—Dæ“x, 0, 0, 1024, 576, "Plain");
	SetAlias("ŠGƒJƒSƒ‚P","ŠGƒJƒSƒ‚P");
	Request("ŠGƒJƒSƒ‚P",Passive);
	SetTone("ŠGƒJƒSƒ‚P", Monochrome);

	CreateEffect("ŠGƒJƒSƒ‚Q", $•`‰æ—Dæ“x, 0, 0, 1024, 576, "Plain");
	SetAlias("ŠGƒJƒSƒ‚Q","ŠGƒJƒSƒ‚Q");
	Request("ŠGƒJƒSƒ‚Q",Passive);
	SetTone("ŠGƒJƒSƒ‚Q", Monochrome);
	Request("ŠGƒJƒSƒ‚Q", OverlayRender);

	CreateColorEX("ŠGƒJƒSƒF", $•`‰æ—Dæ“x, "#fdf202");
	Request("ŠGƒJƒSƒF", MulRender);
	Fade("ŠGƒJƒSƒF", 0, 1000, null, true);

	Fade($PreKagomeColorNut, 0, 0, null, true);

	$•`‰æ—Dæ“x‚Q=$•`‰æ—Dæ“x+1;
	CreateEffect($KagomeColorNut, $•`‰æ—Dæ“x‚Q, 0, 0, 1024, 576, "Plain");
	SetAlias($KagomeColorNut,$KagomeColorNut);
	Request($KagomeColorNut,Passive);
	Fade($KagomeColorNut, 0, 0, null, true);

	Delete("ŠGƒJƒSƒ*");
	Fade($PreKagomeColorNut, 0, 1000, null, true);

	//šƒƒbƒNÝ’u
	LockVideo(false);

	Fade($KagomeColorNut, •b”, 1000, null, ‘Ò‚¿);
	Delete($PreKagomeColorNut);
	$‹ŒƒJƒSƒ–¼=$KagomeColorNut;
}


//---------------------------------------------------------------//
..KagomeColorAutoDraw
//---------------------------------------------------------------//
function KagomeColorAutoDraw($•`‰æ—Dæ“x, •b”, ‹«ŠE, ƒeƒ“ƒ|, $KagomeDraw, $KagomeDrawWait);
{
	//šƒƒbƒNÝ’u
	LockVideo(true);

	$MaxKagomeColorNum=2;

	//ƒ}ƒbƒNƒX’l’²®
	$KagomeColorNum++;
	if($KagomeColorNum>$MaxKagomeColorNum){
		$KagomeColorNum=1;
	}
	$KagomeColorNut=String("%s%02d","OnKG",$KagomeColorNum);

	//‹ŒƒJƒSƒ–¼
	$PreKagomeColorNum=$KagomeColorNum-1;
	if($PreKagomeColorNum==0){
		$PreKagomeColorNum=$MaxKagomeColorNum;
	}
	$PreKagomeColorNut=String("%s%02d","OnKG",$PreKagomeColorNum);

	CreateEffect("ŠGƒJƒSƒ‚P", $•`‰æ—Dæ“x, 0, 0, 1024, 576, "Plain");
	SetAlias("ŠGƒJƒSƒ‚P","ŠGƒJƒSƒ‚P");
	Request("ŠGƒJƒSƒ‚P",Passive);
	SetTone("ŠGƒJƒSƒ‚P", Monochrome);

	CreateEffect("ŠGƒJƒSƒ‚Q", $•`‰æ—Dæ“x, 0, 0, 1024, 576, "Plain");
	SetAlias("ŠGƒJƒSƒ‚Q","ŠGƒJƒSƒ‚Q");
	Request("ŠGƒJƒSƒ‚Q",Passive);
	SetTone("ŠGƒJƒSƒ‚Q", Monochrome);
	Request("ŠGƒJƒSƒ‚Q", OverlayRender);

	CreateColorEX("ŠGƒJƒSƒF", $•`‰æ—Dæ“x, "#fdf202");
	Request("ŠGƒJƒSƒF", MulRender);
	Fade("ŠGƒJƒSƒF", 0, 1000, null, true);

	Fade($PreKagomeColorNut, 0, 0, null, true);

	$•`‰æ—Dæ“x‚Q=$•`‰æ—Dæ“x+1;
	CreateEffect($KagomeColorNut, $•`‰æ—Dæ“x‚Q, 0, 0, 1024, 576, "Plain");
	SetAlias($KagomeColorNut,$KagomeColorNut);
	Request($KagomeColorNut,Passive);
	Fade($KagomeColorNut, 0, 0, null, true);

	Delete("ŠGƒJƒSƒ*");
	Fade($PreKagomeColorNut, 0, 1000, null, true);

	//šƒƒbƒNÝ’u
	LockVideo(false);

	$KagomeDrawNut="cg/data/" + $KagomeDraw + ".png";
	DrawTransition($KagomeColorNut, •b”, 0, 1000, ‹«ŠE, ƒeƒ“ƒ|, $KagomeDrawNut, false);
	Fade($KagomeColorNut, 0, 1000, null, false);

	if($KagomeDrawWait==true){
		WaitAction($KagomeColorNut, null);
	}else if($•š‚¹!=false){
		Wait($KagomeDrawWait);
	}

	Delete($PreKagomeColorNut);
	$‹ŒƒJƒSƒ–¼=$KagomeColorNut;
}

..ClockCharaSet
function ClockCharaSet()
{
	Request("@OclockBase/*", UnLock);
	Delete("@OclockBase/*");

	if(#BaseChara=="ƒ~ƒdƒn"){
		//CreateColor("@OclockBase/ƒ~ƒdƒn", 110, 824, 0, 200, 100, "#986b33");
		CreateTexture("@OclockBase/ƒ~ƒdƒn", 110, 630, 0, "cg/sys/time/ŽžŒvƒx[ƒXƒ~ƒdƒn.png");
	}else if(#BaseChara=="¹g—…"){
		//CreateColor("@OclockBase/¹g—…", 110, 824, 0, 200, 100, "#ea68a2");
		CreateTexture("@OclockBase/¹g—…", 110, 630, 0, "cg/sys/time/ŽžŒvƒx[ƒX¹g—….png");
	}else if(#BaseChara=="çH"){
		//CreateColor("@OclockBase/çH", 110, 824, 0, 200, 100, "#ff0000");
		CreateTexture("@OclockBase/çH", 110, 630, 0, "cg/sys/time/ŽžŒvƒx[ƒXçH.png");
	}else if(#BaseChara=="Œb“ß"){
		//CreateColor("@OclockBase/Œb“ß", 110, 824, 0, 200, 100, "#0000ff");
		CreateTexture("@OclockBase/Œb“ß", 110, 630, 0, "cg/sys/time/ŽžŒvƒx[ƒXŒb“ß.png");
	}else if(#BaseChara=="ƒm[ƒR"){
		//CreateColor("@OclockBase/ƒm[ƒR", 110, 824, 0, 200, 100, "#9f9f9f");
		CreateTexture("@OclockBase/ƒm[ƒR", 110, 630, 0, "cg/sys/time/ŽžŒvƒx[ƒXƒm[ƒR.png");
	}else if(#BaseChara=="Ž—’¹"){
		//CreateColor("@OclockBase/Ž—’¹", 110, 824, 0, 200, 100, "#ffff00");
		CreateTexture("@OclockBase/Ž—’¹", 110, 630, 0, "cg/sys/time/ŽžŒvƒx[ƒXŽ—’¹.png");
	}else if(#BaseChara=="ƒtƒEƒŠ"){
		//CreateColor("@OclockBase/ƒtƒEƒŠ", 110, 824, 0, 200, 100, "#00ff00");
		CreateTexture("@OclockBase/ƒtƒEƒŠ", 110, 630, 0, "cg/sys/time/ŽžŒvƒx[ƒXƒtƒEƒŠ.png");
	}else{
		//CreateColor("@OclockBase/ƒ~ƒdƒn", 110, 824, 0, 200, 100, "#986b33");
		CreateTexture("@OclockBase/ƒ~ƒdƒn", 110, 630, 0, "cg/sys/time/ŽžŒvƒx[ƒXƒ~ƒdƒn.png");
		#BaseChara="ƒ~ƒdƒn";
	}
	Request("@OclockBase/*", Lock);
	Request("@OclockBase/*", Hideable);

	Fade("@OclockBase/*", 0, 0, null, true);
}

..ClockSet
function ClockSet()
{
	LoadFile("cg/sys/time/Œß‘O.png", true);
	LoadFile("cg/sys/time/ŒßŒã.png", true);
	LoadFile("cg/sys/time/”Žš_0.png", true);
	LoadFile("cg/sys/time/”Žš_1.png", true);
	LoadFile("cg/sys/time/”Žš_2.png", true);
	LoadFile("cg/sys/time/”Žš_3.png", true);
	LoadFile("cg/sys/time/”Žš_4.png", true);
	LoadFile("cg/sys/time/”Žš_5.png", true);
	LoadFile("cg/sys/time/”Žš_6.png", true);
	LoadFile("cg/sys/time/”Žš_7.png", true);
	LoadFile("cg/sys/time/”Žš_8.png", true);
	LoadFile("cg/sys/time/”Žš_9.png", true);

	CreateName("OclockBase");
	SetAlias("OclockBase", "OclockBase");
	Request("OclockBase", Lock);

	$OclockLayer=19000;
	$OclockLayer2=19000;
	CreateTexture("OclockAM", $OclockLayer2, 838, 25, "cg/sys/time/Œß‘O.png");
	SetAlias("OclockAM", "OclockAM");
	Request("OclockAM", Lock);
	Request("OclockAM", Hideable);

	CreateTexture("OclockPM", $OclockLayer2, 838, 25, "cg/sys/time/ŒßŒã.png");
	SetAlias("OclockPM", "OclockPM");
	Request("OclockPM", Lock);
	Request("OclockPM", Hideable);

	$OclockWhile=0;
	while(40>$OclockWhile){

		$OclockNum1=Integer($OclockWhile/10);
		$OclockNum2=Integer($OclockWhile%10);

		if($OclockNum1==3){$nutx=861;}
		else if($OclockNum1==2){$nutx=888;}
		else if($OclockNum1==1){$nutx=933;}
		else{$nutx=962;}

		$OclockNut="OclockCount_"+$OclockNum1+"_"+$OclockNum2;
		$OclockTemp="cg/sys/time/”Žš_"+$OclockNum2+".png";
		CreateTexture($OclockNut, $OclockLayer, $nutx, 26, $OclockTemp);
		SetAlias($OclockNut, $OclockNut);
		Request($OclockNut, Lock);
		Request($OclockNut, Hideable);

		$OclockWhile++;
	}

	Fade("Oclock*", 0, 0, null, true);
}


..ClockTime
function ClockTime($NowOclock)
{
	$ClockTime_in=true;

	if($NowOclock>=2400){
		$Oclock_half=$NowOclock-2400;
		$OclockCount0="@OclockAM";
		$TwitterZone="AM";
	}else if($NowOclock<1200){
		$Oclock_half=$NowOclock;
		$OclockCount0="@OclockAM";
		$TwitterZone="AM";
	}else{
		$Oclock_half=$NowOclock-1200;
		$OclockCount0="@OclockPM";
		$TwitterZone="PM";
	}
}


..ClockPass
function ClockPass($NowOclock)
{
	//šƒƒbƒNÝ’u
	LockVideo(true);

	Move("@OclockAM", 0, 838, 25, null, true);
	Move("@OclockPM", 0, 838, 25, null, true);

	if($NowOclock>=2400){
		$Oclock_half=$NowOclock-2400;
		$OclockCount0="@OclockAM";
		$TwitterZone="AM";
	}else if($NowOclock<1200){
		$Oclock_half=$NowOclock;
		$OclockCount0="@OclockAM";
		$TwitterZone="AM";
	}else{
		$Oclock_half=$NowOclock-1200;
		$OclockCount0="@OclockPM";
		$TwitterZone="PM";
	}

	if($OclockNewYear){
		Delete("@OclockEX");
		Delete("@OclockProcess");
		Fade("@OclockCount_*", 0, 0, null, false);
		Move($OclockCount1, 0, @0, 26, null, false);
		Fade($OclockCount1, 0, 1000, null, false);
		Move($OclockCount2, 0, @0, 26, null, false);
		Fade($OclockCount2, 0, 1000, null, false);
		Move($OclockCount3, 0, @0, 26, null, false);
		Fade($OclockCount3, 0, 1000, null, false);
		Move($OclockCount4, 0, @0, 26, null, false);
		Fade($OclockCount4, 0, 1000, null, true);
		$OclockNewYear=false;
	}

	$OclockCount1=String("@OclockCount_0_%01d",Integer($Oclock_half%10));
	$OclockCount2=String("@OclockCount_1_%01d",Integer($Oclock_half%100/10));
	$OclockCount3=String("@OclockCount_2_%01d",Integer($Oclock_half%1000/100));
	$OclockCount4=String("@OclockCount_3_%01d",Integer($Oclock_half%10000/1000));

//	Move($OclockCount0, 0, @0, 25, null, false);
	Move($OclockCount1, 0, @0, 26, null, false);
	Move($OclockCount2, 0, @0, 26, null, false);
	Move($OclockCount3, 0, @0, 26, null, false);
	Move($OclockCount4, 0, @0, 26, null, false);

	if($NowOclock==2400&&Strstr($GameName,"z")!=1){
		//‘åŠA“ú“ÁŽê‰‰o
		if($PreOclockCount1!=$OclockCount1){Move($OclockCount1, 0, @0, -4, null, false);}
		if($PreOclockCount2!=$OclockCount2){Move($OclockCount2, 0, @0, -4, null, false);}
		if($PreOclockCount3!=$OclockCount3){Move($OclockCount3, 0, @0, -4, null, false);}
		if($PreOclockCount4!=$OclockCount4){Move($OclockCount4, 0, @0, -4, null, false);}

		CreateTexture("OclockEX0", $OclockLayer2, 838, 25, "cg/sys/time/Œß‘O.png");
		SetAlias("OclockEX0", "OclockEX0");
		SetBlur("OclockEX0", true, 2, 500, 100, true);
		Request("OclockEX0", AddRender);
		CreateTexture("OclockEX1", $OclockLayer, 861, 26, "cg/sys/time/”Žš_0.png");
		SetAlias("OclockEX1", "OclockEX1");
		SetBlur("OclockEX1", true, 2, 500, 100, true);
		Request("OclockEX1", AddRender);
		CreateTexture("OclockEX2", $OclockLayer, 888, 26, "cg/sys/time/”Žš_0.png");
		SetAlias("OclockEX2", "OclockEX2");
		SetBlur("OclockEX2", true, 2, 500, 100, true);
		Request("OclockEX2", AddRender);
		CreateTexture("OclockEX3", $OclockLayer, 933, 26, "cg/sys/time/”Žš_0.png");
		SetAlias("OclockEX3", "OclockEX3");
		SetBlur("OclockEX3", true, 2, 500, 100, true);
		Request("OclockEX3", AddRender);
		CreateTexture("OclockEX4", $OclockLayer, 962, 26, "cg/sys/time/”Žš_0.png");
		SetAlias("OclockEX4", "OclockEX4");
		SetBlur("OclockEX4", true, 2, 500, 100, true);
		Request("OclockEX4", AddRender);

		Move("@OclockAM", 0, @0, 25, null, false);
		Move("@OclockPM", 0, @0, 25, null, false);
		Fade("OclockEX*", 0, 0, null, true);

		//šƒƒbƒNÝ’u
		LockVideo(false);

		CreateProcess("OclockProcess", 150, 0, 0, "ClockNewYear");
		SetAlias("OclockProcess", "OclockProcess");
		Request("OclockProcess", Start);
		Request("OclockProcess", Disused);

		$OclockNewYear=true;

	}else if(!$OclockPass_in){
		//‰‰ñ
		if(!$QuickIn){Fade("@OclockBase/*", 300, 1000, null, false);}//ŽžŒv‚ªo‚Ä‚¢‚é•”•ª‚Íƒx[ƒX‚ðo‚³‚È‚¢
		Fade($OclockCount0, 300, 1000, null, false);
		Fade($OclockCount1, 300, 1000, null, false);
		Fade($OclockCount2, 300, 1000, null, false);
		Fade($OclockCount3, 300, 1000, null, false);
		Fade($OclockCount4, 300, 1000, null, false);

	}else{
		//‘±‚«
		if($PreOclockCount0!=$OclockCount0){Move($OclockCount0, 0, @0, -5, null, false);}
		if($PreOclockCount1!=$OclockCount1){Move($OclockCount1, 0, @0, -4, null, false);}
		if($PreOclockCount2!=$OclockCount2){Move($OclockCount2, 0, @0, -4, null, false);}
		if($PreOclockCount3!=$OclockCount3){Move($OclockCount3, 0, @0, -4, null, false);}
		if($PreOclockCount4!=$OclockCount4){Move($OclockCount4, 0, @0, -4, null, false);}

		if(!$QuickIn){Fade("@OclockBase/*", 0, 1000, null, false);}//ŽžŒv‚ªo‚Ä‚¢‚é•”•ª‚Íƒx[ƒX‚ðo‚³‚È‚¢
		Fade("@OclockCount_*", 0, 0, null, false);
		Move($PreOclockCount1, 0, @0, 26, null, false);
		Fade($PreOclockCount1, 0, 1000, null, false);
		Move($PreOclockCount2, 0, @0, 26, null, false);
		Fade($PreOclockCount2, 0, 1000, null, false);
		Move($PreOclockCount3, 0, @0, 26, null, false);
		Fade($PreOclockCount3, 0, 1000, null, false);
		Move($PreOclockCount4, 0, @0, 26, null, false);
		Fade($PreOclockCount4, 0, 1000, null, false);

		$OclockFade=150;
		if($PreOclockCount0!=$OclockCount0){
			Fade("@OclockAM", $OclockFade, 0, null, false);
			Fade("@OclockPM", $OclockFade, 0, null, false);
			Move("@OclockAM", $OclockFade, @0, 55, null, false);
			Move("@OclockPM", $OclockFade, @0, 55, null, false);
			Move($OclockCount0, $OclockFade, @0, 25, null, false);
			Fade($OclockCount0, $OclockFade, 1000, null, false);
		}

		Fade("@OclockCount_*", $OclockFade, 0, null, false);
		Move("@OclockCount_*", $OclockFade, @0, 56, null, false);
		Move($OclockCount1, $OclockFade, @0, 26, null, false);
		Fade($OclockCount1, $OclockFade, 1000, null, false);
		Move($OclockCount2, $OclockFade, @0, 26, null, false);
		Fade($OclockCount2, $OclockFade, 1000, null, false);
		Move($OclockCount3, $OclockFade, @0, 26, null, false);
		Fade($OclockCount3, $OclockFade, 1000, null, false);
		Move($OclockCount4, $OclockFade, @0, 26, null, false);
		Fade($OclockCount4, $OclockFade, 1000, null, false);
	}

	$PreOclockCount0=$OclockCount0;
	$PreOclockCount1=$OclockCount1;
	$PreOclockCount2=$OclockCount2;
	$PreOclockCount3=$OclockCount3;
	$PreOclockCount4=$OclockCount4;

	$OclockPass_in=true;

	//šƒƒbƒNÝ’u
	LockVideo(false);
}

..ClockNewYear
function ClockNewYear()
{
	$OclockFade=1200;

	//šƒƒbƒNÝ’u
	LockVideo(true);

	if(!$QuickIn){Fade("@OclockBase/*", 300, 1000, null, false);}//ŽžŒv‚ªo‚Ä‚¢‚é•”•ª‚Íƒx[ƒX‚ðo‚³‚È‚¢
	Fade("@OclockCount_*", $OclockFade, 0, null, false);
	Move("@OclockCount_*", $OclockFade, @0, 56, null, false);
	Move($OclockCount1, $OclockFade, @0, 26, null, false);
	Fade($OclockCount1, $OclockFade, 1000, null, false);
	Move($OclockCount2, $OclockFade, @0, 26, null, false);
	Fade($OclockCount2, $OclockFade, 1000, null, false);
	Move($OclockCount3, $OclockFade, @0, 26, null, false);
	Fade($OclockCount3, $OclockFade, 1000, null, false);
	Move($OclockCount4, $OclockFade, @0, 26, null, false);
	Fade($OclockCount4, $OclockFade, 1000, null, false);

	//šƒƒbƒNÝ’u
	LockVideo(false);

	WaitAction("@OclockCount_*", null);

	//šƒƒbƒNÝ’u
	LockVideo(true);

	Fade("@OclockPM", 0, 0, null, false);
	Fade("@OclockAM", 0, 1000, null, false);
	Fade("@OclockCount_*", 0, 0, null, false);
	Fade($OclockCount1, 0, 1000, null, false);
	Fade($OclockCount2, 0, 1000, null, false);
	Fade($OclockCount3, 0, 1000, null, false);
	Fade($OclockCount4, 0, 1000, null, false);
//	Fade("@OclockEX*", 0, 500, null, true);

	//šƒƒbƒNÝ’u
	LockVideo(false);

	Zoom("@OclockEX*", 1200, 1500, 1500, null, false);
	Fade("@OclockEX*", 200, 800, null, true);
	Fade("@OclockEX*", 800, 0, null, true);

	Delete("@OclockEX*");
}

..OclockDelete
function ClockDelete($OclockTime,‘Ò‚¿)
{
	$OclockPass_in=false;

	Fade("@OclockBase/*", $OclockTime, 0, null, false);
	Fade("@Oclock*", $OclockTime, 0, null, ‘Ò‚¿);
}

//---------------------------------------------------------------//
..CreateMaskAXLSP
//---------------------------------------------------------------//
function CreateMaskAXLSP($MaskAXLNut, —Dæ“x, $Xpos, $Ypos, $MaskDataName, ŽqŒp³, $MaskOverData)
{
	CreateMaskSet();
	CreateTextureSP($OverNutName, —Dæ“x, $Xpos, $Ypos, $OverData);
}

//---------------------------------------------------------------//
..CreateMaskAXLEX
//---------------------------------------------------------------//
function CreateMaskAXLEX($MaskAXLNut, —Dæ“x, $Xpos, $Ypos, $MaskDataName, ŽqŒp³, $MaskOverData)
{
	CreateMaskSet();
	CreateTextureEX($OverNutName, —Dæ“x, $Xpos, $Ypos, $OverData);

}

function CreateMaskSet()
{
	$MaskData = "cg/mask/" + $MaskDataName + ".png";
	CreateMask($MaskAXLNut, 0, $Xpos, $Ypos, $MaskData, ŽqŒp³);
	SetAlias($MaskAXLNut,$MaskAXLNut);

/*
	if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_00_00){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_00_00z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_00_01){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_00_01z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_01_00){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_01_01z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_01_01){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_01_01z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_02_00){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_02_00z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_02_01){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_02_01z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_03_00){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_03_00z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_03_01){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_03_01z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_04_00){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_04_00z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_04_01){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_04_01z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_05_00){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_05_00z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_05_01){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_05_01z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_06_00){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_06_00z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_06_01){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_06_01z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_07_00){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_07_00z;
	}else if($MaskDataName == ciƒXƒ‰ƒbƒVƒ…_07_01){
		$MaskOverData = ciƒXƒ‰ƒbƒVƒ…_07_01z;
	}else if($MaskDataName == ciƒ‰ƒCƒ“_00_00){
		$MaskOverData = ciƒ‰ƒCƒ“_00_00z;
	}else if($MaskDataName == ciƒ‰ƒCƒ“_00_01){
		$MaskOverData = ciƒ‰ƒCƒ“_00_01z;
	}else if($MaskDataName == cicƒ‰ƒCƒ“_00_00){
		$MaskOverData = cicƒ‰ƒCƒ“_00_00z;
	}else{
	}
*/

	$OverNutName = $MaskAXLNut + "Line";
	$OverData = "cg/mask/" + $MaskOverData + ".png";
}

//---------------------------------------------------------------//
..CreateAXLWindowEX
//---------------------------------------------------------------//
function CreateAXLWindowEX($CreateXWindowAXLNut, $AXL_X_Wind, —Dæ“x, $AxlWindowPos, $AxlWindowSca, Œp³)
//function CreateXWindowAXLEX($CreateXWindowAXLNut, $AXL_X_Wind, —Dæ“x, $AxlWindowXPos, $AxlWindowYPos, $AxlWindowXSca, $AxlWindowYSca, Œp³)
{
//$AXL_X_Wind‚Å‰¡‘‹‚©c‘‹‚ð”»’f‚µ‚Ü‚·B
if($AXL_X_Wind == "Y")
	{
	CreateWindowEX($CreateXWindowAXLNut, 0, $AxlWindowPos, 1024, $AxlWindowSca, Œp³);

	$TopLineNut = $CreateXWindowAXLNut + "CoverTop";
	CreateTextureSP($TopLineNut, —Dæ“x, 1024, 0, "cg/mask/ciƒEƒBƒ“ƒhƒE‰¡01.png");
	$XWindowCoverTop = ImageVertical($TopLineNut)/2;
	$XX1 = $AxlWindowPos - $XWindowCoverTop;
	Move($TopLineNut, 0, 0, $XX1, null, true);

	$BotLineNut = $CreateXWindowAXLNut + "CoverBot";
	CreateTextureSP($BotLineNut, —Dæ“x, 1024, 0, "cg/mask/ciƒEƒBƒ“ƒhƒE‰¡02.png");
	$XWindowCoverBottom = ImageVertical($BotLineNut)/2;
	$XX2 = $AxlWindowPos + $AxlWindowSca - $XWindowCoverBottom;
	Move($BotLineNut, 0, 0, $XX2, null, true);
	}

if($AXL_X_Wind == "X")
	{
	CreateWindowEX($CreateXWindowAXLNut, $AxlWindowPos, 0, $AxlWindowSca, 576, Œp³);

	$TopLineNut = $CreateXWindowAXLNut + "CoverTop";
	CreateTextureSP($TopLineNut, —Dæ“x, 1024, 0, "cg/mask/ciƒEƒBƒ“ƒhƒEc01.png");
	$XWindowCoverTop = ImageHorizon($TopLineNut)/2;
	$XX1 = $AxlWindowPos - $XWindowCoverTop;
	Move($TopLineNut, 0, $XX1, 0, null, true);

	$BotLineNut = $CreateXWindowAXLNut + "CoverBot";
	CreateTextureSP($BotLineNut, —Dæ“x, 1024, 0, "cg/mask/ciƒEƒBƒ“ƒhƒEc02.png");
	$XWindowCoverBottom = ImageHorizon($BotLineNut)/2;
	$XX2 = $AxlWindowPos + $AxlWindowSca - $XWindowCoverBottom;
	Move($BotLineNut, 0, $XX2, 0, null, true);

	}

	$AxlWindowZoo = 1000;

}

//---------------------------------------------------------------//
..WindowAXLMove
//---------------------------------------------------------------//
function WindowAXLMove($WAXLM_Nut, $AXL_X_Wind, ŽžŠÔ, $AxlWindowMov, ƒeƒ“ƒ|, ‘Ò‚¿)
{
//$AXL_X_Wind‚Å‰¡‘‹‚©c‘‹‚ð”»’f‚µ‚Ü‚·B
if($AXL_X_Wind == "Y")
	{
	$TopLineNut = $WAXLM_Nut + "CoverTop";
	$XWindowCoverTop = ImageVertical($TopLineNut)/2;

//ƒEƒBƒ“ƒhƒEã‚Ì”{—¦ŒvŽZ
	$YWinsdowZooTopSetPoi = ($AxlWindowZoo / 1000) * $AxlWindowSca;//Y”{—¦•
	$YWinsdowZooTopMinusSetPoi= $AxlWindowSca - $YWinsdowZooTopSetPoi;//Yk¬‚µ‚½•
	$YWinsdowZooTopMinusSetHalfPoi = $YWinsdowZooTopMinusSetPoi / 2;//ã”¼•ª‚Ìk¬•

	if($AxlWindowMov == "@0"){
	$YY1 = "@0";
	}else{
	$YY1 = $YWinsdowZooTopMinusSetHalfPoi + $AxlWindowMov - $XWindowCoverTop;
	}


	$BotLineNut = $WAXLM_Nut + "CoverBot";
	$XWindowCoverBottom = ImageVertical($BotLineNut)/2;

//ƒEƒBƒ“ƒhƒE‰º‚Ì”{—¦ŒvŽZ
	$YWinsdowZooBotSetPoi = ($AxlWindowZoo / 1000) * $AxlWindowSca;//Y”{—¦•
	$YWinsdowZooBotMinusSetPoi= $AxlWindowSca - $YWinsdowZooBotSetPoi;//Yk¬‚µ‚½•
	$YWinsdowZooBotMinusSetHalfPoi = $YWinsdowZooBotMinusSetPoi / 2;//ã”¼•ª‚Ìk¬•

	if($AxlWindowMov == "@0"){
	$YY2 = "@0";
	}else{
	$YY2 = $YWinsdowZooBotMinusSetHalfPoi + $YWinsdowZooBotSetPoi +$AxlWindowMov - $XWindowCoverBottom;
	}


	Move($TopLineNut, ŽžŠÔ, @0, $YY1, ƒeƒ“ƒ|, false);
	Move($BotLineNut, ŽžŠÔ, @0, $YY2, ƒeƒ“ƒ|, false);
	Move($WAXLM_Nut, ŽžŠÔ, 0, $AxlWindowMov, ƒeƒ“ƒ|, ‘Ò‚¿);

	}

if($AXL_X_Wind == "X")
	{
	$TopLineNut = $WAXLM_Nut + "CoverTop";
	$XWindowCoverTop = ImageHorizon($TopLineNut)/2;

//ƒEƒBƒ“ƒhƒEã‚Ì”{—¦ŒvŽZ
	$YWinsdowZooTopSetPoi = ($AxlWindowZoo / 1000) * $AxlWindowSca;//Y”{—¦•
	$YWinsdowZooTopMinusSetPoi= $AxlWindowSca - $YWinsdowZooTopSetPoi;//Yk¬‚µ‚½•
	$YWinsdowZooTopMinusSetHalfPoi = $YWinsdowZooTopMinusSetPoi / 2;//ã”¼•ª‚Ìk¬•

	if($AxlWindowMov == "@0"){
	$XX1 = "@0";
	}else{
	$XX1 = $YWinsdowZooTopMinusSetHalfPoi + $AxlWindowMov - $XWindowCoverTop;
	}


	$BotLineNut = $WAXLM_Nut + "CoverBot";
	$XWindowCoverBottom = ImageHorizon($BotLineNut)/2;

//ƒEƒBƒ“ƒhƒE‰º‚Ì”{—¦ŒvŽZ
	$YWinsdowZooBotSetPoi = ($AxlWindowZoo / 1000) * $AxlWindowSca;//Y”{—¦•
	$YWinsdowZooBotMinusSetPoi= $AxlWindowSca - $YWinsdowZooBotSetPoi;//Yk¬‚µ‚½•
	$YWinsdowZooBotMinusSetHalfPoi = $YWinsdowZooBotMinusSetPoi / 2;//ã”¼•ª‚Ìk¬•

	if($AxlWindowMov == "@0"){
	$XX2 = "@0";
	}else{
	$XX2 = $YWinsdowZooBotMinusSetHalfPoi + $YWinsdowZooBotSetPoi +$AxlWindowMov - $XWindowCoverBottom;
	}

	Move($TopLineNut, ŽžŠÔ, $XX1, @0, ƒeƒ“ƒ|, false);
	Move($BotLineNut, ŽžŠÔ, $XX2, @0, ƒeƒ“ƒ|, false);
	Move($WAXLM_Nut, ŽžŠÔ, $AxlWindowMov, 0, ƒeƒ“ƒ|, ‘Ò‚¿);

	}

}

//---------------------------------------------------------------//
..WindowAXLZoom
//---------------------------------------------------------------//
function WindowAXLZoom($WAXLZ_Nut, $AXL_X_Wind, ŽžŠÔ, $AxlWindowZoo, ƒeƒ“ƒ|, ‘Ò‚¿)
{
	Position($WAXLZ_Nut, $AxlWindowXPos, $AxlWindowYPos);

//$AXL_X_Wind‚Å‰¡‘‹‚©c‘‹‚ð”»’f‚µ‚Ü‚·B
if($AXL_X_Wind == "Y")
	{

	$TopLineNut = $WAXLZ_Nut + "CoverTop";
	//$AxlWindowYZoomTopMove = ImageVertical($WAXLZ_Nut)/2;
	$AxlWindowYZoomTopMove = $AxlWindowSca/2;
	$AxlWindowYZoomTopMoveSetA = $AxlWindowYZoomTopMove - ($AxlWindowYZoomTopMove * ($AxlWindowZoo / 1000));
	$AxlWindowYZoomTopMoveSet = $AxlWindowYPos + $AxlWindowYZoomTopMoveSetA - $XWindowCoverTop;

	Move($TopLineNut, ŽžŠÔ, @0, $AxlWindowYZoomTopMoveSet, ƒeƒ“ƒ|, false);
	//Zoom($TopLineNut, ŽžŠÔ, $AxlWindowZoo, $AxlWindowZoo, ƒeƒ“ƒ|, false);

	if($AxlWindowZoo == 0){
	Zoom($TopLineNut, ŽžŠÔ, 1000, 0, Axl3, false);
	}else if($AxlWindowZoo > 0){
	Zoom($TopLineNut, ŽžŠÔ, 1000, 1000, Dxl3, false);
	}

	$BotLineNut = $WAXLZ_Nut + "CoverBot";
	//$AxlWindowYZoomBotMove = ImageVertical($WAXLZ_Nut)/2;
	$AxlWindowYZoomBotMove = $AxlWindowSca/2;
	$AxlWindowYZoomBotMoveSetA = $AxlWindowYZoomBotMove - ($AxlWindowYZoomBotMove * ($AxlWindowZoo / 1000));
	$AxlWindowYZoomBotMoveSet = $AxlWindowYPos + $AxlWindowSca - $AxlWindowYZoomBotMoveSetA - $XWindowCoverBottom;


	Move($BotLineNut, ŽžŠÔ, @0, $AxlWindowYZoomBotMoveSet, ƒeƒ“ƒ|, false);
	//Zoom($BotLineNut, ŽžŠÔ, $AxlWindowZoo, $AxlWindowZoo, ƒeƒ“ƒ|, false);

	if($AxlWindowZoo == 0){
	Zoom($BotLineNut, ŽžŠÔ, 1000, 0, Axl3, false);
	}else if($AxlWindowZoo > 0){
	Zoom($BotLineNut, ŽžŠÔ, 1000, 1000, Dxl3, false);
	}

	Zoom($WAXLZ_Nut, ŽžŠÔ, @0, $AxlWindowZoo, ƒeƒ“ƒ|, ‘Ò‚¿);

	}

if($AXL_X_Wind == "X")
	{

	$TopLineNut = $WAXLZ_Nut + "CoverTop";
	//$AxlWindowYZoomTopMove = ImageVertical($WAXLZ_Nut)/2;
	$AxlWindowXZoomTopMove = $AxlWindowSca/2;
	$AxlWindowXZoomTopMoveSetA = $AxlWindowXZoomTopMove - ($AxlWindowXZoomTopMove * ($AxlWindowZoo / 1000));
	$AxlWindowXZoomTopMoveSet = $AxlWindowXPos + $AxlWindowXZoomTopMoveSetA - $XWindowCoverTop;

	$BotLineNut = $WAXLZ_Nut + "CoverBot";
	//$AxlWindowXZoomBotMove = ImageVertical($WAXLZ_Nut)/2;
	$AxlWindowXZoomBotMove = $AxlWindowSca/2;
	$AxlWindowXZoomBotMoveSetA = $AxlWindowXZoomBotMove - ($AxlWindowXZoomBotMove * ($AxlWindowZoo / 1000));
	$AxlWindowXZoomBotMoveSet = $AxlWindowXPos + $AxlWindowSca - $AxlWindowXZoomBotMoveSetA - $XWindowCoverBottom;


	Move($TopLineNut, ŽžŠÔ, $AxlWindowXZoomTopMoveSet, @0, ƒeƒ“ƒ|, false);
	//Zoom($TopLineNut, ŽžŠÔ, $AxlWindowZoo, $AxlWindowZoo, ƒeƒ“ƒ|, false);

	if($AxlWindowZoo == 0){
	Zoom($TopLineNut, ŽžŠÔ, 0, 1000, Axl3, false);
	}else if($AxlWindowZoo > 0){
	Zoom($TopLineNut, ŽžŠÔ, 1000, 1000, Dxl3, false);
	}


	Move($BotLineNut, ŽžŠÔ, $AxlWindowXZoomBotMoveSet, @0, ƒeƒ“ƒ|, false);
	//Zoom($BotLineNut, ŽžŠÔ, $AxlWindowZoo, $AxlWindowZoo, ƒeƒ“ƒ|, false);

	if($AxlWindowZoo == 0){
	Zoom($BotLineNut, ŽžŠÔ, 0, 1000, Axl3, false);
	}else if($AxlWindowZoo > 0){
	Zoom($BotLineNut, ŽžŠÔ, 1000, 1000, Dxl3, false);
	}

	Zoom($WAXLZ_Nut, ŽžŠÔ, $AxlWindowZoo, @0, ƒeƒ“ƒ|, ‘Ò‚¿);

	}
}


//---------------------------------------------------------------//
..CreateAXLPhWindowEX
//---------------------------------------------------------------//
function CreateAXLPhWindowEX($CreateXPhWindowAXLNut, $AXL_X_Wind, —Dæ“x, $AxlPhWindowPos, $AxlPhWindowSca, Œp³)
//function CreateXPhWindowAXLEX($CreateXPhWindowAXLNut, $AXL_X_Wind, —Dæ“x, $AxlPhWindowXPos, $AxlPhWindowYPos, $AxlPhWindowXSca, $AxlPhWindowYSca, Œp³)
{
//$AXL_X_Wind‚Å‰¡‘‹‚©c‘‹‚ð”»’f‚µ‚Ü‚·B
if($AXL_X_Wind == "Y")
	{
	CreateWindowEX($CreateXPhWindowAXLNut, 0, $AxlPhWindowPos, 1024, $AxlPhWindowSca, Œp³);

	$TopLineNut = $CreateXPhWindowAXLNut + "CoverTop";
	CreateTextureSP($TopLineNut, —Dæ“x, 1024, 0, "cg/obj/objIFŒg‘Ñ˜gü.jpg");
	$XPhWindowCoverTop = ImageVertical($TopLineNut)/2;
	$XX1 = $AxlPhWindowPos - $XPhWindowCoverTop;
	Move($TopLineNut, 0, 0, $XX1, null, true);

	$BotLineNut = $CreateXPhWindowAXLNut + "CoverBot";
	CreateTextureSP($BotLineNut, —Dæ“x, 1024, 0, "cg/obj/objIFŒg‘Ñ˜gü.jpg");
	$XPhWindowCoverBottom = ImageVertical($BotLineNut)/2;
	$XX2 = $AxlPhWindowPos + $AxlPhWindowSca - $XPhWindowCoverBottom;
	Move($BotLineNut, 0, 0, $XX2, null, true);
	}

if($AXL_X_Wind == "X")
	{
	CreateWindowEX($CreateXPhWindowAXLNut, $AxlPhWindowPos, 0, $AxlPhWindowSca, 576, Œp³);

	$TopLineNut = $CreateXPhWindowAXLNut + "CoverTop";
	CreateTextureSP($TopLineNut, —Dæ“x, 1024, 0, "cg/mask/ciƒEƒBƒ“ƒhƒEc01.png");
	$XPhWindowCoverTop = ImageHorizon($TopLineNut)/2;
	$XX1 = $AxlPhWindowPos - $XPhWindowCoverTop;
	Move($TopLineNut, 0, $XX1, 0, null, true);

	$BotLineNut = $CreateXPhWindowAXLNut + "CoverBot";
	CreateTextureSP($BotLineNut, —Dæ“x, 1024, 0, "cg/mask/ciƒEƒBƒ“ƒhƒEc02.png");
	$XPhWindowCoverBottom = ImageHorizon($BotLineNut)/2;
	$XX2 = $AxlPhWindowPos + $AxlPhWindowSca - $XPhWindowCoverBottom;
	Move($BotLineNut, 0, $XX2, 0, null, true);

	}

	$AxlPhWindowZoo = 1000;

}

//---------------------------------------------------------------//
..PhWindowAXLMove
//---------------------------------------------------------------//
function PhWindowAXLMove($WAXLM_Nut, $AXL_X_Wind, ŽžŠÔ, $AxlPhWindowMov, ƒeƒ“ƒ|, ‘Ò‚¿)
{
//$AXL_X_Wind‚Å‰¡‘‹‚©c‘‹‚ð”»’f‚µ‚Ü‚·B
if($AXL_X_Wind == "Y")
	{
	$TopLineNut = $WAXLM_Nut + "CoverTop";
	$XPhWindowCoverTop = ImageVertical($TopLineNut)/2;

//ƒEƒBƒ“ƒhƒEã‚Ì”{—¦ŒvŽZ
	$YPhWindowZooTopSetPoi = ($AxlPhWindowZoo / 1000) * $AxlPhWindowSca;//Y”{—¦•
	$YPhWindowZooTopMinusSetPoi= $AxlPhWindowSca - $YPhWindowZooTopSetPoi;//Yk¬‚µ‚½•
	$YPhWindowZooTopMinusSetHalfPoi = $YPhWindowZooTopMinusSetPoi / 2;//ã”¼•ª‚Ìk¬•

	if($AxlPhWindowMov == "@0"){
	$YY1 = "@0";
	}else{
	$YY1 = $YPhWindowZooTopMinusSetHalfPoi + $AxlPhWindowMov - $XPhWindowCoverTop;
	}


	$BotLineNut = $WAXLM_Nut + "CoverBot";
	$XPhWindowCoverBottom = ImageVertical($BotLineNut)/2;

//ƒEƒBƒ“ƒhƒE‰º‚Ì”{—¦ŒvŽZ
	$YPhWindowZooBotSetPoi = ($AxlPhWindowZoo / 1000) * $AxlPhWindowSca;//Y”{—¦•
	$YPhWindowZooBotMinusSetPoi= $AxlPhWindowSca - $YPhWindowZooBotSetPoi;//Yk¬‚µ‚½•
	$YPhWindowZooBotMinusSetHalfPoi = $YPhWindowZooBotMinusSetPoi / 2;//ã”¼•ª‚Ìk¬•

	if($AxlPhWindowMov == "@0"){
	$YY2 = "@0";
	}else{
	$YY2 = $YPhWindowZooBotMinusSetHalfPoi + $YPhWindowZooBotSetPoi +$AxlPhWindowMov - $XPhWindowCoverBottom;
	}


	Move($TopLineNut, ŽžŠÔ, @0, $YY1, ƒeƒ“ƒ|, false);
	Move($BotLineNut, ŽžŠÔ, @0, $YY2, ƒeƒ“ƒ|, false);
	Move($WAXLM_Nut, ŽžŠÔ, 0, $AxlPhWindowMov, ƒeƒ“ƒ|, ‘Ò‚¿);

	}

if($AXL_X_Wind == "X")
	{
	$TopLineNut = $WAXLM_Nut + "CoverTop";
	$XPhWindowCoverTop = ImageHorizon($TopLineNut)/2;

//ƒEƒBƒ“ƒhƒEã‚Ì”{—¦ŒvŽZ
	$YPhWindowZooTopSetPoi = ($AxlPhWindowZoo / 1000) * $AxlPhWindowSca;//Y”{—¦•
	$YPhWindowZooTopMinusSetPoi= $AxlPhWindowSca - $YPhWindowZooTopSetPoi;//Yk¬‚µ‚½•
	$YPhWindowZooTopMinusSetHalfPoi = $YPhWindowZooTopMinusSetPoi / 2;//ã”¼•ª‚Ìk¬•

	if($AxlPhWindowMov == "@0"){
	$XX1 = "@0";
	}else{
	$XX1 = $YPhWindowZooTopMinusSetHalfPoi + $AxlPhWindowMov - $XPhWindowCoverTop;
	}


	$BotLineNut = $WAXLM_Nut + "CoverBot";
	$XPhWindowCoverBottom = ImageHorizon($BotLineNut)/2;

//ƒEƒBƒ“ƒhƒE‰º‚Ì”{—¦ŒvŽZ
	$YPhWindowZooBotSetPoi = ($AxlPhWindowZoo / 1000) * $AxlPhWindowSca;//Y”{—¦•
	$YPhWindowZooBotMinusSetPoi= $AxlPhWindowSca - $YPhWindowZooBotSetPoi;//Yk¬‚µ‚½•
	$YPhWindowZooBotMinusSetHalfPoi = $YPhWindowZooBotMinusSetPoi / 2;//ã”¼•ª‚Ìk¬•

	if($AxlPhWindowMov == "@0"){
	$XX2 = "@0";
	}else{
	$XX2 = $YPhWindowZooBotMinusSetHalfPoi + $YPhWindowZooBotSetPoi +$AxlPhWindowMov - $XPhWindowCoverBottom;
	}

	Move($TopLineNut, ŽžŠÔ, $XX1, @0, ƒeƒ“ƒ|, false);
	Move($BotLineNut, ŽžŠÔ, $XX2, @0, ƒeƒ“ƒ|, false);
	Move($WAXLM_Nut, ŽžŠÔ, $AxlPhWindowMov, 0, ƒeƒ“ƒ|, ‘Ò‚¿);

	}

}

//---------------------------------------------------------------//
..PhWindowAXLZoom
//---------------------------------------------------------------//
function PhWindowAXLZoom($WAXLZ_Nut, $AXL_X_Wind, ŽžŠÔ, $AxlPhWindowZoo, ƒeƒ“ƒ|, ‘Ò‚¿)
{
	Position($WAXLZ_Nut, $AxlPhWindowXPos, $AxlPhWindowYPos);

//$AXL_X_Wind‚Å‰¡‘‹‚©c‘‹‚ð”»’f‚µ‚Ü‚·B
if($AXL_X_Wind == "Y")
	{

	$TopLineNut = $WAXLZ_Nut + "CoverTop";
	//$AxlPhWindowYZoomTopMove = ImageVertical($WAXLZ_Nut)/2;
	$AxlPhWindowYZoomTopMove = $AxlPhWindowSca/2;
	$AxlPhWindowYZoomTopMoveSetA = $AxlPhWindowYZoomTopMove - ($AxlPhWindowYZoomTopMove * ($AxlPhWindowZoo / 1000));
	$AxlPhWindowYZoomTopMoveSet = $AxlPhWindowYPos + $AxlPhWindowYZoomTopMoveSetA - $XPhWindowCoverTop;

	Move($TopLineNut, ŽžŠÔ, @0, $AxlPhWindowYZoomTopMoveSet, ƒeƒ“ƒ|, false);
	//Zoom($TopLineNut, ŽžŠÔ, $AxlPhWindowZoo, $AxlPhWindowZoo, ƒeƒ“ƒ|, false);

	if($AxlPhWindowZoo == 0){
	Zoom($TopLineNut, ŽžŠÔ, 1000, 0, Axl3, false);
	}else if($AxlPhWindowZoo > 0){
	Zoom($TopLineNut, ŽžŠÔ, 1000, 1000, Dxl3, false);
	}

	$BotLineNut = $WAXLZ_Nut + "CoverBot";
	//$AxlPhWindowYZoomBotMove = ImageVertical($WAXLZ_Nut)/2;
	$AxlPhWindowYZoomBotMove = $AxlPhWindowSca/2;
	$AxlPhWindowYZoomBotMoveSetA = $AxlPhWindowYZoomBotMove - ($AxlPhWindowYZoomBotMove * ($AxlPhWindowZoo / 1000));
	$AxlPhWindowYZoomBotMoveSet = $AxlPhWindowYPos + $AxlPhWindowSca - $AxlPhWindowYZoomBotMoveSetA - $XPhWindowCoverBottom;


	Move($BotLineNut, ŽžŠÔ, @0, $AxlPhWindowYZoomBotMoveSet, ƒeƒ“ƒ|, false);
	//Zoom($BotLineNut, ŽžŠÔ, $AxlPhWindowZoo, $AxlPhWindowZoo, ƒeƒ“ƒ|, false);

	if($AxlPhWindowZoo == 0){
	Zoom($BotLineNut, ŽžŠÔ, 1000, 0, Axl3, false);
	}else if($AxlPhWindowZoo > 0){
	Zoom($BotLineNut, ŽžŠÔ, 1000, 1000, Dxl3, false);
	}

	Zoom($WAXLZ_Nut, ŽžŠÔ, @0, $AxlPhWindowZoo, ƒeƒ“ƒ|, ‘Ò‚¿);

	}

if($AXL_X_Wind == "X")
	{

	$TopLineNut = $WAXLZ_Nut + "CoverTop";
	//$AxlPhWindowYZoomTopMove = ImageVertical($WAXLZ_Nut)/2;
	$AxlPhWindowXZoomTopMove = $AxlPhWindowSca/2;
	$AxlPhWindowXZoomTopMoveSetA = $AxlPhWindowXZoomTopMove - ($AxlPhWindowXZoomTopMove * ($AxlPhWindowZoo / 1000));
	$AxlPhWindowXZoomTopMoveSet = $AxlPhWindowXPos + $AxlPhWindowXZoomTopMoveSetA - $XPhWindowCoverTop;

	$BotLineNut = $WAXLZ_Nut + "CoverBot";
	//$AxlPhWindowXZoomBotMove = ImageVertical($WAXLZ_Nut)/2;
	$AxlPhWindowXZoomBotMove = $AxlPhWindowSca/2;
	$AxlPhWindowXZoomBotMoveSetA = $AxlPhWindowXZoomBotMove - ($AxlPhWindowXZoomBotMove * ($AxlPhWindowZoo / 1000));
	$AxlPhWindowXZoomBotMoveSet = $AxlPhWindowXPos + $AxlPhWindowSca - $AxlPhWindowXZoomBotMoveSetA - $XPhWindowCoverBottom;


	Move($TopLineNut, ŽžŠÔ, $AxlPhWindowXZoomTopMoveSet, @0, ƒeƒ“ƒ|, false);
	//Zoom($TopLineNut, ŽžŠÔ, $AxlPhWindowZoo, $AxlPhWindowZoo, ƒeƒ“ƒ|, false);

	if($AxlPhWindowZoo == 0){
	Zoom($TopLineNut, ŽžŠÔ, 0, 1000, Axl3, false);
	}else if($AxlPhWindowZoo > 0){
	Zoom($TopLineNut, ŽžŠÔ, 1000, 1000, Dxl3, false);
	}


	Move($BotLineNut, ŽžŠÔ, $AxlPhWindowXZoomBotMoveSet, @0, ƒeƒ“ƒ|, false);
	//Zoom($BotLineNut, ŽžŠÔ, $AxlPhWindowZoo, $AxlPhWindowZoo, ƒeƒ“ƒ|, false);

	if($AxlPhWindowZoo == 0){
	Zoom($BotLineNut, ŽžŠÔ, 0, 1000, Axl3, false);
	}else if($AxlPhWindowZoo > 0){
	Zoom($BotLineNut, ŽžŠÔ, 1000, 1000, Dxl3, false);
	}

	Zoom($WAXLZ_Nut, ŽžŠÔ, $AxlPhWindowZoo, @0, ƒeƒ“ƒ|, ‘Ò‚¿);

	}
}

//---------------------------------------------------------------//
..CountDownSE
//---------------------------------------------------------------//
function CountDownSE($CountSet, ƒ{ƒŠƒEƒ€, $SpaceTime)
{
	SetVolumeEX("@SECT*", 300, 0, null);
	Request("ProCount", Pause);
	Delete("ProCount");
	Delete("@SECT*");

	$CTNutNameA="SECT"+$CountSet+"A";
	$CTNutNameB="SECT"+$CountSet+"B";
	$CTNutNameC="SECT"+$CountSet+"C";
	$CTNutNameD="SECT"+$CountSet+"D";

	$CTDataNameA="se“ÁŽê_ƒJƒEƒ“ƒgƒ_ƒEƒ“"+$CountSet+"a";
	$CTDataNameB="se“ÁŽê_ƒJƒEƒ“ƒgƒ_ƒEƒ“"+$CountSet+"b";

	CreateSE($CTNutNameA,$CTDataNameA);
	CreateSE($CTNutNameB,$CTDataNameB);
	CreateSE($CTNutNameC,$CTDataNameA);
	CreateSE($CTNutNameD,$CTDataNameB);
	Wait(16);
	SetFrequency($CTNutNameA, 0, 1000, null);
	SetFrequency($CTNutNameB, 0, 1000, null);
	SetFrequency($CTNutNameC, 0, 1040, null);
	SetFrequency($CTNutNameD, 0, 960, null);

	SetVolumeEX($CTNutNameA, 0, ƒ{ƒŠƒEƒ€, null);
	SetVolumeEX($CTNutNameB, 0, ƒ{ƒŠƒEƒ€, null);
	SetVolumeEX($CTNutNameC, 0, ƒ{ƒŠƒEƒ€, null);
	SetVolumeEX($CTNutNameD, 0, ƒ{ƒŠƒEƒ€, null);

	CreateProcess("ProCount", 0, 0, 0, "CountDownSEAct");
	Request("ProCount", Start);
	Wait(16);
	Request("ProCount", Disused);


}

function CountDownSEAct()
{
	$CTNutNameA2="@"+$CTNutNameA;
	$CTNutNameB2="@"+$CTNutNameB;
	$CTNutNameC2="@"+$CTNutNameC;
	$CTNutNameD2="@"+$CTNutNameD;
	Wait($SpaceTime);
	Request($CTNutNameD2, Play);
	Wait(150);
	Request($CTNutNameA2, Play);
	Request($CTNutNameB2, Play);
	Wait(200);
	Request($CTNutNameC2, Play);
	Wait(16);
	Request($CTNutNameA2, Disused);
	Request($CTNutNameB2, Disused);
	Request($CTNutNameC2, Disused);
	Request($CTNutNameD2, Disused);
}