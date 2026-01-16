
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2110沙紅羅_千秋_フウリ.nss_MAIN
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
		$GameName = "2111沙紅羅_フウリ.nss";
	}else if($CharaName=="千秋"){
		$GameName = "2111沙紅羅_フウリ.nss";
	}else if($CharaName=="フウリ"){
		$GameName = "2111沙紅羅_フウリ.nss";
	}else{
		$GameName = "2111沙紅羅_フウリ.nss";
	}

}

scene b2110沙紅羅_千秋_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="530">
////////////header////////////
//file name "b2110沙紅羅_千秋_フウリ.nss"
//title "ドッペルゲンガー"
//previous "2100沙紅羅_フウリ.nss"
//previous "b2050千秋.nss"

////////////footer////////////
//next "沙紅羅" "2111沙紅羅_フウリ.nss"
//next "千秋" "2111沙紅羅_フウリ.nss"
//next "フウリ" "2111沙紅羅_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2110);}

//◆場所：ＵＰ＋_屋外セット_炎上

	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	if($PreGameName=="2100沙紅羅_フウリ.nss"){

	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);
	SoundPlay("@xbgm16_noint",0,450,true);

//◆ＳＥ：ジングル
	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	}else if($PreGameName=="b2050千秋.nss"){

	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);

	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	SoundPlay("@xbgm16",0,450,true);

	}else{
	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	SoundPlay("@xbgm16",0,450,true);

	}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//◆音声指示：スピーカー越し
{	St("C",700, @50,@0,"buミリＰb_ショータイム_happy");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100010mrp">
『さーて、それでは全国ゆるキャラバン！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100020mrp">
『熱戦の再か――！！』


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/100100030adi">
「ちょっと待った！」

{	DeleteAllSt(200,false);
	St("ML",700, @30,@0,"buミリＰb_通常_shock");
	Move("@StNameML/ML*", 200, @-30, @0, Dxl2, false);
	FadeSt("ML",200,true);
	Wait(100);
	Move("@StNameML/ML*", 200, @-20, @0, Dxl2, false);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100040mrp">
「……とと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

{	St("ML",700, @0,@0,"buミリＰb_ショータイム_pinch");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100050mrp">
「な、なんで止めるの！？
　ってか、買い物は――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/100100060adi">
「アッキーさんが、ここに！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100070kit">
「だからなんなんだよ！？」

{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100080mrp">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

	DeleteAllSt(200,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/100100090wfu">
「はれ？　アッキーちゃん？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100100skr">
「え？　だっておまえ、さっきまでここに――」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100110skr">
「んあ？　いなくなってる……？」

{	DeleteAllSt(200,false);
	St("C",700, @50,@0,"bu千秋_朗らか_shock");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100120kit">
「は？　何の話を――」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buＡＤ_通常_smile");
	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/100100130adi">
「ドンガの方にいたんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/100100140wfu">
「いつの間に……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("C",200,true);

	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100150skr">
「わかったあああ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100160skr">
「忍者だっ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);
	CreateSE("SE02","se擬音_ギャグ_ドーン");
	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100170kit">
「んなわけあるか！
　ただの人違いだ！　人違い！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

{	St("L",700, @0,@0,"buミリＰb_通常_smile");
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100180mrp">
「まあ、御託はいいから席について頂戴！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100190kit">
「いや、だからオレじゃないって――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100200skr">
「いいから来いっつーの！！
　師匠の命令が聞けねぇのかっ！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100210kit">
「うう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);
	SceneOut(5000, 1000, "slide_01_00_0");

	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	DeleteAllSt(0,false);

//マスク準備
	CreateTextureEX("スラッシュ", 1620, 0, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
//	CreateMaskAXLEX("絵マスク左", 6000, 0, 0, "ciスラッシュ_05_00", true, "ciスラッシュ_05_00z");
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1520, 0, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("スラッシュ", 0, -1024, 0, null, true);
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);

	SceneIn(1000, "slide_01_00_1");

	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	WaitKey($SETime);
	SoundPlay("@xbgm16",0,450,true);

//イン動作
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク左/絵演立絵", 200, -100, middle, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]


//◆音声指示：スピーカー越し
{
//	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
//	FadeSt("C",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100220mrp">
『さーて、それでは全国ゆるキャラバン！』

//◆音声指示：スピーカー越し
{
	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateTextureEX("絵マスク左/絵演立絵2", 1530, -100, 0, "cg/bu/buミリＰb_ショータイム_happy.png");
	Fade("絵マスク左/絵演立絵", 0, 0, null, false);
	Fade("絵マスク左/絵演立絵2", 0, 1000, null, true);
	FadeDelete("絵板写", 200, null, true);

//	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
//	FadeSt("C",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100230mrp">
『熱戦の再開――！！』


{
//アウト動作
	Move("スラッシュ", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("スラッシュ", 200, 0, null, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, true);

	Delete("絵マスク*");
	Delete("絵マスク左/*");
	Delete("スラッシュ");

	St("C",700, @0,@0,"fuフウリ_頬手_smile");
	FadeSt("C",200,true);
	Wait(500);
	Move("@StNameC/C*", 300, @0, @50, Dxl2, false);
	DeleteAllSt(200,false);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/100100240wfu">
「いただきます！　はむはむ！　んまー！」

{	St("C",700, @0,@50,"fuフウリ_通常_smile");
	Move("@StNameC/C*", 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/100100250wfu">
「ごちそうさまでした！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]


//◆音声指示：スピーカー越し
{	St("L",700, @-50,@0,"buミリＰb_通常_shock");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100260mrp">
『なに？　この子の食欲は天井知らず？』

//◆音声指示：スピーカー越し
{	St("L",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100270mrp">
『牛タンフランクも一気食い！』

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"fuフウリ_胸手_smile");
	FadeSt("C",200,true);}

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/100100280wfu">
「あむあむ」

//◆音声指示：スピーカー越し
{
	DeleteAllSt(200,false);
	St("R",700, @-50,@0,"buミリＰb_ショータイム_happy");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100290mrp">
『象の鼻パンも！』

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"fuフウリ_頬手_shy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/b21/100100300wfu">
「もぐもぐ」

//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("L",700, @50,@0,"buミリＰb_ショータイム_shout");
	Move("@StNameL/L*", 300, @-50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100310mrp">
『爆弾おにぎりも！』



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]



{	St("MR",700, @50,@0,"buＡＤ_通常_shock");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/100100320adi">
「ほ……ホントにあっという間になくなっちゃった……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100330kit">
「い……いったいなにが起こってるんだ？」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100340kit">
「まるで……人間じゃない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100350skr">
「おい弟子、おまえ……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100360skr">
「アタシを騙そうったってそうはトンチがおろさねぇぞ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100370kit">
「は？　ワケわかんないし。
　ってか、単なる人違いだろ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100380skr">
「あんなにそっくりな奴が、世の中にゴロゴロいてたまるかっつーの！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100390skr">
「それともナニか？
　人違いだから、てめーはアタシを知らないってのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100400kit">
「パンツの恨み、忘れられるかッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100410skr">
「アレはスマン！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100420kit">
「ともかくオレは関係ないから！　忙しいし行く――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100430skr">
「頼むッ！　この通りだ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100440kit">
「え？　師匠……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100450skr">
「あと少し……ここにいてくれるだけでいいんだ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100460skr">
「フウリ、どうしてもこの大食いを成功させたいって、必死に頑張ってんだ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100470skr">
「アタシはどうしても――
　フウリの夢、叶えてやりたいんだよ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100480kit">
「フウリさんの……夢……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,false);

	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：スピーカー越し
{
	St("C",700, @50,@0,"buミリＰb_通常_normal");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100490mrp">
『となると次は……』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b21/100100500mrp">
『とうとうラストのクリマ……』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 96, 400, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);

	CreateColorSP("絵窓/絵演色", 1510, "#FF6600");
	CreateTextureSPadd("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/buＡＤ_通常_pride.png");
	Move("絵窓/絵演立絵", 0, @100, @50, null, true);

//動作
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 200, @-100, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//	St("C",700, @0,@0,"buＡＤ_通常_smile");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/100100510adi">
「――の前に、もう一品！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//消去
	Move("絵窓/絵演立絵*", 200, @-100, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 0, Axl2, false);

	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");



//◆ＳＥ：ドガッ！　おでん缶置かれる

	CreateSE("SE01","se日常_缶置く");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 1500);
	Shake("揺用", 300, 5, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");

	TextBoxDelete(150);
	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,false);

	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]


{
	St("MR",700, @110,@0,"bu沙紅羅_通常_surprise");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b21/100100520skr">
「なんだあ？　ジュース？」

{	St("ML",700, @-110,@0,"bu千秋_朗らか_sigh");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/100100530kit">
「いや……違う。
　アレはきっと、さっきオレが運ばされた――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);


	EndScene();
}
