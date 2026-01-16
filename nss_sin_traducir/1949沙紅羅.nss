
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1949沙紅羅.nss_MAIN
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
	$GameName = "1950沙紅羅_似鳥.nss";

}

scene 1949沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "1949沙紅羅.nss"
//title "突入せよ！　あにのあな！"
//previous "1948沙紅羅_ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "1950沙紅羅_似鳥.nss"



////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);
//◆場所：あにのあな_店内_停電

{	ClockPass(1949);}

//	CreateColorSP("絵色100", 100, "Black");
	SoundPlay("@xbgm03",0,450,true);

	CreateColorSP("絵黒幕", 10000, "BLACK");

	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);

//おがみ：繋ぎで色々調整

//	St("C",700, @0,@0,"bu沙紅羅_通常_think");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/490200010skr">
（弟子よスマン！）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/490200020skr">
（約束破ることになっちまうが、アタシが持ってる一番貴重な物がコレなんだ！）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/490200030skr">
（この借りは、絶対、必ず、返す！）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/490200040skr">
（だから――頼む！）

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/490200050skr">
（このバッグの中味、一度アタシに預けてくれッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	DeleteSt("C",200,true);

//◆場所：あにのあな_店内_停電
	OnBG(100,"bg0302200あにのあな_店内_停電");
	FadeBG(500,true);
	CreateColorSPmul("絵停電色", 2999, "BLUE");
	Fade("絵停電色", 0, 300, null, true);

	CreateColorSP("絵色黒幕２", 1500, "BLACK");
	CreateColorSP("絵色黒幕３", 1500, "BLACK");
	DrawTransition("絵色黒幕２", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色黒幕３", 0, 550, 550, 250, null, "cg/data/slide_06_00_0.png", true);
	Fade("絵色黒幕３", 0, 500, null, true);

	SetVolume("@xbgm*", 2500, 0, null);
	Wait(500);


	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	Wait(500);

//	St("C",700, @0,@0,"st似鳥_通常_shout");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：遠くから
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/490200060nki">
「願い下げだあッ！！」

{
//	St("C",700, @0,@0,"st似鳥_通常_angry");
//	FadeSt("C",200,true);
}
//◆音声指示：遠くから
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/490200070nki">
「誰がこんな店に売ってやるもんかァ」

{
//	DeleteSt("C",200,true);
//	St("C",700, @+100,@0,"bu沙紅羅_通常_shout");
//	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/490200080skr">
「良し！　その本買ったッッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);


	EndScene();
}
