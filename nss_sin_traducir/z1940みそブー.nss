
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1940みそブー.nss_MAIN
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
	EndScript();

}

scene z1940みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="120">
////////////header////////////
//file name "z1940みそブー.nss"
//title "謎の通販"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1940);}

//◆場所：あにのあな_正面
	OnBG(10,"bg0301211あにのあな_正面_停電");
	Move("@OnBG*", 0, @0, -1150, null, true);
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	CreateSE("SE02","seガヤ_交通_l");
	MusicStart("SE02",500,700,0,1000,null,true);

	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/400100010mso">
「く……暗い……」

//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/400100020mso">
「こんな店の中に、これから入っていくのか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_smile");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/400100030buu">
「こんなこともあろうかと！」

{	St("MR",700, @0,@0,"buブーa_オラオラ_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/400100040buu">
「デデデデッデデー！」

{	St("ML",700, @0,@0,"buみそa_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/400100050mso">
「お！　それは！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_オラオラ_pride");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/400100060buu">
「ブラックライト付きハンディマイク！！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/400100070buu">
「頼んでもいないのになぜか届いたこの一品！
　これで、急なカラオケの機会にもバッチリ対応！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/400100080mso">
「す……すげえ！」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/400100090mso">
「でも……頼んでないのに届くってなんか怖くねぇか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buブーa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/400100100buu">
「大丈夫！
　きっとコレも、神様からのプレゼントさッ！」

{	St("MR",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/400100110buu">
「さあ！　姐さんを捜しに、行こうぜ！」

{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/400100120mso">
「お……おう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
