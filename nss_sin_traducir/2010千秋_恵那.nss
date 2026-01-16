
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2010千秋_恵那.nss_MAIN
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
	$GameName = "2020カゴメ1.nss";
	//$GameName = "2020千秋_恵那.nss";
}

scene 2010千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1260">
////////////header////////////
//file name "2010千秋_恵那.nss"
//title "恋の迷探偵"
//previous "2008千秋_恵那.nss"

////////////footer////////////
//next "千秋" "2020千秋_恵那.nss"
//next "恵那" "2020千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);



//◆場所：パチンコ屋_正面
	OnBG(10,"bg2301111パチンコ屋_正面_通常");
	FadeBG(0,true);

{	ClockPass(2010);}

	CreateSE("SE12","seガヤ_交通少_l");
	MusicStart("SE12",2000,700,0,1000,null,true);
	CreateSE("SE11","seガヤ_パチンコ屋店内_l");
	SoundEffect("SE11","GENERIC");
	MusicStart("SE11",2000,700,0,1000,null,true);

	//FadeDelete("上背景", 0, null, true);
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400010kit">
「あの子、ホントに大丈夫かな……」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400020fje">
「見た目よりはしっかりしてるから、大丈夫だと思う」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400030fje">
「心配だけど、どっちに行ったかもわかんないし……」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400040kit">
「ま、ソレはソレでしょうがないか」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400050kit">
「で、恵那はこれからどうする？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400060fje">
「うん。それなのよね。
　なんとかして、あのアフロ捜さないと――」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400070kit">
「どんなアフロ？」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400080fje">
「んと、それが変な話なんだけどね。
　時代錯誤って言うか、コスプレって言うか」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400090fje">
「見たまんま、『ヤンキー』のカッコしてたのよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400100kit">
「ヤンキー！？」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400110kit">
「なんか、身に覚えがあるような……」

{	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400120fje">
「何か知ってるの！？」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400130kit">
「いや、一回女ヤンキーに酷い目に遭わされてさ」

//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400140kit">
「もしかしたら、そいつの仲間かも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2011);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400150fje">
「仲間……か」


{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400160fje">
「あ、そうか！」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400170fje">
「あいつら、確か河原屋双一の命令だったって言って！」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400180kit">
「双一って、河原屋組の……親分？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400190fje">
「結局陽動で、地下に双六もいたし……
　うん、間違いない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400200fje">
「バックギャモン、行かなきゃ！」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400210kit">
「え？　いや、そっちはオレひとりでなんとでも――」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400220fje">
「河原屋双一は、滅多に人前に姿を見せないの。
　唯一連絡が取れるのは、若頭の双六だけ」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400230fje">
「その双六は――バックギャモンにいるわ！」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400240kit">
「ちょ、ちょっと待てよ！！　恵那！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
WaitKey(500);


//◆時間：ジャンプ
{	ClockPass(2014);}

	CreateSE("SE10","seガヤ_街中_l");
	MusicStart("SE10",2000,700,0,1000,null,true);


//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400250fje">
「アッキーちゃん。ここは一度、別れましょ。
　私が先に行くから――」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400260kit">
「待てって！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400270kit">
「どんな事件に首突っ込んでるのかしらねーけど、相手は河原屋組だろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400280kit">
「ひとりじゃヤバイって。恵那のオヤジさんに連絡――」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400290fje">
「嫌。父さんなんて頼りにならない」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400300kit">
「そりゃさ、ちょっと駄目なところもあるよ」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400310kit">
「確かに普段、ちゃらんぽらんだけど」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400320kit">
「あと、暑苦しいけど」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400330kit">
「うざいけど。臭いけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400340fje">
「……わかってるじゃない」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400350kit">
「でも、地震の時にオレ、庇ってもらったんだ」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400360kit">
「誰より冷静だし、勇敢だし、すぐに街のみんなを心配して飛び出していったし……格好良かった」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400370fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400380kit">
「そりゃ、文句を言いたくなることもあるだろうけど、でもやっぱり、頼れるときは頼るべきだと思う」


{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400390fje">
「――千秋そっくり」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400400kit">
「え？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400410fje">
「その話、千秋から聞いたの？」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400420kit">
「ま、まあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2015);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400430fje">
「あのバカチビ。
　変なことしゃべるなって言ってるのに」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400440fje">
「ホント、うるさいのよね。
　私の問題なんだから、そっとしといて欲しい――」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400450kit">
「バカ！　おまえが心配だから、そう言うんだろ！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400460fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400470kit">
「……あ、ごめん」

{	SetVolume("@SE*", 3000, 0, null);
	St2("MR",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400480fje">
「……どうなんだろ」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400490kit">
「え？　なにが？」

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400500fje">
「私、さ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400510fje">
「もしかして千秋のこと」


{	SoundPlay("@xbgm28",0,450,true);
	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400520fje">
「好きなのかな？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @50,@0,"bu千秋_通常_shy");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400530kit">
「す、す、すすすすすす、好き！？」

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400540fje">
「うん」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400550kit">
「誰が？　誰を？」

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400560fje">
「私が。千秋を」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400570kit">
「いやいやいやいやいや！　ないだろないだろ！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400580fje">
「な――なによその反応！」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400590kit">
「だってさ、おまえだよ！
　おまえが人を好きとか、しかもよりによって――」

{	St2("MR",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400600fje">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400610kit">
「あ……」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400620kit">
「あの……うん」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400630kit">
「ゴメン」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400640fje">
「別に……いいけどさ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400650fje">
「っていうか、わたしも、わかんないし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2016);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400660fje">
「自分でも、あり得ないって思ってたし」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400670fje">
「鈴姉からからかわれる度、考えるのもバカみたいだって思ってたし」

{	St("ML",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400680kit">
「う……うん、そうだよな」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400690fje">
「でもね」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400700fje">
「私、名探偵富士見恵那は推理しちゃったの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400710kit">
「すいり？」

{	St("C",700, @0,@0,"bu恵那_感動_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400720fje">
「今日、私の元に色んな事件が立て続けに起きて、どっちも大切だけど、でもどちらかを選ばなきゃならない」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400730fje">
「その選択肢で、私みんな、千秋を選んでたわけ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400740fje">
「正直それどころじゃないはずなんだけど、でも、千秋を選んじゃったわけ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400750fje">
「冷静に考えればおかしくて、今でも信じられないんだけど、でも、っていうことは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//	St("C",700, @0,@0,"bu恵那_通常_shy");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400760fje">
「私、千秋には全然、冷静でいられないのかも」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400770kit">
「は……はぁ……」

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400780fje">
「客観的に推理して――」

{	St("C",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400790fje">
「私、千秋が、好き……かな？」

{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400800kit">
「き、訊かれても！
　そんな、難しいことよくわかんねーし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400810kit">
「ってかさ、なんでオレにそんなこと相談するわけ！？」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400820fje">
「……何でだろ？」

{	St("MR",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400830fje">
「安心……するのかな。
　千秋の側にいるときと、同じ」

{	St("ML",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400840kit">
「……本気、なんだな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400850fje">
「わ……わかんないよ、そんなの！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400860fje">
「外れることだって多い、ただの推理だし……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400870fje">
「自分の気持ちなんて、よくわかんないし……」


{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400880fje">
「昔はね、好きだって、信じかけたこともあったけど」

{	St("ML",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400890kit">
「昔？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2017);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400900fje">
「鈴姉が私の携帯から、勝手に千秋にメール送って。
　それが変なメールで、そこから妙に意識しちゃって」

{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400910fje">
「あ、そうだ。携帯パス！」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400920kit">
「パスって――え、ちょっと！」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400930fje">
「大丈夫。変なところはイジんないから」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400940fje">
「えーと、受信履歴の……最初の方に……あった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

/*
差出人：富士見鈴
件名：携帯購入おめでとう！
本文
チアキガタスキ
*/


	CreateSE("SE01","seメカ_携帯_電子音01");

	CreateAXLPhWindowEX("絵演窓", "Y", 2100, 96, 192, false);
	PhWindowAXLZoom("絵演窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵演窓/絵演物", 2010, Center, 90, "cg/obj/obj携帯メールやりとり.png");

	MusicStart("SE01",0,700,0,1000,null,false);
	PhWindowAXLZoom("絵演窓", "Y", 500, 1000, AxlDxl, true);

//	Wait(1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210a]
//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400950kit">
「ああ、あったあった。
　なんか意味不明なメール――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	PhWindowAXLZoom("絵演窓", "Y", 500, 0, null, true);
	Delete("@絵演窓*");

	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400960fje">
「ま、鈴姉の考案だし。暗号って言うのにはほど遠いけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400970kit">
「暗号？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100400980fje">
「ホラ、このストラップ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵演背景", 1500, Center, Middle, "cg/obj/obj千秋携帯ストラップ.png");
	Move("絵演背景", 0, @0, @120, null, true);

	Move("絵演背景", 300, @0, @-120, Dxl1, false);
	Fade("絵演背景", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0223a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100400990kit">
「タヌキが、どうかしたのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵演背景", 300, @0, @120, Axl1, false);
	Fade("絵演背景", 300, 0, null, true);
	Delete("絵演背景");

{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0223b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401000fje">
「そう。ここからタを抜くと……」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100401010kit">
「え？　ええと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100401020kit">
「千秋が……す、き……」

{	St("C",700, @0,@0,"bu恵那_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401030fje">
「ま、鈴姉からしてみればただのいたずらなんだろうけど」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401040fje">
「ねえ、アッキーちゃん？」

{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401050fje">
「千秋って、好きな人いるかな？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100401060kit">
「え？　あー、うん。ええと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100401070kit">
「今のところ、いない……と思うけど」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401080fje">
「うんうん、だよねー！」

//	St("MR",700, @0,@0,"bu恵那_通常_pride");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401090fje">
「そういうの、ホントに疎いもん」

//	St("C",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401100fje">
「見た目と同じで、中味も成長してないっていうか」


{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100401110kit">
「よ、余計なお世話だ！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401120fje">
「あ……ゴメン。親戚だもんね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);
//	SetVolume("SE*", 2000, 0, null);
	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



{	ClockPass(2018);}

//◆場所：秋葉原_ガード下

	OnBG(10,"bg0102100秋葉原_ガード下_通常");
	FadeBG(0,true);


	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

	CreateSE("SE10","seガヤ_エレキセンター内部_l");
	MusicStart("SE10",3000,100,0,1000,null,true);


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401130fje">
「まあでも、コレならチャンスあり、か……」

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401140fje">
「けど、あいつホントに興味なさそうだもんなあ」

//	St("C",700, @0,@0,"bu恵那_通常_hard");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401150fje">
「恋愛とか……したことないだろうし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401160fje">
「その上ヘタレだし」

{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401170fje">
「もしかして、逃げられちゃったり――」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100401180kit">
「そんなことない！　ちゃんと答えるって！」

{	DeleteAllSt(200,true);}
//◆音声指示：びっくり
{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401190fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2019);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("C",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401200fje">
「えへへ。ありがと」

{	St("C",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401210fje">
「…………あは、なんか、照れる」

{	St("C",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401220fje">
「なんかさ、名探偵でもこの謎だけは解けな――」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100401230kit">
「あ、あ、あ、あのさッ！！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/100401240fje">
「ん？　どしたの？　改まっちゃって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("@SE*", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100401250kit">
「じ、じじじ、実はさッ！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/100401260kit">
「オレ、おまえに隠してたことがあるんだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndScene();
}
