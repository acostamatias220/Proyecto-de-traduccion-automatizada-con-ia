
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2020千秋_恵那.nss_MAIN
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
//	$GameName = "";
//	$GameCircle=false;

	if($CharaName=="千秋"){
		$GameName = "2030千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "2030千秋_恵那.nss";
	}else{
		$GameName = "2030千秋_恵那.nss";
	}

}

scene 2020千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="950">
////////////header////////////
//file name "2020千秋_恵那.nss"
//title "ヨガ忍法破れる！"
//previous "2010千秋_恵那.nss"

////////////footer////////////
//next "千秋" "2030千秋_恵那.nss"
//next "恵那" "2030千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//◆場所：秋葉原_ガード下

	OnBG(10,"bg0102100秋葉原_ガード下_通常");
	FadeBG(0,true);
{	St("C",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("C",0,true);}

{	ClockPass(2020);}

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500010kit">
「オレ――オレ――」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500020kit">
「恵那の――恵那のことが――ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：ぱーん！！

	CreateSE("SE01","se銃_銃声01");
	MusicStart("SE01",0,500,0,1000,null,false);

	DeleteAllSt(200,true);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500030fje">
「え？」

{	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500040kit">
「銃声――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm03",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500050fje">
「行こうッ！！」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500060kit">
「あ――うん！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	DeleteAllSt(200,true);


{	ClockPass(2021);}


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);



//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//◆演出指定：後ろに薄くインド音楽が流れていたりする

//	CreateSE("SE10","seガヤ_エレキセンター内部_l");
//	MusicStart("SE10",3000,200,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
{	St("C",700, @	50,@0,"bu恵那_通常_angry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500070fje">
「アザナエル早く取り返さないと、大変――」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500080jbr">
「ギャー！　テッポが暴発！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500090fje">
「って、何！？」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500100fje">
「あ！　アザナエル！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	OnBG(10,"bg0902100エレキセンター_ジャガンナート_通常");
	FadeBG(0,true);

	SetVolumeEX("SE10*", 500, 350, null);
	DrawDelete("絵板写", 500, 100, null, "blind_01_00_1", true);

{	St("ML",700, @0,@0,"buジャブル_通常_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 2000, 0, 0, 30, 0, 500, Axl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500110jbr">
「いたい、いたいいたいいたい……」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500120fje">
「なんでアンタが！？」

{	St("ML",700, @0,@0,"buジャブル_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500130jbr">
「え？　な、なんデスカ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//	St("ML",700, @0,@0,"buジャブル_通常_cool");
//	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500140jbr">
「っていうかチョと来るのが早い――」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500150fje">
「その銃、渡しなさい！」

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500160jbr">
「の、駄目デスよ！
　これは、私の大事なショバイ道具！」



{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500170fje">
「何が商売道具よ！　ほらアッキー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @50,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500180kit">
「お、おう！」

{	St("C",700, @0,@50,"bu千秋_頭突き_rage");
Move($C_次, 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500190kit">
「とりゃー！　インド人、覚悟！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_殴打連続01");

	MusicStart("SE01",0,400,0,1000,null,false);
	CreatePlainSP("絵ゆれ", 1000);
	Shake("絵ゆれ", 1500, 15, 5, 0, 10, 500, Dxl1, false);
	Request("絵ゆれ",Disused);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055a]
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500200jbr">
「やめ、やめて――ぐわー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：ぱーん！！
{	CreateSE("SE01","se銃_銃声01");
	MusicStart("SE01",0,900,0,1000,null,false);
	CreateColorEXadd("絵色白", 2000, "#FFFFFF");
	Wait(600);
	Fade("絵色白", 0, 1000, null, true);
	FadeDelete("絵色白", 500, null, true);

WaitKey(1000);
}


{	St("C",700, @0,@0,"bu千秋_通常_angry");
Move("@StNameC/C*", 200, @200, @0, Dxl3, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500210kit">
「うおっ！　アブね！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500220fje">
「暴発！？」

//	St("ML",700, @0,@0,"buジャブル_通常_pinch");
{	DeleteAllSt(200,true);}
//	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500230jbr">
「ううう！！　多勢にブゼイ！　卑怯者デスネ」

//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500240jbr">
「かくなる上は――チチンプイプイ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciスラッシュ_07_00", true, "ciスラッシュ_07_00z");
	Zoom("絵マ*", 0, 0, 1000, null, true);
	CreateColorSP("絵マ/色", 100, "#999900");//952
	CreateTextureSPadd("絵マ/絵背景", 100, 0, 0, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵マ/絵立11", 101, 134, -4, "cg/bu/buジャブル_通常_smile.png");//134,-4
	Move("絵マ/絵立11", 0, @-100, @0, Dxl1, false);
	Move("絵マ/絵立11", 100, @100, @0, Dxl1, false);
	Zoom("絵マ*", 100, 1000, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]

//	St("ML",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500250jbr">
「ヨガ忍法、カレー煙幕！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,true);
	Move("絵マ/絵立11", 100, @100, @0, Dxl1, false);
	Zoom("絵マ*", 100, 0, 1000, null, true);
	Delete("絵マ*");

//◆ＳＥ：ぼふん！

	CreateSE("SE01","se動作_煙幕");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵色", 1500, "#999900");
	Fade("絵色", 0, 1000, null, true);
	DrawDelete("絵色", 1000, 500, null, "effect_01_00_0", true);



//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500260kit">
「ギャー！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500270fje">
「アッキーちゃん、大丈夫！？」

{	St("ML",700, @0,@0,"bu千秋_通常_pain");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 300, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500280kit">
「か、辛い……目が……目がヒリヒリ……」

{	St("MR",700, @50,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500290fje">
「うう！　アッキーちゃんをよくも！　覚悟！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,true);

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciスラッシュ_07_01", true, "ciスラッシュ_07_01z");
	Zoom("絵マ*", 0, 0, 1000, null, true);
	CreateColorSP("絵マ/色", 100, "#999900");//952
	CreateTextureSPadd("絵マ/絵背景", 100, 0, 0, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵マ/絵立11", 101, 134, -4, "cg/bu/buジャブル_通常_smile.png");//134,-4
	Move("絵マ/絵立11", 0, @-100, @0, Dxl1, false);
	Move("絵マ/絵立11", 100, @100, @0, Dxl1, false);
	Zoom("絵マ*", 100, 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]

//	St("ML",700, @0,@0,"buジャブル_通常_normal");
//	DeleteAllSt(200,false);
//	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500300jbr">
「カレー煙幕！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Move("絵マ/絵立11", 100, @100, @0, Dxl1, false);
	Zoom("絵マ*", 100, 0, 1000, null, true);
	Delete("絵マ*");

//ぼふん
	CreateSE("SE01","se動作_煙幕");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵色", 1500, "#999900");
	Fade("絵色", 0, 1000, null, true);
	DrawDelete("絵色", 1000, 500, null, "effect_01_00_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500310fje">
「ぎゃー！！」

{	St("ML",700, @-100,@0,"buジャブル_通常_normal");
Move("@StNameML/ML*", 300, @100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500320jbr">
「ふっふっふ！
　ヨガ忍法を破ろうなどと、アサハカデスネ――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateMaskAXLSP("絵マ", 800, 0, 0, "ciスラッシュ_07_00", true, "ciスラッシュ_07_00z");
	Zoom("絵マ*", 0, 0, 1000, null, true);
	CreateColorSP("絵マ/色", 100, "#999900");//952
	CreateTextureSPadd("絵マ/絵背景", 100, 0, 0, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵マ/絵立11", 101, 234, -20, "cg/bu/bu恵那_ハルヒ_angry.png");//232,26
	Move("絵マ/絵立11", 0, @100, @0, Dxl1, false);
	Move("絵マ/絵立11", 100, @-100, @0, Dxl1, false);
	Zoom("絵マ*", 100, 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]

//	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
//	DeleteAllSt(200,false);
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500330fje">
「お返しよ！！」

{	Move("絵マ/絵立11", 100, @-100, @0, Dxl1, false);
	Zoom("絵マ*", 100, 0, 1000, null, true);
	Delete("絵マ*");

	CreateSE("SE01","se動作_煙幕");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵色", 1500, "#999900");
	Fade("絵色", 0, 1000, null, true);
	DrawDelete("絵色", 1000, 500, null, "effect_01_00_0", true);

}
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500340jbr">
「ふぎゃー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2022);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　床に落ちたカレー粉袋を、恵那が投げ返す。


{	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500350kit">
「かはっ！　けほっけほっ！」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500360fje">
「なんなのよこの辛さ……水……みず……」

{	St("ML",700, @0,@0,"buジャブル_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500370jbr">
「カライ！　カライ！　インド人もびっくりぃぃ……」

{	St("MR",700, @50,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500380fje">
「今よアッキーちゃん！　捕まえましょう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500390kit">
「お、おう！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);
	SetVolume("@SE*", 1000, 0, null);
	SetVolumeEX("@xbgm*", 2000, 0, null);



	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 10, null, "cg/data/turn_01_00_0.png", true);

//◆時間：ジャンプ
{	ClockPass(2025);}
WaitKey(2000);

	DrawDelete("絵黒幕", 1000, 10, null, "turn_01_00_1", true);

//◆演出指示：時間経過

	SoundPlay("@xsong01",0,1,true);

	CreateSE("SE10","seガヤ_エレキセンター内部_l");
	MusicStart("SE10",3000,350,0,1000,null,true);

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500400fje">
「改めて見ると、意外と普通のお店ね」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500410fje">
「半分はインド雑貨屋で、半分は免税店――
　パソコンなんかも扱ってる」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500420kit">
「お！　これ――スマガパソコン！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/objノートＰＣ.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 300, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500430fje">
「すま……が？」

//	St("C",700, @0,@0,"bu千秋_朗らか_pride");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500440kit">
「ストライプウィッチーズ・マジカル・ガールズ！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500450kit">
「略してスマガ！」

{	Move("絵オブ", 300, @0, @100, DxlAuto, false);
	Fade("絵オブ", 300, 0, null, true);
	Delete("絵オブ");
}

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500460fje">
「はあ……どっかで聞いたことあるような……」

{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500470kit">
「でもこれ……まだ売ってないはずじゃ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500480fje">
「というかこれ、このマーク……
　エッチなソフトじゃないの！？」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 5200);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500490kit">
「え、いや、それは……あは、あはははは……」

{	AgainSt("ML",700, @0,@0,"bu千秋_朗らか_happy");
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500500fje">
「……まあいいわ。発売前のパソコンとか、アダルトゲームとか、怪しい店だってのはよくわかった」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2026);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500510fje">
「ジャブルさん。
　あなた確か、元留学生でしょ？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500520fje">
「昔は数学の天才ってもてはやされたとか……
　違いましたっけ？」

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500530jbr">
「それは、昔の話デスネ。
　今は秋葉原の商売人――」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500540fje">
「河原屋組の庇護を得て、ですよね」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500550jbr">
「異郷の地で成功するには、後ろ盾が必要デス」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//※北原メモ：このシーンはジャブルがアザナエルを持っているＣＧがないと分かりにくいですね。



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"bu恵那_銃構え正面normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500560fje">
「そのために――こんなモデルガンまで？」

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500570jbr">
「ただのモデルじゃないデスヨ！
　音も出るデス！　ペイント弾も出るデス！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500580fje">
「そんなことは聞いてないです！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500590fje">
「なんで、こんな模様をわざわざつけたのかってこと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500600jbr">
「そりゃ私も、商売デスネ！
　軽々しく顧客情報は――」

{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500610fje">
「アッキーちゃん」

{	St("C",700, @0,@50,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500620kit">
「おう！」

{	CreateSE("SE01","se動作_バッグ渡す");
	MusicStart("SE01",0,700,0,1000,null,false);
}
　勢いよく返事して、千秋はカレー袋を構えた。

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500630kit">
「コイツを喰らいたくなかったら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
//	TextBoxDelete(150);

{	ClockPass(2027);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @50,@0,"buジャブル_通常_shock");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500640jbr">
「ゴメナサイ！　ギブアップ！　白状するデス！」

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500650jbr">
「アレはズバリ、双一オヤビンのオーダーメイドです！
　何に使うかはしらないデスネ……」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500660fje">
「やっぱり……今日の出来事は計画的犯行。
　ずっと計画を練っていたに違いないわ！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500670fje">
「……うん、もう待ってるヒマはない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：足音駆け出す
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);

Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	DeleteAllSt(200,true);


	SetVolume("SE01", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500680kit">
「え？　ちょっと、恵那！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：足音追いかける

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,false);

Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	DeleteAllSt(200,true);

	SetVolume("SE02", 1000, 0, null);

WaitKey(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]

{	St("C",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500690jbr">
「ふぅ……なんとか、助かったデス」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolume("@SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



{	ClockPass(2028);}


	SetVolumeEX("@xsong01", 2000, 200, null);

//◆場所：バックギャモン_正面
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
{	St("MR",700, @50,@0,"bu千秋_通常_angry");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500700kit">
「おい待てよ、恵那！」

//◆音声指示：小声
{	St("ML",700, @50,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
//Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500710fje">
「シッ！　静かに！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆音声指示：小声
{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500720kit">
「なあ、もしかしておまえが探してるのって――拳銃？」

//◆音声指示：小声
{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500730fje">
「アッキーちゃんには関係ない」

//◆音声指示：小声
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500740kit">
「やっぱりやめた方がいいって！
　オヤジさんに連絡取って――」

{	St("ML",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500750fje">
「だめ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500760fje">
「私、父さんが、許せないの」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500770kit">
「恵那……まだ、あの時のこと……」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	SetVolumeEX("@xsong01", 1000, 450, null);

	CreateSE("SE01","se動作_ドア蹴破る");
	MusicStart("SE01",0,700,0,1000,null,false);

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
{	St("C",700, @100,@0,"bu恵那_ハルヒ_shout");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500780fje">
「アンタたち！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500790fje">
「アザナエルについて、聞きたいことが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xsong01", 500, 0, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//◆音声指示：茫然自失
{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500800fje">
「――――ぇ？」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500810kit">
「な……なに、コレ？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//◆ＥＶ："ev/ev2020河原屋双六死体.txt"

	SoundPlay("@xbgm24",0,550,true);

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/img/img双六死に手.jpg");
	Fade("絵背景", 1000, 1000, null, true);
	DeleteAllSt(0,true);



//2301恵那.nss[text0251]でフラッシュバックされる（千代子



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0205]
//	St("C",700, @0,@0,"bu恵那_哀愁_shock");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500820kit">
「死んでる……？」











//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500830fje">
「い……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500840fje">
「いや……嘘……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500850fje">
「そんなの……ッ」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500860fje">
「――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：駆け出す足音

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵背景", 500, null, true);

	SetVolume("SE01", 1000, 0, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0215]

{	St("C",700, @50,@0,"bu千秋_通常_shout");
//Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500870kit">
「ちょっと――恵那？」


//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500880kit">
「恵那ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	TextBoxDelete(150);
//Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,true);


{	SetVolume("SE02", 1000, 0, null);
}

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


{	ClockPass(2029);}



//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//	CreateSE("SE10","seガヤ_エレキセンター内部_l");
//	MusicStart("SE10",3000,200,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]


{	St("MR",700, @50,@0,"bu千秋_通常_shout");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500890kit">
「恵那！　待てって！」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500900jbr">
「あらら？　かえてきたデスカ？」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500910kit">
「インド人、奥に誰も入らないよう見張って！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/200500920jbr">
「ああらどしてデス？」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500930kit">
「いいからッ！！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolume("@SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


//◆場所：秋葉原_ガード下

	OnBG(10,"bg0102100秋葉原_ガード下_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235]


{	St("C",700, @50,@0,"bu千秋_通常_shout");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/200500940kit">
「おい、恵那！　ちょっと！　待てよ！！」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/200500950fje">
「――――ッ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	TextBoxDelete(150);

	SetVolume("@SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	SetVolumeEX("@xbgm*", 2000, 0, null);


	EndScene();
}
