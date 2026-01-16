
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene e2330沙紅羅.nss_MAIN
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
	$GameName = "2348ノーコ_フウリ.nss";//★エンディングへ（e）
	//$GameCircle=false;

}

scene e2330沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="900">
////////////header////////////
//file name "e2330沙紅羅.nss"
//title "ケジメ"
//previous "e2320沙紅羅.nss"

////////////footer////////////
//next "2348ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：籠_内部
	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);

//あきゅん「演出指示：双六の歌の方が優先的に演出して」
//★inc櫻井　修正

	CreatePlainSP("揺用", 50);


	FadeDelete("上背景",1000,null,true);

{	ClockPass(2330);}

//あきゅん「修正指示："c2340恵那.nss"と途中まで」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100010ksr">
「かごめかごめ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100020ksr">
「かごのなかのとりは」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100030ksr">
「いついつでやる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100040ksr">
「よあけのばんに」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100050ksr">
「つるとかめがすべった」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100060ksr">
「うしろのしょうめん――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2331);}


//	TextBoxDelete(150);

//◆ＳＥ：バタン！　扉開く

	CreateSE("扉開ける", "se動作_ドア開ける05");
	MusicStart("扉開ける", 0, 700, 0, 1000, null, false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("ML",700, @-100,@0,"bu平次_通常_hard");
	FadeSt("ML",200,false);
	Move("@StNameML/ML*", 200, @100, @0, Dxl2, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100070fjh">
「オレだ」

{	DeleteSt("ML",200,false);
	St("L",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100080skr">
「双六――さん！？」


{	SoundPlay("@xbgm21", 0, 450, true);

	DeleteSt("L",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100090ksr">
「よう。待ったぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteSt("MR",200,true);
	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100100ksr">
「脚を引きずって、大変だったろ？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100110fjh">
「恵那を、返せ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100120ksr">
「恵那？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100130fjh">
「とぼけんな。オレの娘だ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100140ksr">
「ああ、アイツか。アイツなら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2332);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteSt("MR",200,true);
	St("MR",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100150ksr">
「ほら、そこ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100160fjh">
「――――」

{	DeleteSt("ML",200,true);
	St("ML",700, @0,@0,"bu平次_落ち込み_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100170fjh">
「あ――あ――ああ――あ――！！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100180ksr">
「見えるだろ、そこ。ホラ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100190fjh">
「――――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100200ksr">
「頭から血、流して――」

{	DeleteSt("MR",200,false);
	St("L",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100210skr">
「おまえが、やったのか？」

{	DeleteSt("L",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100220ksr">
「しかたねぇだろ。双一親分の命令なんだしな」

{	DeleteSt("MR",200,false);
	St("L",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100230skr">
「そうやって他人のせいにして、人の命、奪い続けてきたってのか？」

{	DeleteSt("L",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100240ksr">
「奪ったのは、オレじゃねぇぜ。アザナエルだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2333);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteSt("MR",200,true);
	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100250ksr">
「オレはただ、コイツの決断を手助けしてやっただけ」

//あきゅん「修正指示：平次が被さる感じの演出入れて」
//★inc櫻井　修正
{	DeleteSt("MR",200,false);
	St("L",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100260skr">
「ふざ、ふざ――――」

{	Move("@StNameL/L*", 300, @50, @0, Dxl1, false);
	DeleteSt("L",200,true);
	St("ML",700, @-50,@0,"bu平次_通常_shout");
	Move("@StNameML/ML*", 300, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100270fjh">
「ふざけるなッ！！」

{	SetVolume("@xbgm*", 1000, 0, null);
	CreateSE("構え", "se銃_構える");
	MusicStart("構え", 0, 700, 0, 1000, null,false);
	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100280ksr">
「ナンダァ？　腰抜けのクセして」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100290ksr">
「オレを、撃てんのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100300ksr">
「おまえ、あの時は――」


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100310fjh">
「……あの時とは、違う」


{	DeleteSt("ML",200,false);
	St("L",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100320skr">
「モジャモジャ――！？」

{	DeleteSt("L",200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100330fjh">
「悪い、金閣寺。撃たせてくれ――」

{	DeleteSt("ML",200,false);
	St("L",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100340skr">
「でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2334);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteSt("L",200,false);
	St("ML",700, @0,@0,"bu平次_通常_shout");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100350fjh">
「頼む！！」


{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100360fjh">
「オレには……今、一番大事なものが何か、わかる」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100370fjh">
「そいつを奪った外道に……」

{	St("ML",700, @0,@0,"bu平次_通常_shout");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100380fjh">
「容赦はしねぇんだよッ！！」


//◆ＳＥ：銃声

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteSt("ML",200,true);
	CreateSE("銃声02", "se銃_銃声01");
	MusicStart("銃声02", 0, 700, 0, 1000, null,false);


	Wait(500);
	Shake("揺用", 100, 15, 4, 0, 0, 300, null, false);

	CreateTextureSPadd("ライト", 15000, @0, @0, "cg/data/circle_13_00_1.png");
	FadeDelete("ライト", 1500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100390ksr">
「がはっ！」

{	CreateSE("倒れる", "se人体_倒れる01");
	MusicStart("倒れる", 0, 700, 0, 1000, null,false);

	Move("@StNameMR/MR*", 300, @0, @200, Dxl2, false);
	DeleteSt("MR",200,true);
	St("L",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100400skr">
「双六さん――！」

{	Move("@StNameL/L*", 300, @200, @0, Dxl1, false);
	DeleteSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100410ksr">
「あ……あが……ん……」

{	St("C",700, @-60,@0,"bu沙紅羅_放心_lost");
	Move("@StNameC/C*", 300, @60, @0, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100420skr">
「双六さん！　なんで――ああっ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100430skr">
「なんで……なんで、こんなことに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100440ksr">
「いいんだよ、沙紅羅」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100450ksr">
「オレがやり直すには……少し、遅すぎた」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100460skr">
「でも――そんなこと――遅すぎるなんて――」

{	DeleteSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100470ksr">
「いいんだ。オレが、一番よくわかってる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100480ksr">
「恵那が死んじまったとき――
　これは、神様の罰だと思ったんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2335);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100490skr">
「神様は――そんなこと、しない――！」

{	DeleteSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100500ksr">
「いいんだ。いいんだよ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100510ksr">
「コレが……オレの、望んだ結末なんだ……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/e23/300100520ksr">
「少し――ほんの少しだけ――眠らせてくれ――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100530skr">
「双六さん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100540skr">
「双六……さん……！」

//◆ＳＥ：携帯鳴る
//あきゅん「修正指示：キレが悪いので、きちんと着信と通話開始はメリハリつける」
//★inc櫻井　修正
{	DeleteSt("C",200,false);
	CreateSE("携帯", "seメカ_携帯_メール着信_平次_l");
	MusicStart("携帯", 0, 700, 0, 1000, null,false);
	Wait(1500);
	SetVolume("携帯", 1000, 0, null);
	CreateSE("携帯とる", "seメカ_携帯_電子音01");
	MusicStart("携帯とる", 0, 700, 0, 1000, null,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100550fjh">
「……もしもし」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100560fjh">
「ああ。わかった。
　すぐ、準備する」

//◆ＳＥ：携帯鳴る
{	CreateSE("携帯閉じ", "seメカ_携帯_電子音01");
	MusicStart("携帯閉じ", 0, 700, 0, 1000, null,false);
	St("ML",700, @0,@0,"bu平次_通常_pain");
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 1000, @150, @0, Dxl2, false);
	DeleteSt("ML",600,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100570fjh">
「ん……くぅっ、く……んんっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2336);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　平次は携帯電話を閉じると、ケガした脚を引きずりながら、息絶えた双六の側へと近づいた。


{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100580fjh">
「おい、金閣寺」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100590fjh">
「悪いが――これで、コイツとはお別れだ」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100600skr">
「あ……ああ」

{	DeleteSt("MR",200,false);
	CreateSE("SE01","se銃_シリンダー装填");
	MusicStart("SE01",0,700,0,600,null,false);}
　平次はかがみ込み、双六の手に手錠をつけた。

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100610skr">
「なんで……こんなことを？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100620fjh">
「双一の、亡霊退治のためさ」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100630skr">
「亡霊？　でも――」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100640fjh">
「行くぞ。時間がない」



{	Move("@StNameC/C*", 1000, @-150, @0, Dxl2, false);
	DeleteSt("C",600,false);}
　平次は足を引きずり、恵那の元へ。


{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100650fjh">
「恵那……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2337);}

//	TextBoxDelete(150);

//★inc櫻井　手を伸ばす動作

	Move("@StNameML/ML*", 500, @-50, @30, Dxl2, false);
	DeleteSt("ML",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　赤で塗れたその頬に、静かに手を伸ばし――

//★inc櫻井　座りこんだ位置で表示
{	St("ML",700, @-50,@30,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100660fjh">
「すまん……オレが……ふがいないばっかりに……」

{	DeleteSt("ML",200,true);
	St("ML",700, @-50,@30,"bu平次_通常_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100670fjh">
「今……連れて帰ってやる……ぐぁっ！」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100680skr">
「アタシが背負うよ」

{	DeleteSt("C",200,false);
	St("ML",700, @-50,@30,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100690fjh">
「あ……ああ、悪い。助かるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);






//◆場所：籠_正面_ブラックライト

	SceneOut(5000, 500, "blind_01_00_0");

	DeleteSt("ML",0,false);

	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);

	CreatePlainSP("揺用", 50);


	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"bu平次_通常_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100700fjh">
「ん……くぅっ、んんん……！！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100710skr">
「よし、これで大丈夫だな？」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/e23/300100720ujr">
「わうわうわうっ！！」

//あきゅん「修正指示：衣擦れ的な音を」
{	DeleteSt("C",200,false);
	CreateSE("SE", "se動作_衣擦れ");
	MusicStart("SE", 0, 700, 0, 1000, null);}
　後ろに座る平次に、沙紅羅が恵那の死体を手渡す。


{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100730skr">
「あとは、双一を――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100740fjh">
「心配すんな」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100750fjh">
「もう、これで全部、終わったんだ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100760skr">
「全部終わった……？　意味が――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2338);}

//あきゅん「修正指示：なんかもっさり、爆発音～水の押し寄せる轟音～扉崩壊を切れよくつなげて」
//★inc櫻井　修正　c2340恵那と同じ流れにしました。

//◆ＳＥ：どんっ！　爆発音

	DeleteSt("MR",200,true);
	TextBoxDelete(0);


	DeleteSt("C",200,true);
	CreateSE("SE01","se戦闘_爆発03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0801200籠_正面_ブラックライト.jpg");//背景要確認
	Shake("絵ゆれ", 300, 20, 50, 20, 0, 500, DxlAuto, true);
	Shake("絵ゆれ", 500, 30, 20, 10, 0, 500, Dxl3, true);
	Shake("絵ゆれ", 1000, 10, 15, , 0, 500, Axl3, true);

	Shake("絵ゆれ", 300, 20, 40, 20, 0, 500, DxlAuto, true);
	Shake("絵ゆれ", 1500, 30, 20, 0, 0, 1000, Dxl3, true);

	Shake("絵ゆれ", 300, 20, 50, 20, 0, 500, DxlAuto, true);
	Shake("絵ゆれ", 2000, 30, 20, 0, 0, 1000, Dxl3, true);

	Delete("絵ゆれ");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100770skr">
「え――！？」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100780fjh">
「ちぃっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PrintGO("上背景", 5000);

	Delete("揺用");

	CreateTextureEX("絵背景101", 101, Center, Middle, "cg/bg/l/bg0801200籠_正面_ブラックライト_l.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/l/bg0801300籠_正面_激流_l.jpg");
	SetBlur("絵背景100", true, 3, 500, 50, false);
	CreateTextureEX("絵背景10", 12, Center, Middle, "cg/bg/bg0801300籠_正面_激流.jpg");
	CreateTextureEX("絵背景1", 11, Center, Middle, "cg/bg/bg0801300籠_正面_激流.jpg");
	SetBlur("絵背景10", true, 3, 500, 50, false);

	Fade("絵背景101", 0, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 300, null, true);

	CreateSE("SE02","se環境_地鳴り01_l");
	MusicStart("SE02",3000,500,0,1000,null,true);

	Shake("絵背景101", 1000, 0, 1, 1, 2, 1000, null, true);
	Shake("絵背景101", 2000, 1, 2, 3, 5, 1000, null, true);
	Shake("絵背景101", 3000, 3, 5, 4, 8, 500, null, false);

	Wait(2000);

//◆演出指定：大量の水が流れてくる
	OnBG(10,"bg0801300籠_正面_激流");
	FadeBG(0,true);

	CreateSE("SE01","se戦闘_爆破水しぶき");
	SetVolume("SE02", 200, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵背景101", 500, null, false);
	Zoom("絵背景100", 2000, 2000, 2000, null, false);
	Move("絵背景100", 1000, @0, 0, Dxl1, false);

	Wait(500);

	Fade("絵背景1", 0, 1000, null, true);
	Fade("絵背景10", 0, 1000, null, true);

	Zoom("絵背景10", 1500, 2000, 2000, null, false);
	FadeDelete("絵背景10", 1000, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

	Shake_Loop_shima("@絵背景1","絵シェイク");

	CreateSE("SE10","se環境_水流_l");
	CreateSE("SE12","se環境_水流_l");
	MusicStart("SE10",1000,500,0,1000,null,true);
	MusicStart("SE12",1000,500,0,200,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0184]
　爆発――

　そして籠の中から、凄まじい勢いで水が流れ出す。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateMaskAXLSP("マスク", 2000, -1024, 0, "ciスラッシュ_06_00", false, "ciスラッシュ_06_00z");
	CreateTextureSP("マスク/絵背景", 1010, -724, -270, "cg/bg/l/bg0801300籠_正面_激流_l.jpg");
	Move("マスク/絵背景", 0, @-1024, @0, null, true);
	SetShade("マスク/絵背景", MEDIUM);

	CreateTextureSP("マスク/絵立絵", 1700, -220, -93, "cg/bu/bu平次_通常_pain.png");
	CreateTextureEX("マスク/絵立絵二", 1700, -220, -93, "cg/bu/bu平次_通常_shout.png");
	Move("マスク/絵立絵*", 0, @-1024, @0, null, true);

	Move("マスク*", 600, @1024, @0, Dxl3, false);
	Move("マスク/絵背景", 600, @1024, @0, Dxl3, false);
	Move("マスク/絵立絵*", 800, @1080, @0, Dxl2, false);
	Move("マスクLine", 600, @1024, @0, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185a]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100790fjh">
「おい金閣寺！　急げ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateAXLWindowEX("絵演窓", "X", 3000, 640, 256, false);
	WindowAXLZoom("絵演窓", "X", 0, 0, null, true);
	Wait(16);

	CreateTextureSP("絵演窓/絵背景", 2010, Center, Middle, "cg/bg/l/bg0701300地下_通路_水_l.jpg");
	CreateTextureSP("絵演窓/絵立絵", 2700, 260, InBottom, "cg/bu/bu沙紅羅_後ろ向き_hard.png");
	Move("絵演窓/絵立絵", 0, @0, @100, null, true);


	WindowAXLZoom("絵演窓", "X", 300, 1000, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100800skr">
「急げって、でも――」

{	Fade("マスク/絵立絵二", 200, 1000, Dxl3, false);
	FadeDelete("マスク/絵立絵", 200, null, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/e23/300100810fjh">
「いいから！
　オレたちまで沈むわけにはいかねぇだろ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100820skr">
「…………」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSPadd("白", 20000, WHITE);
	DeleteAllSt(0,true);
	Delete("@OnBG*");
	Delete("背景");
	Delete("絵窓*");
	Delete("絵演窓*");
	Delete("マスク*");
	Wait(16);
	CreateColorSP("下黒", 50, BLACK);
	CreateEffect("sepia", 3000, @0, @0, 1024, 576, "Sepia");

	CreateTextureEX("回想01", 1000, @0, @0, "cg/ev/ev2250千秋オブデス.jpg");
	CreateTextureEX("回想02", 1100, @0, @0, "cg/bg/bg0802100籠_内部_通常.jpg");
	CreateTextureEX("回想03", 1200, @0, @0, "cg/img/img双六死に手.jpg");

	St("L",19010, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("L",0,true);
	Fade("回想01", 0, 1000, null, true);
	Fade("白", 300, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100830skr">
（何もかも、ニセモノで、幻で――）

{	FadeDelete("回想01",300,Axl2,false);
	Fade("回想02", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100840skr">
（全部――夢だったらいいのに）

{	FadeDelete("回想02",300,Axl2,false);
	Fade("回想03", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100850skr">
（でも）

{	FadeDelete("回想03",300,null,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100860skr">
（名探偵の身体は、確かに重くて――
　間違いなく、本物で――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("白", 300, 1000, null, true);

	Delete("背景03");
	Delete("下黒");
	Delete("sepia");
	DeleteSt("L",0,true);

	OnBG(100, "bg0801300籠_正面_激流");
	FadeBG(0, true);

	FadeDelete("白",300,null,true);

	CreateAXLWindowEX("絵演窓", "Y", 2000, 96, 192, false);
	WindowAXLZoom("絵演窓", "Y", 0, 0, null, true);

	CreateTextureSP("絵演窓/絵背景", 1010, Center, -760, "cg/bg/l/bg0701600地下_通路_バックギャモン_l.jpg");
	CreateTextureSP("絵演窓/絵立絵", 1700, 1024, Middle, "cg/bu/buユージローa_通常_hard.png");
	Move("絵演窓/絵立絵", 600, 112, @0, Dxl2, false);
	WindowAXLZoom("絵演窓", "Y", 300, 1000, AxlDxl, true);

	WaitAction("絵演窓/絵立絵", null);

	Shake("絵演窓/絵立絵", 300, 0, 6, 0, 0, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/e23/300100870ujr">
「わうわうわうッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100880skr">
「わかった。わかったよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵演窓/絵立絵", 300, 0, null, false);
	WindowAXLZoom("絵演窓", "Y", 600, 0, DxlAuto, true);
	Delete("絵演窓*");

{	St("C",700, @80,@0,"fu沙紅羅_後ろ向き_normal");
	Move("@StNameC/C*", 200, @-80, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0204]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100890skr">
「双六さん……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/300100900skr">
「さよなら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @-20, @0, Axl1, false);
	DeleteAllSt(200,true);

	TextBoxDelete(150);

//◆ＳＥ：バイク発進
	CreateSE("バイク発進", "seメカ_バイク_エンジン始動");
	MusicStart("バイク発進", 0, 1000, 0, 1000, null,false);

	ClearWaitAll(2000, 2000);


	EndScene();
}
