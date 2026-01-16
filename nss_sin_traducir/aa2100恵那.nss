
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2100恵那.nss_MAIN
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
	$GameName = "aa2110恵那.nss";
//	$GameCircle=false;

}

scene aa2100恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="980">
////////////header////////////
//file name "aa2100恵那.nss"
//title "化けの皮"
//previous "aa2050千秋_恵那.nss"

////////////footer////////////
//next "恵那" "aa2110恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();

{	ClockPass(2100);}

//◆場所：ＵＰ＋_セット上
//	OnBG(10,"bg1202100ＵＰ＋_セット上_通常");
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");

	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);


	SoundPlay("@xbgm03",0,450,true);

// ここで場所移動した方が良い気がするので、変更

	TextBoxDelete(150);

	SceneOut(19020, 300, "slide_01_01_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);

// 前ファイル aa2050千秋_恵那.nss 立ち位置合わせ

	CreateSE("SEL01","se動作_走る05_l");
	MusicStart("SEL01",0,800,0,1000,null,true);
	CreateSE("SER01","se動物_イヌ_走る_l");
	MusicStart("SER01",0,800,0,1000,null,true);

	SceneIn(300, "slide_01_01_1");

// メモ：前のファイルの流れから、ユージローは b？
// a2040千秋.nss（この時点でb) -> aa2050_千秋_恵那 -> aa2100恵那 (ここまで外す機会なしかと思われる）

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @-50,@0,"buユージローa_通常_ero");
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	Shake("@StNameML/ML*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/000100010ujr">
「わうわうわうわうっ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @-50,@0,"bu千秋_通常_pain");
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100020ktt">
「たすけて――っ！！」

{	DeleteAllSt(200,false);
	St("C",700, @-50,@0,"bu恵那_通常_shout");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100030fje">
「ユージロー！　ちょっと！」

{
	SetVolumeEX("@SE*", 300, 0, null);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/000100040ujr">
「わおーん！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100050ktt">
「ぎゃー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 250, @1224, @0, null, false);
//	Wait(200);
//	St("ML",700, @0,@0,"buユージローa_通常_ero");
//	FadeSt("ML",200,true);
	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameML/ML*", 250, @1224, @0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
{	DeleteAllSt(200,false);
	St("C",19010, @0,@0,"fu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100060fje">
（ユージローって、頭はそんなに良くないけど、私が呼び止めたら、やめるはずなのに……）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100070fje">
（そういえば、アザナエルを見つけたときもこんな風に走っていったっけ……）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100080fje">
（やっぱり、何かがおかしい？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2101);}

//	TextBoxDelete(150);


//◆場所：秋葉原_裏通り

//	SceneOut(19020, 300, "slide_01_01_0");
//	DeleteAllSt(0,true);
//	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
//	FadeBG(0,true);
//	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
{
	St("C",19010, @0,@0,"fu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100090fje">
（名探偵の勘が疼くわ！　もしや――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！

	KoreJikenStart();


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100100fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	KoreJikenEnd(true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/000100110ujr">
「わうわうわうわうっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameML/ML*", 250, @1224, @0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
{
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100120fje">
（とにかく、ユージローを――
　もうひとりのアッキーちゃんを、追いかけようっ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2102);}

	TextBoxDelete(150);

//◆場所：銭形公園_全景
	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(200,false);
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);
	SceneIn(300,"slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"buユージローa_通常_ero");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/000100130ujr">
「はっはっはっは！」

{	DeleteAllSt(200,false);
	St("MR",700, @-50,@0,"bu千秋_通常_pain");
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100140ktt">
「来んな！　来んなって！」

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100150ktt">
「あー、クソッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);


{	ClockPass(2113);}


//◆場所：銭形公園_トイレ正面
	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(200,false);
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");

// 前ファイルからの立ち位置調整ここまで

{	DeleteAllSt(200,false);
	St("C",700, @-50,@0,"buユージローa_通常_ero");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/000100160ujr">
「わうーん！」

{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"bu恵那_一休_think");
	Move("@StNameML/ML*", 500, @50, @0, Dxl2, false);
	FadeSt("ML",500,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100170fje">
「トイレの前……か」

{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100180fje">
「ね、アッキーちゃん。大丈夫？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateAXLWindowEX("絵演窓", "X", 30, 512, 512, false);
	WindowAXLZoom("絵演窓", "X", 0, 0, null, true);

	CreateTextureSP("絵演窓/絵背景", 15, 457, -180, "cg/bg/l/bg1703300銭形公園_トイレ中_破壊_l.jpg");

	WindowAXLZoom("絵演窓", "X", 300, 1000, AxlDxl, true);

{	St("R",700, @0,@0,"bu千秋_通常_fear");
	Shake("@StNameR/R*", 300, 8, 0, 0, 0, 500, null, false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046a]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100190ktt">
「だ……大丈夫なわけないし！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("R",700, @0,@0,"bu千秋_通常_pinch");
	Shake("@StNameR/R*", 300, 8, 0, 0, 0, 500, null, false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046b]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100200ktt">
「その犬、どうにかしてくれよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("L",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046c]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100210fje">
「あ、うん。ごめんなさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2104);}

{	St("R",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046d]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100220ktt">
「早く帰って、番組の続きしなきゃならないのに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @0,@0,"bu恵那_通常_think");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100230fje">
「番組の続き……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100240fje">
「…………」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("L", 200,true);

	Wait(500);

	St("L",19010, @0,@0,"fu恵那_一休_hard");
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062a]
　恵那の瞳が、避難先の男子トイレを鋭く見据える。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteSt("L", 200,true);

	St("L",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100250fje">
「――あ、そうか。
　アッキーちゃん、秋葉原代表チームなんだっけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2105);}

{	St("R",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062c]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100260ktt">
「そうだよ！　大食いのアンカー！」

{	St("R",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("R",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100270ktt">
「そりゃ、フウリさんはすごくよく食べるけど。
　もし、万が一のことがあったら大変だし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("L",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063a]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100280fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063b]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100290ktt">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2106);}

{	St("R",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063e]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100300ktt">
「あの……どうかしたか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

{	SoundPlay("@xbgm08",0,450,true);
	St("L",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100310fje">
「あなた、ホントにアッキーちゃん？」

{	St("R",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("R",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100320ktt">
「は……？　なんだよ急に」

{	St("L",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100330fje">
「なんで、男子トイレに入ったの？」

{	St("R",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("R",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100340ktt">
「そりゃ……その犬に追いかけられて、逃げ場を選ぶ余裕なかったし」

{	St("L",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100350fje">
「さっきからずっと、テレビに出てた？」

{	St("R",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("R",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100360ktt">
「……当然だろ」

{	St("L",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100370fje">
「だったら、さっきまで、私を慰めてくれてたのは？」

{	St("R",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("R",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100380ktt">
「え……？」

{	St("L",700, @0,@0,"bu恵那_通常_think");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100390fje">
「私と一緒に、バックギャモンにいたのは、誰？」

{	St("R",700, @0,@0,"bu千秋_通常_think");
	FadeSt("R",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100400ktt">
「……たぶん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("R",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100410ktt">
「たぶん、オレの真似をした偽物がいたんだ」

{	St("R",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("R",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100420ktt">
「その偽物が、おまえを騙して――」

//◆ＳＥ：携帯電話音
{	CreateSE("SE01","seメカ_携帯_ダイヤル");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("L",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100430fje">
「私、これからアッキーちゃんに電話してみる」

{	CreateSE("SE01","seメカ_携帯_コール01_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	SetVolumeEX("@xbgm*", 1000, 0, null);
	St("L",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100440fje">
「電話……通じるかな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("R",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100450ktt">
「…………」


//◆ＳＥ：携帯電話通話
{	SetVolumeEX("@SE01*", 1500, 0, null);
	CreateSE("SE01","seメカ_携帯_切れる");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("L",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("L",200,false);

//◆演出指定：以下、ＳＥ扱いで
//【留守番電話】
//<voice name="留守番電話" class="留守番電話" src="voice/aa21/000100460e23">
//「ただいま、電話に出ることができません」
	CreateSE("留守番電話","se特殊_留守番電話01");
	MusicStart("留守番電話",0,600,0,1000,null,false);
	$SETime = RemainTime("留守番電話");
	WaitKey($SETime);}

//【留守番電話】
//<voice name="留守番電話" class="留守番電話" src="voice/aa21/000100470e23">
//「ピーッと鳴りましたら、メッセージをお願いします」
{	CreateSE("留守番電話","se特殊_留守番電話02");
	MusicStart("留守番電話",0,600,0,1000,null,false);

	$SETime = RemainTime("留守番電話")-500;
	WaitKey($SETime);

	SetVolumeEX("留守番電話", 100, 0, null);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitPlay("SE01", null);
	CreateSE("SE01","seメカ_携帯_電話切れる02_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	St("L",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100480fje">
「…………」

{	SoundPlay("@xbgm08",0,450,true);
	St("L",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100490fje">
「化けの皮が、剥がれたみたいね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2107);}


//◆場所：銭形公園_トイレ中_破壊

	CreateSE("SE01","se動作_歩く03_l");
	MusicStart("SE01",0,700,0,800,null,true);

	CreatePlainSP("絵板写", 5000);
	Delete("絵演窓*");

	OnBG(10,"bg1703300銭形公園_トイレ中_破壊");
	DeleteAllSt(0,true);
	FadeBG(0,true);
	DrawDelete("絵板写", 1000, 100, null, "blind_01_00_0", true);

	St("ML",700, @-50,@0,"bu恵那_一休_hard");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);
	SetVolumeEX("SE01", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100500fje">
「あなた……何者？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100510ktt">
「ふ……はははは！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100520ktt">
「オレが誰かだって？」

//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100530ktt">
「さあね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100540fje">
「ふざけないで」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100550ktt">
「生まれたときから、真似ばかり」

//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100560ktt">
「誰かの理想を真似して、人の機嫌を取って、騙して、騙して、騙し続けて」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100570ktt">
「化けの皮を被り続けたら、とうとうどれが皮で、どれが本物なのか、わからなくなった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100580ktt">
「そんながらんどうの、化けダヌキだよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100590fje">
「化けダヌキ……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_ero");
	Shake("@StNameC/C*", 500, 0, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/000100600ujr">
「わうわうわうっ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100610ktt">
「邪魔」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ドロン


	CreateSE("SE01","se動物_タヌキ_化ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	FadeDelete("絵色", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/000100620ujr">
「わう？」

{	St("C",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 500, @0, @-100, Dxl2, false);
	DeleteAllSt(500,true);
//	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/000100630ujr">
「わう――――ん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(20,false);
	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);

//◆ＥＶ："ev/ev1830ミヅハ獣姦.txt" 差分Ｂ
//↑EV が用意されない模様なので、立ち絵演出に変更

//あきゅん「β演出：ユル絵」

//◆ＳＥ：カクカク腰振り

// 
//	CreateTextureEX("イベント1", 10000, Center, @0, "cg/ev/yru2050ユージローミヅハと獣姦c.jpg");
//	Fade("イベント1", 500, 1000, null, true);
//	CreateSE("SE01","se擬音_ギャグ_腰振り");
//	MusicStart("SE01",0,700,0,1000,null,false);

//	St("C",700, @0,@0,"buユージローa_通常_ero");
//	FadeSt("C",200,true);

//	CreateSE("SE01","se擬音_ギャグ_腰振り");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 500, null, true);
//	Wait(100);
//	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 500, null, true);


	CreateMask("ゆる窓", 0, Center, Middle, "cg/yur/yurIF背景マスク.png", false);
	SetAlias("ゆる窓","ゆる窓");

	CreateTextureEX("ゆる枠", 1540, Center, Middle, "cg/yur/yurIF枠.png");
	CreateTextureEX("ゆる窓/ゆる背景", 1510, Center, Middle, "cg/yur/yurIF背景03.png");
	CreateTextureEX("ゆる窓/ゆる絵１", 1520, Center, Middle, "cg/yur/yurユージローaカクカクエコバックa.png");
	CreateTextureEX("ゆる窓/ゆる絵２", 1530, Center, Middle, "cg/yur/yurユージローaカクカクエコバックb.png");
	Move("ゆる*", 0, @40, @0, null, true);
	Move("ゆる窓/ゆる*", 0, @40, @0, null, true);

	Move("ゆる*", 200, @-40, @0, Dxl1, false);
	Move("ゆる窓/ゆる*", 200, @-40, @0, Dxl1, false);
	Fade("ゆる枠",  200, 1000, null, false);
	Fade("@ゆる窓/ゆる背景",  200, 1000, null, false);
	Fade("@ゆる窓/ゆる絵１",  200, 1000, null, true);
	Fade("ゆる窓/ゆる絵２", 0, 1000, null, true);

//	Fade("ゆる窓", 300, 1000, null, true);


//	Shake("@ゆる窓*", 200, 5, 0, 5, 0, 100, null, false);
	Fade("ゆる窓/ゆる絵１", 0, 1000, null, true);
	CreateSE("SE01","se擬音_ギャグ_腰振り");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("ゆる窓/ゆる絵１", 0, 0, Dxl1, true);
	Fade("ゆる窓/ゆる絵２", 0, 1000, Dxl1, true);
	Wait(100);
	Fade("ゆる窓/ゆる絵１", 0, 1000, null, true);
	Fade("ゆる窓/ゆる絵２", 0, 0, null, true);
	Wait(100);
	Fade("ゆる窓/ゆる絵１", 0, 0, null, true);
	Fade("ゆる窓/ゆる絵２", 0, 1000, null, true);
	Wait(500);

	CreateSE("SE01","se擬音_ギャグ_腰振り");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("ゆる窓/ゆる絵１", 0, 1000, null, true);
	Fade("ゆる窓/ゆる絵２", 0, 0, null, true);
	Wait(100);
	Fade("ゆる窓/ゆる絵１", 0, 0, null, true);
	Fade("ゆる窓/ゆる絵２", 0, 1000, null, true);
	Wait(100);
	Fade("ゆる窓/ゆる絵１", 0, 1000, null, true);
	Fade("ゆる窓/ゆる絵２", 0, 0, null, true);
	Wait(100);
	Fade("ゆる窓/ゆる絵１", 0, 0, null, true);
	Fade("ゆる窓/ゆる絵２", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/000100640ujr">
「はっはっはっはっは！！」

{
//	DeleteAllSt(200,false);
//	St("ML",700, @0,@0,"bu恵那_通常_sigh");
//	FadeSt("ML",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100650fje">
「な？　なに、ユージロー？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2108);}


	TextBoxDelete(150);

//	Fade("イベント1", 500, 0, null, true);
//	Delete("イベント1");

// 消去
	Move("ゆる窓", 200, @-40, @0, Dxl1, false);
	Move("ゆる枠", 200, @-40, @0, Dxl1, false);
	Move("ゆる窓/ゆる*", 200, @-40, @0, Dxl1, false);

	Fade("ゆる枠",  200, 0, null, false);
	Fade("ゆる窓/ゆる背景",  200, 0, null, false);
	Fade("ゆる窓/ゆる絵２",  200, 0, null, true);
	Fade("ゆる窓/ゆる絵１", 0, 1000, null, true);
	Delete("@ゆる*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100660fje">
「突然、バッグ相手に――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100670ktt">
「女の子に見えてるみたいだ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100680fje">
「は……？　どういう意味？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100690ktt">
「わかんないのか？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100700ktt">
「幻が、見えるのさ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100710fje">
「幻が？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100720ktt">
「オヤジほどではないけれど、得意でね」

//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100730ktt">
「君には、どんな幻が見えるのかな……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100740fje">
「なに、馬鹿なこと言ってるの？
　幻なんて見えるはず――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/aa21/000100750ktt">
「聞こえるだろう」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100760fje">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：以下、幻覚

	CreateSE("SE01","se動物_タヌキ_化ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	CreateColorEXadd("絵色", 510, "#FFFFFF");
	Fade("絵色", 500, 1000, null, true);

	SoundPlay("@xbgm24",0,450,true);

//	St("C",700, @0,@0,"buミヅハ_ダウナー_cry");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aa21/000100770mzh">
「ひぐっ、う……うう……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aa21/000100780mzh">
「う……うううう……う……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aa21/000100790mzh">
「うわああああああん…………」

{
	DeleteAllSt(200,false);
	FadeDelete("絵色", 500, null, true);
	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100800fje">
「泣き声……？」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100810fje">
「子供の、泣き声が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆演出指定：下からどこからともなく水面がせり上がってくる


	CreateSE("SE01","se環境_水流_l");
	MusicStart("SE01",0,700,0,1000,null,true);


	CreateColorEXadd("絵色", 1500, "#00FFFF");
	Fade("絵色", 2000, 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100820fje">
「な……水！？」

{
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100830fje">
「なんでこんなところに――」

{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100840fje">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2109);}


	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	Wait(16);

	CreateTextureSPover("絵水中効果妄想", 30, Center, Middle, "cg/ef/ef水中絵a.jpg");
	Zoom("絵水中効果妄想", 0, 1500, 1500, null, true);

	CreateTextureEX("絵水中効果", 1000, Center, Middle, "cg/ef/ef水中絵a.jpg");
	Zoom("絵水中効果", 0, 1500, 1500, null, true);

	DrawEffect("絵水中効果*", 0, "LowWave", 60, 60, null);

	CreateTextureEX("絵背景", 11, Center, 0, "cg/bg/bg1704100銭形公園_トイレ個室_通常.jpg");
	Fade("絵背景", 0, 1000, null, true);

	Delete("絵色");
	DeleteAllSt(0,true);
	DrawDelete("絵板写", 2000, 100, DxlAuto, "wave_01_00_0", true);

//	OnBG(10,"bg1704100銭形公園_トイレ個室_通常");
//	FadeBG(200,true);

//あきゅん「修正指示：以降は恵那の立ち絵は出さない」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100850fje">
「私、いつの間に個室に――」

{
//	St("C",700, @0,@0,"bu恵那_通常_sigh");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100860fje">
「っていうか、これコレは――」

{
//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100870fje">
「怪談『みーちゃんのひとりあそび』！？」

{
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100880fje">
「すると私はこのまま……水に溺れて……！？」

//◆ＳＥ：扉をドンドン叩く・定期的にガタガタ揺らしたりする

{
	CreateSE("SE02","se擬音_トイレガタガタ03");
	CreateSE("SE03","se擬音_トイレガタガタ01_l");

	MusicStart("SE02",0,1400,0,1000,null,false);
	MusicStart("SE03",0,1100,0,1000,null,false);
	BGPlainShake(20, 500, 0, 8, 0, 0, 1000, Dxl1, true);

//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100890fje">
「あ……開けて！　開けてよ、ねえ！」

{
//	St("C",700, @0,@0,"bu恵那_通常_sigh");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100900fje">
「嫌、なんで？
　なんで私、こんなところで――」

{
//	St("C",700, @0,@0,"bu恵那_哀愁_cry");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100910fje">
「たすけ――助けて――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE03","se擬音_トイレガタガタ01_l");
	MusicStart("SE03",0,1100,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100920fje">
「誰か……誰か――んぼ――」

//◆音声指示：息を吸う
{
//	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100930fje">
「んが、ん……すぅぅ――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：銭形公園_トイレ個室_水没
	OnBG(10,"bg1704200銭形公園_トイレ個室_水没");
	FadeBG(0,true);
	Fade("絵背景", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]

//◆演出指定：トイレ水没・水中アクション

{
//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100940fje">
「ん――――ん――――――――」

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	Fade("絵水中効果", 3000, 500, null, false);

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100950fje">
「ん……んブク……ん……ん、ん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【富士見恵那】
[text0230]
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100960fje">
「んぶはっ、んぶぐ……ぶはっ！
　ぶはっ！　ぶは……」

{
	DeleteAllSt(500,true);

//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100970fje">
「ぶはっ！　ぶはっ、ぶ……ぶはっはっ…………」

{
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/000100980fje">
「あぶ……ぶ…………ん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵水中効果", 2000, 800, null, true);
	EndScene();
}
//next "恵那" "aa2110恵那.nss"
