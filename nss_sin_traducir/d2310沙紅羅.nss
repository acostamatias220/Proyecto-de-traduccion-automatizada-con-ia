
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene d2310沙紅羅.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "c2340恵那.nss";//★エンディングへ（d）
}

scene d2310沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="750">
////////////header////////////
//file name "d2310沙紅羅.nss"
//title "急展開"
//previous "d2304沙紅羅.nss"

////////////footer////////////
//next "c2340恵那.nss"

////////////body////////////

//■再定義定型文

	PrintBG("上背景", 30000);

//★ inc遠藤 冒頭、パクらせてください。
//晴海通り
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");
	MoveFFP1("@絵演背景",50);

	CreateTextureSPover("道線", 110, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	TurboBlur("@道線");

	Zoom("絵演背景", 0, 2000, 2000, null, true);

	CreateSE("SEL01","seメカ_バイク_走行_l");
	MusicStart("SEL01",2000,700,0,1050,null,true);

	WaitKey(2000);

	SetFrequency("SEL01", 3000, 1000, null);
	//FadeDelete("上背景", 0, null, true);
	DrawDelete("上背景", 200, 100, Dxl1, "zzex_circle_01_00_1", false);
	Zoom("絵演背景", 200, 1100, 1100, Dxl1, true);

//	CreateTextureSP("バイク", 300, @0, @0, "cg/ef/efバイク走行表現背景.jpg");
//	CreateSE("バイク走行", "seメカ_バイク_走行_l");
//	MusicStart("バイク走行", 0, 1200, 0, 1000, null,true);
//	SoundPlay("@xbgm23", 0, 450, true);/

	Delete("上背景");

	SetVolumeEX("SE*", 1000, 500, null);
	SceneIn(1000, "blind_01_00_1");

	SoundPlay("@xbgm07_noint",0,450,true);


{	ClockPass(2310);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100520skr">
「行けぇッ！　暴蛇羅号ッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100530skr">
（ははっ、なんつー偶然！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100540skr">
（秋葉原に来る前、アタシが寄ったあの病院じゃねぇか！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100550skr">
（ん？　でも……アレ？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100560skr">
（泰然堂大学病院って……
　どっかで聞いたことあるような……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2311);}

//◆演出指定：空から雪が降る
	SnowDrop(500);


	CreateTextureEX("絵背景200", 500, @0, @-300, "cg/bg/bg2401100空_上空_通常.jpg");
	DeleteSt("C",200,false);
	Fade("絵背景200", 1000, 1000, null, false);
	Move("絵背景200", 2000, @0, -100, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100570skr">
「あ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100580skr">
「雪……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100590skr">
（ミヅハ、頑張ってるな……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100600skr">
（ウシ！　待ってろよ。
　今、アザナエルを取ってきてやるからな……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★inc櫻井 次のファイルも外から開始なので、雪を降らすのを止めていません。
//★inc櫻井 同時にBGMも止めていません。

	SetFrequency("SEL01", 300, 1050, null);

	Wait(2000);

	SetFrequency("SEL01", 300, 1100, null);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	SetVolume("SEL01", 1000, 0, null);

	Wait(3000);

	PrintBG("上背景", 30000);

{	ClockPass(2312);}

//◆場所：泰然堂大学病院_正面
	OnBG(10,"bg1401100泰然堂大学病院_正面_通常");
	FadeBG(0,true);
//	SoundPlay("@xbgm23", 0, 450, true);

	CreateSE("急停止", "seメカ_バイク_急停止");
	MusicStart("急停止", 0, 1000, 0, 1000, null);
	DrawDelete("上背景", 300, 100, null, "slide_01_00_1", true);

	Wait(3000);

//あきゅん「修正指示：シーンに合わせてＢＧＭを入れてください」
//★inc櫻井　修正　　PrintBG内にて再生コマンドをいれています。

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100010skr">
「いよおおおしッ！！　着いたッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100020skr">
「名探偵！　モジャモジャ！　待ってろよ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100030skr">
「今、水をさしてやっからな！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2313);}

//◆場所：泰然堂大学病院_廊下

	SceneOut(5000, 1000, "blind_01_00_0");
	SnowDropDelete(100);
	DeleteSt("C",0,false);
	OnBG(10,"bg1403100泰然堂大学病院_廊下_通常");
	FadeBG(0,true);
//※下倉注：ＢＧＭまだ引っ張る！　このタイミングで不幸を予感させるのはちと早いので
//	SetVolume("@xbgm*", 1000, 0, null);

	CreateSE("SE", "se動作_歩く02_l");
	MusicStart("SE", 700, 1000, 0, 800, null,true);

	SceneIn(1000, "blind_01_00_1");

//あきゅん「修正指示：部屋を探すシーンで廊下の背景のまま沙紅羅を動かして探している体を表現してください」
//あきゅん「修正指示：歩いているＳＥを入れてください」
//★inc櫻井　修正

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100040skr">
「名探偵ッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100050skr">
「モジャモジャッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100060skr">
「どこだッ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	Move("@StNameC/C*", 300, @150, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100070skr">
「この部屋か！？」

{	St("C",700, @150,@0,"bu沙紅羅_通常_hard");
	Move("@StNameC/C*", 300, @-300, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100080skr">
「それともこの部屋！？」

{	St("C",700, @-150,@0,"bu沙紅羅_通常_rage");
	Move("@StNameC/C*", 300, @150, @0, Dxl1, true);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100090skr">
「出てこいッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100100skr">
「出てこねぇと――」

{	SetVolume("@xbgm*", 3000, 0, null);
	SetVolume("SE", 500, 0, null);
	St("C",700, @0,@0,"bu沙紅羅_木刀_shout");
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1800);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100110skr">
「出て――アレ？」


//あきゅん「修正指示：立ち絵不要、沙紅羅の顔は出さない」
//★inc櫻井　修正
{	AgainSt("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100120skr">
「この名前――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100130skr">
「橘……正純？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100140skr">
「それって、もしかして……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100150skr">
「あ！　あ！　ああああ！
　そうかッ、思い出した！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100160skr">
「泰然堂大学病院って、確か――」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100170fjh">
「金閣寺――！？」

//あきゅん「修正指示：ここから沙紅羅立ち絵復帰」
//★inc櫻井　修正
{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100180skr">
「あ、モジャモジャ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);





{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
	SoundPlay("@xbgm24",0,450,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100190fjh">
「恵那は！？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100200skr">
「え？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100210fjh">
「恵那には最後、いつどこで会った？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100220skr">
「いつどこでって……２０分前くらい、半田明神で」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100230fjh">
「クソッ！　やっぱりか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100240skr">
「やっぱりって？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_shout");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100250fjh">
「いや、いいんだ！　あばよ！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100260skr">
「あばよって、おい待て！　アザナエルは――」

//あきゅん「修正指示：平次痛そうに動かす」
//★inc櫻井　修正
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_pain");
	Shake("@StNameMR/MR*", 300, 10, 10, 0, 0, 300, Dxl1, false);
	Move("@StNameMR/MR*", 300, @150, @0, null, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100270fjh">
「イデデデデッ！！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100280skr">
「え？　モジャモジャ？　どうした？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100290skr">
「お、おいその脚――」

{	DeleteSt("ML",200,false);
	St("MR",700, @150,@0,"bu平次_通常_shout");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100300fjh">
「構うんじゃねぇ！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100310skr">
「え？　いやでもアザナエルも受け取らないと――」

{	DeleteSt("ML",200,false);
	St("MR",700, @150,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100320fjh">
「アザナエル？
　んなもん、持ってねぇよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2314);}

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100330skr">
「え？　どっかにやったのか？」

{	DeleteSt("ML",200,false);
	St("MR",700, @150,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100340fjh">
「やってねぇ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100350skr">
「う、嘘つけ！
　みんな、おまえが持っていったって――」

//◆音声指示：一喝
{	DeleteSt("ML",200,false);
	St("MR",700, @150,@0,"bu平次_通常_shout");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100360fjh">
「こんな時に嘘なんてつくかッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);






{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100370skr">
「あ……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100380skr">
「ええと……その……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100390skr">
「ごめん」


{	DeleteSt("ML",200,false);
	St("MR",700, @150,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100400fjh">
「いや、オレこそ悪い」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100410fjh">
「火急の用事ができたんだ。
　悪いが、行かせてもらうぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100420skr">
「用事って――？」

{	DeleteSt("ML",200,false);
	St("MR",700, @150,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100430fjh">
「用事は、用事だよ」

{	St("MR",700, @150,@0,"bu平次_通常_shout");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/100100440fjh">
「じゃあな！　あばよ！」

//あきゅん「修正指示：横移動に、平次は足を負傷しているのでまったり消す」
//★inc櫻井　修正
{	Move("@StNameMR/MR*", 600, @150, @0, Axl2, false);
	DeleteSt("MR",600,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100450skr">
「ちょっと！　待て――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100460skr">
「……クソ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100470skr">
（何なんだよアイツ。
　なんか、ずいぶん切羽詰まってたみたいだけど……）

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100480skr">
（…………）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100490skr">
（追いかけるか？）

{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100500skr">
（……うん、そうだ。
　マーくんに会うのはどーじんしを手に入れてからで――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);


//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100510skr">
（…………）

{	SoundPlay("@xbgm25", 0, 450, true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100520skr">
「また逃げんのか、アタシ？」

//あきゅん「修正指示：ここの自問はfuなど使用して沙紅羅の緊張を表現してください」
//★inc櫻井 修正
{	DeleteSt("ML",200,true);
	St("L",19010, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100530skr">
（偶然、同じ病院にやってきて……
　偶然、弟の病室を見つけた）

{	St("L",19010, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100540skr">
（これって、神様のお導きってヤツじゃねぇのか？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("L",19010, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100550skr">
（そりゃ、どーじんしは持ってきてねぇけどさ）

{	St("L",19010, @0,@0,"fu沙紅羅_通常_normal");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100560skr">
（ここまで来て、逃げ帰るわけにはいかねーだろ）


//あきゅん「修正指示：自問終了」
//★inc櫻井　修正　地の文があるのでここから立ち絵なしにしています。
{	SetVolume("@xbgm*", 3000, 0, null);
	DeleteSt("L",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100570skr">
「ふぅ――」

　沙紅羅は名札の前で、一度大きく深呼吸して――

//あきゅん「修正指示：立ち絵不要」
//★inc櫻井　修正
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100580skr">
「ウシッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



{	ClockPass(2315);}

//◆場所：泰然堂大学病院_病室
//あきゅん「修正指示：扉に音付けてください」
//★inc櫻井　修正

	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteSt("ML",0,true);

	OnBG(10,"bg1402100泰然堂大学病院_病室_通常");
	FadeBG(0,true);
	CreateSE("SE02", "se動作_ドア開ける01");
	MusicStart("SE02", 700, 1000, 0, 1000, null,false);

	SceneIn(1000, "blind_01_00_1");


//	SoundPlay("@xbgm27",0,450,true);

//あきゅん「修正指示：沙紅羅の登場に勢いを付ける」
//★inc櫻井　修正


{	St("ML",700, @-250,@0,"bu沙紅羅_通常_happy");
	Move("@StNameML/ML*", 300, @250, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100590skr">
「よう！　久しぶりだな、マーくん――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100600skr">
「え……？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);
//	SetVolumeEX("@xbgm*", 500, 0, null);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100610skr">
「マーくん……マーくん？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100620skr">
「なんで……マーくんが……」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100630skr">
「いないんだ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100640skr">
「まさか――まさか――」

{	St("ML",700, @0,@0,"bu沙紅羅_泣き_cry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100650skr">
「アタシに愛想を尽かして、どっか行っちまったのかぁ？
　うおーい、おいおいおいおい……」

//あきゅん「修正指示：レイジ怒りの登場」
//★inc櫻井　修正　気持ち早め
{	DeleteSt("ML",200,false);
	CreateSE("SE03", "se動作_カーテン開ける");
	MusicStart("SE03", 0, 1000, 0, 1000, null,false);
	St("MR",700, @250,@60,"bu若原_通常_angry");
	Move("@StNameMR/MR*", 200, @-250, @-60, Dxl1, false);
	FadeSt("MR",200,true);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/d23/100100660whr">
「うるさいぞ、おまえ！
　もう夜中だ！　こっちは寝てんだぞ！！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100670skr">
「う、うるせーバカヤロー！　わざわざ弟に会いに、郡山から出てきたのに……コレが泣かずにいられるかっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu若原_通常_normal");
	FadeSt("MR",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/d23/100100680whr">
「弟……？」

//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/d23/100100690whr">
「あ……あれ？　もしかして」

//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/d23/100100700whr">
「おまえ……そこの病人の、身内か？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100710skr">
「おーよ！
　おまえ、マーくんがどこに行ったか知ってるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu若原_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/d23/100100720whr">
「いや、オレが聞いた話だと――」

//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/d23/100100730whr">
「そこの人、今日の夕方、亡くなったって」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100740skr">
「え……？」

{	St("ML",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/100100750skr">
「マーくんが、死んだ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	ClearWaitAll(4000, 2000);

	EndScene();
}
