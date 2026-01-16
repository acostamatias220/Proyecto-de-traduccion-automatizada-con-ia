
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene a2040似鳥_ノーコ.nss_MAIN
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
	$GameName = "a2050カゴメ.nss";
}

scene a2040似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1540">
////////////header////////////
//file name "a2040似鳥_ノーコ.nss"
//title "もしも命があったら"
//previous "a2020似鳥_ノーコ.nss"

////////////footer////////////
//next "似鳥" "a2050カゴメ.nss"
//next "ノーコ" "a2050カゴメ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);


{	ClockPass(2040);}

//◆場所：籠_正面_ブラックライト
	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/l/bg0801200籠_正面_ブラックライト_l.jpg");

	DrawDelete("上背景", 150, 5, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("R",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200010nki">
「なんだ……ここは……？」

{	St("R",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200020nki">
「なんか、気味悪い……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	TextBoxDelete(150);

	Move("絵演背景", 4000, @0, -100, DxlAuto, true);

	Move("絵演背景", 20000, -512, -288, null, false);
	Zoom("絵演背景", 20000, 500, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
　床に転がるブラックライトが、壁に巨大な文字を浮かび上がらせている。

{	FadeDelete("絵演背景", 1000, null, true);
	St("R",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200030nki">
「<RUBY text="アザナエル">ＡＸＡＮＡＥＬ</RUBY>……？」

{	DeleteAllSt(200,false);
	SoundPlay("@xbgm21",0,450,true);
	St("L",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200040nko">
「けんじゅうのなまえ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	SoundPlay("@xbgm22",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("L",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200050nko">
「さあ。あいつを――」

{	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,700,0,1000,null,false);}
　促されるがまま、似鳥は拳銃を構える。

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200060msi">
「か……勘弁してくださぁい！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200070msi">
「命……どうか、命だけはぁッ！
　絶対！　絶対なにも言わないんで！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200080nko">
「しんようしないで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2041);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200090nki">
「信用できない」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_cry");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200100msi">
「そんなこと言わないで！　お願いします！
　私には妻もいるんです！　娘も！」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200110nko">
「なまえをきいて」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200120nki">
「名前は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_pinch");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200130msi">
「名前は……あ、アッキー――アキナです」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200140nko">
「かんじ」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200150nki">
「漢字は？」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200160msi">
「え……？」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200170nko">
「とし。せいねんがっぴ。がくねん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200180nki">
「今何歳？　何年生まれ？　何年生？」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200190msi">
「え、あの、それは――」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_sad");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200200nko">
「うそつき」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200210nki">
「嘘ついただろ」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_cry");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200220msi">
「す、すいませんでしたッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2042);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200230nko">
「いきるかちがない。らくにして」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200240nki">
「生きる価値――」

{	St("ML",700, @20,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200250nki">
「なあ、おまえ。名前は？」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_cry");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200260msi">
「村崎です！　村崎勇！」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200270nki">
「おまえ、もし、生き延びたらどうする？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200280msi">
「え？」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200290nki">
「もう双六はいないだろ？
　もし、それで借金が見逃されたら、なにがしたい？」

{	St("ML",700, @20,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200300nki">
「何かを変えるか？　それとも――」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_pinch");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200310msi">
「変えます変えます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2043);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200320nki">
「なにを変える？」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200330msi">
「なにをって、そりゃ――」

{	St("MR",700, @80,@0,"bu村崎_通常_pinch");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200340msi">
「たくさん金を儲けて、美味いものたくさん食って、可愛い嫁さん見つけて、いい家に住んで……」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_sad");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200350nko">
「くだらない」

{	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200360nko">
「そもそも、むり」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200370nki">
「それから？」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200380msi">
「それからって……？」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200390nki">
「それで終わりか？」

//◆ＳＥ：銃を構える音
{
	DeleteAllSt(200,false);
	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @80,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 3, 0, 0, 0, 500, null, false);
	}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200400msi">
「そそそそ、そんな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{
	St("MR",700, @80,@0,"bu村崎_通常_cry");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200410msi">
「いやだ！　いやだあ……！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200420msi">
「こんなところで死ぬなんて、いやだよぉ……」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200430msi">
「私には……夢が……夢があったのに……！」

{	SetVolumeEX("@xbgm*", 1500, 0, null);
	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200440nki">
「夢？」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_cry");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200450msi">
「あったんです！ 会社をでかくしたいって、夢が」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2044);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_幽霊_sad");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200460nko">
「くだらない」

{
	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200470nki">
「あは……はは……」

{
	SoundPlay("@xbgm26",0,450,true);
	St("ML",700, @20,@0,"bu似鳥_通常_pride");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200480nki">
「ははは、ははははははは！」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_shock");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200490nko">
「にとり……？」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_pride");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200500nki">
「ははは、そうか、夢か！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]

{
	St("ML",700, @20,@0,"bu似鳥_通常_angry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200510nki">
「夢に破れて、そんななりか！」

{	St("ML",700, @20,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200520nki">
「ゴミクズ、だな」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200530msi">
「や……やめて下さい……」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200540nko">
「そんなものがあるから、くるしむ」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_pride");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200550nki">
「消えちまった方が、楽だろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200560nko">
「そう。きえてしまったほうが――」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200570nki">
「夢なんて最初から持たず――」

//◆音声指示：似鳥涙目。自分に向けた言葉のように
{	St("ML",700, @20,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200580nki">
「死んでしまえば……よかったんだ……」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200590nko">
「にとり……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2045);}

	SetVolumeEX("@xbgm*", 1500, 0, null);
	DeleteAllSt(200,false);
//	TextBoxDelete(150);
// わざと立ち絵表示していません


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆音声指示：遠くから
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200600ksr">
「ちゃんちゃらおかしいな」

{	St("ML",700, @20,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200610nki">
「え……？」

{	St("ML",700, @20,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200620nki">
「な……今の、声って……？」

{	CreateSE("SE01","se動作_歩く02_l");
	MusicStart("SE01",0,1100,0,700,null,true);
	St("ML",700, @20,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200630nki">
「ウソだろ……ウソだろウソだろ……！？」

{	St("ML",700, @20,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200640nki">
「だって、おまえ、死んだんじゃ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("ML",700, @20,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200650nki">
「も、もしかして……」

{	St("ML",700, @20,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200660nki">
「幽霊――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);
	SetVolumeEX("SE*", 200, 0, null);
	SoundPlay("@xbgm31",0,450,true);

	CreatePlainSP("絵板写", 5000);

//窓準備
//	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
//	CreateAXLWindowEX("絵窓", 1500, 0, 96, 1024, 400, false);
	CreateAXLWindowEX("絵窓", "Y", 1600, 32, 400, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
//	Zoom("絵窓", 0, 1000, 0, null, true);
//	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSP("絵窓/絵演背景", 1520, Center, -365, "cg/bg/m/bg0701100地下_通路_通常_m.jpg");
//	CreateColorSP("絵窓/絵演背景", 1520, "#FFFFFF");

//キャラ準備
	CreateTextureSP("絵窓/絵演立絵", 1530, Center, -741, "cg/st/l/st双六a_通常_pride_l.png");
	Move("絵窓/絵演立絵", 0, @0, @200, null, true);
	CreateTextureEX("絵窓/絵演立絵2", 1540, center, -741, "cg/st/l/st双六a_通常_shout_l.png");
	Move("絵窓/絵演立絵2", 0, @0, @200, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

	Wait(16);
	Delete("絵板写");

//動作
	Move("絵窓/絵演背景", 600, @0, 0, DxlAuto, false);
	Move("絵窓/絵演立絵*", 600, @0, 10, DxlAuto, false);
	WindowAXLZoom("絵窓", "Y", 400, 1000, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200670ksr">
「ところがどっこい――」

{
	Move("絵窓/絵演背景", 0, @0, 0, null, true);
	Move("絵窓/絵演立絵*", 0, @0, 10, null, true);
	Shake("絵窓/絵演立絵*", 500, 15, 0, 0, 0, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 200, @0, 266, Dxl2, false);
	Zoom("絵窓/絵演立絵*", 200, 1500, 1500, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

	}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200680ksr">
「生きてんだよッ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200690nko">
「うそ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2046);}

	TextBoxDelete(150);

//◆ＳＥ：ヤクザキック
{
	DeleteAllSt(200,true);
	CreateSE("SE01","se戦闘_打撃音04");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 1600, "#FFFFFF");
	Wait(50);
	Delete("絵窓/*");
	Delete("@絵窓*");
	Delete("絵色白");

//	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);
	BGPlainShake(20, 300, 0, 8, 0, 0, 1000, Dxl1, false);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu似鳥_通常_pain");
	Move("@StNameC/C*", 300, @-80, @0, Dxl2, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200700nki">
「ふがっ！！」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_shock");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200710nko">
「にとり！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：転がるアザナエル手に取る


	DeleteAllSt(200,false);
	CreateSE("SE01","se銃_落とす01");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitPlay("SE01",null);
	Wait(200);
	CreateTextureEX("絵背景11", 11, Center, Middle, "cg/bg/m/bg0801200籠_正面_ブラックライト_m.jpg");
	Fade("絵背景11", 500, 1000, null, true);


	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	WaitKey($SETime);
	Wait(200);


//◆ＳＥ：シリンダ回転する音

	CreateSE("SE01","se銃_シリンダー回転");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	WaitKey($SETime);

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200720ksr">
「いただき」



{
	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 0, null, false);
	St("ML",700, @20,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200730nki">
「河原屋……双六……！」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_shock");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200740nko">
「なぜ……？」

{	DeleteAllSt(200,false);
	St("MR",700, @80,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200750msi">
「南無阿弥陀仏……南無阿弥陀仏……」

{
	Fade("絵背景11", 200, 1000, null, false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200760ksr">
「バケモノ扱いすんなよ。オレは生きてる」

{	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 0, null, true);
	St("ML",700, @20,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200770nki">
「でも……なんで……？」

{	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 1000, null, false);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200780ksr">
「その弾、誰が用意した？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 0, null, false);
	CreateTextureEX("イベント1", 10000, Center, Middle, "cg/obj/objアザナエル弾丸.png");
	Fade("イベント1", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{
//	DeleteAllSt(200,false);
//	St("ML",700, @20,@0,"bu似鳥_通常_worry");
//	FadeSt("ML",200,true);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200790nki">
「は……？」

{
	CreatePlainSP("絵板写", 10010);
	Wait(16);
	Fade("絵背景11", 0, 1000, null, false);
	Fade("イベント1", 0, 0, null, true);
	Delete("イベント1");
	FadeDelete("絵板写", 500, null, true);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200800ksr">
「空薬莢と血糊。見え透いた手だろ」

{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200810ksr">
「ってかな、あそこで実弾入った銃、手渡すと思うか？」

{
	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 0, null, false);
	St("ML",700, @20,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200820nki">
「じゃ、なんであんなことを？」

{	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 1000, null, false);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200830ksr">
「ちょっとした実験さ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200840ksr">
「本気のてめえが見たかったんだよ」

{	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 0, null, false);
	St("L",700, @-10,@0,"buノーコa_幽霊_sad");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200850nko">
「さいあく……」

{	St2("L",700, @-10,@0,"buノーコa_通常_mad","cg2/",".png");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200860nko">
「ほんとうに、さいあく！」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200870nki">
「でも、それじゃ……」

{	St("ML",700, @20,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400200880nki">
「オレはまだ、誰も殺してない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2047);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 1000, null, false);
	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200890ksr">
「その通り」

{	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 0, null, false);
	St("L",700, @-10,@0,"buノーコa_通常_sad");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400200900nko">
「それもさいあく」

{	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 1000, null, false);
	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200910ksr">
「けどな」

{	St("C",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200920ksr">
「今度の弾は、本物だぜ」

{
	DeleteAllSt(200,false);
	CreateSE("SE01","se銃_シリンダー回転");
	MusicStart("SE01",0,700,0,1000,null,false);
}

　双六はアザナエルの弾丸を確認し、シリンダをルーレットのように回すと――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SetVolumeEX("@xbgm*", 1500, 0, null);

	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200930ksr">
「ほらよ」

{	CreateSE("SE01","se戦闘_風切り音08");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 0, null, false);
	St("MR",700, @80,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);
	Shake("@StNameC/C*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200940msi">
「うひゃあ！」

{	CreateSE("SE01","se動作_銃渡す");
	MusicStart("SE01",0,700,0,1000,null,false);}
　村崎に放り投げる。

{	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 1000, null, false);
	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200950ksr">
「村崎勇」

{	DeleteAllSt(200,false);
	St("ML",700, @50,@0,"bu村崎_通常_fear");
	Move("@StNameML/ML*", 300, @-50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200960msi">
「は、はいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200970ksr">
「おまえ、双一親分に借金あったよな？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400200980msi">
「え、あの、でも、あのブルマーと下着で――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_shout");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400200990ksr">
「ふざけんな死ねてめえいくら借金あんだよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201000msi">
「すいません……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201010ksr">
「で、返す気あるわけ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	St("ML",700, @0,@0,"bu村崎_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201020msi">
「あります！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201030ksr">
「アテはあるわけ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201040msi">
「ないです……」

{
//	SoundPlay("@xbgm04",0,450,true);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201050ksr">
「とまあ、そんなてめえにビッグ・ニュース」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201060ksr">
「双一親分から、電話だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 0, 3, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201070msi">
「そ、そそそそそ――双一親分！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201080ksr">
「ホラっ！！」

　両手でアザナエルを抱える村崎のため、双六が携帯電話を耳に当ててやる。

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201090msi">
「ひ……ひ……ひ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_shout");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201100ksr">
「……おいコラ！　手がだりぃんだよ！
　ってか双一親分を、待たせんのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2048);}

//	TextBoxDelete(150);


	St("ML",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201110msi">
「い、いえっ！　そ、そういうわけでは！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201120msi">
「はいっ！　もしもし！　はいっ！
　はいっ！　はいっ！」

//◆音声指示：ここで「似鳥を殺せ」と命令が下る
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201130msi">
「はいっ！　はいっ！　はいっ！
　え、えええええっ！？」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201140msi">
「いえ、あの、そういうわけでは……
　はいっ！　はいっ！　はいいいいっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	SetVolumeEX("@xbgm*", 1500, 0, null);

{	DeleteAllSt(200,false);
	Fade("絵背景11", 200, 0, null, false);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400201150nko">
「いまのうち、にげましょう」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400201160nki">
「でも……」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400201170nko">
「はやくにげないと――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"st双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201180ksr">
「おい似鳥ィ！」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400201190nki">
「はいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("MR",700, @0,@0,"st双六a_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201200ksr">
「逃げんなよォ」

{	St("ML",700, @20,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400201210nki">
「…………はい」

{	DeleteAllSt(200,false);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400201220nko">
「……あいつ」

{	St2("L",700, @-10,@0,"buノーコa_通常_mad","cg2/",".png");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400201230nko">
「いつか、ころす」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"st村崎_通常_fear");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201240msi">
「わわわわわ、わっかりましたああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"st双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201250ksr">
「ウシ！」

//◆ＳＥ：ピッ！
{	CreateSE("SE01","seメカ_携帯_切れる");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@xbgm*", 2000, 0, null);}

{	St("MR",700, @0,@0,"st双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201260ksr">
「んじゃま、早速――」

{	St("MR",700, @0,@0,"st双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201270ksr">
「どうぞー」

{	DeleteAllSt(200,false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201280msi">
「ご、ごごごごごご……ごめんなさいっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateAXLWindowEX("絵窓", "X",1600, 128,768, false);
	WindowAXLZoom("絵窓", "X",0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#FF1144");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	Zoom("絵窓/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("絵窓/キャラ", 1540, @0, InBottom, "cg/bu/bu村崎_通常_fear.png");
	SetAlias("絵窓/キャラ","絵窓/キャラ");
	Move("絵窓/キャラ", 0, 288, @96, null, true);
	WindowAXLZoom("絵窓", "X",300, 1000, Dxl2, true);

	SoundPlay("@xbgm06",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201290msi">
「わ、わたし、あの、これ、撃つと！
　撃つと、借金がチャラに――なる、なるって！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201300msi">
「あの、あなたは河原屋組に逆らったから！
　だから、復讐されるべきだって！　そういう風に！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵窓", "X",300, 0, Axl2, true);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	Move("@StNameC/C*", 300, @100, @0, Dxl2, false);
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0293]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400201310nko">
「――だめ」

{	St("L",700, @-10,@0,"buノーコa_カッター_angry");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400201320nko">
「うったら、ころす」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2049);}

//	TextBoxDelete(150);


{	St("L",700, @-10,@0,"buノーコa_カッター_pinch");
	FadeSt("L",200,false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400201330nko">
「なんどでも、ころす」

{	St("MR",700, @0,@0,"st双六a_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201340ksr">
「おい……さっさとしてくれねぇか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵窓", "X",300, 1000, Dxl2, true);
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0303]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201350msi">
「ああああ！　撃つ！　撃ちます！
　撃たないと……撃たないと……ううっ！！」

{
//	St("MR",700, @80,@0,"bu村崎_通常_fear");
//	FadeSt("MR",200,true);
	}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201360msi">
「でも……殺す？
　殺す……なんて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{
//	DeleteAllSt(200,false);
	WindowAXLZoom("絵窓", "X",300, 0, Axl2, true);
	St("L",700, @-10,@0,"buノーコa_通常_normal");
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400201370nko">
「そう、ころすなんて、だめ。やめなさい」

{	St("L",700, @-10,@0,"buノーコa_通常_rage");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400201380nko">
「にとりも、にとりもなにか、いって！」

{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_angry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400201390nki">
「そうだ、やめた方がいい！
　どうせ警察に捕まって――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"st双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201400ksr">
「大丈夫。この地下で、しかもふたりしかいねぇんだ。
　足がつく心配なんてないぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	DeleteAllSt(200,false);
	St("ML",700, @20,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400201410nki">
「だ、騙されるな！
　こいつ、罪をなすりつける気――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"st双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201420ksr">
「騙されるな？　そいつはこっちのセリフだろ」

{	St("MR",700, @0,@0,"st双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201430ksr">
「コイツはな、さっきおまえを殺そうとしたんだぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	WindowAXLZoom("絵窓", "X",300, 1000, Dxl2, true);
//	St("MR",700, @80,@0,"bu村崎_通常_fear");
//	FadeSt("MR",200,true);
	}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0325a]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201440msi">
「でも……それは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵窓", "X",300, 0, Axl2, true);
	St("MR",700, @0,@0,"st双六a_通常_shout");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0325b]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201450ksr">
「ああっ、面倒クセぇ！！」

{	St("MR",700, @0,@0,"st双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/400201460ksr">
「だったらもう、オレがてめぇらまとめて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：ハンマーコック

	CreateSE("SE01","se銃_撃鉄起こす");
	CreatePlainSP("絵板写", 5000);
	Wait(16);

	CreateAXLWindowEX("絵窓", "X",1600, 128,768, false);
	WindowAXLZoom("絵窓", "X",0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#FF1144");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	Zoom("絵窓/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("絵窓/キャラ", 1540, @0, InBottom, "cg/bu/bu村崎_通常_fear.png");
	SetAlias("絵窓/キャラ","絵窓/キャラ");
	Move("絵窓/キャラ", 0, 288, @96, null, true);
	Wait(32);
	Delete("絵板写");

	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
	WindowAXLZoom("絵窓", "X",300, 1000, Dxl2, true);

	Shake("絵窓/キャラ", 300, 0, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201470msi">
「ひえぇええっ！　や、やりますやりますっ！
　やりますからっ！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201480msi">
「あの、恨まないでくださいね！
　お願いします！　お願いします！　お願いします！」

{
//	St("MR",700, @80,@0,"bu村崎_通常_fear");
//	FadeSt("MR",200,true);
	}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201490msi">
「私……
　こんなところで、死ぬわけにはいかないんですっ！！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201500msi">
「貫太君が帰ってくるころに、私は……」

{
//	St("MR",700, @80,@0,"bu村崎_通常_fear");
//	FadeSt("MR",200,true);
	}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/400201510msi">
「私は、今の店を、ちゃんと！
　恥ずかしくないモノにしてないと駄目なんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{
	WindowAXLZoom("絵窓", "X",300, 0, Axl2, true);
	St("ML",700, @20,@0,"bu似鳥_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0349]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400201520nki">
「そう、か。あはは……そう、だよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("L",700, @-10,@0,"buノーコa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/400201530nko">
「にとり……？」

{	St("ML",700, @20,@0,"bu似鳥_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/400201540nki">
「オレには――なんにも、ないんだ」
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolumeEX("@xbgm*", 1500, 0, null);



	EndScene();
}
// "a2050カゴメアソビ.nss"
