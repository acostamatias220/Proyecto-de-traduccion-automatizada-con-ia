
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2208千秋_恵那_ノーコ.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "b2209千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "b2209千秋_恵那.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "b2209ノーコ.nss";
	}else{
		$GameName = "b2209千秋_恵那.nss";
	}

}

scene b2208千秋_恵那_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="540">
////////////header////////////
//file name "b2208千秋_恵那_ノーコ.nss"
//title ""
//previous "b2206ノーコ.nss"
//previous "b2200千秋_恵那.nss"

////////////footer////////////
//next "千秋" "b2209千秋_恵那.nss"
//next "恵那" "b2209千秋_恵那.nss"
//next "ノーコ" "b2209ノーコ.nss"


//◆場所：秋葉原_ガード下_崩壊

	PrintBG("上背景", 20000);

	if($PreGameName=="b2206ノーコ.nss"){

	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -200, -400, "cg/bg/l/bg0102300秋葉原_ガード下_破壊_l.jpg");
	FadeDelete("上背景", 500, null, true);

	CreateSE("SE00","seガヤ_渋滞_l");
	MusicStart("SE00",2000,300,0,800,null,true);

	}else{

	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);

	SceneOut(20010, 0, "blind_01_00_0");

	CreateTextureSP("絵背景100", 100, -200, -400, "cg/bg/l/bg0102300秋葉原_ガード下_破壊_l.jpg");

	FadeDelete("上背景", 0, null, true);
	SceneIn(1000, "blind_01_00_1");

	CreateSE("SE00","seメカ_車_トラックエンジン_l");
	MusicStart("SE00",2000,300,0,1000,null,true);

	}

{	ClockPass(2208);}

	CreatePlainSP("絵板写", 5000);
	Wait(16);

//右窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 658, 256, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵演背景", 1520, 0, 0, "cg/bg/bg0102300秋葉原_ガード下_破壊.jpg");
	Zoom("絵窓/絵演背景", 0, 1500, 1500, Dxl2, true);
	SetShade("絵窓/絵演背景", heavy);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/bu恵那_哀愁_worry.png");
	Move("絵窓/絵演立*", 0, @272, @60, null, true); //e

	Wait(16);
	Delete("絵板写");

//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "X", 200, 1000, Dxl2, true);

//	St("C",700, @0,@0,"bu恵那_哀愁_worry");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100010fje">
「なに、これ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//収納
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
	Delete("@絵窓*");

	CreatePlainSP("絵板写", 5000);
	Wait(16);

//左窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 110, 256, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵演背景", 1520, 0, 0, "cg/bg/bg0102300秋葉原_ガード下_破壊.jpg");
	Zoom("絵窓/絵演背景", 0, 1500, 1500, Dxl2, true);
	SetShade("絵窓/絵演背景", heavy);


//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/bu村崎_通常_fear.png");
	Move("絵窓/絵演立*", 0, @-272, @40, null, true);
	Fade("絵窓/絵演立絵", 0, 1000, null, true);

	Wait(16);
	Delete("絵板写");

//動作

	WindowAXLZoom("絵窓", "X", 200, 1000, null, true);

//	St("C",700, @0,@0,"bu村崎_通常_fear");
//	FadeSt("C",200,true);






//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b22/080100020msi">
「地震で壊れた？
　いや、でも地震の後も無事だったような……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
//収納
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
	Delete("@絵窓*");

	CreatePlainSP("絵板写", 5000);
	Wait(16);

//右窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 658, 256, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵演背景", 1520, 0, 0, "cg/bg/bg0102300秋葉原_ガード下_破壊.jpg");
	Zoom("絵窓/絵演背景", 0, 1500, 1500, Dxl2, true);
	SetShade("絵窓/絵演背景", heavy);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/bu恵那_哀愁_worry.png");
	CreateTextureEX("絵窓/絵演立絵2", 1530, center, middle, "cg/bu/bu恵那_一休_sigh.png");
	Move("絵窓/絵演立*", 0, @272, @60, null, true); //e

	Wait(16);
	Delete("絵板写");

//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "X", 200, 1000, Dxl2, true);

//	St("C",700, @0,@0,"bu恵那_通常_sigh");
//	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100030fje">
「あのノーコさんとか言う人の仕業？」

{

//タチ絵スイッチ
	Fade("絵窓/絵演立絵", 300, 0, null, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, false);

//	St("C",700, @0,@0,"bu恵那_一休_sigh");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100040fje">
「いや、まさか――」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100050fje">
「そんなはず、ないわよね……」

// ここまで立ち位置は b2200千秋_恵那.nss(11/15時点未調整？) に合わせる
//★ wam井野 前のファイルにあわせて調整しました。10/11/16


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//収納
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
	Delete("@絵窓*");

	TextBoxDelete(150);

//※北原メモ：→演出案です。蝙蝠みたいにフロントガラスを逆さに覗き込んでくる感じだとインパクトあるよね～

	SetVolumeEX("@S*", 200, 0, NULL);

	DeleteSt("C",200,true);
	St("C",700, @800,@-330,"buノーコa_通常_normal");
	Zoom("@StNameC/*", 0, 2000, 2000, null, true);
	Request("@StNameC/C*", Smoothing);
	Rotate("@StNameC/*", 0, @0, @0, -110, null, true);

	Move("@StNameC/*", 700, @-600, @150, Dxl1, false);

	FadeSt("C",700,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100060nko">
「わたしがやった」

　車の横にノーコが近づくと、ナイフを一閃。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	St("C",700, @50,@0,"buノーコa_カッター_angry");
	Move("@StNameC/*", 200, @-50, @0, Axl2, false);
	FadeSt("C",200,true);

//	CreateColorEXadd("フラッシュ", 10000, "WHITE");
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/bg/bg0102300秋葉原_ガード下_破壊.jpg");
	CreateSE("SE11","se戦闘_切断04");
	MusicStart("SE11",0,700,0,1000,null,false);
//	CreateSE("SE03","se戦闘_風切り音05");
//	MusicStart("SE03",0,700,0,1000,null,false);
//	Fade("フラッシュ", 100, 1000, null, true);
	DeleteAllSt(0,false);
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Shake("絵背景200", 1000, 5, 5, 0, 0, 500, null, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);


//	Fade("フラッシュ", 500, 0, null, true);

	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);
	CreateSE("SE03","se戦闘_破壊01");
	MusicStart("SE03",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　ドアが外れ、落下する。

{	Delete("絵背景");
	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100070fje">
「きゃっ！」

{	DeleteSt("C",200,true);
	SoundPlay("@xbgm09",0,450,true);

	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100080nko">
「じゃま」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100090nko">
「でて」

{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"bu千秋_通常_worry");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 5, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100100kit">
「ん？　ぬわわわわ……」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100110kit">
「ちょ……おい……なんだ……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100120nko">
「アザナエルは？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100130kit">
「え……？　あ、ああ。さっきの……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100140nko">
「アザナエルは？」


//◆演出指示：ここで一気に目が覚めて
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100150kit">
「ってはいいいいいいお！？
　なんでカッターとか構えて――」

{
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100160nko">
「アザナエルは？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100170kit">
「あ、あ、ああ。アレね？　アレは確か――」


{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100180kit">
「…………」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100190kit">
「ええと、どこやったんだったかなぁ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100200nko">
「とぼけないで」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100210nko">
「さいごにつかったのは、あなた」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 5, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100220kit">
「ああ、そういえば双六に回収されて――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100230nko">
「うそつき」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);


//◆演出指示：シャキーン！　刃が伸びる

	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/img/imgカッター刃元a.jpg");
	CreateTextureEX("絵背景２", 2000, 0, 0, "cg/img/imgカッター刃元b.jpg");
	CreateColorEX("フラッシュ白", 15000, "WHITE");

	Fade("絵背景１", 300, 1000, null, true);

	Fade("フラッシュ白",0,1000,null,true);
	DeleteAllSt(0,false);
	Fade("絵背景２", 0, 1000, null, true);
	Fade("フラッシュ白",500,0,null,true);

	CreateSE("SE01","se戦闘_刃物01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("絵色１", 10000, "#000000");
	Fade("絵色１", 200, 1000, null, true);
	Delete("絵背景１");
	Delete("絵背景２");
	Wait(300);
	Fade("絵色１", 500, 0, null, true);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100240kit">
「ひえっ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100250nko">
「すごろくにきいた」

{	St("MR",700, @0,@0,"buノーコa_カッター_rage");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100260nko">
「あなたはにせものとすりかえた」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 3, 0, 0, 0, 500, null, false);}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100270kit">
「ぐ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100280nko">
「アザナエルは、どこに？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100290kit">
「さ、さあな。どこに――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_smile");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100300nko">
「しにたい？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shy");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100310kit">
「ひえええええッ！！
　し、死ぬのはいやぁっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100320nko">
「だったら――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100330kit">
「でも――でも――！」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100340kit">
「教えるのも、できない――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100350nko">
「なぜ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100360kit">
「だって――！」

{
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100370fje">
「ここよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100380nko">
「…………？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100390kit">
「は？　なに言って――」

{	St("ML",700, @0,@0,"bu千秋_驚天_shy");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100400kit">
「……あ！　オレのアザナエルがない！」

{	St("ML",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/080100410kit">
「盗ったな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100420fje">
「ごめん」

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100430fje">
「ノーコさん！　アザナエルは、ここに置くわ」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100440fje">
「だから、離れて」


{	Move("@StNameC/C*", 500, @0, @50, AxlDxl, true);
	Wait(500);
	Move("@StNameC/C*", 500, @0, @-50, AxlDxl, true);}
　恵那は歩道に、アザナエルを置いた。

{	Move("@StNameC/C*", 2000, @-100, @0, AxlDxl, true);
	DeleteSt("C",200,true);}
　ゆっくりと、後ずさる。


{	DeleteAllSt(200,false);
	St("C",700, @-50,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100450nko">
「…………」

　ノーコは歩調を合わせるように千秋から遠ざかり、アザナエルへと近づく。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＳＥ：手に取る


	Move("@StNameC/C*", 2000, @100, @0, AxlDxl, true);
	Wait(500);
	Move("@StNameC/C*", 500, @0, @50, AxlDxl, true);
	Wait(500);
	DeleteAllSt(200,false);
//	Move("@StNameC/C*", 500, @0, @-50, AxlDxl, true);

	CreateSE("SE01","se動作_はたく01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("MR",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100460nko">
「ほんもの」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100470fje">
「ねえ、あなた！」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100480fje">
「もしかして――
　アザナエルで人の気持ちを変えようとしてる？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100490nko">
「あなたにはかんけいない」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100500fje">
「そうしてまで気を惹いて、あなたは嬉しい？」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100510fje">
「本当に、幸せ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100520nko">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/080100530fje">
「アザナエルで愛を勝ち取っても、偽物――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/080100540nko">
「あなたに、さしずされるいわれはない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆ＳＥ：風切り音

//◆演出指示：重力を無視するように空へ。

	CreateSE("SE02","se戦闘_風切り音03");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 300, @0, @-50, Axl1, false);
	DeleteAllSt(300,true);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");


	Move("絵背景100", 1000, @0, 0, null, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(1000);


	EndScene();
}
