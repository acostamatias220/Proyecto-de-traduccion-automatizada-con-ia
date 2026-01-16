
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2300沙紅羅_恵那_似鳥_ノーコ.nss_MAIN
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
	if($CharaName=="沙紅羅"){
		$GameName = "2301沙紅羅.nss";
	}else if($CharaName=="恵那"){
		$GameName = "2301恵那.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "2301似鳥_ノーコ.nss";
	}else{
		$GameName = "2301似鳥_ノーコ.nss";
	}
//	$GameCircle=false;

}

scene 2300沙紅羅_恵那_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "2300沙紅羅_恵那_似鳥_ノーコ.nss"
//title ""
//previous "2250沙紅羅_恵那_似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "2301沙紅羅.nss"
//next "恵那" "2301恵那.nss"
//next "似鳥" "2301似鳥_ノーコ.nss"
//next "ノーコ" "2301似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	CreateColorEXadd("上背景絵色100", 30100, "WHITE");

//◆場所：半田明神_境内_ペンキ
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

{	ClockPass(2300);}
	Wait(200);

	Fade("上背景", 200, 0, null, true);
	FadeDelete("上背景", 0, null, true);

//★↓ここのBGMは、次ファイルにまたがっているため、調整の際は気をつけてください。
//　2301沙紅羅　2301似鳥_ノーコ　2301恵那　の冒頭のBGMも同じものにしてください。
	SoundPlay("@xbgm23",0,450,true);

	WaitKey(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/000200010fje">
「以上で説明終わりッ！！
　自分の役目はわかったわね！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/000200020fje">
「みんなで協力して、ミヅハちゃんを、元の姿に！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

/*
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/000200030skr">
「おうッ！」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/000200040nki">
「おう！」

//◆音声指示：同時
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/000200050nko">
「おー」

//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/000200060mso">
「押忍！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/000200070buu">
「押忍！」
*/

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵演立絵前左", 700, Center, InBottom, "cg/bu/bu沙紅羅_通常_shout.png");
	$CharaMiddlePosSet=ImageVertical("絵演立絵前左")-150;
	SetVertex("絵演立絵前左", center, $CharaMiddlePosSet);
	Move("絵演立絵前左", 0, @-220, @150, null, true);
	Request("絵演立絵前左", Smoothing);
	Zoom("絵演立絵前左", 0, 920, 920, null, true);

	Wait(16);

	CreateTextureSP("絵演立絵前右", 700, Center, InBottom, "cg/bu/buノーコb_通常_rage.png");
	$CharaMiddlePosSet=ImageVertical("絵演立絵前右")-150;
	SetVertex("絵演立絵前右", center, $CharaMiddlePosSet);
	Move("絵演立絵前右", 0, @180, @150, null, true);
	Request("絵演立絵前右", Smoothing);
	Zoom("絵演立絵前右", 0, 920, 920, null, true);

{	St("L",690, @-80,@-60,"buみそa_オラオラ_pride");
	Zoom("@StNameL/L*", 0, 940, 940, null, true);
	Request("@StNameL/L*", Smoothing);
	FadeSt("L",0,true);}
{	St("C",680, @-30,@-40,"buブーa_通常_smile");
	FadeSt("C",0,true);}
{	St("R",690, @90,@-40,"bu似鳥_背張る_shout");
	Zoom("@StNameR/R*", 0, 900, 900, null, true);
	Request("@StNameR/R*", Smoothing);
	FadeSt("R",0,true);}

	Wait(16);
	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/000200030">
「おうッ！」「おう！」
「おー」「押忍！」「押忍！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);
	Delete("絵演立絵前*");
	FadeDelete("絵板写", 200, null, true);

{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/000200080fje">
「それじゃ――行動開始ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//おがみ：β要演出箇所：優先度Ａ　各移動先で移動演出をおねがいしたい



	EndScene();
}
