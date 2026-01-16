
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2310似鳥.nss_MAIN
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
	$GameName = "c2340恵那.nss";//★エンディングへ（c）
}

scene c2310似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="740">
////////////header////////////
//file name "c2310似鳥.nss"
//title "決別の筆"
//previous "c2300沙紅羅_似鳥.nss"

////////////footer////////////
//next "c2340恵那.nss"

////////////body////////////


//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2313);}


//◆場所：半田明神_拝殿_布地
	OnBG(10,"bg0607300半田明神_拝殿_布地");
	FadeBG(0,true);

	if($PreGameName=="c2300沙紅羅_似鳥.nss"){
	Wait(2000);
	DrawDelete("上背景", 300, 100, null, "slide_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

//あきゅん「修正指示：この音ダメゼッタイ差し替え」
//★inc櫻井　ガヤ音ではなく、モノを置いた音を再生します。
	CreateSE("SEL01", "se日常_物置く");
	MusicStart("SEL01", 700, 700, 0, 1000, null,false);

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/100200010mzh">
「これで良いか？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200020nki">
「ああ、ありがとう」

{	DeleteSt("ML",200,false);
	St("R",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/100200030kms">
「書き初め用の道具が一式残っていて、良かったですね」

{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200040nki">
「ええ。神様も味方してるのかもしれない」

{	DeleteSt("ML",200,false);
	St("R",700, @0,@0,"bu歌門_通常_think");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/100200050kms">
「神様……ですか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("R",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/100200060kms">
「しかし……
　いくら外面を整えても、人が来なければ意味がない」

{	St("R",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/100200070kms">
「この混乱の中、果たしてこの作戦が上手くいくのか」

{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200080nki">
「このままじゃ、無理かもしれません」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/100200090mzh">
「そ……そうなのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200100nki">
「でもだからって、なにもしなけりゃなにも起こらない」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200110nki">
「失敗を恐れちゃ、駄目なんです」

{	DeleteSt("ML",200,false);
	St("R",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/100200120kms">
「似鳥様――」

{	DeleteSt("R",200,false);
	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/100200130mzh">
「似鳥よ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200140nki">
「ん？　なんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/100200150mzh">
「ノーコは、わらわにできた数少ない友達じゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/100200160mzh">
「わらわはあやつのおかげで、色々なことを学んだ」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/100200170mzh">
「だから――あやつを生み出したおぬしに、感謝するぞ」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/100200180mzh">
「ありがとう」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200190nki">
「…………ああ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2314);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/100200200mzh">
「では――おぬしの次の仕事、期待しておるぞ！」

{	DeleteSt("MR",200,false);
	St("R",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/100200210kms">
「失礼します」

{	Move("@StNameMR/MR*", 300, @150, @0, null, false);
	Move("@StNameR/R*", 300, @150, @0, null, false);
	DeleteAllSt(200,true);}
　歌門とミヅハは、音もなく拝殿を去る。

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200220nki">
「友達……か」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200230nki">
（そうか……アイツには、友達がいたんだ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SEL*", 1000, 0, null);

	TextBoxDelete(150);

	CreateColorEX("黒幕", 20000, BLACK);
	Fade("黒幕", 1000, 1000, null, true);

//	ClockDelete(0,true);

	SoundPlay("@xbgm25", 0, 450, true);

	DeleteSt("ML",0,true);
	CreateTextureEX("回想01", 500, @0, @0, "cg/bg/bg1304100似鳥マンション_リビング_通常.jpg");
	CreateEffect("sirokuro00", 3000, @0, @0, 1024, 576, "Monochrome");

	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",0,true);

	Fade("回想01", 0, 1000, null, true);

	Fade("黒幕", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200240nki">
（あいつは、オレのために生み出されて）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200250nki">
（オレのエゴで、ずっと、ずっと、苦しんで）

//あきゅん「修正指示：顔の位置まで出さない」
//★inc櫻井　修正
{	CreateTextureEX("回想02", 2050, @-150, @-500, "cg/ev/ev2230カゴメアソビ3.jpg");
	Fade("回想02", 1000, 1000, null, true);
	Delete("回想01");
	DeleteSt("C",0,false);}


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200260nki">
（最後には、オレのエゴで消えたみたいなもんだ）

//あきゅん「修正指示：音に合わせるならフェードよりもカット気味で消して」
{	CreateSE("銃声", "se銃_銃声01");
	MusicStart("銃声", 0, 1000, 0, 1000, null,false);
	Fade("黒幕", 100, 1000, null, true);
	Delete("回想02");
	Delete("sirokuro00");}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200270nki">
（その事実は、消せない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200280nki">
（でも……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("白", 100, WHITE);
	CreateColorSP("白上", 10000, WHITE);

	//CreateTextureSPadd("マスク", 2100, @0, @0, "cg/data/circle_10_00_1.png");
	//Fade("マスク", 0, 600, null, false);

//あきゅん「修正指示：笑顔でも良いけどもっときれいに隠す場所は隠してください」
//★inc櫻井　修正
	//CreateTextureEX("回想03", 2050, @-150, @-300, "cg/fu/fuノーコb_幽霊_smile.png");
	//Fade("回想03", 0, 1000, null, true);

	Fade("黒幕", 1000, 0, null, true);

	CreateTextureEX("絵ＳＴ100", 2100, 80, InBottom, "cg/fu/fuノーコb_幽霊_smile.png");
	CreateStencil("マスク１",2110,80,InBottom,128,"cg/fu/fuノーコb_幽霊_smile.png",false);
	CreateColor("マスク１/色１", 2120, 0, 0, 1024, 576, "BLACK");

	Move("絵ＳＴ100", 0, @200, @0, null, true);
	Move("マスク１", 0, @200, @0, null, true);
	DrawTransition("マスク１/色１", 0, 0, 500, 100, null, "cg/data/slide_02_00_0.png", false);

	Fade("マスク１/色１", 0, 1000, null, false);
	Fade("絵ＳＴ100", 0, 1000, null, true);

	Fade("白上", 2000, 0, null, true);

{	ClockPass(2314);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200290nki">
（苦しいことだけじゃ、なかったよな）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200300nki">
（じゃなかったら……あんな笑顔で、消えないもんな）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：きちんと絵を出すのは無粋」
//あきゅん「β演出：ステンシルでシルエット描写に」

	Fade("黒幕", 300, 1000, null, true);
	Delete("マスク*");
	Delete("絵ＳＴ*");
	Delete("白");
	Delete("白上");
	CreateColorSP("下黒", 900, BLACK);
// inc櫻井　わざと顔を見せていません。
	CreateTextureEX("回想04", 1000, Center, @-350, "cg/bu/l/buノーコa_通常_normal_x03.png");
	Fade("回想04", 0, 1000, null, true);

	
	Fade("黒幕", 1500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200310nki">
（ノーコがこの世に生まれたことは、決して、失敗なんかじゃなくて――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200320nki">
（例え失敗だとしても、ちゃんと、意味はあって――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//あきゅん「修正指示：気持ちを切り替えてるのにまったりフェードとかさせない、スパっと切れよく」
//★inc櫻井　修正

	FadeDelete("回想04",300,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0079]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200330nki">
（だから――！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	TextBoxDelete(150);
	SetVolume("@xbgm*", 1000, 0, null);

	FadeDelete("下黒",1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("L",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200340nki">
「オレも、前に進まなきゃ……」

{	SoundPlay("@xbgm01_noint",0,600,true);
	St("L",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200350nki">
「――――行くぞ」

{	St("L",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200360nki">
「ふぅ――――」



//◆ＳＥ：ちゃぷちゃぷ
{	CreateSE("筆", "se動作_墨汁ひたす");
	MusicStart("筆", 0, 1000, 0, 1000, null,false);
	St("L",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200370nki">
（書き直しなんて、できない）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2315);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200380nki">
（正真正銘、一発勝負）

{	St("L",700, @0,@0,"fu似鳥_通常_smile");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200390nki">
（はは……足が震えてる）


{	St("L",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200400nki">
（いままで、ずっと逃げてた）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200410nki">
（失敗が嫌で……挑戦を恐れた）

{	St("L",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200420nki">
（最初から前に進もうとしなきゃ、つまずくこともない）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200430nki">
（いつかはきっと、前に進める。
　今はこれで、しょうがない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200440nki">
（ずっとそう、自分に言い聞かせてきた）

{	St("L",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200450nki">
（そんな自分を慰めるために、ノーコをつくった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200460nki">
（ノーコといれば、心が安らいだ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200470nki">
（でも――）

{	St("L",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200480nki">
（もう、そのノーコは側にいない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200490nki">
（本当に、オレが、できるのか？）

{	St("L",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200500nki">
「――――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200510nki">
「できるかどうかじゃない」

{	St("L",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200520nki">
「やるか、やらないかだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm01_noint",0,600,true);

{	ClockPass(2316);}

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330似鳥お絵かきタイム.txt"
//	CreateTextureEX("似鳥", 2500, @0, @0, "cg/ev/ev2330似鳥お絵かきタイム.jpg");
//	Fade("似鳥", 500, 1000, null, true);
//	DeleteSt("L",0,false);
//	CreateTextureEX("筆書き", 3000, @0, @100, "cg/ef/ef筆字03.png");
//	Fade("筆書き", 1000, 1000, null, false);
//	DrawTransition("筆書き", 1000, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", false);
//◆ＳＥ：巨大毛筆で絵を描く
//	CreateSE("毛筆", "se動作_毛筆書き");
//	MusicStart("毛筆", 0, 1000, 0, 1000, null,true);

//嶋：本編流用
	CreateColorEX("絵色100", 1500, "BLACK");
	CreateColorEX("絵色白", 2500, "WHITE");
	Fade("絵色100", 1000, 1000, null, true);

	DeleteAllSt(0,true);

	CreateTextureEX("絵背景", 150, -1000, -10, "cg/ev/l/ev2330似鳥お絵かきタイム_l.jpg");
	SetBlur("絵背景", true, 2, 500, 100, false);
	CreateTextureEX("絵背景200", 150, Center, Middle, "cg/ev/ev2330似鳥お絵かきタイム.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SetBlur("絵背景200", true, 2, 500, 50, false);

	CreateTextureEX("絵背景筆01", 3000, Center, Middle, "cg/ef/ef筆字04.png");
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);
	CreateTextureEX("絵背景筆02", 3000, Center, Middle, "cg/ef/ef筆字03.png");
	Zoom("絵背景筆02", 0, 800, 800, null, true);
	SetBlur("絵背景筆02", true, 2, 500, 100, false);
	CreateTextureEX("絵背景筆03", 3000, Center, Middle, "cg/ef/ef筆字02.png");
	Zoom("絵背景筆03", 0, 800, 800, null, true);
	SetBlur("絵背景筆03", true, 2, 500, 100, false);

	Fade("絵背景", 0, 1000, null, true);

	MoveFTP3("@絵背景", 2000, 12, 3);

	Wait(500);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫01.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆01", 1100, @100, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200530nki">
「――――ふんっ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200540nki">
（失敗は怖い）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	FadeDelete("筆書き",300,null,false);
//	CreateTextureEX("筆書き02", 3100, @0, @100, "cg/ef/ef筆字03.png");
//	Rotate("筆書き02", 0, @0, @0, @90, null, true);
//	Fade("筆書き02", 1000, 1000, null, false);
//	DrawTransition("筆書き02", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", false);

	CreateSE("SE01","se環境_水に落ちる");
	MusicStart("SE01",0,700,0,3000,null,false);


	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫02.png", false);

	SetBlur("絵背景筆01", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆01", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);


	Move("絵背景筆01", 1100, @-200, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200550nki">
「ん――ん――んん――！」

{
//	FadeDelete("筆書き02",300,null,true);
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -512, -288, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200560nki">
（背伸びだってしたい）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	CreateTextureEX("筆書き03", 3200, @200, @-200, "cg/ef/ef筆字01.png");
//	Fade("筆書き03", 1000, 1000, null, false);
//	DrawTransition("筆書き03", 1000, 0, 1000, 100, null, "cg/data/circle_12_00_1.png", false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫03.png", false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆03", 1100, @100, @0, Dxl2, false);
	Zoom("絵背景筆03", 500, 900, 900, Dxl1, false);

	Fade("絵背景筆03", 0, 1000, null, true);
	DrawTransition("絵背景筆03", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆03", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200570nki">
「だあっ！！」

{
//	FadeDelete("筆書き03",300,null,true);
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -898, -22, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200580nki">
（指さされて笑われたくない）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//	CreateTextureEX("筆書き04", 3300, @200, @-200, "cg/ef/ef筆字03.png");
//	Fade("筆書き04", 1000, 1000, null, false);
//	DrawTransition("筆書き04", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫04.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆02", 1100, @-100, @-50, Dxl2, false);
	Zoom("絵背景筆02", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆02", 0, 1000, null, true);
	DrawTransition("絵背景筆02", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆02", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200590nki">
「ん、ん、や――おおおおおお――」

{
//	FadeDelete("筆書き04",300,null,true);
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -10, -560, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200600nki">
（でも、そんな情けないことを考えるのも、オレ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetBlur("絵背景筆01", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆01", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆01", 0, 800, 800, null, true);
	SetBlur("絵背景筆01", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫06.png", false);

	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆01", 1100, @100, @100, Dxl2, false);
	Zoom("絵背景筆01", 500, 1000, 1000, Dxl1, false);

	Fade("絵背景筆01", 0, 1000, null, true);
	DrawTransition("絵背景筆01", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆01", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//	CreateTextureEX("筆書き05", 3400, @-100, @100, "cg/ef/ef筆字03.png");
//	Rotate("筆書き05", 0, @0, @0, @90, null, true);
//	Fade("筆書き05", 1000, 1000, null, false);
//	DrawTransition("筆書き05", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200610nki">
「せいっ！！」

{
//	FadeDelete("筆書き05",300,null,true);
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -710, -112, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200620nki">
（そして、そのオレが生み出せる、精一杯のものを――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetBlur("絵背景筆03", false, 2, 500, 100, false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);
	Rotate("絵背景筆03", 0, @0, @180, @0, null,true);
	Zoom("絵背景筆03", 0, 800, 800, null, true);
	SetBlur("絵背景筆03", true, 2, 500, 100, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	EffectZoom(10000, 2000, 400, "cg/ef/ef筆雫03.png", false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵色100", 0, 0, null, true);


	Move("絵背景筆03", 1100, @100, @0, Dxl2, false);
	Zoom("絵背景筆03", 500, 900, 900, Dxl1, false);

	Fade("絵背景筆03", 0, 1000, null, true);
	DrawTransition("絵背景筆03", 80, 0, 1000, 100, null, "cg/data/effect_01_00_0.png", true);

	Fade("絵背景筆03", 1000, 0, null, false);
	Wait(200);
	Fade("絵色白", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200630nki">
「っ！　んぐ――んぐ――んぐぐぐぐぐ――！！」

{
//	CreateTextureEX("似鳥02", 5000, @0, @0, "cg/ev/l/ev2330似鳥お絵かきタイム_l.jpg");
//	Move("似鳥02", 500, @-700, @0, Dxl1, false);
//	Fade("似鳥02", 500, 1000, null, true);
	Fade("絵色100", 500, 1000, null, true);
	Move("絵背景", 0, -512, -288, null, true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200640nki">
（全力で、描いてやるッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 5000, Center, Middle, "cg/ev/ev2330似鳥お絵かきタイム.jpg");
	CreateTextureEX("絵背景1", 4999, Center, Middle, "cg/ev/ev2330似鳥お絵かきタイム.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 3, 500, 50, false);

	Zoom("絵背景100", 750, 1000, 1000, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);
	Fade("絵背景1", 0, 1000, null, true);
	MoveFTP2("@絵背景100", 3000, 12, 3);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200650nki">
「だあああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2317);}

	TextBoxDelete(150);

	CreateColorEX("絵色White", 5500, "White");
	CreateTextureEX("迫力", 5610, Center, Middle, "cg/ef/ef筆字04.png");
	CreateColorEX("絵色100", 6000, "Black");

	Request("迫力", Smoothing);
	Zoom("迫力", 0, 1500, 1500, null, true);
	SetBlur("迫力", true, 3, 500, 50, false);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE11","se動作_毛筆書き");
	MusicStart("SE01",0,500,0,4000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE11",0,700,0,1000,null,false);

	Fade("絵色White", 100, 1000, null, false);
	Zoom("迫力", 300, 1000, 1000, Dxl1, false);
	Fade("迫力", 0, 1000, null, false);
	DrawTransition("迫力", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Shake("迫力", 1000, 1, 2, 0, 0, 1000, null, false);
	Fade("絵色100", 200, 1000, Dxl1, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_03_0.png", true);

	SetVolume("毛筆", 1000, 0, null);
	CreateTextureSP("背景", 50, Center, Middle, "cg/bg/l/bg0607300半田明神_拝殿_布地_l.jpg");

	Fade("絵背景*", 0, 0, null, true);

	Delete("似鳥*");
	Delete("迫力");
	Delete("絵色White");
	Delete("絵背景100");
	Delete("絵背景1");
	Delete("NutFTP2");

	DrawTransition("絵色100", 300, 1000, 0, 100, Dxl1, "cg/data/slide_01_03_0.png", true);
	Delete("絵色100");

//あきゅん「修正指示：背景まっさらな布地はできるだけみせないように」
//★inc櫻井　修正　大きいサイズの背景に変更しました。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200660nki">
「――はぁ――はぁ――はぁ」

{	St("L",7000, @0,@150,"fu似鳥_通常_angry");
	Move("@StNameL/L*", 200, @0, @-150, null, false);
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200670nki">
「……よし！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200680nki">
「悪くない！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200690nki">
「悪くないはずだ――！」

{	St("L",7000, @0,@0,"fu似鳥_通常_shout");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200700nki">
「ノーコ！　遅れてごめん！
　でも、見ててくれ！　聞いてくれ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolume("SE*", 300, 0, null);

	MoveFTP3stop();
	Delete("絵背景");
	Delete("絵筆*");
	Fade("絵色100", 100, 0, null, false);
	Fade("絵背景200", 0, 1000, null, false);
	Zoom("絵背景200", 400, 1000, 1000, Dxl2, false);
	FadeDelete("背景", 100, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200710nki">
「コレが、今オレが発揮できる――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200720nki">
「目一杯の――」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200730nki">
「実力――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c23/100200740nki">
「だああああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se戦闘_ペイント弾直撃");
	CreateSE("SE01a","se環境_水に落ちる");
	CreateSE("SE02a","se戦闘_ペイント弾直撃");
	CreateSE("SE01b","se環境_水に落ちる");
	CreateSE("SE02b","se戦闘_ペイント弾直撃");
	CreateSE("SE01c","se環境_水に落ちる");
	CreateSE("SE02c","se戦闘_ペイント弾直撃");

/*
	CreateSE("SE01d","se環境_水に落ちる");
	CreateSE("SE02d","se戦闘_ペイント弾直撃");
*/
	CreateTextureEX("絵背景筆雫01", 5100, Center, Middle, "cg/ef/ef筆字03.png");
	CreateTextureEX("絵背景筆雫02", 5100, Center, Middle, "cg/ef/ef筆字02.png");
	Rotate("絵背景筆雫02", 0, @0, @180, @0, null,true);
	CreateTextureEX("絵背景筆雫03", 5100, Center, Middle, "cg/ef/ef筆字04.png");

/*
	CreateTextureEX("絵背景筆雫04", 5100, Center, Middle, "cg/ef/ef筆字03.png");
	CreateTextureEX("絵背景筆雫05", 5100, Center, Middle, "cg/ef/ef筆雫06.png");
*/
	Zoom("絵背景筆雫*", 0, 900, 900, null, false);


	Zoom("絵背景200", 200, 3000, 3000, Axl1, false);
	Wait(200);
	Fade("絵色白", 0, 1000, null, true);

	Zoom("絵背景筆雫01", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01",0,700,0,2500,null,false);
	MusicStart("SE02",0,1200,0,800,null,false);
	Fade("絵背景筆雫01", 0, 1000, null, true);
	Wait(200);

	Zoom("絵背景筆雫02", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01a",0,700,0,4500,null,false);
	MusicStart("SE02a",0,1200,0,1200,null,false);
	Fade("絵背景筆雫02", 0, 1000, null, true);
	Wait(200);

	Zoom("絵背景筆雫03", 200, 1300, 1300, Dxl1, false);
	MusicStart("SE01b",0,700,0,3500,null,false);
	MusicStart("SE02b",0,1200,0,1300,null,false);
	Fade("絵背景筆雫02", 0, 0, null, true);
	Fade("絵背景筆雫03", 0, 1000, null, true);
	Wait(200);

/*
	MusicStart("SE01c",0,700,0,4500,null,false);
	MusicStart("SE02c",0,1200,0,1000,null,false);
	Fade("絵背景筆雫03", 0, 0, null, true);
	Fade("絵背景筆雫04", 0, 1000, null, true);
	Wait(100);

	MusicStart("SE01d",0,700,0,2500,null,false);
	MusicStart("SE02d",0,1200,0,800,null,false);
	Fade("絵背景筆雫04", 0, 0, null, true);
	Fade("絵背景筆雫05", 0, 1000, null, true);
	Wait(100);
*/
	MusicStart("SE01c",0,700,0,4500,null,false);
	MusicStart("SE02c",0,1200,0,1000,null,false);

	CreateColorSP("黒幕１", 30000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 300, Axl1, "cg/data/zzex_circle_01_00_0.png", true);

	Delete("絵背景筆*");
	Delete("絵背景200");
	Delete("絵色白");

	SetVolumeEX("@xbgm*", 1500, 0, null);


	Wait(1500);

	Wait(500);

//あきゅん「修正指示：フィニッシュは勢い良く本ルートを参考に」
//★inc櫻井　修正

//	CreateSE("SE01","se環境_水に落ちる");
//	CreateSE("SE02","se戦闘_ペイント弾直撃");
//	CreateSE("SE01a","se環境_水に落ちる");
//	CreateSE("SE02a","se戦闘_ペイント弾直撃");
//	CreateSE("SE01b","se環境_水に落ちる");
//	CreateSE("SE02b","se戦闘_ペイント弾直撃");
//	CreateSE("SE01c","se環境_水に落ちる");
//	CreateSE("SE02c","se戦闘_ペイント弾直撃");
//	CreateTextureEX("絵背景筆雫01", 5100, Center, Middle, "cg/ef/ef筆字03.png");
//	CreateTextureEX("絵背景筆雫02", 5100, Center, Middle, "cg/ef/ef筆字02.png");
//	Rotate("絵背景筆雫02", 0, @0, @180, @0, null,true);
//	CreateTextureEX("絵背景筆雫03", 5100, Center, Middle, "cg/ef/ef筆字04.png");
//	Zoom("絵背景筆雫*", 0, 900, 900, null, false);
//	Zoom("絵背景200", 200, 3000, 3000, Axl1, false);
//	Wait(200);
//	Fade("絵色白", 0, 1000, null, true);
//	Zoom("絵背景筆雫01", 200, 1300, 1300, Dxl1, false);
//	MusicStart("SE01",0,700,0,2500,null,false);
//	MusicStart("SE02",0,1200,0,800,null,false);
//	Fade("絵背景筆雫01", 0, 1000, null, true);
//	Wait(200);
//	Zoom("絵背景筆雫02", 200, 1300, 1300, Dxl1, false);
//	MusicStart("SE01a",0,700,0,4500,null,false);
//	MusicStart("SE02a",0,1200,0,1200,null,false);
//	Fade("絵背景筆雫02", 0, 1000, null, true);
//	Wait(200);
//	Zoom("絵背景筆雫03", 200, 1300, 1300, Dxl1, false);
//	MusicStart("SE01b",0,700,0,3500,null,false);
//	MusicStart("SE02b",0,1200,0,1300,null,false);
//	Fade("絵背景筆雫02", 0, 0, null, true);
//	Fade("絵背景筆雫03", 0, 1000, null, true);
//	Wait(200);
//	MusicStart("SE01c",0,700,0,4500,null,false);
//	MusicStart("SE02c",0,1200,0,1000,null,false);
//	CreateColorSP("黒幕１", 15000, "BLACK");
//	DrawTransition("黒幕１", 300, 0, 1000, 300, Axl1, "cg/data/zzex_circle_01_00_0.png", true);
//	Delete("絵背景筆*");
//	Delete("絵背景200");
//	Delete("絵色白");
//	SetVolumeEX("@xbgm*", 1500, 0, null);
//	Wait(1500);
//	CreateTextureSP("絵背景BG", 50, Center, Middle, "cg/bg/l/bg0607300半田明神_拝殿_布地_l.jpg");
//	Request("絵背景BG", Smoothing);
//	SetShade("絵背景BG", HEAVY);
//	Zoom("絵背景BG", 0, 650, 650, null, true);
//	Fade("黒幕１", 1000, 0, null, true);
//	Delete("黒幕１");
//	TextBoxDelete(150);


//	ClearWaitAll(2000, 2000);


	EndScene();
}
