
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2320カゴメ5.nss_MAIN
{
//■カゴメチェック
	Kagome_IsChaeck("flkagome5");

//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		if($CharaName!="沙紅羅"&&$CharaName!="千秋"&&$CharaName!="似鳥"&&$CharaName!="ノーコ"&&$CharaName!="フウリ"){
			$KagomePeople=true;
			call_scene $MainGameName;
		}
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	//★カゴメアソビ//////////////////////////
	Kagome("flkagome5");

	//演出
	if($KagomePeople){
		//ラテ欄に戻らない際の演出：撃ったキャラのみ
		if($KagomeName=="生存"){
			SetVolume("@SE*", 2000, 0, NULL);
			SetVolume("@x*", 2000, 0, NULL);
			ClearFadeNut(2000,true);
		}else if($KagomeName=="死亡"){
			SetVolume("@SE*", 2000, 0, NULL);
			SetVolume("@x*", 2000, 0, NULL);
			ClearFadeNut(2000,true);
		}
	}

	if(#flkagome5){
		//☆成功（トゥルー）
		//#2320沙紅羅_千秋_トゥルー_in=true;
		AXNL_ReachingTimeZone("2320沙紅羅_千秋",true);
		//#2320恵那_トゥルー_in=true;
		AXNL_ReachingTimeZone("2320恵那",true);
		//#2320似鳥_トゥルー_in=true;
		AXNL_ReachingTimeZone("2320似鳥",true);
		//#2320ノーコ_トゥルー_in=true;
		AXNL_ReachingTimeZone("2320ノーコ",true);
		//#2320フウリ_h_トゥルー_in=true;
		AXNL_ReachingTimeZone("2320フウリ_h",true);

		if($CharaName=="沙紅羅"){
			$GameName="2320沙紅羅_千秋.nss";
		}else if($CharaName=="千秋"){
			$GameName="2320沙紅羅_千秋.nss";
		}else if($CharaName=="恵那"){
			$GameName="2320恵那.nss";
		}else if($CharaName=="似鳥"){
			$GameName="2320似鳥.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="2320ノーコ.nss";
		}else if($CharaName=="フウリ"){
			$GameName="2320フウリ_h.nss";
		}else{
		}
	}else{
		//☆失敗（e）
		//#e2320沙紅羅_e_in=true;
		AXNL_ReachingTimeZone("e2320沙紅羅",true);
		//#2320恵那_e_in=true;
		AXNL_ReachingTimeZone("2320恵那",true);
		//#2320似鳥_e_in=true;
		AXNL_ReachingTimeZone("2320似鳥",true);
		//#2320ノーコ_e_in=true;
		AXNL_ReachingTimeZone("2320ノーコ",true);
		//#2320フウリ_h_e_in=true;
		AXNL_ReachingTimeZone("2320フウリ_h",true);

		if($CharaName=="沙紅羅"){
			$GameName="e2320沙紅羅.nss";
		}else if($CharaName=="千秋"){
			GameBreak();//死亡
		}else if($CharaName=="恵那"){
			GameBreak();//死亡
		}else if($CharaName=="似鳥"){
			$GameName="2320似鳥.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="2320ノーコ.nss";
		}else if($CharaName=="フウリ"){
			$GameName="2320フウリ_h.nss";
		}else{
		}
	}
}

scene 2320カゴメ5.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="270">
////////////header////////////
//file name "2320カゴメ5.nss"
//title "ミタマアソビ"
//previous "2310恵那.nss"

////////////footer////////////
//カゴメアソビ成功 "flkagome5" = true
//カゴメアソビ失敗 "flkagome5" = false


//next "恵那"（"flkagome3" = false） "c2340恵那.nss"
//next "恵那"（"flkagome4" = false） "c2340恵那.nss"
//next "恵那" "2320恵那.nss"


////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

	ClockDelete(0,true);//時計は非表示！

//◆場所：籠_内部
//	OnBG(10,"bg0802100籠_内部_通常");
//	FadeBG(0,true);

//◆演出指定：ＢＧＭカゴメカゴメが流れ始める
	MusicStart("@xbgm14",0,450,0,1000,null,true);

	//★徒歩：セットカゴメカラー
	KagomeColorSet("絵カゴメカラー",10200,"fdf202");
	Fade("絵カゴメカラー", 1000, 1000, null, true);

	KagomeTexture("絵原版１", "絵原版２", 10, 0, 0, "cg/bg/bg0802100籠_内部_通常.jpg");
	Fade("絵原版*", 0, 1000, null, true);

	//◆ＥＶ："ev/ev2320カゴメアソビ5.txt"
	//KagomeTexture("絵イベント１", "絵イベント２", 2000, 0, 0, "cg/ev/ev2320カゴメアソビ5.jpg");
	//Fade("絵イベント*", 0, 1000, null, true);

	KagomeSt("C",1000, @0,@0,"fu恵那_通常_think");
	KagomeFadeSt("C",0,true);
	KagomeTexture("絵背景１", "絵背景２", 900, 0, 0, "cg/bg/m/bg0108300秋葉原_俯瞰_雪_m.jpg");

	#bg0108300秋葉原_俯瞰_雪 = true;

	FadeDelete("上背景", 2000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	Move("絵背景*", 60000, @-500, @0, null, false);
	Fade("絵背景*", 2000, 1000, null, false);
//	Wait(1000);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100010fje">
「まるで今夜は――全てが計算されてたみたいね」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200100020ksr">
「双一親分は、この街の全てを見通してる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200100030ksr">
「今夜、アザナエルの封印が解かれたその瞬間から、この結末を見通してた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景*", 500, null, true);
	PrintGO("上背景", 30000);

	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);
	St("C",100, @0,@0,"fu恵那_通常_angry");

	//★徒歩：セットカゴメカラー
	FadeSt("C",0,true);
	KagomeColorAuto(10000,0,true);

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100040fje">
「……なぜ、こんなことを？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200100050ksr">
「見たいのさ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200100060ksr">
「飛べない鳥の娘が、飛べない翼で、それでも必死に羽ばたく姿を」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{
	St("C",100, @0,@0,"fu恵那_通常_hard");
	//★徒歩：セットカゴメカラー
	FadeSt("C",0,true);
	KagomeColorAuto(10000,200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100070fje">
「空の遙か高みから？　それとも――墓場の底から？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200100080ksr">
「さて……どっちだろうな」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200100090ksr">
「けど、それを知らなきゃ飛べないか？」

{
	St("C",100, @0,@0,"fu恵那_通常_shout");
	//★徒歩：セットカゴメカラー
	FadeSt("C",0,true);
	KagomeColorAuto(10000,200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100100fje">
「いいわ。私の羽根、見せてあげる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 30000);

	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2320カゴメアソビ5.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	//★徒歩：セットカゴメカラー
	KagomeColorAuto(10000,0,true);

	FadeDelete("上背景", 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100110fje">
（私は、母さんを失った、父さんとは、違う――）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100120fje">
（自分の命を懸けて――カゴメアソビをして――）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100130fje">
（千秋の命を、救ってみせる――！）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100140fje">
（絶対――あいつを、この世に呼び戻してみせる――）

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200100150ksr">
「親子だなあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/200100160ksr">
「あの時と、そっくりな顔――」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100170fje">
「うるさい！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100180fje">
（私だって、怖いわよ！　震えてるのは、わかってる！）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100190fje">
（でも――）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100200fje">
（もしも私に、飛び立つ羽根があるのなら――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100210fje">
（それは貫太さん――あなたがくれた羽根です）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100220fje">
（それは千秋――あなたがくれた羽根かもね）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100230fje">
（私が今、ここにいるのは、みんなのおかげ――）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100240fje">
（だから――）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100250fje">
（私は、その恩を返す――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("@OnKG*", 3000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100260fje">
（千秋――）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/200100270fje">
（私の気持ち、受け取って――！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	WaitAction("@OnKG*", null);

	EndScene();
}
