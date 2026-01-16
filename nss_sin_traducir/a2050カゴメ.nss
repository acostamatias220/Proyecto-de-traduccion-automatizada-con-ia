
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene a2050カゴメ.nss_MAIN
{
//■カゴメチェック
	Kagome_IsChaeck("flkagome1a");

//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		if($CharaName!="沙紅羅"&&$CharaName!="千秋"&&$CharaName!="恵那"&&$CharaName!="フウリ"){
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
	Kagome("flkagome1a");

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

	if(#flkagome1a){
		//☆成功（ab）
		//#aa2050沙紅羅_フウリ_ab_in=true;
		AXNL_ReachingTimeZone("aa2050沙紅羅_フウリ",true);
		//#aa2050千秋_恵那_ab_in=true;
		AXNL_ReachingTimeZone("aa2050千秋_恵那",true);
		//#ab2050似鳥_ノーコ_ab_in=true;
		AXNL_ReachingTimeZone("ab2050似鳥_ノーコ",true);
		//#ab2051似鳥_in=true;
		AXNL_ReachingTimeZone("ab2051似鳥",true);
		//#ab2051ノーコ_in=true;
		AXNL_ReachingTimeZone("ab2051ノーコ",true);

		if($CharaName=="沙紅羅"){
			$GameName="aa2050沙紅羅_フウリ.nss";
		}else if($CharaName=="千秋"){
			$GameName="aa2050千秋_恵那.nss";
		}else if($CharaName=="恵那"){
			$GameName="aa2050千秋_恵那.nss";
		}else if($CharaName=="似鳥"){
			$GameName="ab2050似鳥_ノーコ.nss";
		}else if($CharaName=="ノーコ"){
			$GameName="ab2050似鳥_ノーコ.nss";
		}else if($CharaName=="フウリ"){
			$GameName="aa2050沙紅羅_フウリ.nss";
		}else{
		}
	}else{
		//☆失敗（aa）
		//#aa2050沙紅羅_フウリ_aa_in=true;
		AXNL_ReachingTimeZone("aa2050沙紅羅_フウリ",true);
		//#aa2050千秋_恵那_aa_in=true;
		AXNL_ReachingTimeZone("aa2050千秋_恵那",true);

		if($CharaName=="沙紅羅"){
			$GameName="aa2050沙紅羅_フウリ.nss";
		}else if($CharaName=="千秋"){
			$GameName="aa2050千秋_恵那.nss";
		}else if($CharaName=="恵那"){
			$GameName="aa2050千秋_恵那.nss";
		}else if($CharaName=="似鳥"){
			GameBreak();//死亡
		}else if($CharaName=="ノーコ"){
			GameBreak();//死亡
		}else if($CharaName=="フウリ"){
			$GameName="aa2050沙紅羅_フウリ.nss";
		}else{
		}
	}
}

scene a2050カゴメ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="220">
////////////header////////////
//file name "a2050カゴメ.nss"
//title "シアワセアソビ"
//previous "a2040似鳥_ノーコ.nss"

////////////footer////////////
//カゴメアソビ成功 "flkagome1a" = true
//カゴメアソビ失敗 "flkagome1a" = false

//next "似鳥"（"flkagome1a" = true） "ab2050似鳥_ノーコ.nss"
//next "似鳥"（"flkagome1a" = false） "死亡"

//next "ノーコ"（"flkagome1a" = true） "ab2050似鳥_ノーコ.nss"
//next "ノーコ"（"flkagome1a" = false） "死亡"


////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

	ClockDelete(0,true);//時計は非表示！

//◆場所：籠_正面_ブラックライト
//	OnBG(10,"bg0801200籠_正面_ブラックライト");
//	FadeBG(0,true);

	LoadImage("絵イメージ１", "cg/bg/l/bg0801200籠_正面_ブラックライト_l.jpg");
	SetAlias("絵イメージ１", "絵イメージ１");
	LoadImage("絵イメージ２", "cg/bg/m/bg0801200籠_正面_ブラックライト_m.jpg");
	SetAlias("絵イメージ２", "絵イメージ２");
	LoadImage("絵イメージ３", "cg/bu/l/bu双六a_横向き_sigh_x01.png");
	SetAlias("絵イメージ３", "絵イメージ３");

	//後定義
	CreateTextureEX("絵マスク１", 1200, 0, 0, "cg/mask/ciスラッシュ_07_02z.png");

	CreateMask("絵ウィンドウ１", 150, 0, 0, "cg/mask/ciスラッシュ_07_03.png", false);
	SetAlias("絵ウィンドウ１", "絵ウィンドウ１");
	CreateTextureEX("絵ウィンドウ１/絵背景１",1000,0,0,"cg/bg/bg0801200籠_正面_ブラックライト.jpg");

	St("L",1600, @0,@0,"buノーコa_通常_sad");



//◆演出指定：ＢＧＭカゴメカゴメが流れ始める
	MusicStart("@xbgm14",0,450,0,1000,null,true);

	//演出定義
	KagomeColorSet("絵カゴメカラー",5000,"fdf202");
	Fade("絵カゴメカラー", 0, 1000, null, false);
	KagomeTexture("絵背景１","絵背景２",10,-1000,-288,"絵イメージ１");
	Fade("絵背景*", 0, 1000, null, true);
	KagomeSt("MR",100, @0,@80,"fu似鳥_通常_smile");
	KagomeFadeSt("MR",0,true);

	Move("@絵背景*", 0, @50, @40, null, false);
	Move("@StNameMR/MR*", 0, @-100, @-80, null, true);

	//★徒歩：ＳＥ
	//CreateSE("SE01","se人体_倒れる02");
	//MusicStart("SE01",0,600,0,1000,null,false);

	Move("@絵背景*", 2000, @-50, @-40, Dxl1, false);
	//Move("@StNameMR/MR*", 500, @100, @80, Dxl1, false);
	FadeF("@StNameMR/MR*",0,1000,2000,100,80,Dxl1,false);
	FadeDelete("上背景", 2000, null, false);

	//Shake("@StNameMR/MR*", 300, 0, 10, 0, 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/500100010nki">
「オレに、夢なんてないんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WaitAction("上背景", null);

	CreatePlainSP("上背景", 18998);
	Draw();

	DeleteSt("MR",0,true);
	DeleteSt("MR2",0,true);
	Delete("絵背景１");
	Delete("絵背景２");
	Delete("絵カゴメ*");

	//今定義
	CreateTextureEX("絵背景３",10,-1000,-288,"絵イメージ１");
	St("MR",800, @0,@80,"fu似鳥_通常_hard");
	Fade("絵背景３", 0, 1000, null, true);
	FadeSt("MR",0,true);

//★徒歩：セットカゴメカラー
	KagomeColorAuto(10000,0,true);

	FadeDelete("上背景", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/500100020nki">
「オレこそ、夢のないスペルマ野郎だ」

{	St("MR",800, @0,@80,"fu似鳥_通常_sad");
	FadeSt("MR",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/500100030nki">
「オレこそ、死んだ方がマシだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵マスク１", 0, 1000, null, false);
	Fade("絵ウィンドウ１/絵背景*", 0, 1000, null, true);
	KagomeColorAutoDraw(10000, 300, 100, null, "slide_01_04_0", true);//★徒歩：セットカゴメカラー

	FadeSt("L",0,true);
	KagomeColorAutoDraw(10000, 300, 100, null, "slide_01_04_0", true);//★徒歩：セットカゴメカラー

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/500100040nko">
「そんな、にとり！　そんなこと――」

{	St("L",1600, @0,@0,"buノーコa_通常_pain");
	FadeSt("L",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/500100050nko">
「にとりには、わたしがいる。
　ゆめなんてなくても――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",800, @0,@80,"fu似鳥_通常_normal");
	FadeSt("MR",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/500100060nki">
「夢……夢……夢か……」

{	St("MR",800, @0,@80,"fu似鳥_通常_happy");
	FadeSt("MR",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/500100070nki">
「ノーコ。おまえは……オレの、夢だったのかもな」

{	St("MR",800, @0,@80,"fu似鳥_通常_sigh");
	FadeSt("MR",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/500100080nki">
「マンガ描いて、セックスして、何度も刺されて――」

{	St("MR",800, @0,@80,"fu似鳥_通常_smile");
	FadeSt("MR",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/500100090nki">
「ああ……
　どうせならおまえに、とどめを刺して欲しかったな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("L",1600, @0,@0,"buノーコa_通常_fear");
	FadeSt("L",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/500100100nko">
「なにをいって――」

{	St("MR",800, @0,@80,"fu似鳥_通常_sad");
	FadeSt("MR",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/500100110nki">
「ノーコ」

{	St("MR",800, @0,@80,"fu似鳥_通常_lost");
	FadeSt("MR",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/500100120nki">
「幸せにしてやれなくて、ごめん……」

{	St("L",1600, @0,@0,"buノーコa_通常_sad");
	FadeSt("L",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/500100130nko">
「にとり――」

{	St("L",1600, @0,@0,"buノーコa_通常_fear");
	FadeSt("L",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/500100140nko">
「だったら、あきらめないで！」

{	St("L",1600, @0,@0,"buノーコa_通常_cry");
	FadeSt("L",0,true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/500100150nko">
「いきのびて――わたしを、しあわせにしてッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureSP("絵マスク１", 3000, 0, 0, "cg/mask/ciスラッシュ_07_01z.png");

	CreateMask("絵ウィンドウ２", 150, 0, 0, "cg/mask/ciスラッシュ_07_01.png", false);
	SetAlias("絵ウィンドウ２", "絵ウィンドウ２");

	CreateTextureSP("絵ウィンドウ２/絵背景１",2000,-100,-120,"絵イメージ１");
	CreateTextureSP("絵ウィンドウ２/絵人物１",2100,Center,87,"cg/bu/bu村崎_通常_cry.png");

	KagomeColorAutoDraw(10000, 500, 100, null, "slide_01_04_0", true);//★徒歩：セットカゴメカラー

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/500100160msi">
「何をぶつぶつ言っているのか、わかりませんがあッ！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/500100170msi">
「私の、命にはあっ！
　夢にはっ！　代えられない――！！」

{//	St("L",00, @0,@0,"fuノーコa_通常_rage");
//	FadeSt("L",0,true);
	DeleteSt("L",0,false);
	CreateTextureSP("絵ウィンドウ１/絵人物１",1600,-620,-425,"cg/fu/fuノーコa_通常_rage.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/500100180nko">
「やめて！　だめ！　おねがいだから！」

{	CreateWindow("絵ウィンドウ４", 150, 550, 0, 500, 150, false);
	CreateTextureEX("絵ウィンドウ４/絵人物１",900,-620,-425,"cg/fu/fuノーコa_通常_rage.png");

	CreateTextureSP("絵ウィンドウ２/絵人物１",2100,Center,-80,"cg/bu/l/bu村崎_通常_cry_x01.png");
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
	CreatePlainSP("上背景", 18998);

	Fade("絵ウィンドウ４/絵人物１", 0, 1000, null, true);
	KagomeColorAuto(10000,200,true);//★徒歩：セットカゴメカラー
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/500100190msi">
「ごめんなさいねっ、ごめんなさい、ごめんな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("絵背景０", 10001);
	CreatePlainSP("絵背景９", 9000);

	Delete("絵ウィンドウ４");
	Delete("絵ウィンドウ１");
	Delete("絵ウィンドウ２");
	Delete("絵背景３");
	Delete("@OnKG*");


	CreateTextureSP("絵マスク３", 15000, 0, 0, "cg/mask/ciスラッシュ_04_00z.png");

	CreateMask("絵ウィンドウ３", 150, 0, 0, "cg/mask/ciスラッシュ_04_00.png", false);
	SetAlias("絵ウィンドウ３", "絵ウィンドウ３");

	CreateTextureSP("絵ウィンドウ３/絵背景１",11000,-256,-288,"絵イメージ２");
	CreateTextureSP("絵ウィンドウ３/絵人物１",12000,-100,-288,"絵イメージ３");
	KagomeColor("絵ウィンドウ３/絵カゴメ",15000,0,true);//★徒歩：セットカゴメカラー

	Shake("絵ウィンドウ３/絵カゴメ", 1000, 0, 40, 0, 0, 500, Dxl1, false);
	Shake("絵マスク３", 1000, 0, 40, 0, 0, 500, Dxl1, false);

	DrawDelete("上背景", 500, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/500100200ksr">
「いいから早く撃てよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WaitAction("絵マスク３", null);

	CreatePlainSP("上背景", 18998);

	CreateTextureSP("絵マスク１", 18000, 0, 0, "cg/mask/ciスラッシュ_07_01z.png");

	CreateMask("絵ウィンドウ２", 150, 0, 0, "cg/mask/ciスラッシュ_07_01.png", false);
	SetAlias("絵ウィンドウ２", "絵ウィンドウ２");

	CreateTextureSP("絵ウィンドウ２/絵背景１",16000,-100,-88,"絵イメージ１");
	CreateTextureSP("絵ウィンドウ２/絵人物１",16001,Center,-435,"cg/bu/l/bu村崎_通常_cry_x02.png");
	KagomeColor("絵ウィンドウ２/絵カゴメ",17000,0,true);//★徒歩：セットカゴメカラー

	Move("絵ウィンドウ２/絵背景１", 0, @0, @1000, Dxl1, true);
	Move("絵ウィンドウ２/絵人物１", 0, @0, @1000, Dxl1, true);

	Move("絵ウィンドウ２/絵カゴメ", 0, @0, @576, Dxl1, true);
	Move("絵ウィンドウ２/絵カゴメ", 300, @0, @-576, null, false);
	DrawDelete("上背景", 300, 100, null, "slide_02_01_0", true);

	Move("絵ウィンドウ２/絵背景１", 0, @0, @-1000, Dxl1, true);
	Move("絵ウィンドウ２/絵人物１", 0, @0, @-1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/500100210msi">
「ふはっ、ふは……」

{	CreateTextureSP("絵ウィンドウ２/絵人物２",16001,Center,-435,"cg/bu/l/bu村崎_通常_happy_x01.png");
	//★徒歩：ＳＥ
	CreateSE("SE01","se銃_撃鉄起こす");
	MusicStart("SE01",0,1500,0,1000,null,false);
	KagomeColor("絵ウィンドウ２/絵カゴメ２",17000,200,true);//★徒歩：セットカゴメカラー
	FadeDelete("絵ウィンドウ２/絵カゴメ", 0, null, true);
	FadeDelete("絵ウィンドウ２/絵カゴメ２", 2000, null, false);
	FadeDelete("絵ウィンドウ３/絵カゴメ", 2000, null, false);
	FadeDelete("絵背景０", 2000, null, false);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/500100220msi">
「ふははははははははははははっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：発砲
//	CreateSE("SE01","se銃_銃声01");
//	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(150);

	WaitAction("@OnKG*", null);

//	FadeBG(2000,true);

	EndScene();
}
