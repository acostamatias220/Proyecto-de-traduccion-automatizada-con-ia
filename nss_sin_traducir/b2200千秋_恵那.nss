
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2200çH_Œb“ß.nss_MAIN
{
//¡’´‘¬İ’è
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//¡‘I‘ğˆƒXƒNƒŠƒvƒg‹y‚Ñƒtƒ‰ƒOİ’è
	//¥ƒCƒxƒ“ƒg‚b‚f
	#ƒCƒxƒ“ƒgƒtƒ@ƒCƒ‹–¼=true;

	//¥ƒ‹[ƒgƒtƒ‰ƒOA‘I‘ğˆAŸ‚ÌGameName
	$PreGameName = $GameName;

	if($CharaName=="çH"){
		$GameName = "b2208çH_Œb“ß_ƒm[ƒR.nss";
	}else if($CharaName=="Œb“ß"){
		$GameName = "b2208çH_Œb“ß_ƒm[ƒR.nss";
	}else{
		$GameName = "b2208çH_Œb“ß_ƒm[ƒR.nss";
	}

}

scene b2200çH_Œb“ß.nss
{
	$ƒXƒNƒŠƒvƒgƒo[ƒWƒ‡ƒ“ = "  Version $Revision:  $";
	$\¬–¼ = ModuleFileName();
	$\•¶–¼ = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "b2200çH_Œb“ß.nss"
//title "ƒAƒUƒiƒGƒ‹—ª’D–Œ"
//previous "b2150çH_Œb“ß.nss"

////////////footer////////////
//next "çH" "b2208çH_Œb“ß_ƒm[ƒR.nss"
//next "Œb“ß" "b2208çH_Œb“ß_ƒm[ƒR.nss"


////////////body////////////

//¡Ä’è‹`’èŒ^•¶
	PrintBG("ã”wŒi", 30000);

{	ClockPass(2207);}

	if($PreGameName=="b2150çH_Œb“ß.nss"){

	CreateColorSP("ŠGF•", 20000, "#000000");
	FadeDelete("ã”wŒi", 0, null, true);

	WaitKey(2000);

	OnBG(10,"bg0103211H—tŒ´_’†‰›’Ê‚è_•Â“X");
	FadeBG(0,true);

	CreateTextureEX("ŠG”wŒi100", 30, Center, 0, "cg/bg/bg0103211H—tŒ´_’†‰›’Ê‚è_•Â“X.jpg");
	Fade("ŠG”wŒi100", 0, 1000, null, false);
	SetShade("ŠG”wŒi100", MEDIUM);

//Ÿ‚r‚dFa‘Ø
	CreateSE("SE01","seƒKƒ„_a‘Ø_l");
	MusicStart("SE01",2000,700,0,1000,null,true);

	FadeDelete("ŠGF•", 2000, null, true);

	}else{

	OnBG(10,"bg0103211H—tŒ´_’†‰›’Ê‚è_•Â“X");
	FadeBG(0,true);

	CreateTextureEX("ŠG”wŒi100", 30, Center, 0, "cg/bg/bg0103211H—tŒ´_’†‰›’Ê‚è_•Â“X.jpg");
	SetShade("ŠG”wŒi100", MEDIUM);
	Wait(16);
	Fade("ŠG”wŒi100", 0, 1000, null, false);

//Ÿ‚r‚dFa‘Ø
	CreateSE("SE01","seƒKƒ„_a‘Ø_l");
	MusicStart("SE01",300,700,0,1000,null,true);

	FadeDelete("ã”wŒi", 0, null, true);

	}




//‘‹€”õ
	CreateAXLWindowEX("ŠG‘‹", "Y", 1600, 96, 352, false);
	WindowAXLZoom("ŠG‘‹", "Y", 0, 0, null, true);
	CreateTextureSP("ŠG‘‹/ŠG”wŒi", 1520, Center, Middle, "cg/bg/bg0103211H—tŒ´_’†‰›’Ê‚è_•Â“X.jpg");
	Zoom("ŠG‘‹/ŠG”wŒi", 0, 2000, 2000, Dxl2, true);
	SetShade("ŠG‘‹/ŠG”wŒi", heavy);
	Move("ŠG‘‹/ŠG”wŒi", 0, @512, @0, null, true);
	Move("ŠG‘‹/ŠG”wŒi", 600000, @-1024, @0, null, false);

//ƒLƒƒƒ‰€”õ
	CreateTextureEX("ŠG‘‹/ŠG—§ŠG", 1530, center, middle, "cg/bu/buçH_˜N‚ç‚©_sigh.png");
	CreateTextureEX("ŠG‘‹/ŠG—§ŠG2", 1530, center, middle, "cg/bu/buŒb“ß_’Êí_normal.png");

//“®ì
	Move("ŠG‘‹/ŠG—§ŠG", 0, @0, @30, Dxl2, true);
	Fade("ŠG‘‹/ŠG—§ŠG", 200, 1000, null, false);
	WindowAXLZoom("ŠG‘‹", "Y", 200, 1000, Dxl2, true);



//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
<PRE @box0>
[text0010]

//y¬‰OçHz
<voice name="¬‰OçH" class="¬‰OçH" src="voice/b22/000100010kit">
u‚ñcc‚ñ‚ñcc‚ñccv


{
	Move("ŠG‘‹/ŠG—§ŠG2", 0, @150, @30, Dxl2, true);
	Fade("ŠG‘‹/ŠG—§ŠG", 300, 0, null, false);
	Fade("ŠG‘‹/ŠG—§ŠG2", 200, 1000, null, true);

}
//y•xmŒ©Œb“ßz
<voice name="•xmŒ©Œb“ß" class="•xmŒ©Œb“ß" src="voice/b22/000100020fje">
uçHcc‚¾‚¢‚ÔŠçFA—Ç‚­‚È‚Á‚Ä‚év

{
	CreateTextureEX("ŠG‘‹/ŠG—§ŠG", 1530, center, middle, "cg/bu/buŒb“ß_’Êí_happy.png");
	Move("ŠG‘‹/ŠG—§ŠG", 0, @150, @30, Dxl2, true);
	Fade("ŠG‘‹/ŠG—§ŠG2", 300, 0, null, false);
	Fade("ŠG‘‹/ŠG—§ŠG", 200, 1000, null, false);
}
//y•xmŒ©Œb“ßz
<voice name="•xmŒ©Œb“ß" class="•xmŒ©Œb“ß" src="voice/b22/000100030fje">
u‘§‚à—‚¿’…‚¢‚Ä‚«‚½‚İ‚½‚¢‚¾‚µcc
@‚±‚ê‚Å‚È‚ñ‚Æ‚©AˆêˆÀS‚©‚ÈHv


{
	CreateTextureEX("ŠG‘‹/ŠG—§ŠG2", 1530, center, middle, "cg/bu/bu‘ºè_’Êí_fear.png");
	Move("ŠG‘‹/ŠG—§ŠG2", 0, @-150, @30, Dxl2, true);
	Fade("ŠG‘‹/ŠG—§ŠG", 300, 0, null, false);
	Fade("ŠG‘‹/ŠG—§ŠG2", 200, 1000, null, false);
}
//y‘ºè—Ez
<voice name="‘ºè—E" class="‘ºè—E" src="voice/b22/000100040msi">
u‚µ‚©‚µcc‚È‚©‚È‚©i‚Ü‚È‚¢‚Å‚·‚Ë‚¦v

//y‘ºè—Ez
<voice name="‘ºè—E" class="‘ºè—E" src="voice/b22/000100050msi">
u‰½‚©–ŒÌ‚Å‚à‚ ‚Á‚½‚ñ‚Å‚µ‚å‚¤‚©H@Œğ’Ê‹K§Hv

{
	CreateTextureEX("ŠG‘‹/ŠG—§ŠG", 1530, center, middle, "cg/bu/buŒb“ß_ˆê‹x_sigh.png");
	Move("ŠG‘‹/ŠG—§ŠG", 0, @150, @30, Dxl2, true);
	Fade("ŠG‘‹/ŠG—§ŠG2", 300, 0, null, false);
	Fade("ŠG‘‹/ŠG—§ŠG", 200, 1000, null, false);
}
//y•xmŒ©Œb“ßz
<voice name="•xmŒ©Œb“ß" class="•xmŒ©Œb“ß" src="voice/b22/000100060fje">
u‚»‚¤‚¢‚¦‚Î‚³‚Á‚«A‘å‚«‚È‰¹‚ª‚µ‚½‚¯‚Çccv


{
	CreateTextureEX("ŠG‘‹/ŠG—§ŠG2", 1530, center, middle, "cg/bu/bu‘ºè_’Êí_fear.png");
	Move("ŠG‘‹/ŠG—§ŠG2", 0, @-150, @30, Dxl2, true);
	Fade("ŠG‘‹/ŠG—§ŠG", 300, 0, null, false);
	Fade("ŠG‘‹/ŠG—§ŠG2", 200, 1000, null, false);
}
//y‘ºè—Ez
<voice name="‘ºè—E" class="‘ºè—E" src="voice/b22/000100070msi">
u‚¦H@ƒAƒŒ‚Í\\v


</PRE>
	SetText();
	TypeBegin(0);//\\\\\\\\\\\\\\\\\\\\\\\\\\\

	TextBoxDelete(150);

	SceneOut(20000, 1000, "blind_01_00_0");

	EndScene();

}
