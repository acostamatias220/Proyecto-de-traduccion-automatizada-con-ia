
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2120千秋_恵那.nss_MAIN
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
	$GameName = "aa2345フウリ.nss";//★エンディングへ（aa）
	//$GameName = "aa2350千秋_恵那.nss";//★縦読みした場合は個別ファイルへ＜あきゅん

}

scene aa2120千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="390">
////////////header////////////
//file name "aa2120千秋_恵那.nss"
//title "初めての女の子！？"
//previous "aa2110千秋.nss"
//previous "aa2110恵那.nss"

////////////footer////////////
//next "aa2345フウリ.nss"


////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
{	ClockPass(2120);}
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(10,"bg1703300銭形公園_トイレ中_破壊");
	FadeBG(0,true);

//	CreateTextureEX("イベント1", 10000, Center, @0, "cg/ev/ev2110恵那水没.jpg");
//	Fade("イベント1", 0, 1000, null, true);

//	FadeDelete("イベント1", 1500, null, true);
//	SetVolumeEX("@xbgm*", 500, 0, null);

	if($PreGameName=="aa2110千秋.nss"||$PreGameName=="aa2110恵那.nss"){
	Wait(2000);
	FadeDelete("上背景", 1000, null, true);
	}else{
	}

	FadeDelete("上背景", 0, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
/*
//※下倉注：台詞カットです 2010/11/07
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300010fje">
「千秋……千秋……！」
*/

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300020fje">
「ん……んん……ん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＥＶ："ev/ev2110恵那水没.txt"
// ここまでイベントCG表示？
// aa2110恵那からくると、状態が前ファイルと繋がってないので、aa2110千秋で表示したイベントCGは
// 当該ファイルの末端で消去

//	TextBoxDelete(150);

	DrawDelete("絵色黒", 1000, 100, null, "slide_05_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300030fje">
「あ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300040kit">
「恵那……！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300050kit">
「目、覚めたんだな……！」

{
	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300060kit">
「よかった……」

{	DeleteAllSt(200,false);
	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_lost");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300070fje">
「たすけて……くれた……の？」

{	SoundPlay("@xbgm28",0,450,true);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300080kit">
「ああ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_lost");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300090fje">
「ありが……とう……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300100kit">
「なあ、恵那……」

{
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300110kit">
「オレ……実は……」

{
	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300120kit">
「ずっと、ずっと、おまえのこと……」

{
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300130kit">
「好きだったんだ」

//【富士見恵那】
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_lost");
	FadeSt("MR",200,true);}
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300140fje">
「千秋……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 500, 0, null);
	CreatePlainSP("絵板写", 5000);
	Wait(16);
	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",0,true);
	FadeDelete("絵板写", 200, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300150fje">
「じゃ……」

{	Shake("@StNameMR/MR*", 300, 0, 5, 0, 0, 500, null, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300160fje">
「ない！？」

{
	SoundPlay("@xbgm11",0,450,true);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300170fje">
「あ、あなたっ！　アッキーちゃんじゃないッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300180kit">
「あ……え？　ああ、そうか……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300190fje">
「アッキーちゃん！
　も……もう！　なんてことしてくれたのよっ！！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300200fje">
「初めて……初めての、キスだったのに……！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300210fje">
「大切な、千秋に、あげようと、思って、それで……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300220kit">
「あの……恵那……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300230fje">
「そんな……でも……私、告白されて嬉しくて……
　こんなに胸が、ドキドキして……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2121);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300240fje">
「え？　なに？　どうしよう……」

{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300250fje">
「私、もしかして女の子が好きだったの……！」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300260fje">
「そんな、そんなのって……！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300270kit">
「恵那……オレ……もうそろそろ……限界……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300280fje">
「そう、千秋！　千秋が悪いのよ！」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300290fje">
「口先だけでなんにもできなくて、ヘタレですぐ心が折れちゃうし、肝心なところで逃げ出すし……」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300300fje">
「千秋のせいで、私、こんな変な趣味に――」

{	DeleteAllSt(200,false);
	St("L",700, @-50,@0,"buユージローa_通常_sad");
	Move("@StNameL/L*", 500, @50, @0, Dxl2, false);
	Shake("@StNameL/L*", 500, 0, 3, 0, 0, 500, null, false);
	FadeSt("L",500,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/200300310ujr">
「ゎぅ……ん」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300320fje">
「ユージロー！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300330fje">
「なんかやつれてるけど、無事だったの……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("L",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aa21/200300340ujr">
「ゎぅゎぅ、ゎぅゎぅ」

{
	SetVolumeEX("@xbgm*", 1500, 0, null);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300350fje">
「え？　アッキーちゃん？」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300360fje">
「どうしたの？　ね、アッキーちゃん？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/200300370kit">
「――――――」

{
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameML/ML*", 300, @0, @100, Dxl2, false);
	DeleteAllSt(300,true);
}


{
	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300380fje">
「アッキーちゃん！　ねえ、起きてってば！」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aa21/200300390fje">
「救急車……救急車、呼ばなきゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2500, 0, null);
	CreateColorEX("絵背景", 20000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);


	EndScene();
}
//next "aa2345フウリ.nss"
