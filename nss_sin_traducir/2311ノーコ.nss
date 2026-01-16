
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2311ノーコ.nss_MAIN
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
	$GameName="2320カゴメ5.nss";

}

scene 2311ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="950">
////////////header////////////
//file name "2311ノーコ.nss"
//title "フウリの居場所"
//previous "2310ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2320ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


{	ClockPass(2311);}

	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	SoundPlay("@xbgm26",0,450,true);

//◆ＳＥ：かすかな矢の音
	CreateSE("SE01","se戦闘_弓矢_矢放つ");
	MusicStart("SE01",0,300,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100010nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100020nko">
「いまのおと……」

{	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100030nko">
「そとじゃない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100040nko">
「ぬけみちをしってる」

{	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100050nko">
「あそこだ」

{	Move("@StNameC/C*", 200, @-50, @0, Dxl3, false);
	DeleteAllSt(200,true);}
　ノーコは、ミヅハと共に地下から這い出たロッカーから、地下通路へと潜った。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

//◆場所：地下_通路_スパコン館
	OnBG(10,"bg0701500地下_通路_スパコン館");
	FadeBG(0,true);

	Wait(500);

	Fade("絵色黒", 500, 0, null, true);
	Delete("絵色黒");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：遠くから
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100060ksr">
「はぁっ……はぁっ……はぁっ……はぁっ……」

{	St("C",700, @20,@0,"buノーコb_幽霊_normal");
	Move("@StNameC/C*", 200, @-20, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100070nko">
「このこえ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolume("SE*", 1000, 0, null);

	Wait(600);

	St("C",700, @40,@0,"bu双六a_通常_pinch");
	Move("@StNameC/C*", 200, @-40, @0, Dxl3, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100080ksr">
「はぁっ、はぁ……んくっ！」

{	St("C",700, @0,@0,"buノーコb_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100090nko">
「アザナエル――！」

{	DeleteAllSt(200,true);}
　暗闇の向こうから現れた双六は、その手にアザナエルを握っていた。

{	St("MR",700, @0,@0,"bu双六a_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100100ksr">
「よ、よぉ。そこ、通してくんねぇか」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100110ksr">
「いまちょっと、こみいっててよ」

{	St("ML",700, @0,@0,"buノーコb_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100120nko">
「そのアザナエル、フウリからとったはず」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100130nko">
「フウリは、どこにいるの？」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100140ksr">
「……向こうに人を待たせてる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100150ksr">
「通してくれるなら、教えてやってもいい」

{	St("ML",700, @0,@0,"buノーコb_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100160nko">
「アザナエルも――」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100170ksr">
「これはやれない。まだ、使うんでね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：攻撃態勢
	St("ML",700, @30,@0,"buノーコa_カッター_pinch");

	DeleteAllSt(200,false);

	Move("@StNameML/ML**", 200, @-30, @0, Dxl3, false);

	CreateSE("SE01","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100180nko">
「――――」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100190ksr">
「おっと、そんなヒマがあるのか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100200ksr">
「フウリは死んだ恋人と会うためアザナエルを使い――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100210ksr">
「成功した」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100220nko">
「それじゃ、かんたはいきかえる――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100230ksr">
「そりゃ、無理だな。
　フウリは貫太が死んでることを、認めちまってる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100240ksr">
「アイツの願いは『織田貫太に会いに行くこと』」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100250nko">
「あいにいく――？」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100260ksr">
「そのまま向こうに行くか――
　それともこっちに帰ってくるか――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100270ksr">
「さあて、どっちだろうな」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100280nko">
「そのまま、てんごくへいくかもしれないってこと？」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100290ksr">
「知り合いが呼び止めれば、別だろうがな」

{	St("ML",700, @0,@0,"buノーコa_カッター_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100300nko">
「フウリはどこ？　いばしょを――」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100310ksr">
「先に、通してくれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2312);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"buノーコa_カッター_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100320nko">
「…………」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100330ksr">
「…………」

{	St("ML",700, @0,@0,"buノーコa_カッター_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100340nko">
「…………」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100350nko">
「わかった」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100360ksr">
「手出ししたら、場所は教えねえからな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"buノーコa_カッター_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100370nko">
「はやく！」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100380ksr">
「いい判断だ」

{	Move("@StNameMR/MR*", 200, @-30, @0, Dxl1, false);
	DeleteAllSt(200,true);}
　ナイフを構えるノーコの横を、双六は悠然と通り過ぎる。

{	St("ML",700, @20,@0,"bu双六a_通常_hard");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @-20, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100390ksr">
「全く……どれこもれも、双一親分が言ったとおりだぜ」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100400nko">
「そういちおやぶん……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100410ksr">
「まるで全部が、最初から計算されてたみたいだな」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100420nko">
「…………」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100430ksr">
「さて。フウリの居場所を聞きたいんだったな」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100440nko">
「……ええ」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100450ksr">
「アイツは今――柳神社にいるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100460nko">
「ほんとうに？」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100470ksr">
「元許嫁から聞いたからな。
　あそこには、貫太の墓があるんだとさ」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100480nko">
「かんたの……はか」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100490ksr">
「さ、伝えることは伝えたかんな！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/110100500ksr">
「後はま、悔いの残らねぇようにやれよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：双六の足音が去る

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameML/ML*", 200, @-40, @0, Dxk3, false);
	DeleteAllSt(200,true);

	SetVolume("SE01", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100510nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100520nko">
「フウリがしんだら……ライブが、できない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100530nko">
「アザナエルは、ふういんできない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE01", 1000, 0, null);
//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100540nko">
「だから、はんだんは、ただしい。
　けど――」

{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100550nko">
「むねがいたい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100560nko">
「ミヅハ、ごめん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);
	DeleteAllSt(200,true);

{	ClockPass(2313);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆音声指示：遠くから
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/110100570kms">
「そこに誰かいるのですかッ！？」

{	St("C",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100580nko">
「このこえ……せい」

{	St("C",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/110100590kms">
「ノーコ様！　なぜ、ここに――！？」

{	St("C",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100600nko">
「おとがして、おりたら、すごろくがいた」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/110100610kms">
「双六はどちらへ？」

{	St("ML",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100620nko">
「あっち」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/110100630kms">
「ということは、やはり籠――」

{	St("ML",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100640nko">
「……かご？」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/110100650kms">
「戦後、カゴメアソビが行われた場所――
　神田川の遙か下にあるといいます」

{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/110100660kms">
「残念ながら、私はその場所を知らない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/110100670kms">
「というか、ここまで来るのもやっとという有様で――
　一度、態勢を立て直した方が良いやもしれません」

{	St("ML",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100680nko">
「でる？」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/110100690kms">
「帰り道がわかるのですか！？」

{	St("ML",700, @0,@0,"buノーコb_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100700nko">
「こっち」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameML/ML*", 200, @-30, @0, Dxl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(2314);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	Wait(500);

//◆ＳＥ：ロッカーが開く
	CreateSE("SE01","se動作_ロッカー開ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @30,@0,"bu歌門_通常_shock");
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice2/23/110100710kms">
「まさか、このような場所に通じているとは……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice2/23/110100720kms">
「秋葉原の地下には通路が張り巡らされているというサイババア様の話は、本当……」

{	St("ML",700, @30,@0,"buノーコb_幽霊_normal");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @-30, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice2/23/110100730nko">
「わたし、いそぐ」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice2/23/110100740kms">
「急ぐ？」

{	St("ML",700, @0,@0,"buノーコb_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice2/23/110100750nko">
「またあとで」

{	St("MR",700, @0,@0,"bu歌門_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice2/23/110100760kms">
「ちょっと、ノーコ様！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2316);}

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

//◆演出指定：外に出ると、雪が降っている
	SnowDrop(0);

	Wait(700);

	CreateSE("ガヤ","seガヤ_交通少_l");
	MusicStart("ガヤ",1000,700,0,1000,null,true);

	Wait(300);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("C",700, @0,@0,"buノーコb_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100770nko">
「ゆき――ミヅハのちから」

{	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100780nko">
「さくせんは、じゅんちょう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-30, @0, Dxl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2317);}

//◆場所：パチンコ屋_正面
	OnBG(10,"bg2301100パチンコ屋_正面_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100790nko">
「わたしも、まけない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100800nko">
「やなぎじんじゃ――いく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-30, @0, Dxl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);




{	ClockPass(2318);}

//◆場所：秋葉原_万世橋
	OnBG(10,"bg0104200秋葉原_万世橋_閉店");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"buノーコb_幽霊_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100810nko">
「すごい……かわもこおってる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100820nko">
「このはしをわたれば、すぐ――」

{	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100830nko">
「…………あ」

{	St("L",700, @-40,@0,"stフウリ_通常_shock");
	DeleteAllSt(200,false);
	Move("@StNameL/L*", 200, @40, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/23/110100840wft">
「え？　あ！　ああ！　いた！」

{	Shake("@StNameL/L*", 200, 0, 10, 0, 0, 500, null, false);
	Move("@StNameL/L*", 200, @60, @0, Dxl3, false);
	DeleteAllSt(200,false);}
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/23/110100850wft">
「ノーコちゃ――――ん！」

{	St("ML",700, @-40,@0,"buフウリ_通常_fear");
	Move("@StNameML/ML*", 200, @40, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/23/110100860wft">
「ごめんなさい！　わざわざ迎えに来て――」

{	St("C",700, @30,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-30, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100870nko">
「きる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：ずしゃっ！！
	CreateSE("SE01","se戦闘_切断02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	DeleteAllSt(0,true);
	Fade("絵色100", 500, 0, null, false);

{	ClockPass(2319);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	Move("@StNameML/ML*", 200, @-40, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 10, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/23/110100880wft">
「ぁ――――」

{	St("C",700, @30,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100890nko">
「フウリのまねをする、ふとどきもの」

{	St("C",700, @30,@0,"buノーコa_カッター_pinch");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100900nko">
「しょうたいを、あらわせ」

{	St("ML",700, @-40,@0,"buフウリ_胸手_smile");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/23/110100910wft">
「ふ、ふふふふふ……」

//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/23/110100920wft">
「正体……？」

{	St("ML",700, @-40,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【太四郎（綿抜フウリ）】
<voice name="太四郎（綿抜フウリ）" class="綿抜フウリ" src="voice/23/110100930wft">
「オレ、自分の正体なんて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("ガヤ", 1500, 0, null);

	Move("@StNameML/ML*", 200, @40, @0, Dxl1, false);
	DeleteAllSt(200,true);

//◆演出指定：似鳥変身
	CreateSE("SE01","se動物_タヌキ_化ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(0);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);
	DeleteAllSt(0,true);
	Shake("@OnBG*", 100, 5, 5, 0, 0, 500, null, false);
	FadeDelete("絵色白", 1000, null, true);

	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/110100940ntn">
「とっくの昔に、忘れたな……」

{	St("C",700, @0,@0,"buノーコb_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/110100950nko">
「そのかっこうは――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndScene();
}
