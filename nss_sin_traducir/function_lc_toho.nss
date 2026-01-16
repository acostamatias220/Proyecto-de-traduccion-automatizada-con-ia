










.//■音プロセス汎用
//▽途中再生
function MusicStartPro($CPナット名, $CP秒数, $CP音量, $CPパン, $CP再生速度, $CPテンポ, $CPループ,$CP待ち)
{
	Request("@ＳＥプロセス", Stop);
	Delete("@ＳＥプロセス");
	WaitAction("@ＳＥプロセス", null);

	CreateProcess("ＳＥプロセス", 150, 0, 0, "MusicMacro");
	SetAlias("ＳＥプロセス", "ＳＥプロセス");
	Request("ＳＥプロセス", Start);
	Request("ＳＥプロセス", Disused);
}
function MusicMacro()
{
	Wait($CP待ち);
//	MusicStart($CPナット名,$CP秒数,$CP音量,$CPパン,$CP再生速度,$CPテンポ,$CPループ);

	Request($CPナット名, "Play");

	SetFrequency($CPナット名, 0, $CP再生速度, null);
	SetPan($CPナット名, 0, $CPパン, null);
	SetLoop($CPナット名, $CPループ);

	//SetVolumeEX($CPナット名, $CP秒数, $CP音量, $CPテンポ);
		$CP_DynamicRange=$CP音量/2;
		if($CP音量==1){
			$CP_DynamicRange=1;
		}
		SetVolume($CPナット名, $CP秒数, $CP_DynamicRange, $CPテンポ);

	Request($CPナット名, Disused);

	if($CPループ){
		SetLoop($CPナット名, true);
	}else{
		SetLoop($CPナット名, false);
	}
}



//▽継続再生
function MusicStartPro2($CPナット名, $CP秒数１, $CP音量, $CPパン, $CP再生速度, $CPテンポ, $CPループ,$CP待ち１,$CP待ち２,$CP秒数２)
{
	Request("@ＳＥプロセス", Stop);
	Delete("@ＳＥプロセス");
	WaitAction("@ＳＥプロセス", null);

	CreateProcess("ＳＥプロセス", 150, 0, 0, "MusicMacro2");
	SetAlias("ＳＥプロセス", "ＳＥプロセス");
	Request("ＳＥプロセス", Start);
	Request("ＳＥプロセス", Disused);
}
function MusicMacro2()
{
	Wait($CP待ち１);
//	MusicStart($CPナット名,$CP秒数１,$CP音量,$CPパン,$CP再生速度,$CPテンポ,$CPループ);

	Request($CPナット名, "Play");

	SetFrequency($CPナット名, 0, $CP再生速度, null);
	SetPan($CPナット名, 0, $CPパン, null);
	SetLoop($CPナット名, $CPループ);

	//SetVolumeEX($CPナット名, $CP秒数１, $CP音量, $CPテンポ);
		$CP_DynamicRange=$CP音量/2;
		if($CP音量==1){
			$CP_DynamicRange=1;
		}
		SetVolume($CPナット名, $CP秒数１, $CP_DynamicRange, $CPテンポ);


	Request($CPナット名, Disused);

	if($CPループ){
		SetLoop($CPナット名, true);
	}else{
		SetLoop($CPナット名, false);
	}
	Wait($CP待ち２);
	SetVolume($CPナット名, $CP秒数２, 0, NULL);
}



//▽後始末用（なくてもよし）
function DustMusic($CPナット名,$CP秒数,$CP音量)
{
	Request("@ＳＥプロセス", Stop);
	Delete("@ＳＥプロセス");
	WaitAction("@ＳＥプロセス", null);

	SetVolume($CPナット名, $CP秒数, $CP音量, NULL);
}













.//■シェイクプロセス汎用：
//▽途中再生
function ShakePro($SPナット, $SP秒数, $SPX1, $SPY1, $SPX2, $SPY2, $SP幅, $SPテンポ, $SP待ち)
{
	Request("@シェイクプロセス", Stop);
	Delete("@シェイクプロセス");
	WaitAction("@シェイクプロセス", null);

	CreateProcess("シェイクプロセス", 150, 0, 0, "ShakeMacro");
	SetAlias("シェイクプロセス", "シェイクプロセス");
	Request("シェイクプロセス", Start);
	Request("シェイクプロセス", Disused);
}

function ShakeMacro()
{
	Wait($SP待ち);
	Shake($SPナット, $SP秒数, $SPX1, $SPY1, $SPX2, $SPY2, $SP幅, $SPテンポ, true);
}


//▽後始末用
function DustShake()
{
	Request("@シェイクプロセス", Stop);
	Delete("@シェイクプロセス");
	WaitAction("@シェイクプロセス", null);
}

//■シェイクプロセス汎用：１
//▽途中再生
function ShakePro1($SPナット_１, $SP秒数_１, $SPX1_１, $SPY1_１, $SPX2_１, $SPY2_１, $SP幅_１, $SPテンポ_１, $SP待ち_１)
{
	Request("@シェイクプロセス_１", Stop);
	Delete("@シェイクプロセス_１");
	WaitAction("@シェイクプロセス_１", null);

	CreateProcess("シェイクプロセス_１", 150, 0, 0, "ShakeMacro1");
	SetAlias("シェイクプロセス_１", "シェイクプロセス_１");
	Request("シェイクプロセス_１", Start);
	Request("シェイクプロセス_１", Disused);
}
function ShakeMacro1()
{
	Wait($SP待ち_１);
	Shake($SPナット_１, $SP秒数_１, $SPX1_１, $SPY1_１, $SPX2_１, $SPY2_１, $SP幅_１, $SPテンポ_１, true);
}
//▽後始末用
function DustShake1()
{
	Request("@シェイクプロセス_１", Stop);
	Delete("@シェイクプロセス_１");
	WaitAction("@シェイクプロセス_１", null);
}



//■シェイクプロセス汎用：２
//▽途中再生
function ShakePro2($SPナット_２, $SP秒数_２, $SPX1_２, $SPY1_２, $SPX2_２, $SPY2_２, $SP幅_２, $SPテンポ_２, $SP待ち_２)
{
	Request("@シェイクプロセス_２", Stop);
	Delete("@シェイクプロセス_２");
	WaitAction("@シェイクプロセス_２", null);

	CreateProcess("シェイクプロセス_２", 150, 0, 0, "ShakeMacro2");
	SetAlias("シェイクプロセス_２", "シェイクプロセス_２");
	Request("シェイクプロセス_２", Start);
	Request("シェイクプロセス_２", Disused);
}
function ShakeMacro2()
{
	Wait($SP待ち_２);
	Shake($SPナット_２, $SP秒数_２, $SPX1_２, $SPY1_２, $SPX2_２, $SPY2_２, $SP幅_２, $SPテンポ_２, true);
}
//▽後始末用
function DustShake2()
{
	Request("@シェイクプロセス_２", Stop);
	Delete("@シェイクプロセス_２");
	WaitAction("@シェイクプロセス_２", null);
}



.//■フラッシュプロセス汎用
//▽途中再生
function FlashPro($FPナット, $FP表示秒数, $FP透明度１, $FP待ち１, $FP消去秒数, $FP透明度２, $FP待ち２)
{
	Request("@フラッシュプロセス", Stop);
	Delete("@フラッシュプロセス");
	WaitAction("@フラッシュプロセス", null);

	CreateProcess("フラッシュプロセス", 150, 0, 0, "FlashMacro");
	SetAlias("フラッシュプロセス", "フラッシュプロセス");
	Request("フラッシュプロセス", Start);
	Request("フラッシュプロセス", Disused);
}

function FlashMacro()
{
	Wait($FP待ち１);
	Fade($FPナット, $FP表示秒数, $FP透明度１, null, true);
	Wait($FP待ち２);
	Fade($FPナット, $FP消去秒数, $FP透明度２, null, true);
}

//▽後始末用
function DustFlash($FPナット名,$FP目標秒数,$FP目標透明度,$FPテンポ,$FP待ち)
{
	//★ロック設置
	//LockVideo(true);

	Request("@フラッシュプロセス", Stop);
	Delete("@フラッシュプロセス");
	WaitAction("@フラッシュプロセス", null);

	//★ロック設置
	//LockVideo(false);

	if($FP待ち){
		Fade($FPナット名, $FP目標秒数, $FP目標透明度, $FPテンポ, true);
	}else if($FP待ち==false){
		Fade($FPナット名, $FP目標秒数, $FP目標透明度, $FPテンポ, false);
	}else{
		Fade($FPナット名, $FP目標秒数, $FP目標透明度, $FPテンポ, $FP待ち);
	}
}


.//■ムーブプロセス汎用
//▽通常ムーブ
function MovePro($MPナット, $MP秒数, $MPX, $MPY, $MPテンポ, $MP待ち)
{
	Request("@ムーブプロセス", Stop);
	Delete("@ムーブプロセス");
	WaitAction("@ムーブプロセス", null);

	CreateProcess("ムーブプロセス", 150, 0, 0, "MoveMacro");
	SetAlias("ムーブプロセス", "ムーブプロセス");
	Request("ムーブプロセス", Start);
	Request("ムーブプロセス", Disused);
}

function MoveMacro()
{
	Wait($MP待ち);
	Move($MPナット, $MP秒数, $MPX, $MPY, $MPテンポ, true);
}


//▽後始末用
function DustMove()
{
	Request("@ムーブプロセス", Stop);
	Delete("@ムーブプロセス");
	WaitAction("@ムーブプロセス", null);
}


function MovePro1($MovePro1Nut, $MovePro1Time, $MovePro1X, $MovePro1Y, $MovePro1Tempo, $MovePro1Wait)
{
	Request("@MovePro1Pro", Stop);
	Delete("@MovePro1Pro");
	WaitAction("@MovePro1Pro", null);

	CreateProcess("MovePro1Pro", 150, 0, 0, "MovePro1Macro");
	SetAlias("MovePro1Pro", "MovePro1Pro");
	Request("MovePro1Pro", Start);
	Request("MovePro1Pro", Disused);
}

function MovePro1Macro()
{
	Wait($MovePro1Wait);
	Move($MovePro1Nut, $MovePro1Time, $MovePro1X, $MovePro1Y, $MovePro1Tempo, true);
}


//▽後始末用
function DustMovePro1()
{
	Request("@MovePro1Pro", Stop);
	Delete("@MovePro1Pro");
	WaitAction("@MovePro1Pro", null);
}


function MovePro2($MovePro2Nut, $MovePro2Time, $MovePro2X, $MovePro2Y, $MovePro2Tempo, $MovePro2Wait)
{
	Request("@MovePro2Pro", Stop);
	Delete("@MovePro2Pro");
	WaitAction("@MovePro2Pro", null);

	CreateProcess("MovePro2Pro", 150, 0, 0, "MovePro2Macro");
	SetAlias("MovePro2Pro", "MovePro2Pro");
	Request("MovePro2Pro", Start);
	Request("MovePro2Pro", Disused);
}

function MovePro2Macro()
{
	Wait($MovePro2Wait);
	Move($MovePro2Nut, $MovePro2Time, $MovePro2X, $MovePro2Y, $MovePro2Tempo, true);
}


//▽後始末用
function DustMovePro2()
{
	Request("@MovePro2Pro", Stop);
	Delete("@MovePro2Pro");
	WaitAction("@MovePro2Pro", null);
}











.//■Zoomプロセス汎用
//▽通常ズーム
function ZoomPro($ZoomProNut, $ZoomProTime, $ZoomProH, $ZoomProV, $ZoomProTempo, $ZoomProWait)
{
	Request("@ZoomProPro", Stop);
	Delete("@ZoomProPro");
	WaitAction("@ZoomProPro", null);

	CreateProcess("ZoomProPro", 150, 0, 0, "ZoomProMacro");
	SetAlias("ZoomProPro", "ZoomProPro");
	Request("ZoomProPro", Start);
	Request("ZoomProPro", Disused);
}

function ZoomProMacro()
{
	Wait($ZoomProWait);
	Zoom($ZoomProNut, $ZoomProTime, $ZoomProH, $ZoomProV, $ZoomProTempo, true);
}


//▽後始末用
function DustZoom()
{
	Request("@ZoomProPro", Stop);
	Delete("@ZoomProPro");
	WaitAction("@ZoomProPro", null);
}















.//■スクリプト中演出マクロ：近づいてくる男
function CreateCome1($NutCome1,$TimeCome1,$XCome1,$YCome1,$TempoCome1,$WalkCome1)
{
	CreateProcess("絵ProCome1", 150, 0, 0, "ProcessCome1");
	SetAlias("絵ProCome1", "絵ProCome1");
	Request("絵ProCome1", Start);
	Request("絵ProCome1", Disused);
}
function StopCome1()
{
	Delete("@絵ProCome1");
}
function ProcessCome1()
{
	$X1_Come1=$XCome1/3;
	$X2_Come1=$X1_Come1*2;
	$Y1_Come1=$YCome1+($YCome1/4);
	$Y2_Come1=$YCome1+($YCome1/8);

	$TempCome1=0;
	while($WalkCome1>$健脚テンプ１){
		BezierMove($NutCome1, $TimeCome1, (@0,@0){@$X1_Come1,@$Y1_Come1}{@$X2_Come1,@@$Y2_Come1}(@$XCome1,@$YCome1), $TempoCome1, true);
		$TempCome1++;
	}
}

function CreateCome2($NutCome2,$TimeCome2,$XCome2,$YCome2,$TempoCome2,$WalkCome2)
{
	CreateProcess("絵ProCome2", 150, 0, 0, "ProcessCome2");
	SetAlias("絵ProCome2", "絵ProCome2");
	Request("絵ProCome2", Start);
	Request("絵ProCome2", Disused);
}
function StopCome2()
{
	Delete("@絵ProCome2");
}
function ProcessCome2()
{
	$X1_Come2=$XCome2/3;
	$X2_Come2=$X1_Come2*2;
	$Y1_Come2=$YCome2+($YCome2/4);
	$Y2_Come2=$YCome2+($YCome2/8);

	$TempCome2=0;
	while($WalkCome2>$健脚テンプ１){
		BezierMove($NutCome2, $TimeCome2, (@0,@0){@$X1_Come2,@$Y1_Come2}{@$X2_Come2,@@$Y2_Come2}(@$XCome2,@$YCome2), $TempoCome2, true);
		$TempCome2++;
	}
}

//■スクリプト中演出マクロ：ザーメン
function CreateSemen("プロセス名",$精液名)
{
	CreateColorEX("絵精液", 20000, "#FFFFFF");
	CreateProcess("絵精液プロセス", 150, 0, 0, "プロセス名");
	SetAlias("絵精液プロセス", "絵精液プロセス");

	Request("絵精液プロセス", Start);
	Request("絵精液プロセス", Disused);
}
function StopSemen()
{
	Delete("@絵精液*");
}
function SemenProcess()
{
	Fade("@絵精液", 0, 1000, null, true);
	Fade("@絵精液", 200, 0, null, true);
	Fade("@絵精液", 0, 1000, null, true);
	Fade("@絵精液", 200, 0, null, true);
	Wait(500);

	Fade($精液名, 3000, 1000, null, false);

	Fade("@絵精液", 2000, 1000, null, true);
	Fade("@絵精液", 2000, 0, null, true);

	WaitAction($精液名, null);
}

//■スクリプト中演出マクロ：エレクトたっち
function CreateElect("プロセス名",$エレクト待ち)
{
	CreateColorEX("絵電気１", 20000, "#FFFFFF");
	Request("絵電気１", AddRender);
	CreateColorEX("絵電気２", 20000, "#fcf100");
	Request("絵電気２", OverlayRender);

	CreateProcess("絵電気プロセス", 150, 0, 0, "プロセス名");
	SetAlias("絵電気プロセス", "絵電気プロセス");
	Request("絵電気プロセス", Start);
	Request("絵電気プロセス", Disused);
}
function StopElect()
{
	Delete("@絵電気*");
}
function ElectProcess()
{
	Wait($エレクト待ち);

	Fade("@絵電気２", 0, 500, null, false);
	Fade("@絵電気１", 0, 800, null, true);

	Fade($temp1950, 0, 1000, null, true);

	Fade("@絵電気２", 1000, 0, null, false);
	Fade("@絵電気１", 200, 300, null, true);
	Fade("@絵電気１", 0, 600, null, true);
	Fade("@絵電気１", 200, 300, null, true);

	Fade("@絵電気２", 0, 800, null, false);
	Fade("@絵電気１", 0, 1000, null, true);

	Fade("@絵電気２", 1000, 300, null, false);
	Fade("@絵電気１", 600, 300, null, true);
	Wait(200);
	Fade("@絵電気１", 0, 600, null, true);
	Fade("@絵電気１", 100, 300, null, true);
	Fade("@絵電気１", 0, 800, null, true);
	Fade("@絵電気１", 100, 300, null, true);

	Fade("@絵電気２", 0, 500, null, false);
	Fade("@絵電気１", 0, 800, null, true);

	Fade("@絵電気２", 1000, 0, null, false);
	Fade("@絵電気１", 200, 300, null, true);
	Fade("@絵電気１", 0, 600, null, true);
	Fade("@絵電気１", 200, 300, null, true);

	Fade("@絵電気２", 0, 800, null, false);
	Fade("@絵電気１", 0, 1000, null, true);

	Fade("@絵電気２", 1000, 0, null, false);
	Fade("@絵電気１", 600, 300, null, true);
	Wait(200);
	Fade("@絵電気１", 0, 600, null, true);
	Fade("@絵電気１", 100, 300, null, true);
	Fade("@絵電気１", 0, 800, null, true);
	Fade("@絵電気１", 300, 0, null, true);
}





















.//■プリントシェイク
function PlainShake(描画優先度, 秒数, X1, Y1, X2, Y2, 震度, 速度, 待ち)
{
	CreateEffect("上震度", 描画優先度, 0, 0, 1024, 576, "Plain");
	SetAlias("上震度","上震度");
	Request("上震度",Passive);

	Shake("上震度", 秒数, X1, Y1, X2, Y2, 震度, 速度, 待ち);
	Request("上震度", Disused);
}

.//■ノーコマクロ
function OnBG_mono(画像優先度,"画像")
{
	OnBG(画像優先度,"画像");
	SetTone($bgナット, Monochrome);
}

function CreateTextureEX_mono("ナット名",画像優先度,X軸,Y軸,"画像")
{
	CreateTextureEX("ナット名",画像優先度,X軸,Y軸,画像);
	SetTone("ナット名", Monochrome);
}

.//■カゴメ仕様
function KagomeColorSet("ナット名",優先度,色名)
{
	CreateColor("ナット名", 優先度, 0, 0, 1024, 576, 色名);
	SetAlias("ナット名", "ナット名");
	Fade("ナット名", 0, 0, null, true);
	Request("ナット名", MulRender);
}

function KagomeSt($SilPosi,$SilPri,$SilX,$SilY,$SilPic)
{
	St($SilPosi,$SilPri,$SilX,$SilY,$SilPic);
	$SilNut=VariableValue($,$SilPosi+"_次");
	SetTone($SilNut, Monochrome);

	$SilPosi2=$SilPosi+"2";
	St($SilPosi2,$SilPri,$SilX,$SilY,$SilPic);
	$SilNut2=VariableValue($,$SilPosi2+"_次");
	SetTone($SilNut2, Monochrome);
	Request($SilNut2, OverlayRender);
}

function KagomeFadeSt($SilPosi,$SilFade,$SilWait)
{
	$SilPosi2=$SilPosi+"2";
	FadeSt($SilPosi,$SilFade,false);
	FadeSt($SilPosi2,$SilFade,$SilWait);
}

function KagomeDeleteSt($SilPosi,$SilFade,$SilWait)
{
	$SilPosi2=$SilPosi+"2";
	DeleteSt($SilPosi,$SilFade,false);
	DeleteSt($SilPosi2,$SilFade,$SilWait);
}

function KagomeTexture($SilTex1,$SilTex2,$SilTexPri,$SilTexX,$SilTexY,$SilTexPic)
{
	CreateTexture($SilTex1, $SilTexPri, $SilTexX, $SilTexY, $SilTexPic);
	SetAlias($SilTex1, $SilTex1);
	SetTone($SilTex1, Monochrome);

	CreateTextureSP($SilTex2, $SilTexPri, $SilTexX, $SilTexY, $SilTexPic);
	SetTone($SilTex2, Monochrome);
	Request($SilTex2, OverlayRender);

	Fade($SilTex1, 0, 0, null, false);
	Fade($SilTex2, 0, 0, null, true);
}


.//■カッター
function NocoCutSet($NocoCutSet,$nokocut_count,$nokocut_pri)
{
//	CreateWindow("絵カットウィンドウ１", 150, -193, -3500, 3000, 7576, false);
	CreateWindow("絵カットウィンドウ１", 150, -193, 0, 1024, 576, false);
	SetAlias("絵カットウィンドウ１", "絵カットウィンドウ１");
	Rotate("絵カットウィンドウ１", 0, @0, @0, -3, null, true);
	Request("絵カットウィンドウ１", Smoothing);

	CreateTextureEX("絵カット４", $nokocut_pri, 0, 0, "cg/img/imgカッターバラd.png");
	CreateTextureEX("絵カットウィンドウ１/絵カット３", $nokocut_pri, 164, -859, "cg2/img/imgカッターバラc.png");
	CreateTextureEX("絵カット２", $nokocut_pri, 0, 0, "cg/img/imgカッターバラb.png");
	CreateTextureEX("絵カット１", $nokocut_pri, 0, 0, "cg2/img/imgカッターバラa.png");

//セット
	$nokocut=0;
	while($nokocut<$nokocut_count){
		if($nokocut%3==0){
			if($NocoCutSet=="IN"){
				Move("絵カット１", 0, @34, @-19, Axl1, false);
				Move("絵カットウィンドウ１", 0, @34, @-19, Axl1, false);
				Move("絵カットウィンドウ１/絵カット３", 0, @34, @-19, Axl1, true);
			}else{
				Move("絵カット１", 0, @-34, @19, Axl1, false);
				Move("絵カットウィンドウ１", 0, @-34, @19, Axl1, false);
				Move("絵カットウィンドウ１/絵カット３", 0, @-34, @19, Axl1, true);
			}
		}else{
			if($NocoCutSet=="IN"){
				Move("絵カット１", 0, @35, @-19, Axl1, false);
				Move("絵カットウィンドウ１", 0, @35, @-19, Axl1, false);
				Move("絵カットウィンドウ１/絵カット３", 0, @35, @-19, Axl1, true);
			}else{
				Move("絵カット１", 0, @-35, @19, Axl1, false);
				Move("絵カットウィンドウ１", 0, @-35, @19, Axl1, false);
				Move("絵カットウィンドウ１/絵カット３", 0, @-35, @19, Axl1, true);
			}
		}
		$nokocut++;
	}
}

function NocoCutFade()
{
	Fade("絵カット１", 0, 1000, null, true);
	Fade("絵カット２", 0, 1000, null, true);
	Fade("絵カットウィンドウ１/絵カット３", 0, 1000, null, true);
	Fade("絵カット４", 0, 1000, null, true);
}

function NocoCut($NocoCutSet,$nokocut_count,$nokocutMove,$nokocutWait,$nokocutWait2)
{
//描画
	CreatePlainSP("上カット１", 10000);
	FadeDelete("上カット１", 2000, null, true);


	$nokocut=0;
	while($nokocut<$nokocut_count){
		if($NocoCutSet=="OUT"){
			CreateSE("SE99","se戦闘_カッター_刃出す04単発a");
		}else{
			CreateSE("SE99","se戦闘_カッター_刃出す04単発b");
		}

		if($nokocut%3==0){
			if($NocoCutSet=="OUT"){
				Move("絵カット１", $nokocutMove, @-34, @19, Axl1, false);
				Move("絵カットウィンドウ１", $nokocutMove, @-34, @19, Axl1, false);
				Move("絵カットウィンドウ１/絵カット３", $nokocutMove, @-34, @19, Axl1, $nokocutWait);
			}else{
				Move("絵カット１", $nokocutMove, @34, @-19, Axl1, false);
				Move("絵カットウィンドウ１", $nokocutMove, @34, @-19, Axl1, false);
				Move("絵カットウィンドウ１/絵カット３", $nokocutMove, @34, @-19, Axl1, $nokocutWait);
			}
		}else{
			if($NocoCutSet=="OUT"){
				Move("絵カット１", $nokocutMove, @-35, @19, Axl1, false);
				Move("絵カットウィンドウ１", $nokocutMove, @-35, @19, Axl1, false);
				Move("絵カットウィンドウ１/絵カット３", $nokocutMove, @-35, @19, Axl1, $nokocutWait);
			}else{
				Move("絵カット１", $nokocutMove, @35, @-19, Axl1, false);
				Move("絵カットウィンドウ１", $nokocutMove, @35, @-19, Axl1, false);
				Move("絵カットウィンドウ１/絵カット３", $nokocutMove, @35, @-19, Axl1, $nokocutWait);
			}
		}

		MusicStart("SE99",0,1300,0,1000,null,false);
		WaitAction("絵カットウィンドウ１/絵カット３", null);
		Wait($nokocutWait2);

		$nokocut++;
	}
}























