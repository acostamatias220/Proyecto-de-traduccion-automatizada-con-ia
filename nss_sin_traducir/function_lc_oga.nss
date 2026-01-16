
.■パチンコ液晶演出用
function cutin()
{
		CreateTextureEXadd("フレーム上", 15100, 0, 0, "cg/ef/ライトニング.png");
		CreateTextureEXadd("フレーム下", 15100, 0, 0, "cg/ef/ライトニング.png");


		CreateWindow("背景ウィンドウ", 1500, 0, 100, 1024, 376, false);
		SetAlias("背景ウィンドウ","背景ウィンドウ");
		CreateTextureEX("背景ウィンドウ/カットイン", 10100, center, 180, "cg/ef/ev_dr1515宮本空中落下栄光の手_a.jpg");
		Zoom("背景ウィンドウ/カットイン", 0, 1500, 1500, null, true);
		CreateColorEXadd("背景ウィンドウ/絵色カットフラッシュ", 11500, "WHITE");

		Zoom("背景ウィンドウ", 0, 1000, 0, null, true);
		Fade("背景ウィンドウ/絵色カットフラッシュ", 0, 1000, null, true);
		Fade("背景ウィンドウ/カットイン", 0, 1000, null, true);

	Rotate("フレーム下", 0, @0, @180, @0, null,true);
		Move("フレーム上", 0, @0, 265, null, true);
		Move("フレーム下", 0, @0, 265, null, true);

	Rotate("フレーム*", 400000, @1500000, @0, @0, null,false);


	Fade("フレーム*", 0, 1000, null, true);
		Zoom("背景ウィンドウ", 250, 1000, 900, Dxl3, false);
		Move("フレーム上", 250, @0, 93, Dxl3, false);
		Move("フレーム下", 250, @0, 430, Dxl3, true);
		Move("背景ウィンドウ/カットイン", 3000, @88, @0, null, false);
	Fade("背景ウィンドウ/絵色カットフラッシュ", 500, 0, null, true);



}

function cutout()
{


		Fade("背景ウィンドウ/絵色カットフラッシュ", 150, 1000, null, true);
		Zoom("背景ウィンドウ", 200, 1000, 0, Dxl3, false);
		Move("フレーム上", 200, @0, 265, Dxl3, false);
		Move("フレーム下", 200, @0, 265, Dxl3, true);
	Fade("フレーム*", 100, 0, null, true);
	Delete("背景ウィンドウ*");
	Delete("フレーム*");
}


function zugara_create()
{
	CreateTextureEX("絵図柄A6", 10000, Center, Middle, "cg/ef/図柄_樋ヶ.png");
	CreateTextureEX("絵図柄A7", 10000, Center, Middle, "cg/ef/図柄_スピカ.png");
	CreateTextureEX("絵図柄A8", 10000, Center, Middle, "cg/ef/図柄_宮本.png");
	CreateTextureEX("絵図柄A9", 10000, Center, Middle, "cg/ef/図柄_日下部.png");

	CreateTextureEX("絵図柄B6", 10000, Center, Middle, "cg/ef/図柄_樋ヶ.png");
	CreateTextureEX("絵図柄B7", 10000, Center, Middle, "cg/ef/図柄_スピカ.png");
	CreateTextureEX("絵図柄B8", 10000, Center, Middle, "cg/ef/図柄_宮本.png");
	CreateTextureEX("絵図柄B9", 10000, Center, Middle, "cg/ef/図柄_日下部.png");

	CreateTextureEX("絵図柄C6", 10000, Center, Middle, "cg/ef/図柄_樋ヶ.png");
	CreateTextureEX("絵図柄C7", 10000, Center, Middle, "cg/ef/図柄_スピカ.png");
	CreateTextureEX("絵図柄C8", 10000, Center, Middle, "cg/ef/図柄_宮本.png");
	CreateTextureEX("絵図柄C9", 10000, Center, Middle, "cg/ef/図柄_日下部.png");

}

function zugara_haichi01()
{
	Move("絵図柄A6", 0, 129, 443, null, true);
	Move("絵図柄A7", 0, 129, 143, null, true);
	Move("絵図柄A8", 0, 129, -157, null, true);
	Move("絵図柄A9", 0, 129, -457, null, true);

	Move("絵図柄B6", 0, 391, 443, null, true);
	Move("絵図柄B7", 0, 391, 143, null, true);
	Move("絵図柄B8", 0, 391, -157, null, true);
	Move("絵図柄B9", 0, 391, -457, null, true);

	Move("絵図柄C6", 0, 653, -157, null, true);
	Move("絵図柄C7", 0, 653, 143, null, true);
	Move("絵図柄C8", 0, 653, 443, null, true);
	Move("絵図柄C9", 0, 653, 743, null, true);

}

function zugara_haichi01B()
{
	Move("絵図柄B6", 0, 391, 743, null, true);
	Move("絵図柄B7", 0, 391, 443, null, true);
	Move("絵図柄B8", 0, 391, 143, null, true);
	Move("絵図柄B9", 0, 391, -157, null, true);

}

function zugara_haichi01C()
{
	Move("絵図柄B6", 200, 391, 743, null, false);
	Move("絵図柄B7", 200, 391, 443, null, false);
	Move("絵図柄B8", 200, 391, 143, null, false);
	Move("絵図柄B9", 200, 391, -157, null, false);

}

function zugara_fade01ABC(透過度)
{
	Fade("絵図柄A6", 0, 透過度, null, true);
	Fade("絵図柄B6", 0, 透過度, null, true);
	Fade("絵図柄C6", 0, 透過度, null, true);
	Fade("絵図柄A7", 0, 1000, null, true);
	Fade("絵図柄B7", 0, 透過度, null, true);
	Fade("絵図柄C7", 0, 1000, null, true);
	Fade("絵図柄A8", 0, 透過度, null, true);
	Fade("絵図柄B8", 0, 1000, null, true);
	Fade("絵図柄C8", 0, 透過度, null, true);
	Fade("絵図柄A9", 0, 透過度, null, true);
	Fade("絵図柄B9", 0, 透過度, null, true);
	Fade("絵図柄C9", 0, 透過度, null, true);

}

function zugara_fade02ABC(時間,透過度)
{
	Fade("絵図柄A6", 時間, 透過度, null, false);
	Fade("絵図柄B6", 時間, 透過度, null, false);
	Fade("絵図柄C6", 時間, 透過度, null, false);
	Fade("絵図柄A7", 時間, 1000, null, false);
	Fade("絵図柄B7", 時間, 透過度, null, false);
	Fade("絵図柄C7", 時間, 1000, null, false);
	Fade("絵図柄A8", 時間, 透過度, null, false);
	Fade("絵図柄B8", 時間, 1000, null, false);
	Fade("絵図柄C8", 時間, 透過度, null, false);
	Fade("絵図柄A9", 時間, 透過度, null, false);
	Fade("絵図柄B9", 時間, 透過度, null, false);
	Fade("絵図柄C9", 時間, 透過度, null, false);

}

function zugara_zoom01ABC()
{
	Zoom("@絵図柄A6", 0, 1000, 1000, null, true);
	Zoom("@絵図柄B6", 0, 1300, 1300, null, true);
	Zoom("@絵図柄C6", 0, 1000, 1000, null, true);
	Zoom("@絵図柄A7", 0, 1000, 1000, null, true);
	Zoom("@絵図柄B7", 0, 1300, 1300, null, true);
	Zoom("@絵図柄C7", 0, 1000, 1000, null, true);
	Zoom("@絵図柄A8", 0, 1000, 1000, null, true);
	Zoom("@絵図柄B8", 0, 1300, 1300, null, true);
	Zoom("@絵図柄C8", 0, 1000, 1000, null, true);
	Zoom("@絵図柄A9", 0, 1000, 1000, null, true);
	Zoom("@絵図柄B9", 0, 1300, 1300, null, true);
	Zoom("@絵図柄C9", 0, 1000, 1000, null, true);

}

function zugara_move01B()
{

	while(1){
	Move("@絵図柄B6", $図柄動作時間, @0, 753, AxlDxl, false);
	Move("@絵図柄B7", $図柄動作時間, @0, 453, AxlDxl, false);
	Move("@絵図柄B8", $図柄動作時間, @0, 153, AxlDxl, false);
	Move("@絵図柄B9", $図柄動作時間, @0, -147, AxlDxl, true);
	Move("@絵図柄B6", $図柄動作時間, @0, 733, AxlDxl, false);
	Move("@絵図柄B7", $図柄動作時間, @0, 433, AxlDxl, false);
	Move("@絵図柄B8", $図柄動作時間, @0, 133, AxlDxl, false);
	Move("@絵図柄B9", $図柄動作時間, @0, -167, AxlDxl, true);
	}

}


function zugara_go01()
{
	zugara_create();
	zugara_fade01ABC(0);
	zugara_haichi01();
	zugara_haichi01B();
}

function zugara_play01($図柄動作時間)
{
	CreateProcess("プロセス１", 150, 0, 0, "zugara_move01B");
	Request("プロセス１", Start);

}

function zugara_stop01()
{
	Request("プロセス１", Stop);
	Delete("プロセス１");
}

function zugara_delete01()
{
	Delete("@絵図柄*");
}



function panda_create()
{
	CreateTextureSP("絵群予告パンダ01", 100, 1124, 150, "cg/ef/ef_ct_パンダ4.png");
	CreateTextureSP("絵群予告パンダ02", 100, 1124, 0, "cg/ef/ef_ct_パンダ4.png");
	CreateTextureSP("絵群予告パンダ03", 100, 1124, 250, "cg/ef/ef_ct_パンダ4.png");
	CreateTextureSP("絵群予告パンダ04", 100, 1124, 400, "cg/ef/ef_ct_パンダ4.png");
	CreateTextureSP("絵群予告パンダ05", 100, 1124, 125, "cg/ef/ef_ct_パンダ4.png");
	CreateTextureSP("絵群予告パンダ06", 100, 1124, 320, "cg/ef/ef_ct_パンダ4.png");
	CreateTextureSP("絵群予告パンダ07", 100, 1124, 175, "cg/ef/ef_ct_パンダ4.png");
	CreateTextureSP("絵群予告パンダ08", 100, 1124, 400, "cg/ef/ef_ct_パンダ4.png");
	CreateTextureSP("絵群予告パンダ09", 100, 1124, 225, "cg/ef/ef_ct_パンダ4.png");
	CreateTextureSP("絵群予告パンダ10", 100, 1124, 90, "cg/ef/ef_ct_パンダ4.png");

	Rotate("絵群予告*", 0, @180, @0, @-90, null,true);




}

function panda_play01(間隔,速度,X移動値,Y移動値,テンポ)
{

//	$群予告ランダムウェイト=50+Random(20);

	Move("@絵群予告パンダ01", 速度, X移動値, Y移動値, テンポ, false);

	Wait(間隔);

	Move("@絵群予告パンダ02", 速度, X移動値, Y移動値, テンポ, false);

	Wait(間隔);

	Move("@絵群予告パンダ03", 速度, X移動値, Y移動値, テンポ, false);

	Wait(間隔);

	Move("@絵群予告パンダ04", 速度, X移動値, Y移動値, テンポ, false);

	Wait(間隔);

	Move("@絵群予告パンダ05", 速度, X移動値, Y移動値, テンポ, false);

	Wait(間隔);

	Move("@絵群予告パンダ06", 速度, X移動値, Y移動値, テンポ, false);

	Wait(間隔);

	Move("@絵群予告パンダ07", 速度, X移動値, Y移動値, テンポ, false);

	Wait(間隔);

	Move("@絵群予告パンダ08", 速度, X移動値, Y移動値, テンポ, false);

	Wait(間隔);

	Move("@絵群予告パンダ09", 速度, X移動値, Y移動値, テンポ, false);

	Wait(間隔);

	Move("@絵群予告パンダ10", 速度, X移動値, Y移動値, テンポ, false);



}
function panda_ZoomLoop1()
{
	while(1){

	Zoom("@絵群予告*", 500, 1800, 1800, AxlDxl, true);
	Zoom("@絵群予告*", 500, 1600, 1600, AxlDxl, true);

	}
}

function panda_GO()
{

	panda_create();
	panda_play01(150,2000,-250,@0,Axl1);

}


function panda_STOP()
{

	Request("群ズームプロセス１", Stop);


}

function cutin_EX(動作時間,X座標,Y座標,テンポ,$おがみカットキャラ画像データ,$おがみカット背景画像データ)
{
		CreateTextureEXadd("フレーム上", 15100, 0, 0, "cg/ef/ライトニング.png");
		CreateTextureEXadd("フレーム下", 15100, 0, 0, "cg/ef/ライトニング.png");


		CreateWindow("背景ウィンドウ", 15000, 0, 100, 1024, 376, false);
		SetAlias("背景ウィンドウ","背景ウィンドウ");
		Zoom("背景ウィンドウ", 0, 1000, 0, null, true);
		CreateTextureSP("背景ウィンドウ/背景", 10000, center, 180, $おがみカット背景画像データ);
		CreateTextureSP("背景ウィンドウ/カットイン", 10100, X座標, Y座標, $おがみカットキャラ画像データ);
		SetShade("背景ウィンドウ/背景", HEAVY);
		Zoom("背景ウィンドウ/背景", 0, 1500, 1500, null, true);
		CreateColorEXadd("背景ウィンドウ/絵色カットフラッシュ", 11500, "WHITE");

		Fade("背景ウィンドウ/絵色カットフラッシュ", 0, 1000, null, true);
		Fade("背景ウィンドウ/カットイン", 0, 1000, null, true);

	Rotate("フレーム下", 0, @0, @180, @0, null,true);
		Move("フレーム上", 0, @0, 265, null, true);
		Move("フレーム下", 0, @0, 265, null, true);

	Rotate("フレーム*", 400000, @1500000, @0, @0, null,false);


	Fade("フレーム*", 0, 1000, null, true);
		Zoom("背景ウィンドウ", 250, 1000, 900, Dxl3, false);
		Move("フレーム上", 250, @0, 93, Dxl3, false);
		Move("フレーム下", 250, @0, 430, Dxl3, true);
		Move("背景ウィンドウ/背景", 動作時間, @90, @0, テンポ, false);
		Move("背景ウィンドウ/カットイン", 動作時間, @190, @0, テンポ, false);
	Fade("背景ウィンドウ/絵色カットフラッシュ", 500, 0, null, true);



}

function cutout_EX()
{


		Fade("背景ウィンドウ/絵色カットフラッシュ", 150, 1000, null, true);
		Zoom("背景ウィンドウ", 200, 1000, 0, Dxl3, false);
		Move("フレーム上", 200, @0, 265, Dxl3, false);
		Move("フレーム下", 200, @0, 265, Dxl3, true);
	Fade("フレーム*", 100, 0, null, true);
	Delete("背景ウィンドウ*");
	Delete("フレーム*");
}

.ライト演出
function ColorLightLoop()
{
	while(1){
	Fade($ライトナット名１, $ライトタイム, 1000, null, true);
	Wait(300);
	Fade($ライトナット名１, $ライトタイム, 0, null, false);
	Fade($ライトナット名２, $ライトタイム, 1000, null, true);
	Wait(300);
	Fade($ライトナット名２, $ライトタイム, 0, null, false);
	Fade($ライトナット名３, $ライトタイム, 1000, null, true);
	Wait(300);
	Fade($ライトナット名３, $ライトタイム, 0, null, false);

	}
}

function ColorLightLoopLive()
{
	while(1){
	Fade($ライトナット名１, $ライトタイム, 1000, null, true);
//	Wait(100);
	Fade($ライトナット名１, $ライトタイム, 0, null, false);
	Fade($ライトナット名２, $ライトタイム, 1000, null, true);
//	Wait(100);
	Fade($ライトナット名２, $ライトタイム, 0, null, false);
	Fade($ライトナット名３, $ライトタイム, 1000, null, true);
//	Wait(100);
	Fade($ライトナット名３, $ライトタイム, 0, null, false);

	}
}

.カットイン系演出
function RotetoLoopCutIn01()
{
	while(1){

		Rotate($ローテートカット用, 2000, @0, @36000, @0, null,true);

	}
}


function CutInLine01($ローテートカット用)
{

	CreateProcess("ローテートカットプロセス１", 150, 0, 0, "RotetoLoopCutIn01");
	SetAlias("ローテートカットプロセス１","ローテートカットプロセス１");

	Request("ローテートカットプロセス１", Start);


}

function CutInLineStop01()
{

	Request("ローテートカットプロセス１", Stop);
	Delete("ローテートカットプロセス１");

}

function RotetoLoopCutIn02()
{
	while(1){

		Rotate($ローテートカット用02, 2000, @36000, @0, @0, null,true);

	}
}


function CutInLine02($ローテートカット用02)
{

/*
	$ローテートプロセスナット02 = $ローテートカット用02 + "Ｒプロセス02";
	CreateProcess($ローテートプロセスナット02, 150, 0, 0, "RotetoLoopCutIn02");
	SetAlias($ローテートプロセスナット02,$ローテートプロセスナット02);

	Request($ローテートプロセスナット02, Start);
*/
	CreateProcess("ローテートカットプロセス２", 150, 0, 0, "RotetoLoopCutIn02");
	SetAlias("ローテートカットプロセス２","ローテートカットプロセス２");

	Request("ローテートカットプロセス２", Start);


}

function CutInLineStop02()
{

//	Request($ローテートプロセスナット02, Stop);
//	Delete($ローテートプロセスナット02);
	Request("ローテートカットプロセス２", Stop);
	Delete("ローテートカットプロセス２");

}

.キラキラ演出
function KirakiraLoop()
{
	while(1){
	Fade($キラキラナット名１, $キラキラタイム, 1000, null, true);
	Wait(300);
	Fade($キラキラナット名１, $キラキラタイム, 0, null, false);
	Fade($キラキラナット名２, $キラキラタイム, 1000, null, true);
	Wait(300);
	Fade($キラキラナット名２, $キラキラタイム, 0, null, false);
	}
}


function ZoomRoseLoop()
{
	while(1){
	Zoom($ズームローズナット名, $ズームローズタイム, $ズームローズ率１, $ズームローズ率１, AxlDxl, true);
	Zoom($ズームローズナット名, $ズームローズタイム, $ズームローズ率２, $ズームローズ率２, AxlDxl, true);
	}
}

function TransitionLoop()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, null, "cg/data/slide_03_00_0.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, null, "cg/data/slide_03_00_1.png", true);

	}

}



.スローブラー演出
function SlowBlur($効果ナット名Slow)
{
	CreateProcessEX("ProSlowBlur", "SlowBlurAct");
	Request("ProSlowBlur", Start);
}


function SlowBlurAct()
{
	while(1){
	Zoom($効果ナット名Slow, 0, 1000, 1000, null, true);
	Zoom($効果ナット名Slow, 2000, 2000, 2000, null, false);
	Fade($効果ナット名Slow, 500, 1000, null, true);
	Fade($効果ナット名Slow, 1500, 0, null, true);
//	Rotate($効果ナット名Slow, 0, @0, @0, @180, null,true);
	Zoom($効果ナット名Slow, 0, 1000, 1000, null, true);
	Zoom($効果ナット名Slow, 2000, 2000, 2000, null, false);
	Fade($効果ナット名Slow, 500, 1000, null, true);
	Fade($効果ナット名Slow, 1500, 0, null, true);
	}
}

.ラストファイヤー演出
function LastfireOGMIX($LastfireNutName01,$LastfireEXNutName)
{
	CreateProcessEX($LastfireEXNutName,"LastfireOGMIXAct");
	Request($LastfireEXNutName, Start);
}

function LastfireOGMIXStop()
{
	$LastfireEXStopName = "@" + $LastfireEXNutName;
	Request($LastfireEXStopName, Disused);
	Request($LastfireEXStopName, Stop);
	FadeDelete($LastfireNutName01, 0, null, true);
}

function LastfireOGMIXAct()
{
	begin:

	while(1)
	{
	Fade($LastfireNutName01,150,200,null,true);
	Fade($LastfireNutName01,200,150,null,true);
	Fade($LastfireNutName01,180,230,null,true);
	Fade($LastfireNutName01,300,100,null,true);
	Fade($LastfireNutName01,140,190,null,true);
	Fade($LastfireNutName01,200,150,null,true);

	Fade($LastfireNutName01,150,230,null,true);
	Fade($LastfireNutName01,400,100,null,true);
	Fade($LastfireNutName01,180,150,null,true);
	Fade($LastfireNutName01,300,100,null,true);
	Fade($LastfireNutName01,140,170,null,true);
	Fade($LastfireNutName01,200,90,null,true);

	Fade($LastfireNutName01,150,200,null,true);
	Fade($LastfireNutName01,400,100,null,true);
	Fade($LastfireNutName01,180,150,null,true);
	Fade($LastfireNutName01,300,100,null,true);
	Fade($LastfireNutName01,140,170,null,true);
	Fade($LastfireNutName01,200,90,null,true);

	Fade($LastfireNutName01,100,280,null,true);
	Fade($LastfireNutName01,350,150,null,true);
	Fade($LastfireNutName01,100,240,null,true);
	Fade($LastfireNutName01,150,120,null,true);
	Fade($LastfireNutName01,200,220,null,true);
	Fade($LastfireNutName01,170,100,null,true);

	Fade($LastfireNutName01,150,120,null,true);
	Fade($LastfireNutName01,400,100,null,true);
	Fade($LastfireNutName01,180,150,null,true);
	Fade($LastfireNutName01,100,240,null,true);
	Fade($LastfireNutName01,140,140,null,true);
	Fade($LastfireNutName01,200,90,null,true);

	Fade($LastfireNutName01,150,130,null,true);
	Fade($LastfireNutName01,400,100,null,true);
	Fade($LastfireNutName01,180,130,null,true);
	Fade($LastfireNutName01,300,100,null,true);
	Fade($LastfireNutName01,140,120,null,true);
	Fade($LastfireNutName01,200,90,null,true);

	Fade($LastfireNutName01,150,120,null,true);
	Fade($LastfireNutName01,400,90,null,true);
	Fade($LastfireNutName01,180,110,null,true);
	Fade($LastfireNutName01,300,100,null,true);
	Fade($LastfireNutName01,140,130,null,true);
	Fade($LastfireNutName01,200,90,null,true);
	}
}

.動作ループ系演出
//回転１
function RotetoLoopOGM()
{
	while(1){
	Rotate($ローテートナット名１, 0, @180, @0, @0, null,true);
	Wait(24);
	Rotate($ローテートナット名１, 0, @180, @0, @0, null,true);
	Wait(24);
	Rotate($ローテートナット名１, 0, @0, @180, @0, null,true);
	Wait(24);
	Rotate($ローテートナット名１, 0, @0, @180, @0, null,true);
	Wait(24);
	}
}

//回転２（プロセス作成版）
function RotetoLoopOGM02($ローテートナット名Pro02,$ローテートナット名Act02)
{
	CreateProcessEX($ローテートナット名Pro02,"RotetoLoopOGM02ACT");
	Request($ローテートナット名Pro02, Start);

}

function RotetoLoopOGM02Stop()
{
	$RotetoLoopOGM02StopName = "@" + $ローテートナット名Pro02;
	Request($RotetoLoopOGM02StopName, Disused);
	Request($RotetoLoopOGM02StopName, Stop);
	FadeDelete($ローテートナット名Act02, 0, null, true);
}

function RotetoLoopOGM02ACT()
{
	while(1){
	Rotate($ローテートナット名Act02, 20000, @0, @0, @36000, null,true);
	}
}

//振動（Shake）
function Shake_Loop_OGM_CUT($OGMループシェイク背景名,$OGMシェイクプロセス名){


	CreateProcess($OGMシェイクプロセス名, 150, 0, 0, "Shake_LoopProcess_OGM_CUT");
	SetAlias($OGMシェイクプロセス名,$OGMシェイクプロセス名);
	Request($OGMシェイクプロセス名, Start);
}

function Shake_LoopProcess_OGM_CUT(){

	begin:

	while(1){

		Shake($OGMループシェイク背景名, 100000, 1, 0, 1, 0, 1000, null, false);
		Rotate($OGMループシェイク背景名, 100000, @1800000, @0, @0, null,true);

	}


}

.ダベッタースクロール演出
function DABEclick($DABEclick_Nut,$DABEclick_Count,$DABEclick_Time)
{
	CreateProcess($DABEclickプロセス名, 150, 0, 0, "DABEclick_Process");
	SetAlias($DABEclickプロセス名,$DABEclickプロセス名);
	Request($DABEclickプロセス名, Start);
}

function DABEclick_Process()
{
	$DABEclick_CountNow = 0; 

	while($DABEclick_Count>$DABEclick_CountNow){

	$DABEclick_MovePoint01 = 1525 / $DABEclick_Count;
	$DABEclick_MovePoint02 = "@"+$DABEclick_MovePoint01;
	Move($DABEclick_Nut, 400, @0, $DABEclick_MovePoint02, null, true);
	Wait($DABEclick_Time);
	$DABEclick_CountNow = $DABEclick_CountNow + 1;
	}

	Request($DABEclickプロセス名, Stop);
	Delete($DABEclickプロセス名);
}

function DABEclickStop()
{

	Request($DABEclickプロセス名, Stop);
	Delete($DABEclickプロセス名);

}

.ライブBGM用プロセス
//トゥルーエンド専用・カウントダウン前専用
function DAIICHI_Live($ライブボリューム設定01,$ライブボリューム設定02)
{

	$ライブボリューム設定01 = $ライブボリューム設定01/2;
	$ライブボリューム設定02 = $ライブボリューム設定02/2;

	CreateSound("ライブ音源01", BGM, "sound/bgm/xsong02_live");
	SetAlias("ライブ音源01","ライブ音源01");
	SetStream("@ライブ音源01", 30700);
	SetVolume("@ライブ音源01", 0, 1000, NULL);
//	SetLoop("@ライブ音源01", true);

	CreateSound("ライブ音源02", BGM, "sound/bgm/xsong02_inst");
	SetAlias("ライブ音源02","ライブ音源02");
	SetVolume("@ライブ音源02", 0, 1, NULL);
	SetLoop("@ライブ音源02", true);

	CreateProcess("ライブBGMプロセスナット", 150, 0, 0, "DAIICHI_Live_Pro");
	SetAlias("ライブBGMプロセスナット","ライブBGMプロセスナット");
	Request("ライブBGMプロセスナット", Start);

}

function DAIICHI_Live_Pro()
{

	Request("@ライブ音源01", Play);
	Request("@ライブ音源01", Disused);
	SetVolume("@ライブ音源01", 2000, $ライブボリューム設定01, NULL);
//	SoundPlay("@ライブ音源01",2000,$ライブボリューム設定01,false);

	WaitAction("@ライブ音源01", null);
//	SoundPlay("@ライブ音源02",3000,$ライブボリューム設定02,true);
	Request("@ライブ音源02", Play);
	Request("@ライブ音源02", Disused);
	SetVolume("@ライブ音源02", 2000, $ライブボリューム設定02, NULL);

}

function DAIICHI_Live_VolumeSet(時間, $ライブ用変更後ボリューム)
{

	$ライブボリューム設定01 = $ライブ用変更後ボリューム;
	$ライブボリューム設定02 = $ライブ用変更後ボリューム;

	$ライブボリューム設定01 = $ライブボリューム設定01/2;
	$ライブボリューム設定02 = $ライブボリューム設定02/2;

	SetVolume("@ライブ音源01", 時間, $ライブボリューム設定01, null);
	SetVolume("@ライブ音源02", 時間, $ライブボリューム設定02, null);


}

function DAIICHI_Live_Stop(時間)
{

	SetVolume("@ライブ音源01", 時間, 0, NULL);
	SetVolume("@ライブ音源02", 時間, 0, NULL);
	Request("@ライブBGMプロセスナット", Stop);
	Delete("@ライブBGMプロセスナット");
	Delete("@ライブ音源01");
	Delete("@ライブ音源02");
}

//カウントダウン後専用
function XSONG03_Live($ライブボリューム設定01,$ライブボリューム設定02)
{

	$ライブボリューム設定01 = $ライブボリューム設定01/2;
	$ライブボリューム設定02 = $ライブボリューム設定02/2;

	CreateSound("ライブ音源01", BGM, "sound/bgm/xsong03");
	SetAlias("ライブ音源01","ライブ音源01");
	SetVolume("@ライブ音源01", 0, 1, NULL);

	CreateSound("ライブ音源02", BGM, "sound/bgm/xsong03_inst");
	SetAlias("ライブ音源02","ライブ音源02");
	SetVolume("@ライブ音源02", 0, 1, NULL);
	SetLoop("@ライブ音源02", true);

	CreateSound("ライブ音源01_ef", BGM, "sound/bgm/xsong03");
	SetAlias("ライブ音源01_ef","ライブ音源01_ef");
	SetVolume("@ライブ音源01_ef", 0, 1, NULL);
	SoundEffect("@ライブ音源01_ef","Echo",60,70,170,170);

	CreateSound("ライブ音源02_ef", BGM, "sound/bgm/xsong03_inst");
	SetAlias("ライブ音源02_ef","ライブ音源02_ef");
	SetVolume("@ライブ音源02_ef", 0, 1, NULL);
	SetLoop("@ライブ音源02_ef", true);
	SoundEffect("@ライブ音源02_ef","Echo",60,70,170,170);


	CreateSound("ライブ歓声01", SE, "sound/se/seガヤ_大歓声_l");
	SetAlias("ライブ歓声01","ライブ歓声01");
	SetLoop("@ライブ歓声01", true);
	SetVolume("@ライブ歓声01", 0, 1, NULL);




	CreateProcess("ライブBGMプロセスナット", 150, 0, 0, "XSONG03_Live_Pro");
	SetAlias("ライブBGMプロセスナット","ライブBGMプロセスナット");

	CreateProcess("ライブBGMチェックプロセスナット", 150, 0, 0, "XSONG03_Live_StreamCheckPro");
	SetAlias("ライブBGMチェックプロセスナット","ライブBGMチェックプロセスナット");

	Request("ライブBGMプロセスナット", Start);
	Request("ライブBGMチェックプロセスナット", Start);
	Request("ライブBGMプロセスナット", Disused);
	Request("ライブBGMチェックプロセスナット", Disused);

}

function XSONG03_Live_Pro()
{

	//EF設定
//	Request("@ライブ音源01_ef", Disused);
	Request("@ライブ音源01_ef", Play);
	Request("@ライブ音源01", Play);
	Request("@ライブ音源01", Disused);
	SetVolume("@ライブ音源01", 2000, $ライブボリューム設定01, NULL);

	WaitAction("@ライブ音源01", null);

	SetVolume("@ライブ歓声01", 5000, 0, NULL);

	//EF設定
//	Request("@ライブ音源02_ef", Disused);
	Request("@ライブ音源02_ef", Play);
	Request("@ライブ音源02", Play);
	Request("@ライブ音源02", Disused);
	SetVolume("@ライブ音源02", 2000, $ライブボリューム設定02, NULL);



}

function XSONG03_Live_StreamCheckPro()
{

	while(1){

//		$ライブ音源時間 = PassageTime("@ライブ音源01");
		$ライブ音源時間 = RemainTime("@ライブ音源01");

		$ライブ音源時間チェック = String("%d",$ライブ音源時間);
		Wait(300);

		if($ライブ音源時間チェック=="0"){
		}else{
			//219600-190500=29100
			if($ライブ音源時間<29100){
				Request("@ライブ歓声01", Play);
				Request("@ライブ歓声01", Disused);
				SetVolume("@ライブ歓声01", 2000, $ライブボリューム設定01, NULL);
	
				break;
	
			}
		}
	}

}

function XSONG03_Live_VolumeSet(時間, $ライブ用変更後ボリューム)
{

	$ライブボリューム設定01 = $ライブ用変更後ボリューム;
	$ライブボリューム設定02 = $ライブ用変更後ボリューム;

	$ライブボリューム設定01 = $ライブボリューム設定01/2;
	$ライブボリューム設定02 = $ライブボリューム設定02/2;

	SetVolume("@ライブ音源01", 時間, $ライブボリューム設定01, null);
	SetVolume("@ライブ音源02", 時間, $ライブボリューム設定02, null);
	SetVolume("@ライブ歓声01", 時間, $ライブボリューム設定01, null);


}

function XSONG03_Live_Stop(時間)
{

	SetVolume("@ライブ音源01", 時間, 0, NULL);
	SetVolume("@ライブ音源02", 時間, 0, NULL);
	SetVolume("@ライブ音源01_ef", 時間, 0, NULL);
	SetVolume("@ライブ音源02_ef", 時間, 0, NULL);
	SetVolume("@ライブ歓声01", 時間, 0, NULL);
	Request("@ライブBGMプロセスナット", Stop);
	Request("@ライブBGMチェックプロセスナット", Stop);
	Delete("@ライブBGMプロセスナット");
	Delete("@ライブBGMチェックプロセスナット");
	Delete("@ライブ音源01");
	Delete("@ライブ音源02");
	Delete("@ライブ音源01_ef");
	Delete("@ライブ音源02_ef");
	Delete("@ライブ歓声01");

}


function XSONG03_Live_EFStop(時間)
{

//	SetVolume("@ライブ音源01", 時間, 0, NULL);
//	SetVolume("@ライブ音源02", 時間, 0, NULL);
	Request("@ライブBGMプロセスナット", Stop);
	Request("@ライブBGMチェックプロセスナット", Stop);
	SetVolume("@ライブ歓声01", 時間, 0, NULL);
	SetVolumeEF("@ライブ音源01", 650);
	SetVolumeEF("@ライブ音源02", 650);

	Delete("@ライブBGMプロセスナット");
	Delete("@ライブBGMチェックプロセスナット");

}

//トゥルーエンド以外・カウントダウン前
function DAIICHI_Live02($ライブボリューム設定01,$ライブボリューム設定02)
{

	$ライブボリューム設定01 = $ライブボリューム設定01/2;
	$ライブボリューム設定02 = $ライブボリューム設定02/2;

	CreateSound("ライブ音源01", BGM, "sound/bgm/xsong02");
	SetAlias("ライブ音源01","ライブ音源01");
//	SetStream("@ライブ音源01", 30700);
	SetVolume("@ライブ音源01", 0, 1, NULL);
//	SetLoop("@ライブ音源01", true);

	CreateSound("ライブ音源02", BGM, "sound/bgm/xsong02_inst");
	SetAlias("ライブ音源02","ライブ音源02");
	SetVolume("@ライブ音源02", 0, 1, NULL);
	SetLoop("@ライブ音源02", true);

	CreateProcess("ライブBGMプロセスナット", 150, 0, 0, "DAIICHI_Live_Pro02");
	SetAlias("ライブBGMプロセスナット","ライブBGMプロセスナット");
	Request("ライブBGMプロセスナット", Start);

}



function DAIICHI_Live_Pro02()
{

	Request("@ライブ音源01", Play);
	Request("@ライブ音源01", Disused);
	SetVolume("@ライブ音源01", 1000, $ライブボリューム設定01, NULL);
//	SoundPlay("@ライブ音源01",2000,$ライブボリューム設定01,false);

	WaitAction("@ライブ音源01", null);
//	SoundPlay("@ライブ音源02",3000,$ライブボリューム設定02,true);
	Request("@ライブ音源02", Play);
	Request("@ライブ音源02", Disused);
	SetVolume("@ライブ音源02", 1000, $ライブボリューム設定02, NULL);

}

function DAIICHI_Live_VolumeSet02(時間, $ライブ用変更後ボリューム)
{

	$ライブボリューム設定01 = $ライブ用変更後ボリューム;
	$ライブボリューム設定02 = $ライブ用変更後ボリューム;

	$ライブボリューム設定01 = $ライブボリューム設定01/2;
	$ライブボリューム設定02 = $ライブボリューム設定02/2;

	SetVolume("@ライブ音源01", 時間, $ライブボリューム設定01, null);
	SetVolume("@ライブ音源02", 時間, $ライブボリューム設定02, null);


}

function DAIICHI_Live_Stop02(時間)
{

	SetVolume("@ライブ音源01", 時間, 0, NULL);
	SetVolume("@ライブ音源02", 時間, 0, NULL);
	Request("@ライブBGMプロセスナット", Stop);
	Delete("@ライブBGMプロセスナット");
	Delete("@ライブ音源01");
	Delete("@ライブ音源02");
}


.スモーク演出
//１つ目
function CloudZoomSmokeSet01($スモークプロセスナット,画像優先度,$スモーク画像ファイル名)
{
	$絵スモークナットLC1 = $スモークプロセスナット + "1";
	$絵スモークナットLC2 = $スモークプロセスナット + "2";
	$絵スモークナットLC3 = $スモークプロセスナット + "3";
	$絵スモークナットLC4 = $スモークプロセスナット + "4";
	$絵スモークナットLC5 = $スモークプロセスナット + "5";
	$絵スモークナットLC6 = $スモークプロセスナット + "6";
	$絵スモークナットLC7 = $スモークプロセスナット + "7";
	$絵スモークナットLC8 = $スモークプロセスナット + "8";
	$絵スモークナットLC9 = $スモークプロセスナット + "9";
	$絵スモークナットLC10 = $スモークプロセスナット + "10";
	$絵スモークナットLC11 = $スモークプロセスナット + "11";
	$絵スモークナットLC12 = $スモークプロセスナット + "12";
	$絵スモークナットLC13 = $スモークプロセスナット + "13";
	$絵スモークナットLC14 = $スモークプロセスナット + "14";
	$絵スモークナットLC15 = $スモークプロセスナット + "15";
	$絵スモークナットLC16 = $スモークプロセスナット + "16";
	$絵スモークナットLC17 = $スモークプロセスナット + "17";
	$絵スモークナットLC18 = $スモークプロセスナット + "18";
	$絵スモークナットLC19 = $スモークプロセスナット + "19";
	$絵スモークナットLC20 = $スモークプロセスナット + "20";

	CreateTextureEXadd($絵スモークナットLC1, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC2, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC3, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC4, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC5, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC6, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC7, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC8, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC9, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC10, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC11, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC12, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC13, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC14, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC15, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC16, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC17, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC18, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC19, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークナットLC20, 画像優先度, 0, 0, $スモーク画像ファイル名);

	CreateProcess($スモークプロセスナット, 0, 0, 0, "CloudZoomSmokePro01");
	SetAlias($スモークプロセスナット, "$スモークプロセスナット");


}

function CloudZoomSmokeStart01($スモーク速度,$スモーク間隔,$スモーク濃度,$スモーク拡大度,$スモーク角度,$スモーク開始位置X,$スモーク開始位置Y,$スモーク移動位置X,$スモーク移動位置Y,$スモークテンポ)
{

	$スモーク表示速度 = 10;
	$スモーク消去速度 = $スモーク速度 - $スモーク間隔;
	$スモーク角度マイナス = $スモーク角度 / 2;

	$スモークプロセスナットGO = "@" + $スモークプロセスナット;

	Request($スモークプロセスナットGO, Start);

}

function CloudZoomSmokeDelete01(時間)
{

	Request($スモークプロセスナットGO, Stop);
	Delete($スモークプロセスナットGO);

	FadeDelete($絵スモークナットLC1, 時間, null, false);
	FadeDelete($絵スモークナットLC2, 時間, null, false);
	FadeDelete($絵スモークナットLC3, 時間, null, false);
	FadeDelete($絵スモークナットLC4, 時間, null, false);
	FadeDelete($絵スモークナットLC5, 時間, null, false);
	FadeDelete($絵スモークナットLC6, 時間, null, false);
	FadeDelete($絵スモークナットLC7, 時間, null, false);
	FadeDelete($絵スモークナットLC8, 時間, null, false);
	FadeDelete($絵スモークナットLC9, 時間, null, false);
	FadeDelete($絵スモークナットLC10, 時間, null, false);
	FadeDelete($絵スモークナットLC11, 時間, null, false);
	FadeDelete($絵スモークナットLC12, 時間, null, false);
	FadeDelete($絵スモークナットLC13, 時間, null, false);
	FadeDelete($絵スモークナットLC14, 時間, null, false);
	FadeDelete($絵スモークナットLC15, 時間, null, false);
	FadeDelete($絵スモークナットLC16, 時間, null, false);
	FadeDelete($絵スモークナットLC17, 時間, null, false);
	FadeDelete($絵スモークナットLC18, 時間, null, false);
	FadeDelete($絵スモークナットLC19, 時間, null, false);
	FadeDelete($絵スモークナットLC20, 時間, null, false);


}

function CloudZoomSmokePro01()
{

	$スモークファイル連番 = 1;

	while(1){

		$スモーク角度Now = Random($スモーク角度) - $スモーク角度マイナス;
		$スモークファイルナットNow = String("@%s%d",$スモークプロセスナット,$スモークファイル連番);

//		LockVideo(true);

		Zoom($スモークファイルナットNow, 0, 1000, 1000, null, true);
		Move($スモークファイルナットNow, 0, $スモーク開始位置X, $スモーク開始位置Y, null, true);
		Rotate($スモークファイルナットNow, 0, @0, @0, 0, null,true);

		Rotate($スモークファイルナットNow, $スモーク速度, @0, @0, $スモーク角度Now, null,false);
		Move($スモークファイルナットNow, $スモーク速度, $スモーク移動位置X, $スモーク移動位置Y, $スモークテンポ, false);
		Fade($スモークファイルナットNow, $スモーク表示速度, $スモーク濃度, null, false);
		Zoom($スモークファイルナットNow, $スモーク速度, $スモーク拡大度, $スモーク拡大度, $スモークテンポ, false);

//		LockVideo(false);

		Wait($スモーク間隔);
		Fade($スモークファイルナットNow, $スモーク消去速度, 0, null, false);

	$スモークファイル連番 = $スモークファイル連番 + 1;

		if($スモークファイル連番>=21){
			$スモークファイル連番 = 1;
		}

	}

}

//２つ目
function CloudZoomSmokeSet02($スモークBプロセスナット,画像優先度,$スモーク画像ファイル名)
{
	$絵スモークBナットLC1 = $スモークBプロセスナット + "1";
	$絵スモークBナットLC2 = $スモークBプロセスナット + "2";
	$絵スモークBナットLC3 = $スモークBプロセスナット + "3";
	$絵スモークBナットLC4 = $スモークBプロセスナット + "4";
	$絵スモークBナットLC5 = $スモークBプロセスナット + "5";
	$絵スモークBナットLC6 = $スモークBプロセスナット + "6";
	$絵スモークBナットLC7 = $スモークBプロセスナット + "7";
	$絵スモークBナットLC8 = $スモークBプロセスナット + "8";
	$絵スモークBナットLC9 = $スモークBプロセスナット + "9";
	$絵スモークBナットLC10 = $スモークBプロセスナット + "10";
	$絵スモークBナットLC11 = $スモークBプロセスナット + "11";
	$絵スモークBナットLC12 = $スモークBプロセスナット + "12";
	$絵スモークBナットLC13 = $スモークBプロセスナット + "13";
	$絵スモークBナットLC14 = $スモークBプロセスナット + "14";
	$絵スモークBナットLC15 = $スモークBプロセスナット + "15";
	$絵スモークBナットLC16 = $スモークBプロセスナット + "16";
	$絵スモークBナットLC17 = $スモークBプロセスナット + "17";
	$絵スモークBナットLC18 = $スモークBプロセスナット + "18";
	$絵スモークBナットLC19 = $スモークBプロセスナット + "19";
	$絵スモークBナットLC20 = $スモークBプロセスナット + "20";

	CreateTextureEXadd($絵スモークBナットLC1, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC2, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC3, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC4, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC5, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC6, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC7, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC8, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC9, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC10, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC11, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC12, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC13, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC14, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC15, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC16, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC17, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC18, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC19, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXadd($絵スモークBナットLC20, 画像優先度, 0, 0, $スモーク画像ファイル名);

	CreateProcess($スモークBプロセスナット, 0, 0, 0, "CloudZoomSmokePro02");
	SetAlias($スモークBプロセスナット, "$スモークBプロセスナット");


}

function CloudZoomSmokeStart02($スモークB速度,$スモークB間隔,$スモークB濃度,$スモークB拡大度,$スモークB角度,$スモークB開始位置X,$スモークB開始位置Y,$スモークB移動位置X,$スモークB移動位置Y,$スモークBテンポ)
{

	$スモークB表示速度 = 10;
	$スモークB消去速度 = $スモークB速度 - $スモークB間隔;
	$スモークB角度マイナス = $スモークB角度 / 2;

	$スモークBプロセスナットGO = "@" + $スモークBプロセスナット;

	Request($スモークBプロセスナットGO, Start);
}

function CloudZoomSmokeDelete02(時間)
{

	Request($スモークBプロセスナットGO, Stop);
	Delete($スモークBプロセスナットGO);

	FadeDelete($絵スモークBナットLC1, 時間, null, false);
	FadeDelete($絵スモークBナットLC2, 時間, null, false);
	FadeDelete($絵スモークBナットLC3, 時間, null, false);
	FadeDelete($絵スモークBナットLC4, 時間, null, false);
	FadeDelete($絵スモークBナットLC5, 時間, null, false);
	FadeDelete($絵スモークBナットLC6, 時間, null, false);
	FadeDelete($絵スモークBナットLC7, 時間, null, false);
	FadeDelete($絵スモークBナットLC8, 時間, null, false);
	FadeDelete($絵スモークBナットLC9, 時間, null, false);
	FadeDelete($絵スモークBナットLC10, 時間, null, false);
	FadeDelete($絵スモークBナットLC11, 時間, null, false);
	FadeDelete($絵スモークBナットLC12, 時間, null, false);
	FadeDelete($絵スモークBナットLC13, 時間, null, false);
	FadeDelete($絵スモークBナットLC14, 時間, null, false);
	FadeDelete($絵スモークBナットLC15, 時間, null, false);
	FadeDelete($絵スモークBナットLC16, 時間, null, false);
	FadeDelete($絵スモークBナットLC17, 時間, null, false);
	FadeDelete($絵スモークBナットLC18, 時間, null, false);
	FadeDelete($絵スモークBナットLC19, 時間, null, false);
	FadeDelete($絵スモークBナットLC20, 時間, null, false);


}

function CloudZoomSmokePro02()
{

	$スモークBファイル連番 = 1;

	while(1){

		$スモークB角度Now = Random($スモークB角度) - $スモークB角度マイナス;
		$スモークBファイルナットNow = String("@%s%d",$スモークBプロセスナット,$スモークBファイル連番);

//		LockVideo(true);

		Zoom($スモークBファイルナットNow, 0, 1000, 1000, null, true);
		Move($スモークBファイルナットNow, 0, $スモークB開始位置X, $スモークB開始位置Y, null, true);
		Rotate($スモークBファイルナットNow, 0, @0, @0, 0, null,true);

		Rotate($スモークBファイルナットNow, $スモークB速度, @0, @0, $スモークB角度Now, null,false);
		Move($スモークBファイルナットNow, $スモークB速度, $スモークB移動位置X, $スモークB移動位置Y, $スモークBテンポ, false);
		Fade($スモークBファイルナットNow, $スモークB表示速度, $スモークB濃度, null, false);
		Zoom($スモークBファイルナットNow, $スモークB速度, $スモークB拡大度, $スモークB拡大度, $スモークBテンポ, false);

//		LockVideo(false);

		Wait($スモークB間隔);
		Fade($スモークBファイルナットNow, $スモークB消去速度, 0, null, false);

	$スモークBファイル連番 = $スモークBファイル連番 + 1;

		if($スモークBファイル連番>=21){
			$スモークBファイル連番 = 1;
		}

	}

}

.スモーク演出（SubRender Version）
function CloudZoomSmokeSubSet01($スモークプロセスナット,画像優先度,$スモーク画像ファイル名)
{
	$絵スモークナットLC1 = $スモークプロセスナット + "1";
	$絵スモークナットLC2 = $スモークプロセスナット + "2";
	$絵スモークナットLC3 = $スモークプロセスナット + "3";
	$絵スモークナットLC4 = $スモークプロセスナット + "4";
	$絵スモークナットLC5 = $スモークプロセスナット + "5";
	$絵スモークナットLC6 = $スモークプロセスナット + "6";
	$絵スモークナットLC7 = $スモークプロセスナット + "7";
	$絵スモークナットLC8 = $スモークプロセスナット + "8";
	$絵スモークナットLC9 = $スモークプロセスナット + "9";
	$絵スモークナットLC10 = $スモークプロセスナット + "10";
	$絵スモークナットLC11 = $スモークプロセスナット + "11";
	$絵スモークナットLC12 = $スモークプロセスナット + "12";
	$絵スモークナットLC13 = $スモークプロセスナット + "13";
	$絵スモークナットLC14 = $スモークプロセスナット + "14";
	$絵スモークナットLC15 = $スモークプロセスナット + "15";
	$絵スモークナットLC16 = $スモークプロセスナット + "16";
	$絵スモークナットLC17 = $スモークプロセスナット + "17";
	$絵スモークナットLC18 = $スモークプロセスナット + "18";
	$絵スモークナットLC19 = $スモークプロセスナット + "19";
	$絵スモークナットLC20 = $スモークプロセスナット + "20";

	CreateTextureEXsub($絵スモークナットLC1, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC2, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC3, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC4, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC5, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC6, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC7, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC8, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC9, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC10, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC11, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC12, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC13, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC14, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC15, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC16, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC17, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC18, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC19, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC20, 画像優先度, 0, 0, $スモーク画像ファイル名);

	CreateProcess($スモークプロセスナット, 0, 0, 0, "CloudZoomSmokeSubPro01");
	SetAlias($スモークプロセスナット, "$スモークプロセスナット");


}

function CloudZoomSmokeSubStart01($スモーク速度,$スモーク間隔,$スモーク濃度,$スモーク拡大度,$スモーク角度,$スモーク開始位置X,$スモーク開始位置Y,$スモーク移動位置X,$スモーク移動位置Y,$スモークテンポ)
{

	$スモーク表示速度 = 10;
	$スモーク消去速度 = $スモーク速度 - $スモーク間隔;
	$スモーク角度マイナス = $スモーク角度 / 2;

	$スモークプロセスナットGO = "@" + $スモークプロセスナット;

	Request($スモークプロセスナットGO, Start);

}

function CloudZoomSmokeSubDelete01(時間)
{

	Request($スモークプロセスナットGO, Stop);
	Delete($スモークプロセスナットGO);

	FadeDelete($絵スモークナットLC1, 時間, null, false);
	FadeDelete($絵スモークナットLC2, 時間, null, false);
	FadeDelete($絵スモークナットLC3, 時間, null, false);
	FadeDelete($絵スモークナットLC4, 時間, null, false);
	FadeDelete($絵スモークナットLC5, 時間, null, false);
	FadeDelete($絵スモークナットLC6, 時間, null, false);
	FadeDelete($絵スモークナットLC7, 時間, null, false);
	FadeDelete($絵スモークナットLC8, 時間, null, false);
	FadeDelete($絵スモークナットLC9, 時間, null, false);
	FadeDelete($絵スモークナットLC10, 時間, null, false);
	FadeDelete($絵スモークナットLC11, 時間, null, false);
	FadeDelete($絵スモークナットLC12, 時間, null, false);
	FadeDelete($絵スモークナットLC13, 時間, null, false);
	FadeDelete($絵スモークナットLC14, 時間, null, false);
	FadeDelete($絵スモークナットLC15, 時間, null, false);
	FadeDelete($絵スモークナットLC16, 時間, null, false);
	FadeDelete($絵スモークナットLC17, 時間, null, false);
	FadeDelete($絵スモークナットLC18, 時間, null, false);
	FadeDelete($絵スモークナットLC19, 時間, null, false);
	FadeDelete($絵スモークナットLC20, 時間, null, false);

}

function CloudZoomSmokeSubPro01()
{

	$スモークファイル連番 = 1;

	while(1){

		$スモーク角度Now = Random($スモーク角度) - $スモーク角度マイナス;
		$スモークファイルナットNow = String("@%s%d",$スモークプロセスナット,$スモークファイル連番);

//		LockVideo(true);

		Zoom($スモークファイルナットNow, 0, 1000, 1000, null, true);
		Move($スモークファイルナットNow, 0, $スモーク開始位置X, $スモーク開始位置Y, null, true);
		Rotate($スモークファイルナットNow, 0, @0, @0, 0, null,true);

		Rotate($スモークファイルナットNow, $スモーク速度, @0, @0, $スモーク角度Now, null,false);
		Move($スモークファイルナットNow, $スモーク速度, $スモーク移動位置X, $スモーク移動位置Y, $スモークテンポ, false);
		Fade($スモークファイルナットNow, $スモーク表示速度, $スモーク濃度, null, false);
		Zoom($スモークファイルナットNow, $スモーク速度, $スモーク拡大度, $スモーク拡大度, $スモークテンポ, false);

//		LockVideo(false);

		Wait($スモーク間隔);
		Fade($スモークファイルナットNow, $スモーク消去速度, 0, null, false);

	$スモークファイル連番 = $スモークファイル連番 + 1;

		if($スモークファイル連番>=21){
			$スモークファイル連番 = 1;
		}

	}

}


.スモーク演出付加軽減バージョン（SubRender Version）
function CloudZoomSmokeSubSet01EX($スモークプロセスナット,画像優先度,$スモーク画像ファイル名)
{
	$絵スモークナットLC1 = $スモークプロセスナット + "1";
	$絵スモークナットLC2 = $スモークプロセスナット + "2";
	$絵スモークナットLC3 = $スモークプロセスナット + "3";
	$絵スモークナットLC4 = $スモークプロセスナット + "4";
	$絵スモークナットLC5 = $スモークプロセスナット + "5";
	$絵スモークナットLC6 = $スモークプロセスナット + "6";
	$絵スモークナットLC7 = $スモークプロセスナット + "7";
	$絵スモークナットLC8 = $スモークプロセスナット + "8";
	$絵スモークナットLC9 = $スモークプロセスナット + "9";
	$絵スモークナットLC10 = $スモークプロセスナット + "10";
	$絵スモークナットLC11 = $スモークプロセスナット + "11";
	$絵スモークナットLC12 = $スモークプロセスナット + "12";
	$絵スモークナットLC13 = $スモークプロセスナット + "13";
	$絵スモークナットLC14 = $スモークプロセスナット + "14";
	$絵スモークナットLC15 = $スモークプロセスナット + "15";
	$絵スモークナットLC16 = $スモークプロセスナット + "16";
	$絵スモークナットLC17 = $スモークプロセスナット + "17";
	$絵スモークナットLC18 = $スモークプロセスナット + "18";
	$絵スモークナットLC19 = $スモークプロセスナット + "19";
	$絵スモークナットLC20 = $スモークプロセスナット + "20";

	CreateTextureEXsub($絵スモークナットLC1, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC2, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC3, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC4, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC5, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC6, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC7, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC8, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC9, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC10, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC11, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC12, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC13, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC14, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC15, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC16, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC17, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC18, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC19, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークナットLC20, 画像優先度, 0, 0, $スモーク画像ファイル名);

	CreateProcess($スモークプロセスナット, 0, 0, 0, "CloudZoomSmokeSubPro01EX");
	SetAlias($スモークプロセスナット, "$スモークプロセスナット");


}

function CloudZoomSmokeSubStart01EX($スモーク速度,$スモーク間隔,$スモーク濃度,$スモーク開始拡大度,$スモーク終了拡大度,$スモーク角度,$スモーク開始位置X,$スモーク開始位置Y,$スモーク移動位置X,$スモーク移動位置Y,$スモークテンポ)
{

	$スモーク表示速度 = 10;
	$スモーク消去速度 = $スモーク速度 - $スモーク間隔;
	$スモーク角度マイナス = $スモーク角度 / 2;

	$スモークプロセスナットGO = "@" + $スモークプロセスナット;

	Request($スモークプロセスナットGO, Start);

}

function CloudZoomSmokeSubDelete01EX(時間)
{

	Request($スモークプロセスナットGO, Stop);
	Delete($スモークプロセスナットGO);

	FadeDelete($絵スモークナットLC1, 時間, null, false);
	FadeDelete($絵スモークナットLC2, 時間, null, false);
	FadeDelete($絵スモークナットLC3, 時間, null, false);
	FadeDelete($絵スモークナットLC4, 時間, null, false);
	FadeDelete($絵スモークナットLC5, 時間, null, false);
	FadeDelete($絵スモークナットLC6, 時間, null, false);
	FadeDelete($絵スモークナットLC7, 時間, null, false);
	FadeDelete($絵スモークナットLC8, 時間, null, false);
	FadeDelete($絵スモークナットLC9, 時間, null, false);
	FadeDelete($絵スモークナットLC10, 時間, null, false);
	FadeDelete($絵スモークナットLC11, 時間, null, false);
	FadeDelete($絵スモークナットLC12, 時間, null, false);
	FadeDelete($絵スモークナットLC13, 時間, null, false);
	FadeDelete($絵スモークナットLC14, 時間, null, false);
	FadeDelete($絵スモークナットLC15, 時間, null, false);
	FadeDelete($絵スモークナットLC16, 時間, null, false);
	FadeDelete($絵スモークナットLC17, 時間, null, false);
	FadeDelete($絵スモークナットLC18, 時間, null, false);
	FadeDelete($絵スモークナットLC19, 時間, null, false);
	FadeDelete($絵スモークナットLC20, 時間, null, false);

}

function CloudZoomSmokeSubPro01EX()
{

	$スモークファイル連番 = 1;

	while(1){

		$スモーク角度Now = Random($スモーク角度) - $スモーク角度マイナス;
		$スモークファイルナットNow = String("@%s%d",$スモークプロセスナット,$スモークファイル連番);

//		LockVideo(true);

		Zoom($スモークファイルナットNow, 0, $スモーク開始拡大度, $スモーク開始拡大度, null, true);
		Move($スモークファイルナットNow, 0, $スモーク開始位置X, $スモーク開始位置Y, null, true);
		Rotate($スモークファイルナットNow, 0, @0, @0, 0, null,true);

		Rotate($スモークファイルナットNow, $スモーク速度, @0, @0, $スモーク角度Now, null,false);
		Move($スモークファイルナットNow, $スモーク速度, $スモーク移動位置X, $スモーク移動位置Y, $スモークテンポ, false);
		Fade($スモークファイルナットNow, $スモーク表示速度, $スモーク濃度, null, false);
		Zoom($スモークファイルナットNow, $スモーク速度, $スモーク終了拡大度, $スモーク終了拡大度, $スモークテンポ, false);

//		LockVideo(false);

		Wait($スモーク間隔);
		Fade($スモークファイルナットNow, $スモーク消去速度, 0, null, false);

	$スモークファイル連番 = $スモークファイル連番 + 1;

		if($スモークファイル連番>=21){
			$スモークファイル連番 = 1;
		}

	}

}


.スモーク演出付加軽減バージョン02（SubRender Version）
function CloudZoomSmokeSubSet02EX($スモークBプロセスナット,画像優先度,$スモーク画像ファイル名)
{
	$絵スモークBナットLC1 = $スモークBプロセスナット + "1";
	$絵スモークBナットLC2 = $スモークBプロセスナット + "2";
	$絵スモークBナットLC3 = $スモークBプロセスナット + "3";
	$絵スモークBナットLC4 = $スモークBプロセスナット + "4";
	$絵スモークBナットLC5 = $スモークBプロセスナット + "5";
	$絵スモークBナットLC6 = $スモークBプロセスナット + "6";
	$絵スモークBナットLC7 = $スモークBプロセスナット + "7";
	$絵スモークBナットLC8 = $スモークBプロセスナット + "8";
	$絵スモークBナットLC9 = $スモークBプロセスナット + "9";
	$絵スモークBナットLC10 = $スモークBプロセスナット + "10";
	$絵スモークBナットLC11 = $スモークBプロセスナット + "11";
	$絵スモークBナットLC12 = $スモークBプロセスナット + "12";
	$絵スモークBナットLC13 = $スモークBプロセスナット + "13";
	$絵スモークBナットLC14 = $スモークBプロセスナット + "14";
	$絵スモークBナットLC15 = $スモークBプロセスナット + "15";
	$絵スモークBナットLC16 = $スモークBプロセスナット + "16";
	$絵スモークBナットLC17 = $スモークBプロセスナット + "17";
	$絵スモークBナットLC18 = $スモークBプロセスナット + "18";
	$絵スモークBナットLC19 = $スモークBプロセスナット + "19";
	$絵スモークBナットLC20 = $スモークBプロセスナット + "20";

	CreateTextureEXsub($絵スモークBナットLC1, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC2, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC3, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC4, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC5, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC6, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC7, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC8, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC9, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC10, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC11, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC12, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC13, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC14, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC15, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC16, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC17, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC18, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC19, 画像優先度, 0, 0, $スモーク画像ファイル名);
	CreateTextureEXsub($絵スモークBナットLC20, 画像優先度, 0, 0, $スモーク画像ファイル名);

	CreateProcess($スモークBプロセスナット, 0, 0, 0, "CloudZoomSmokeSubPro02EX");
	SetAlias($スモークBプロセスナット, "$スモークBプロセスナット");


}

function CloudZoomSmokeSubStart02EX($スモークB速度,$スモークB間隔,$スモークB濃度,$スモークB開始拡大度,$スモークB終了拡大度,$スモークB角度,$スモークB開始位置X,$スモークB開始位置Y,$スモークB移動位置X,$スモークB移動位置Y,$スモークBテンポ)
{

	$スモークB表示速度 = 10;
	$スモークB消去速度 = $スモークB速度 - $スモークB間隔;
	$スモークB角度マイナス = $スモークB角度 / 2;

	$スモークBプロセスナットGO = "@" + $スモークBプロセスナット;

	Request($スモークBプロセスナットGO, Start);

}

function CloudZoomSmokeSubDelete02EX(時間)
{

	Request($スモークBプロセスナットGO, Stop);
	Delete($スモークBプロセスナットGO);

	FadeDelete($絵スモークBナットLC1, 時間, null, false);
	FadeDelete($絵スモークBナットLC2, 時間, null, false);
	FadeDelete($絵スモークBナットLC3, 時間, null, false);
	FadeDelete($絵スモークBナットLC4, 時間, null, false);
	FadeDelete($絵スモークBナットLC5, 時間, null, false);
	FadeDelete($絵スモークBナットLC6, 時間, null, false);
	FadeDelete($絵スモークBナットLC7, 時間, null, false);
	FadeDelete($絵スモークBナットLC8, 時間, null, false);
	FadeDelete($絵スモークBナットLC9, 時間, null, false);
	FadeDelete($絵スモークBナットLC10, 時間, null, false);
	FadeDelete($絵スモークBナットLC11, 時間, null, false);
	FadeDelete($絵スモークBナットLC12, 時間, null, false);
	FadeDelete($絵スモークBナットLC13, 時間, null, false);
	FadeDelete($絵スモークBナットLC14, 時間, null, false);
	FadeDelete($絵スモークBナットLC15, 時間, null, false);
	FadeDelete($絵スモークBナットLC16, 時間, null, false);
	FadeDelete($絵スモークBナットLC17, 時間, null, false);
	FadeDelete($絵スモークBナットLC18, 時間, null, false);
	FadeDelete($絵スモークBナットLC19, 時間, null, false);
	FadeDelete($絵スモークBナットLC20, 時間, null, false);


}

function CloudZoomSmokeSubPro02EX()
{

	$スモークBファイル連番 = 1;

	while(1){

		$スモークB角度Now = Random($スモークB角度) - $スモークB角度マイナス;
		$スモークBファイルナットNow = String("@%s%d",$スモークBプロセスナット,$スモークBファイル連番);

//		LockVideo(true);

		Zoom($スモークBファイルナットNow, 0, $スモークB開始拡大度, $スモークB開始拡大度, null, true);
		Move($スモークBファイルナットNow, 0, $スモークB開始位置X, $スモークB開始位置Y, null, true);
		Rotate($スモークBファイルナットNow, 0, @0, @0, 0, null,true);

		Rotate($スモークBファイルナットNow, $スモークB速度, @0, @0, $スモークB角度Now, null,false);
		Move($スモークBファイルナットNow, $スモークB速度, $スモークB移動位置X, $スモークB移動位置Y, $スモークBテンポ, false);
		Fade($スモークBファイルナットNow, $スモークB表示速度, $スモークB濃度, null, false);
		Zoom($スモークBファイルナットNow, $スモークB速度, $スモークB終了拡大度, $スモークB終了拡大度, $スモークBテンポ, false);

//		LockVideo(false);

		Wait($スモークB間隔);
		Fade($スモークBファイルナットNow, $スモークB消去速度, 0, null, false);

	$スモークBファイル連番 = $スモークBファイル連番 + 1;

		if($スモークBファイル連番>=21){
			$スモークBファイル連番 = 1;
		}

	}

}


.ゆる演出コミマ
//
function Yuru_Comima_Set($背景1,$画像Chara1,$画像Chara2,$画像1,$画像2,$ゆるプロセスコミマ)
{
	$背景1p="cg/yur/"+$背景1+".png";
	$画像Chara1p="cg/yur/"+$画像Chara1+".png";
	$画像Chara2p="cg/yur/"+$画像Chara2+".png";
	$画像1p="cg/yur/"+$画像1+".png";
	$画像2p="cg/yur/"+$画像2+".png";

	CreateMask("ゆる窓", 0, Center, Middle, "cg/yur/yurIF背景マスク.png", false);
	SetAlias("ゆる窓","ゆる窓");

	CreateSE("SEコミマ暴動","seガヤ_客暴動_l");

	CreateTextureEX("ゆる枠", 110, Center, Middle, "cg/yur/yurIF枠.png");
	CreateTextureEX("ゆる窓/背景", 100, Center, Middle, $背景1p);
	CreateTextureEX("ゆる窓/似鳥１", 100, Center, Middle, $画像Chara1p);
	CreateTextureEX("ゆる窓/似鳥２", 100, Center, Middle, $画像Chara2p);
	CreateTextureEX("ゆる窓/ゆる絵１", 100, Center, Middle, $画像1p);
	CreateTextureEX("ゆる窓/ゆる絵２", 100, Center, Middle, $画像2p);
	Move("ゆる*", 0, @40, @0, null, true);
	Move("ゆる窓/*", 0, @40, @0, null, true);
	Move("ゆる窓/ゆる*", 0, @800, @-20, null, true);
	Zoom("ゆる窓/ゆる絵*", 0, 1200, 1200, null, true);

//	Move("ゆる窓/ゆる*", 0, 500, @0, null, true);

	Move("ゆる*", 200, @-40, @0, Dxl2, false);
	Move("ゆる窓/*", 200, @-40, @0, Dxl2, false);
	Fade("@ゆる枠",  200, 1000, null, false);
	Fade("@ゆる窓/背景",  200, 1000, null, false);
	Fade("@ゆる窓/似鳥１",  200, 1000, null, true);
}


function Yuru_Comima_Start()
{
	CreateProcess($ゆるプロセスコミマ, 150, 0, 0, "Yuru_Comima_Dash");
	SetAlias($ゆるプロセスコミマ,$ゆるプロセスコミマ);
	Request($ゆるプロセスコミマ,Start);



}
function Yuru_Comima_Delete()
{
	$yurukaku_f=false;
	Request("@ゆるp",Stop);
	Delete("@ゆるp");

	Move("@ゆる*", 200, @-40, @0, Dxl2, false);
	Move("@ゆる窓/ゆる*", 200, @-40, @0, Dxl2, false);
	FadeDelete("@ゆる*",  200, null, true);
}

function Yuru_Comima_Dash()
{

	begin:

	Wait(1000);
	
	MusicStart("@SEコミマ暴動",300,1000,0,800,null,true);
	Shake("@ゆる窓/ゆる絵*", 5000, 0, 4, 0, 0, 1000, null, false);
	Move("@ゆる窓/ゆる絵*", 5000, @-2000, @0, null, false);

	$yuruComi_f=1;
	while($yuruComi_f<=5)
	{
		Fade("@ゆる窓/ゆる絵２", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる絵１", 0, 0, null, true);
		Wait(100);
		Fade("@ゆる窓/ゆる絵１", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる絵２", 0, 0, null, true);
		Wait(100);

		$yuruComi_f = $yuruComi_f + 1;

	}

	Fade("@ゆる窓/似鳥２", 200, 1000, null, false);
	Fade("@ゆる窓/似鳥１", 200, 0, Axl2, true);

	$yuruComi_f=1;

	while($yuruComi_f<=5)
	{
		Fade("@ゆる窓/ゆる絵２", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる絵１", 0, 0, null, true);
		Wait(100);
		Fade("@ゆる窓/ゆる絵１", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる絵２", 0, 0, null, true);
		Wait(100);

		$yuruComi_f = $yuruComi_f + 1;

	}

	SetVolume("@SEコミマ暴動", 500, 0, null);

}

.ゆる演出カレー
function Yuru_Curry_Set($ゆるプロセスカレー)
{

	CreateMask("ゆる窓", 0, Center, Middle, "cg/yur/yurIF背景マスク.png", false);
	SetAlias("ゆる窓","ゆる窓");

	CreateTextureEX("ゆる窓/背景", 100, Center, Middle, "cg/yur/yurIF背景03.png");
	CreateTextureEX("ゆる枠", 110, Center, Middle, "cg/yur/yurIF枠.png");
	CreateTextureEX("ゆる窓/ゆる煮込み01", 100, Center, Middle, "cg/yur/yurノーコ料理a.png");
	CreateTextureEX("ゆる窓/ゆる煮込み02", 100, Center, Middle, "cg/yur/yurノーコ料理b.png");
	CreateTextureEX("ゆる窓/ゆる煮込み03", 100, Center, Middle, "cg/yur/yurノーコ料理c.png");
	CreateTextureEX("ゆる窓/ゆる煮込み04", 100, Center, Middle, "cg/yur/yurノーコ料理d.png");
	CreateTextureEX("ゆる窓/ゆるカレー01", 100, Center, Middle, "cg/yur/yurノーコ料理カレーa.png");
	CreateTextureEX("ゆる窓/ゆるカレー02", 100, Center, Middle, "cg/yur/yurノーコ料理カレーb.png");
	CreateTextureEX("ゆる窓/ゆるカレー03", 100, Center, Middle, "cg/yur/yurノーコ料理カレーc.png");
	CreateTextureEX("ゆる窓/ゆるカレー04", 100, Center, Middle, "cg/yur/yurノーコ料理カレーd.png");
	Move("ゆる*", 0, @40, @0, null, true);
	Move("ゆる窓/*", 0, @40, @0, null, true);

//	Move("ゆる窓/ゆる*", 0, 500, @0, null, true);

	Move("ゆる*", 200, @-40, @0, Dxl2, false);
	Move("ゆる窓/*", 200, @-40, @0, Dxl2, false);
	Fade("@ゆる枠",  200, 1000, null, false);
	Fade("@ゆる窓/ゆる煮込み01",  200, 1000, null, false);
	Fade("@ゆる窓/背景",  200, 1000, null, true);
}

function Yuru_Curry_Start01($ゆるカレー煮る時間)
{
	CreateProcess($ゆるプロセスカレー, 150, 0, 0, "Yuru_Curry_Boil01");
	SetAlias($ゆるプロセスカレー,$ゆるプロセスカレー);
	Request($ゆるプロセスカレー,Start);

}

function Yuru_Curry_Boil01()
{

	begin:

	while(1)
	{
		Fade("@ゆる窓/ゆる煮込み02", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる煮込み01", 0, 0, null, true);
		Wait($ゆるカレー煮る時間);

		Fade("@ゆる窓/ゆる煮込み03", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる煮込み02", 0, 0, null, true);
		Wait($ゆるカレー煮る時間);

		Fade("@ゆる窓/ゆる煮込み04", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる煮込み03", 0, 0, null, true);
		Wait($ゆるカレー煮る時間);

		Fade("@ゆる窓/ゆる煮込み01", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる煮込み04", 0, 0, null, true);
		Wait($ゆるカレー煮る時間);

	}

}

function Yuru_Curry_Start02($ゆるカレー煮る時間)
{
	CreateProcess($ゆるプロセスカレー, 150, 0, 0, "Yuru_Curry_Boil02");
	SetAlias($ゆるプロセスカレー,$ゆるプロセスカレー);
	Request($ゆるプロセスカレー,Start);

}

function Yuru_Curry_Boil02()
{


	begin:

	Fade("@ゆる窓/ゆる煮込み*", 300, 0, Axl2, false);
	Fade("@ゆる窓/ゆるカレー01", 200, 1000, null, true);

	while(1)
	{
		Fade("@ゆる窓/ゆるカレー02", 0, 1000, null, true);
		Fade("@ゆる窓/ゆるカレー01", 0, 0, null, true);
		Wait($ゆるカレー煮る時間);

		Fade("@ゆる窓/ゆるカレー03", 0, 1000, null, true);
		Fade("@ゆる窓/ゆるカレー02", 0, 0, null, true);
		Wait($ゆるカレー煮る時間);

		Fade("@ゆる窓/ゆるカレー04", 0, 1000, null, true);
		Fade("@ゆる窓/ゆるカレー03", 0, 0, null, true);
		Wait($ゆるカレー煮る時間);

		Fade("@ゆる窓/ゆるカレー01", 0, 1000, null, true);
		Fade("@ゆる窓/ゆるカレー04", 0, 0, null, true);
		Wait($ゆるカレー煮る時間);

	}

}

function Yuru_Curry_SpeedChange($ゆるカレー煮る時間)
{

}

function Yuru_Curry_Stop()
{
	Request($ゆるプロセスカレー,Stop);
	Delete($ゆるプロセスカレー);

}

function Yuru_Curry_Delete()
{
	Request($ゆるプロセスカレー,Stop);
	Delete($ゆるプロセスカレー);

	Move("@ゆる*", 200, @-40, @0, Dxl2, false);
	FadeDelete("@ゆる*",  200, null, true);
}

.ゆる演出大食い
function Yuru_Eat_Set()
{
	$ゆるプロセス大食い = "ゆる大食い";

	CreateSound("サウンドゆる大食い音01", SE, "sound/se/se擬音_ギャグ_ひょいひょい.ogg");
	SetAlias("サウンドゆる大食い音01","サウンドゆる大食い音01");
	CreateSound("サウンドゆる大食い音02", SE, "sound/se/se擬音_ギャグ_ひょいひょい.ogg");
	SetAlias("サウンドゆる大食い音02","サウンドゆる大食い音02");
	SetVolume("サウンドゆる大食い音01", 0, 100, null);
	SetVolume("サウンドゆる大食い音02", 0, 100, null);
	CreateSound("サウンドゆる大食い音03", SE, "sound/se/se戦闘_金属弾く01.ogg");
	SetAlias("サウンドゆる大食い音03","サウンドゆる大食い音03");
	CreateSound("サウンドゆる大食い音04", SE, "sound/se/se戦闘_金属弾く01.ogg");
	SetAlias("サウンドゆる大食い音04","サウンドゆる大食い音04");
	SetVolume("サウンドゆる大食い音03", 0, 150, null);
	SetVolume("サウンドゆる大食い音04", 0, 150, null);


	CreateMask("ゆる窓", 0, Center, Middle, "cg/yur/yurIF背景マスク.png", false);
	SetAlias("ゆる窓","ゆる窓");

	CreateTextureEX("ゆる窓/背景", 98, Center, Middle, "cg/yur/yurIF背景03.png");
	CreateTextureEX("ゆる枠", 110, Center, Middle, "cg/yur/yurIF枠.png");
	CreateTextureEX("ゆる窓/ゆる大食い01", 100, Center, Middle, "cg/yur/yurフウリ大食いf.png");
	CreateTextureEX("ゆる窓/ゆる大食い02", 100, Center, Middle, "cg/yur/yurフウリ大食いa.png");
	CreateTextureEX("ゆる窓/ゆる大食い03", 100, Center, Middle, "cg/yur/yurフウリ大食いb.png");
	CreateTextureEX("ゆる窓/ゆる大食い04", 100, Center, Middle, "cg/yur/yurフウリ大食いc.png");
	CreateTextureEX("ゆる窓/ゆる大食い05", 100, Center, Middle, "cg/yur/yurフウリ大食いd.png");
	CreateTextureEX("ゆる窓/ゆる大食い06", 100, Center, Middle, "cg/yur/yurフウリ大食いe.png");
	Move("ゆる*", 0, @40, @0, null, true);
	Move("ゆる窓/*", 0, @40, @0, null, true);

//お皿生成マクロ
	Yuru_Eat_BowlSet();

}

function Yuru_Eat_Start($ゆる大食い速度)
{

	CreateProcess($ゆるプロセス大食い, 150, 0, 0, "Yuru_Eat_Anime");
	SetAlias($ゆるプロセス大食い,$ゆるプロセス大食い);
	Request($ゆるプロセス大食い,Start);

}


function Yuru_Eat_Anime()
{


	begin:

	Move("ゆる*", 200, @-40, @0, Dxl2, false);
	Move("ゆる窓/*", 200, @-40, @0, Dxl2, false);
	Fade("@ゆる枠",  200, 1000, null, false);
	Fade("@ゆる窓/ゆる大食い01",  200, 1000, null, false);
	Fade("@ゆる窓/背景",  200, 1000, null, true);

	$EatBowlFadeWhile=0;

	while(1)
	{


//		CreateSE("ゆる大食い音","se擬音_ギャグ_ひょいひょい");
//		MusicStart("ゆる大食い音",0,100,0,1500,null,false);

		if($EatBowlSoundTurn==1){
			Request("@サウンドゆる大食い音01", Stop);
			Request("@サウンドゆる大食い音01", Play);
			$EatBowlSoundTurn=0;
		}else{
			Request("@サウンドゆる大食い音02", Stop);
			Request("@サウンドゆる大食い音02", Play);
			$EatBowlSoundTurn=1;
		}

		Fade("@ゆる窓/ゆる大食い01", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる大食い06", 0, 0, null, true);
		Wait($ゆる大食い速度);

		Fade("@ゆる窓/ゆる大食い02", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる大食い01", 0, 0, null, true);
		Wait($ゆる大食い速度);

		Fade("@ゆる窓/ゆる大食い03", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる大食い02", 0, 0, null, true);
		Wait($ゆる大食い速度);

		Fade("@ゆる窓/ゆる大食い04", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる大食い03", 0, 0, null, true);
		Wait($ゆる大食い速度);

		Fade("@ゆる窓/ゆる大食い05", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる大食い04", 0, 0, null, true);
		Wait($ゆる大食い速度);

		Fade("@ゆる窓/ゆる大食い06", 0, 1000, null, true);
		Fade("@ゆる窓/ゆる大食い05", 0, 0, null, true);
		Wait($ゆる大食い速度);

		if($EatBowlSoundTurn==1){
			Request("@サウンドゆる大食い音03", Stop);
			Request("@サウンドゆる大食い音03", Play);
			$EatBowlSoundTurn=0;
		}else{
			Request("@サウンドゆる大食い音04", Stop);
			Request("@サウンドゆる大食い音04", Play);
			$EatBowlSoundTurn=1;
		}

		if(100>=$EatBowlFadeWhile){

			$EatBowlFadeNum1=Integer($EatBowlFadeWhile/10);
			$EatBowlFadeNum2=Integer($EatBowlFadeWhile%10);
			$EatBowlFadeNut="@ゆる窓/EatBowl"+$EatBowlFadeNum1+"_"+$EatBowlFadeNum2;

			Shake($EatBowlFadeNut, 200, 0, 5, 0, 0, 1000, Dxl1, false);
			Fade($EatBowlFadeNut, 0, 1000, null, true);
			$EatBowlFadeWhile = $EatBowlFadeWhile + 1;

		}

		Wait(100);

	}

}

//食べ終わった茶碗をセット
function Yuru_Eat_BowlSet()
{

//フウリの後ろに重なっていくお茶碗の生成用変数を設定
	$EatBowlWhile=0;
	$EatBowlX_Def = 360;
	$EatBowlY_Def = 352;
	$EatBowlLevel_Def = 0;

	$EatBowlX = $EatBowlX_Def;
	$EatBowlY = $EatBowlY_Def;
	$EatBowlLevel = $EatBowlLevel_Def;

	//まずはフウリの後ろに出るお茶碗　４２個分を作成
	while(42>$EatBowlWhile){


		$EatBowlLevel = $EatBowlLevel+1;
		$EatBowlNum1=Integer($EatBowlWhile/10);
		$EatBowlNum2=Integer($EatBowlWhile%10);

		$EatBowlNut="ゆる窓/EatBowl"+$EatBowlNum1+"_"+$EatBowlNum2;

		CreateTexture($EatBowlNut, 99, $EatBowlX, $EatBowlY, "cg/yur/yurフウリ大食い_茶碗.png");
		SetAlias($EatBowlNut, $EatBowlNut);
		Fade($EatBowlNut, 0, 0, null, true);



		$EatBowlX = $EatBowlX + 80;

		if($EatBowlLevel>=6){

			$EatBowlX = $EatBowlX_Def - 30;
			$EatBowlX_Def = $EatBowlX;
			$EatBowlY = $EatBowlY - 35;

			$EatBowlLevel = $EatBowlLevel_Def;

		}

	$EatBowlWhile = $EatBowlWhile + 1;

	}

//フウリの前に重なっていくお茶碗の生成用変数を設定
//	$EatBowlWhile=0;
	$EatBowlX_Def = 300;
	$EatBowlY_Def = 400;
	$EatBowlLevel_Def = 0;

	$EatBowlX = $EatBowlX_Def;
	$EatBowlY = $EatBowlY_Def;
	$EatBowlLevel = $EatBowlLevel_Def;

	//フウリの前に重なっていくお茶碗　１００個分を作成
	while(100>$EatBowlWhile){


		$EatBowlLevel = $EatBowlLevel+1;
		$EatBowlNum1=Integer($EatBowlWhile/10);
		$EatBowlNum2=Integer($EatBowlWhile%10);

		$EatBowlNut="ゆる窓/EatBowl"+$EatBowlNum1+"_"+$EatBowlNum2;

		CreateTexture($EatBowlNut, 105, $EatBowlX, $EatBowlY, "cg/yur/yurフウリ大食い_茶碗.png");
//		Request($EatBowlNut, Smoothing);
		SetAlias($EatBowlNut, $EatBowlNut);
		Fade($EatBowlNut, 0, 0, null, true);
		Zoom($EatBowlNut, 0, 1200, 1200, null, true);



		$EatBowlX = $EatBowlX + 80;

		if($EatBowlLevel>=6){

			$EatBowlX = $EatBowlX_Def;
			$EatBowlX_Def = $EatBowlX;
			$EatBowlY = $EatBowlY - 38;

			$EatBowlLevel = $EatBowlLevel_Def;

		}

	$EatBowlWhile = $EatBowlWhile + 1;

	}

}

//食べる速度をチェンジ
function Yuru_Eat_SpeedChange($ゆる大食い速度)
{

}

//ゆる大食いのすべてを削除
function Yuru_Eat_Delete()
{
	Request($ゆるプロセス大食い,Stop);
	Delete($ゆるプロセス大食い);

	CreateEffect("@ゆる窓/大食いプレーン", 106, 0, 0, 1024, 576, "Plain");
	SetAlias("@ゆる窓/大食いプレーン","大食いプレーン");
	Request("@ゆる窓/大食いプレーン",Passive);
	SetVolume("@サウンド*", 500, 0, null);
	Request("@サウンド*",Disused);


	FadeDelete("@ゆる窓/ゆる*",  0, null, true);
	FadeDelete("@ゆる窓/背景",  0, null, true);
	FadeDelete("@ゆる窓/EatBowl*",  0, null, true);
	FadeDelete("@ゆる枠",  200, null, false);
	FadeDelete("@ゆる窓/大食いプレーン",  200, null, true);
	Delete("@ゆる窓");

}


function SotokandarFall_Set($カンダー画像優先度)
{
	$カンダーボリューム = 200;

	CreateTextureEX("絵下地背景", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_下地.png");
	CreateTextureEX("絵スコア100", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_スコア_0000.png");
	CreateTextureEX("絵スコア200", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_スコア_0001.png");

	CreateTextureEX("絵外神田EF", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_エフェクト.png");
	CreateTextureEX("絵外神田カンダー100", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_カンダ_a.png");
	CreateTextureEX("絵外神田カンダー200", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_カンダ_b.png");
	CreateTextureEX("絵外神田カンダー300", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_カンダ_c.png");
	CreateTextureEX("絵外神田サクラ100", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_サクラ_a.png");
	CreateTextureEX("絵外神田サクラ200", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_サクラ_b.png");
	CreateTextureEX("絵外神田サクラ300", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_サクラ_c.png");
	CreateTextureEX("絵外神田サクラ400", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_サクラ_d.png");
	CreateTextureEX("絵外神田サクラ500", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_サクラ_e.png");

	CreateTextureEX("絵枠カンダー", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_下地_枠.png");

	CreateSound("外神田サウンド01", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド01","外神田サウンド01");
	CreateSound("外神田サウンド02", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド02","外神田サウンド02");
	CreateSound("外神田サウンド03", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド03","外神田サウンド03");
	CreateSound("外神田サウンド04", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド04","外神田サウンド04");
	CreateSound("外神田サウンド05", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド05","外神田サウンド05");
	CreateSound("外神田サウンド06", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド06","外神田サウンド06");
	CreateSound("外神田サウンド07", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド07","外神田サウンド07");
	CreateSound("外神田サウンド08", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド08","外神田サウンド08");
	SetVolume("外神田サウンド01", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド02", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド03", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド04", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド05", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド06", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド07", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド08", 0, $カンダーボリューム, null);
//	SetFrequency("外神田サウンド01", 0, 300, null);
//	SetFrequency("外神田サウンド02", 0, 300, null);

}

function SotokandarFall_Start($カンダー落下時間)
{

	CreateProcess($カンダープロセス, 150, 0, 0, "SotokandarFall_Pro");
	SetAlias($カンダープロセス,$カンダープロセス);
	Request($カンダープロセス,Start);

}

function SotokandarFall_Pro()
{

	begin;

	CreateEffect("絵開始プレーン", $カンダー画像優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("絵開始プレーン","絵開始プレーン");
	Request("@絵開始プレーン",Passive);

	Fade("@絵下地背景", 0, 1000, null, false);
	Fade("@絵枠カンダー", 0, 1000, null, false);
	Fade("@絵スコア100", 0, 1000, null, true);

	FadeDelete("@絵開始プレーン",  200, null, true);

	while(1){

	Request("@外神田サウンド01", Play);
	Fade("@絵外神田*", 0, 0, null, true);
	Fade("@絵スコア100", 0, 1000, null, true);
	Fade("@絵スコア200", 0, 0, null, true);
	Fade("@絵外神田カンダー100", 0, 1000, null, true);
	Fade("@絵外神田サクラ100", 0, 1000, null, true);
	Wait($カンダー落下時間);
	Request("@外神田サウンド02", Play);
	Request("@外神田サウンド01", Stop);
	Fade("@絵外神田*", 0, 0, null, true);
	Fade("@絵外神田カンダー200", 0, 1000, null, true);
	Fade("@絵外神田サクラ200", 0, 1000, null, true);
	Wait($カンダー落下時間);
	Fade("@絵外神田*", 0, 0, null, true);
	Fade("@絵外神田カンダー300", 0, 1000, null, true);
	Fade("@絵外神田サクラ300", 0, 1000, null, true);
	Fade("@絵外神田EF", 0, 1000, null, true);

	Request("@外神田サウンド03", Play);
	Request("@外神田サウンド02", Stop);
	Wait(100);
	Request("@外神田サウンド04", Play);
	Request("@外神田サウンド03", Stop);
	Fade("@絵外神田EF", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド05", Play);
//	Request("@外神田サウンド04", Stop);
	Fade("@絵外神田EF", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド06", Play);
//	Request("@外神田サウンド05", Stop);
	Fade("@絵外神田EF", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド07", Play);
//	Request("@外神田サウンド06", Stop);
	Fade("@絵外神田EF", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド08", Play);
//	Request("@外神田サウンド07", Stop);
	Fade("@絵外神田EF", 0, 0, null, true);
	Fade("@絵外神田カンダー300", 0, 0, null, true);
//	Fade("@絵スコア200", 0, 1000, null, true);
//	Fade("@絵スコア100", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド01", Play);
//	Request("@外神田サウンド08", Stop);
	Fade("@絵外神田カンダー300", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド02", Play);
//	Request("@外神田サウンド01", Stop);
	Fade("@絵外神田カンダー300", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド03", Play);
//	Request("@外神田サウンド02", Stop);
	Fade("@絵外神田カンダー300", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド04", Play);
//	Request("@外神田サウンド03", Stop);
	Fade("@絵外神田カンダー300", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド05", Play);
//	Request("@外神田サウンド04", Stop);
	Fade("@絵外神田カンダー300", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド06", Play);
//	Request("@外神田サウンド05", Stop);
	Fade("@絵外神田カンダー300", 0, 0, null, true);
	Wait(200);

	Request("@外神田サウンド07", Play);
	Request("@外神田サウンド06", Stop);
	Fade("@絵外神田*", 0, 0, null, true);
	Fade("@絵外神田サクラ400", 0, 1000, null, true);
	Wait($カンダー落下時間);
	Request("@外神田サウンド08", Play);
	Request("@外神田サウンド07", Stop);
	Fade("@絵外神田*", 0, 0, null, true);
	Fade("@絵外神田サクラ500", 0, 1000, null, true);
	Wait($カンダー落下時間);
	Fade("@絵外神田サクラ500", 0, 0, null, true);
	Wait($カンダー落下時間);
	Wait($カンダー落下時間);

	}
}

function SotokandarFall_SpeedChange($カンダー落下時間)
{

}


function SotokandarFall_Delete()
{
	Request($カンダープロセス,Stop);
	Delete($カンダープロセス);

	CreateEffect("絵終了プレーン", $カンダー画像優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("絵終了プレーン","絵終了プレーン");
	Request("@絵終了プレーン",Passive);
	SetVolume("@外神田サウンド*", 500, 0, null);
	Request("@外神田サウンド*",Disused);


	FadeDelete("@絵枠カンダー",  0, null, true);
	FadeDelete("@絵開始プレーン",  0, null, true);
	FadeDelete("@絵下地背景",  0, null, true);
	FadeDelete("@絵スコア*",  0, null, true);
	FadeDelete("@絵外神田*",  0, null, true);
	FadeDelete("@絵終了プレーン",  500, null, true);

}

function SotokandarFall_Set02($カンダー画像優先度)
{

	$カンダーボリューム = 200;

	CreateTextureEX("絵下地背景", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_下地.png");
	CreateTextureEX("絵スコア100", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_スコア_0000.png");
	CreateTextureEX("絵スコア200", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_スコア_0001.png");

	CreateTextureEX("絵外神田EF", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_エフェクト.png");
	CreateTextureEX("絵外神田カンダー100", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_カンダ_a.png");
	CreateTextureEX("絵外神田カンダー200", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_カンダ_b.png");
	CreateTextureEX("絵外神田カンダー300", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_カンダ_c.png");
	CreateTextureEX("絵外神田サクラ100", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_サクラ_a.png");
	CreateTextureEX("絵外神田サクラ200", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_サクラ_b.png");
	CreateTextureEX("絵外神田サクラ300", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_サクラ_c.png");
	CreateTextureEX("絵外神田サクラ400", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_サクラ_d.png");
	CreateTextureEX("絵外神田サクラ500", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_サクラ_e.png");

	CreateTextureEX("絵枠カンダー", $カンダー画像優先度, Center, Middle, "cg/obj/objソトカンダー落下演出_下地_枠.png");

	CreateSound("外神田サウンド01", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド01","外神田サウンド01");
	CreateSound("外神田サウンド02", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド02","外神田サウンド02");
	CreateSound("外神田サウンド03", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド03","外神田サウンド03");
	CreateSound("外神田サウンド04", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド04","外神田サウンド04");
	CreateSound("外神田サウンド05", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド05","外神田サウンド05");
	CreateSound("外神田サウンド06", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド06","外神田サウンド06");
	CreateSound("外神田サウンド07", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド07","外神田サウンド07");
	CreateSound("外神田サウンド08", SE, "sound/se/seメカ_ゲームウォッチ.ogg");
	SetAlias("外神田サウンド08","外神田サウンド08");
	SetVolume("外神田サウンド01", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド02", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド03", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド04", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド05", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド06", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド07", 0, $カンダーボリューム, null);
	SetVolume("外神田サウンド08", 0, $カンダーボリューム, null);
//	SetFrequency("外神田サウンド01", 0, 300, null);
//	SetFrequency("外神田サウンド02", 0, 300, null);

}

function SotokandarFall_Start02($カンダー落下時間)
{

	CreateProcess($カンダープロセス, 150, 0, 0, "SotokandarFall_Pro02");
	SetAlias($カンダープロセス,$カンダープロセス);
	Request($カンダープロセス,Start);

}

function SotokandarFall_Pro02()
{

	begin;

	CreateEffect("絵開始プレーン", $カンダー画像優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("絵開始プレーン","絵開始プレーン");
	Request("@絵開始プレーン",Passive);

	Fade("@絵下地背景", 0, 1000, null, false);
	Fade("@絵枠カンダー", 0, 1000, null, false);
	Fade("@絵スコア100", 0, 1000, null, true);

	FadeDelete("@絵開始プレーン",  200, null, true);

	while(1){

	Request("@外神田サウンド01", Play);
	Fade("@絵外神田*", 0, 0, null, true);
	Fade("@絵スコア100", 0, 1000, null, true);
	Fade("@絵スコア200", 0, 0, null, true);
	Fade("@絵外神田カンダー100", 0, 1000, null, true);
	Fade("@絵外神田サクラ100", 0, 1000, null, true);
	Wait($カンダー落下時間);
	Request("@外神田サウンド02", Play);
	Request("@外神田サウンド01", Stop);
	Fade("@絵外神田*", 0, 0, null, true);
	Fade("@絵外神田カンダー200", 0, 1000, null, true);
	Fade("@絵外神田サクラ200", 0, 1000, null, true);
	Wait($カンダー落下時間);
	Request("@外神田サウンド03", Play);
	Request("@外神田サウンド02", Stop);
	Fade("@絵外神田*", 0, 0, null, true);
	Fade("@絵外神田カンダー300", 0, 1000, null, true);
	Fade("@絵外神田サクラ300", 0, 1000, null, true);
//	Fade("@絵外神田EF", 0, 1000, null, true);
	Wait(100);

/*
	Request("@外神田サウンド03", Play);
	Request("@外神田サウンド02", Stop);
	Wait(100);
	Request("@外神田サウンド04", Play);
	Request("@外神田サウンド03", Stop);
	Fade("@絵外神田EF", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド05", Play);
//	Request("@外神田サウンド04", Stop);
	Fade("@絵外神田EF", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド06", Play);
//	Request("@外神田サウンド05", Stop);
	Fade("@絵外神田EF", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド07", Play);
//	Request("@外神田サウンド06", Stop);
	Fade("@絵外神田EF", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド08", Play);
//	Request("@外神田サウンド07", Stop);
	Fade("@絵外神田EF", 0, 0, null, true);
	Fade("@絵外神田カンダー300", 0, 0, null, true);
	Fade("@絵スコア200", 0, 1000, null, true);
	Fade("@絵スコア100", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド01", Play);
//	Request("@外神田サウンド08", Stop);
	Fade("@絵外神田カンダー300", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド02", Play);
//	Request("@外神田サウンド01", Stop);
	Fade("@絵外神田カンダー300", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド03", Play);
//	Request("@外神田サウンド02", Stop);
	Fade("@絵外神田カンダー300", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド04", Play);
//	Request("@外神田サウンド03", Stop);
	Fade("@絵外神田カンダー300", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド05", Play);
//	Request("@外神田サウンド04", Stop);
	Fade("@絵外神田カンダー300", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド06", Play);
//	Request("@外神田サウンド05", Stop);
	Fade("@絵外神田カンダー300", 0, 0, null, true);
	Wait(200);
*/
	Request("@外神田サウンド07", Play);
	Request("@外神田サウンド06", Stop);
	Fade("@絵外神田サクラ300", 0, 0, null, true);
	Fade("@絵外神田サクラ400", 0, 1000, null, true);
	Fade("@絵スコア200", 0, 1000, null, true);
	Fade("@絵スコア100", 0, 0, null, true);

	Wait(100);
	Request("@外神田サウンド08", Play);
//	Request("@外神田サウンド07", Stop);
	Fade("@絵外神田EF", 0, 0, null, true);
	Fade("@絵外神田カンダー300", 0, 0, null, true);
	Fade("@絵スコア200", 0, 1000, null, true);
	Fade("@絵スコア100", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド01", Play);
//	Request("@外神田サウンド08", Stop);
	Fade("@絵外神田カンダー300", 0, 1000, null, true);
	Wait(100);
	Request("@外神田サウンド02", Play);
//	Request("@外神田サウンド01", Stop);
	Fade("@絵外神田カンダー300", 0, 0, null, true);
	Wait(100);
	Request("@外神田サウンド03", Play);
//	Request("@外神田サウンド02", Stop);
	Fade("@絵外神田カンダー300", 0, 1000, null, true);
	Wait(100);
	Wait($カンダー落下時間);
	Request("@外神田サウンド08", Play);
	Request("@外神田サウンド07", Stop);
	Fade("@絵外神田*", 0, 0, null, true);
	Fade("@絵外神田サクラ500", 0, 1000, null, true);
	Wait($カンダー落下時間);
	Fade("@絵外神田サクラ500", 0, 0, null, true);
	Wait($カンダー落下時間);
	Wait($カンダー落下時間);

	}
}

function SotokandarFall_SpeedChange02($カンダー落下時間)
{

}


function SotokandarFall_Delete02()
{
	Request($カンダープロセス,Stop);
	Delete($カンダープロセス);

	CreateEffect("絵終了プレーン", $カンダー画像優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("絵終了プレーン","絵終了プレーン");
	Request("@絵終了プレーン",Passive);
	SetVolume("@外神田サウンド*", 500, 0, null);
	Request("@外神田サウンド*",Disused);


	FadeDelete("@絵枠カンダー",  0, null, true);
	FadeDelete("@絵開始プレーン",  0, null, true);
	FadeDelete("@絵下地背景",  0, null, true);
	FadeDelete("@絵スコア*",  0, null, true);
	FadeDelete("@絵外神田*",  0, null, true);
	FadeDelete("@絵終了プレーン",  500, null, true);

}

function 1940Nitori_VoiceSet($ボイスプロセス用音量)
{

	$1940Nitori_Voice音量 = $ボイスプロセス用音量/2;

//	CreateSound("あにあな店員声０", VOICE, "voice/19/400301210e13");
//	SetAlias("あにあな店員声０","あにあな店員声０");

//	CreateSound("あにあな店員声１", VOICE, "voice/19/400301220e13");
//	SetAlias("あにあな店員声１","あにあな店員声１");

//	CreateSound("あにあな店員声２", VOICE, "voice/19/400301230e13");
//	SetAlias("あにあな店員声２","あにあな店員声２");

//	CreateSound("あにあな店員声３", VOICE, "voice/19/400301240e13");
//	SetAlias("あにあな店員声３","あにあな店員声３");

	CreateVOICEEX("あにあな店員声０","19/400301210e13","その他男声");
	CreateVOICEEX("あにあな店員声１","19/400301220e13","その他男声");
	CreateVOICEEX("あにあな店員声２","19/400301230e13","その他男声");
	CreateVOICEEX("あにあな店員声３","19/400301240e13","その他男声");

	SetVolume("あにあな店員声*", 0, $1940Nitori_Voice音量, null);


}

function 1940Nitori_VoiceStart()
{

	CreateProcess("ボイスプロセス1940", 150, 0, 0, "1940Nitori_VoicePro");
	SetAlias("ボイスプロセス1940","ボイスプロセス1940");
	Request("@ボイスプロセス1940",Start);

}

function 1940Nitori_VoicePro()
{

	Wait(300);

	Request("@あにあな店員声０", Play);
	Request("@あにあな店員声０", Disused);

	WaitPlay("@あにあな店員声０");

	Request("@あにあな店員声１", Play);
	Request("@あにあな店員声１", Disused);

	WaitPlay("@あにあな店員声１");

	Request("@あにあな店員声２", Play);
	Request("@あにあな店員声２", Disused);

	WaitPlay("@あにあな店員声２");

	Wait(500);

	Request("@あにあな店員声３", Play);
	Request("@あにあな店員声３", Disused);

	WaitPlay("@あにあな店員声３");


}

function 1940Nitori_VoiceDelete(時間)
{

	Request("@ボイスプロセス1940",Stop);
	SetVolume("@あにあな店員声*", 時間, 0, null);
	Wait(時間);
	Delete("@あにあな店員声*");

	Delete("@ボイスプロセス1940");

}

.レンズムーブ（カオスヘッドノアより）
function Lens_Set($プロセスレンズ名,優先度,X座標,Y座標,X幅,Y幅)
{
	$SYSTEM_effect_lens_curvature = 8000;
	$SYSTEM_effect_lens_distance = 10;

	CreateEffect($プロセスレンズ名, 優先度, X座標, Y座標, X幅, Y幅, "Lens");
//	CreateEffect("レンズ１", 2100, -135, -415, 1550, 1550, "Lens");
	SetAlias($プロセスレンズ名, $プロセスレンズ名);

}

function Lens_Start($プロセスレンズムーブ速度)
{

	$プロセスレンズPro名 = $プロセスレンズ名 + "Process";
	CreateProcess($プロセスレンズPro名, 1000, 0, 0, "Lens_Move");
	SetAlias($プロセスレンズPro名, $プロセスレンズPro名);
	Request($プロセスレンズPro名, Start);

}

function Lens_Move()
{
	while(1)
	{
		BezierMove("@レンズ１", $プロセスレンズムーブ速度, (@0,@0){@5,@-30}{@25,@-30}(@30,@0){@25,@30}{@5,@30}(@0,@0), null, true);
		BezierMove("@レンズ１", $プロセスレンズムーブ速度, (@0,@0){@-5,@-30}{@-25,@-30}(@-30,@0){@-25,@30}{@-5,@30}(@0,@0), null, true);
	}
}

function Lens_Delete($プロセスレンズDelete名)
{

	$プロセスレンズDelete名Pro = $プロセスレンズDelete名 + "Process";

	Request($プロセスレンズDelete名Pro, Stop);
	Delete($プロセスレンズDelete名Pro);
	Delete($プロセスレンズDelete名);

}

.カゴメ成功演出マクロ
function Kagome_ClearEffect_Set($カゴメ成功優先度親)
{
	$カゴメ成功優先度１ = $カゴメ成功優先度親 + 100;
	$カゴメ成功優先度２ = $カゴメ成功優先度親 + 50;
	$カゴメ成功優先度３ = $カゴメ成功優先度親;

	CreateColorEXadd("絵色カゴメ100", $カゴメ成功優先度１, "WHITE");

	CreateTextureEXadd("絵カゴメ演出100", $カゴメ成功優先度３, Center, Middle, "cg/ef/ef044_火花c.png");
	Zoom("絵カゴメ演出100", 0, 1000, 1000, null, true);

	CreateTextureEXadd("カゴメ羽１", $カゴメ成功優先度２, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("カゴメ羽２", $カゴメ成功優先度２, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("カゴメ羽２０", $カゴメ成功優先度２, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("カゴメ羽３", $カゴメ成功優先度２, Center, InBottom, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("カゴメ羽小４", $カゴメ成功優先度２, -800, 100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("カゴメ羽小５", $カゴメ成功優先度２, -600, -100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("カゴメ羽小６", $カゴメ成功優先度２, -1600, 100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("カゴメ羽小７", $カゴメ成功優先度２, -800, 130, "cg/ef/天使の羽big.png");
	Rotate("カゴメ羽１", 0, @0, @0, @-240, null,true);
	Rotate("カゴメ羽２", 0, @0, @0, @-70, null,true);
	Rotate("カゴメ羽２０", 0, @0, @0, @120, null,true);
	Rotate("カゴメ羽３", 0, @0, @0, @-110, null,true);
	Rotate("カゴメ羽小６", 0, @0, @0, @-180, null,true);
	Rotate("カゴメ羽小４", 0, @0, @0, @70, null,true);
	Rotate("カゴメ羽小５", 0, @0, @0, @-150, null,true);

	Move("カゴメ羽１", 0, @-800, @-200, null, true);
	Move("カゴメ羽２", 0, @-800, @+100, null, true);
	Move("カゴメ羽２０", 0, @-1600, @+100, null, true);
	Move("カゴメ羽３", 0, @-800, @+130, null, true);

	CreateSE("SEカゴメ00","se擬音_カゴメアソビ成功");
	CreateSE("SEカゴメ000","se擬音_光り輝く01");
	CreateSE("SEカゴメ001","se擬音_羽が舞う");
	SetVolumeEX("SEカゴメ00", 0, 1100, null);
	SetVolumeEX("SEカゴメ000", 0, 500, null);
	SetVolumeEX("SEカゴメ001", 0, 500, null);

	CreateProcess("カゴメ成功演出プロセス", 1000, 0, 0, "Kagome_ClearEffect_Pro");
	SetAlias("カゴメ成功演出プロセス", "カゴメ成功演出プロセス");

}

//プロセススタート
function Kagome_ClearEffect_Start()
{
	Request("@カゴメ成功演出プロセス", Start);
	Request("@カゴメ成功演出プロセス", Disused);

}

//動作
function Kagome_ClearEffect_Pro()
{
//	FadeF4("EF100", 3000, 1000, 3000, 0, 0, null, false);


	Request("@SEカゴメ00", Play);
	Request("@SEカゴメ000", Play);
	Request("@SEカゴメ001", Play);
	Request("@SEカゴメ00", Disused);
	Request("@SEカゴメ000", Disused);
	Request("@SEカゴメ001", Disused);

//	MusicStart("@SEカゴメ00",0,1400,0,1000,null,false);
//	MusicStart("@SEカゴメ000",0,700,0,1000,null,true);
	SetFrequency("@SEカゴメ000", 2000, 1050, null);

	Fade("@絵色カゴメ100", 200, 1000, Axl2, true);

	Fade("@絵カゴメ演出100", 0, 1000, null, true);
	Rotate("@絵カゴメ演出100", 10000, @0, @0, @990000, null,false);
	Zoom("@絵カゴメ演出100", 3000, 1500, 1500, null, false);
	FadeDelete("@絵カゴメ演出100", 4000, Axl2, false);

	Fade("@カゴメ羽*", 0, 1000, null, true);


	Rotate("@カゴメ羽*", 6000, @0, @0, @190, Dxl1,false);
	Zoom("@カゴメ羽*", 6000, @-500, @-500, Dxl2, false);

	Move("@カゴメ羽小４", 5500, @+1600, @-100, Dxl1, false);
	Move("@カゴメ羽小５", 5500, @+800, @-100, Dxl1, false);
	Move("@カゴメ羽小６", 5500, @+1600, @-100, Dxl1, false);
	Move("@カゴメ羽小７", 5500, @+2400, @+0, Dxl1, false);

	Move("@カゴメ羽１", 2000, @+1600, @-100, Dxl1, false);
	Move("@カゴメ羽２", 750, @+1600, @-100, Dxl1, false);
	Move("@カゴメ羽３", 1500, @+1600, @-100, Dxl1, false);
	Move("@カゴメ羽２０", 2500, @+2400, @+0, Dxl1, false);
	Request("@カゴメ羽*", Disused);


	SetVolume("@SEカゴメ000", 2000, 0, null);
	FadeDelete("@カゴメ羽小*", 4500, null,false);
	FadeDelete("@絵色カゴメ100", 2000, null, false);

}

function Kagome_ClearEffect_Delete(時間)
{

	Request("@カゴメ成功演出プロセス", Stop);
	Delete("@カゴメ成功演出プロセス");
	Request("@SEカゴメ00", Disused);
	Request("@SEカゴメ000", Disused);
	Request("@SEカゴメ001", Disused);
	SetVolume("@SEカゴメ*", 時間, 0, null);
	FadeDelete("@カゴメ羽*", 時間, null,false);
	FadeDelete("@絵色カゴメ100", 時間, null, false);
	FadeDelete("@絵カゴメ演出100", 時間, null, false);


}

function Kagome_AllEffect_Set($カゴメ成功演出すべての優先度)
{

	Kagome_ClearEffect_Set($カゴメ成功演出すべての優先度);

	CloudZoomSmokeSet01("カゴメスモークプロセスA",$カゴメ成功演出すべての優先度,"cg/ef/天使の羽big.png");
	CloudZoomSmokeSet02("カゴメスモークプロセスB",$カゴメ成功演出すべての優先度,"cg/ef/天使の羽big.png");

}

function Kagome_AllEffect_Start()
{

	Kagome_ClearEffect_Start();
	CloudZoomSmokeStart01(3800,500,500,2500,900,-300,576,-100,-100,Dxl1);
	CloudZoomSmokeStart02(3500,500,500,2500,900,1044,576,824,-100,Dxl1);

}

function Kagome_AllEffect_Delete(時間)
{

	Kagome_ClearEffect_Delete(時間);
	CloudZoomSmokeDelete01(時間);
	CloudZoomSmokeDelete02(時間);

}

function BrinkTexture_Start($点滅プロセス速度変数,$点滅プロセス停止時間,$点滅画像ナット名)
{

	CreateProcess("点滅演出プロセス", 1000, 0, 0, "BrinkTexture_Pro");
	SetAlias("点滅演出プロセス", "点滅演出プロセス");
	Request("@点滅演出プロセス", Start);
	Request("@点滅演出プロセス", Disused);

}

function BrinkTexture_Pro()
{

	begin;

	while(1){
	
		Fade($点滅画像ナット名, $点滅プロセス速度変数, 1000, null, true);
		Wait($点滅プロセス停止時間);
		Fade($点滅画像ナット名, $点滅プロセス速度変数, 0, null, true);
		Wait($点滅プロセス停止時間);

	}

}

function BrinkTexture_Stop()
{

	Request("@点滅演出プロセス", Stop);
	Delete("@点滅演出プロセス");
}

