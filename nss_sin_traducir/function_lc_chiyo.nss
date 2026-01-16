
//1850çH_ƒtƒEƒŠ.nss
function yure1850()
{
	while(1){
		Shake("@ŠG‚ä‚ê", 100000, 0, 5, 0, 10, 500, null, true);
	}
}


function ina1850()
{
	Fade("@ŠGF", 0, 300, null, true);
	Fade("@ŠGF", 200, 0, null, true);
	Fade("@ŠGF", 0, 400, null, true);
	Fade("@ŠGF", 200, 0, null, true);
	Fade("@ŠGF", 0, 500, null, true);
	SetVolume("@SE01", 500, 0, null);
	Fade("@ŠGF", 500, 0, null, true);
	Delete("@ŠGF");

}
function ina1850b()
{
	Fade("@ŠGF", 0, 600, null, true);
	Fade("@ŠGF", 200, 0, null, true);
	Fade("@ŠGF", 0, 700, null, true);
	Fade("@ŠGF", 200, 0, null, true);
	Fade("@ŠGF", 0, 800, null, true);
	Fade("@ŠGF", 200, 0, null, true);
	Fade("@ŠGF", 0, 900, null, true);
	Fade("@ŠGF", 200, 0, null, true);
	Fade("@ŠGF", 0, 1000, null, true);
	SetVolume("@SE01", 500, 0, null);
	Fade("@ŠGF", 500, 0, null, true);
	Delete("@ŠGF");

}
function ina1850c()
{
	$ina1850cF=true;
	begin:
	while($ina1850cF)
	{
		Fade("@ŠGF", 0, 400, null, true);
		Fade("@ŠGF", 200, 0, null, true);
		Fade("@ŠGF", 0, 500, null, true);
		Fade("@ŠGF", 200, 0, null, true);
		Fade("@ŠGF", 0, 600, null, true);
		Fade("@ŠGF", 200, 0, null, true);
	}
}

function ina1850d()
{
	while(1)
	{
		Shake("@ŠGƒJƒƒ‰/ŠG*", 20000, 2, 2, 4, 6, 500, Axl3, true);
	}
}

//#voice_on_ƒ~ƒŠ‚o//VOICE
function tv2040
{
	while(1){
	Request("@tvƒ~ƒŠ‚o1", Play);
	SetVolumeEX("@tvƒ~ƒŠ‚o1", 2000, 700, null);
	WaitPlay("@tvƒ~ƒŠ‚o1");
	Delete("@tvƒ~ƒŠ‚o1");
	Wait(500);
	Request("@tvƒ~ƒŠ‚o2", Play);
	SetVolumeEX("@tvƒ~ƒŠ‚o2", 0, 700, null);
	WaitPlay("@tvƒ~ƒŠ‚o2");
	Delete("@tvƒ~ƒŠ‚o2");
	Wait(500);
	Request("@tvƒ~ƒŠ‚o3", Play);
	SetVolumeEX("@tvƒ~ƒŠ‚o3", 0, 700, null);
	WaitPlay("@tvƒ~ƒŠ‚o3");
	Delete("@tvƒ~ƒŠ‚o3");
	break;
	}
}

function yurukakuStart()
{
	CreateProcess("‚ä‚ép", 150, 0, 0, "yurukaku");
	Request("‚ä‚ép",Start);
}
function yurukakuDelete()
{
	$yurukaku_f=false;
	Request("‚ä‚ép",Stop);
	Delete("‚ä‚ép");

	SetVolume("@ƒTƒEƒ“ƒh‚ä‚éƒJƒNƒJƒN‰¹01", 200, 0, null);
	Request("@ƒTƒEƒ“ƒh‚ä‚éƒJƒNƒJƒN‰¹01",Disused);

	Move("‚ä‚é*", 200, @-40, @0, Dxl2, false);
	Move("‚ä‚é‘‹/‚ä‚é*", 200, @-40, @0, Dxl2, false);
	FadeDelete("@‚ä‚é*",  200, null, true);
	Delete("@ƒTƒEƒ“ƒh‚ä‚éƒJƒNƒJƒN‰¹01");

}
function yurukaku()
{
	begin:
	
	$yurukaku_f=true;
	while($yurukaku_f)
	{
		Fade("@‚ä‚é‘‹/‚ä‚éŠG‚P", 0, 1000, null, true);
		Fade("@‚ä‚é‘‹/‚ä‚éŠG‚Q", 0, 0, null, true);
		if($yurukaku_f){
//		CreateSE("SE01","se‹[‰¹_ƒMƒƒƒO_˜U‚è");
//		MusicStart("SE01",0,600,0,1000,null,false);
			Request("@ƒTƒEƒ“ƒh‚ä‚éƒJƒNƒJƒN‰¹01", Stop);
			Request("@ƒTƒEƒ“ƒh‚ä‚éƒJƒNƒJƒN‰¹01", Play);
		}
		Fade("@‚ä‚é‘‹/‚ä‚éŠG‚Q", 0, 1000, null, true);
		Fade("@‚ä‚é‘‹/‚ä‚éŠG‚P", 0, 0, null, true);
		Wait(100);
		Fade("@‚ä‚é‘‹/‚ä‚éŠG‚P", 0, 1000, null, true);
		Fade("@‚ä‚é‘‹/‚ä‚éŠG‚Q", 0, 0, null, true);
		Wait(100);
		Fade("@‚ä‚é‘‹/‚ä‚éŠG‚Q", 0, 1000, null, true);
		Fade("@‚ä‚é‘‹/‚ä‚éŠG‚P", 0, 0, null, true);
		Wait(500);
	}
}
function yurukakuPrepare($”wŒi1,$‰æ‘œ1,$‰æ‘œ2)
{
	$”wŒi1p="cg/yur/"+$”wŒi1+".png";
	$‰æ‘œ1p="cg/yur/"+$‰æ‘œ1+".png";
	$‰æ‘œ2p="cg/yur/"+$‰æ‘œ2+".png";

	CreateSound("ƒTƒEƒ“ƒh‚ä‚éƒJƒNƒJƒN‰¹01", SE, "sound/se/se‹[‰¹_ƒMƒƒƒO_˜U‚è.ogg");
	SetAlias("ƒTƒEƒ“ƒh‚ä‚éƒJƒNƒJƒN‰¹01","ƒTƒEƒ“ƒh‚ä‚éƒJƒNƒJƒN‰¹01");
	SetVolume("ƒTƒEƒ“ƒh‚ä‚éƒJƒNƒJƒN‰¹01", 0, 300, null);

	CreateMask("‚ä‚é‘‹", 0, Center, Middle, "cg/yur/yurIF”wŒiƒ}ƒXƒN.png", false);
	SetAlias("‚ä‚é‘‹","‚ä‚é‘‹");

	CreateTextureEX("‚ä‚é˜g", 110, Center, Middle, "cg/yur/yurIF˜g.png");
	CreateTextureEX("‚ä‚é‘‹/‚ä‚é”wŒi", 100, Center, Middle, $”wŒi1p);
	CreateTextureEX("‚ä‚é‘‹/‚ä‚éŠG‚P", 100, Center, Middle, $‰æ‘œ1p);
	CreateTextureEX("‚ä‚é‘‹/‚ä‚éŠG‚Q", 100, Center, Middle, $‰æ‘œ2p);
	Move("‚ä‚é*", 0, @40, @0, null, true);
	Move("‚ä‚é‘‹/‚ä‚é*", 0, @40, @0, null, true);

	Move("‚ä‚é*", 200, @-40, @0, Dxl2, false);
	Move("‚ä‚é‘‹/‚ä‚é*", 200, @-40, @0, Dxl2, false);
	Fade("@‚ä‚é˜g",  200, 1000, null, false);
	Fade("@‚ä‚é‘‹/‚ä‚é”wŒi",  200, 1000, null, false);
	Fade("@‚ä‚é‘‹/‚ä‚éŠG‚P",  200, 1000, null, true);
}


function yurutinStart()
{

	CreateSound("SE01", SE, "sound/se/se“®ì_’Í‚İ‘¹‚Ë‚é.ogg");
	SetAlias("SE01","SE01");
	CreateSound("SE02", SE, "sound/se/se“®ì_’Í‚İ‘¹‚Ë‚é.ogg");
	SetAlias("SE02","SE02");
	CreateSound("SE03", SE, "sound/se/se“®ì_’Í‚İ‘¹‚Ë‚é.ogg");
	SetAlias("SE03","SE03");
	SetVolume("SE01", 0, 350, null);
	SetVolume("SE02", 0, 350, null);
	SetVolume("SE03", 0, 350, null);


	CreateProcess("‚ä‚ép", 150, 0, 0, "yurutin");
	Request("‚ä‚ép",Start);
}
function yurutinDelete()
{
	$yurukaku_f=false;
	Request("‚ä‚ép",Stop);
	Delete("‚ä‚ép");

}

function yurutin()
{
//	CreateSE("SE01","se“®ì_’Í‚İ‘¹‚Ë‚é");
//	CreateSE("SE02","se“®ì_’Í‚İ‘¹‚Ë‚é");
//	CreateSE("SE03","se“®ì_’Í‚İ‘¹‚Ë‚é");

	begin:
	
	$yurukaku_f=true;
	while($yurukaku_f)
	{
		Fade("@‚ä‚é‘‹/ŠG‚ä‚és*",  0, 0, null, false);

		Rotate("@‚ä‚é‘‹/ŠG‚ä‚ém*", 0, 0,180,0, null, false);
		Move("@‚ä‚é‘‹/ŠG‚ä‚émçH", 0, 363,130, null, false);
		Move("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß", 0, 193,124, null, false);
		Fade("@‚ä‚é‘‹/ŠG‚ä‚ém*",  0, 1000, null, true);
		
	if($yurukaku_f){
		Request("@SE01", Play);
		Request("@SE01", Disused);
//		MusicStart("SE01",0,700,0,1000,null,false);
	}
	WaitKey(200);
		BezierMove("@‚ä‚é‘‹/ŠG‚ä‚émçH", 200, (363,130){353,103}{343,133}{353,143}(353,133), Dxl3, false);//60
		BezierMove("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß", 200, (193,124){273,133}{283,133}(293,133), Dxl3, false);//120
	WaitKey(400);

		Fade("@‚ä‚é‘‹/ŠG‚ä‚ém*",  0, 0, null, false);
		Rotate("@‚ä‚é‘‹/ŠG‚ä‚ém*", 0, 0,0,0, null, false);
		Move("@‚ä‚é‘‹/ŠG‚ä‚émçH", 0, 226,130, null, false);
		Move("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß", 0, 388,124, null, false);
		Fade("@‚ä‚é‘‹/ŠG‚ä‚ém*",  0, 1000, null, true);
		
	if($yurukaku_f){
		Request("@SE02", Play);
		Request("@SE02", Disused);
//		MusicStart("SE02",0,700,0,1000,null,false);
	}
	WaitKey(200);
		BezierMove("@‚ä‚é‘‹/ŠG‚ä‚émçH", 200, (223,130){233,103}{243,133}{253,153}(233,133), Dxl3, false);//60
		BezierMove("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß", 200, (383,124){333,133}{313,153}(303,133), Dxl3, false);//120
	
	WaitKey(400);
	
		Fade("@‚ä‚é‘‹/ŠG‚ä‚ém*",  0, 0, null, false);
		Rotate("@‚ä‚é‘‹/ŠG‚ä‚ém*", 0, 0,180,0, null, false);
		Move("@‚ä‚é‘‹/ŠG‚ä‚émçH", 0, 363,130, null, false);
		Move("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß", 0, 193,124, null, false);
		Fade("@‚ä‚é‘‹/ŠG‚ä‚ém*",  0, 1000, null, true);
		
	if($yurukaku_f){
		Request("@SE03", Play);
		Request("@SE03", Disused);
//		MusicStart("SE03",0,700,0,1000,null,false);
	}
	WaitKey(200);
		BezierMove("@‚ä‚é‘‹/ŠG‚ä‚émçH", 300, (363,130){353,103}{343,133}{353,153}(383,133), Dxl3, false);//60
		BezierMove("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß", 300, (143,124){223,133}{233,153}{253,173}(273,133), Dxl3, false);//120
		$yurukaku_f=false;
	WaitKey(300);
		break;
	}

}
function yurutin2Start()
{
	CreateSound("SE01", SE, "sound/se/se‹[‰¹_ƒMƒƒƒO_‚Õ‚É.ogg");
	SetAlias("SE01","SE01");
	CreateSound("SE02", SE, "sound/se/se“®ì_’Í‚İ‘¹‚Ë‚é.ogg");
	SetAlias("SE02","SE02");
	SetVolume("SE01", 0, 350, null);
	SetVolume("SE02", 0, 350, null);

	CreateProcess("‚ä‚ép2", 150, 0, 0, "yurutin2");
	Request("‚ä‚ép2",Start);
}
function yurutin2Delete()
{
	$yurukaku_f=false;
	Request("‚ä‚ép2",Stop);
	Delete("‚ä‚ép2");

	SetVolume("@SE01", 200, 0, null);
	SetVolume("@SE02", 200, 0, null);
	Move("@‚ä‚é*", 200, @-40, @0, Dxl2, false);
	Move("@‚ä‚é‘‹/ŠG*", 200, @-40, @0, Dxl2, false);
	FadeDelete("@‚ä‚é*",  200, null, true);
	Delete("@SE01");
	Delete("@SE02");
}

function yurutin2()
{
	begin:

	$yurukaku_f=true;
	while($yurukaku_f)
	{
		Fade("@‚ä‚é‘‹/ŠG‚ä‚ém*",  0, 0, null, false);
		Rotate("@‚ä‚é‘‹/ŠG‚ä‚ém*", 0, 0,0,0, null, false);
		Move("@‚ä‚é‘‹/ŠG‚ä‚émçH", 0, 226,130, null, false);
		Move("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß", 0, 388,124, null, false);
		Fade("@‚ä‚é‘‹/ŠG‚ä‚ém*",  0, 1000, null, true);
	
	if($yurukaku_f){
//		CreateSE("SE02","se“®ì_’Í‚İ‘¹‚Ë‚é");
//		MusicStart("SE02",0,700,0,1000,null,false);
		Request("@SE02", Play);
		Request("@SE02", Disused);
	}
	WaitKey(200);
		BezierMove("@‚ä‚é‘‹/ŠG‚ä‚émçH", 200, (223,130){233,103}{243,133}{253,173}(233,133), Dxl3, false);//60
		BezierMove("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß", 200, (383,124){333,133}{313,153}(313,133), Dxl3, false);//120
	WaitKey(300);

	if($yurukaku_f){
//		CreateSE("SE01","se‹[‰¹_ƒMƒƒƒO_‚Õ‚É");
//		MusicStart("SE01",0,700,0,1000,null,false);
		Request("@SE01", Play);
		Request("@SE01", Disused);
	}
	WaitKey(200);
		SetVertex("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß",250,270);
		Request("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß",Smoothing);
		Rotate("@‚ä‚é‘‹/ŠG‚ä‚émŒb“ß", 100, 0,0,10, DxlAuto, false);
	WaitKey(100);
		Shake("@‚ä‚é‘‹/ŠG‚ä‚émçH", 100, 0, 2, 0, 0, 500, null, false);
		$yurukaku_f=false;
	WaitKey(100);
		break;
	}

}

