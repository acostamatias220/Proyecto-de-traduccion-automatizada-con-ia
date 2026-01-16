
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2240沙紅羅.nss_MAIN
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
	$GameName = "ba2248沙紅羅_似鳥_ノーコ.nss";
}

scene ba2240沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1000">
////////////header////////////
//file name "ba2240沙紅羅.nss"
//title "神様が護ってくれている"
//previous "ba2235沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "ba2248沙紅羅_似鳥_ノーコ.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 19030);
	DeleteAllSt(0,true);

	if($PreGameName=="ba2235沙紅羅.nss")
	{
	Wait(2000);
	}

	CreateColorEX("上背景２", 20000, "#000000");
	Fade("上背景２", 0, 1000, null, true);

	FadeDelete("上背景", 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//◆音声指示：「おい、沙紅羅！　さくらしっかりしろ！」
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100010ksr">
「…………！　…………！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100020skr">
「………………」


//◆音声指示：「沙紅羅！　起きろってば！」
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100030ksr">
「沙紅……！　……ってば！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100040skr">
「ん……んぁ……ん……タカ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	PrintFadeNut("上背景", 500, true);

{	ClockPass(2243);}

//◆場所：地下_通路_地震後


	OnBG(10,"bg0701200地下_通路_地震後");
	FadeBG(0,true);

	CreateTextureEX("絵背景100", 10, Center, Middle, "cg/bg/bg0701200地下_通路_地震後.jpg");
	SetShade("絵背景100", EXTRAHEAVY,);
	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("上背景２", 2000, null, true);
	Wait(500);
//	Fade("絵背景100", 3000, 0, null, true);
	FadeDelete("絵背景100", 3000, null, false);



//◆演出指示：天井が崩れている：もしかしたら他の背景必要かも


	CreateSE("SE10","se環境_風_l");
	CreateSE("SE11","se戦闘_倒壊03");
	MusicStart("SE10",2000,1000,0,1000,null,true);
	MusicStart("SE11",4000,200,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100050ksr">
「なに寝ぼけてるんだ？
　オレだ！　河原屋双六だ！」

{
	DeleteAllSt(200,true);

	St("C",19100, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100060skr">
「え……あ、ああ……そうか……」

{	St("C",19100, @0,@0,"fu沙紅羅_頭かき_shy");
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100070skr">
「って、双六さんがなんで枕元に！？」

{	St("C",19100, @0,@0,"fu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100080skr">
「っていうか、え？　ここはどこ――」

{	DeleteAllSt(200,true);
	St("MR",700, @-50,@0,"bu双六a_通常_shock");
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100090ksr">
「あのビルの地下だ。
　大狸が暴れて、地下に穴が抜けたんだろう」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100100skr">
「地下……」

/*
//※下倉注：この台詞カットで 2010/11/02

{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100110ksr">
「地下に潜るって話を聞いて、もしかしたらと思って来てみたんだが……まさかドンピシャだとはな」

*/

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100120ksr">
「奇跡的だぜ。ほら、上」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);


	CreateTextureEX("絵背景100", 10, Center, Middle, "cg/bg/bg0701200地下_通路_地震後.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Zoom("絵背景100", 1000, 1500, 1500, Dxl1, false);

	Move("絵背景100", 1000, @+150, @+100, Dxl1, true);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　頭上には天井に穴が開いており、その向こうに瓦礫が折り重なっている。

　両側から均等に力がかかり、ちょうどつっかえているような格好だ。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("絵背景100", 1000, @-150, @-100, Dxl1, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl1, true);
	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100130skr">
「もし、どっちかのタイミングがずれてたら――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100140ksr">
「神様でも、守ってくれてるみたいだな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100150skr">
「あ――ッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100160ksr">
「ん？　どうした、沙紅羅？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);


	SceneOut(5000, 300, "slide_01_01_0");

	Zoom("絵背景100", 0, 1500, 1500, null, false);
	Move("絵背景100", 0, @+150, @+100, Dxl2, true);

	SceneIn(300, "slide_01_01_1");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　沙紅羅は、何かに導かれるように瓦礫の小山を上り、その頂上で背伸びした。

　指の先が引っ張り出すのは――

{	St("R",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100170ksr">
「アザナエル……！？」

{	St("R",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100180ksr">
「って、なんでこんなところに？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100190skr">
「……アタシは、絶対頼んねーと思ってたけど」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100200skr">
「今日なら、神様を信じられっかも」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100210ksr">
「はは……なんてこった」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100220ksr">
「ホントにお前は、大した女だよ」

{	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100230ksr">
「なんにせよこれで準備は整った。
　アザナエル、貸せ――」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100240skr">
「双六さん」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100250skr">
「これ……アザナエルっていうんですよね？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100260ksr">
「ああ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100270skr">
「アタシ、バカだからよくわかんないんだけど。
　これをつかうと、撃った人間の願いが叶う？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100280ksr">
「いや、違う」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100290ksr">
「ロシアンルーレットに成功すると、撃たれた人間の本当の願いが叶うんだ」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100300skr">
「双六さんは……これでなにをする気ですか？
　まさか、自分が撃って――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100310ksr">
「オレが撃つワケじゃねぇよ」



{	St("MR",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100320ksr">
「星に預けろって、双一親分に言われてる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2244);}


//	TextBoxDelete(150);

	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100330ksr">
「星はアザナエルの力を良く知ってるし、この街を守りたいって気持ちも人一倍強いはずだ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100340skr">
「大狸を、殺す？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100350ksr">
「だろうな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100360skr">
「アザナエルが願いを叶えるなら、死んでしまったフウリを、生き返らせることも出来るはず」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100370skr">
「でも、その星とかいう人の所まで持っていく必要はあるんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100380skr">
「時間がないです。今すぐにでも――」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100390ksr">
「アザナエルが叶えるのは、撃たれたヤツの本当の願い」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100400ksr">
「自分の命を危険にさらすんだ。
　普通の知り合いでも躊躇するだろ？」



//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100410ksr">
「おまえはフウリが生き返ることを、本気で願えるか？」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100420ksr">
「自分が死ぬ可能性を背負ってまで、アイツを生き返らせたいって、即答できるか？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100430skr">
「…………」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100440skr">
「アタシは、今日フウリと会ったばっかりです。
　出来ることなら、助けてやりたいと思います」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100450skr">
「でも――命を投げ出せるなんて、嘘かもしれない」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100460ksr">
「だろ？　だったら――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100470skr">
「でもこの街にひとり、本気で、フウリの死を拒絶してるヤツがいます」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100480skr">
「心の底から、フウリを生き返らせたいって願ってるヤツがいます」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100490ksr">
「今のアイツは、人の話なんてきかねぇぞ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100500skr">
「アタシが撃ちます」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]

/*
//※下倉注：この台詞カット。フウリが止めるワケではないので…… 2010/11/02

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100510skr">
「フウリならきっと、止められるはず」

*/

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100520ksr">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100530skr">
「すいません。アタシはこれで――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100540ksr">
「こっちだ」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100550ksr">
「道、わかんねぇだろ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100560skr">
「助けてくれるんですか――？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100570ksr">
「ほら、ボサッとしてっと手遅れになっちまうぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2245);}


//◆場所：地下_地下鉄
	SetVolumeEX("@xbgm*", 1000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteAllSt(0,false);

	Delete("絵背景100");

	OnBG(10,"bg0703100地下_地下鉄_通常");
	FadeBG(0,true);

	Wait(500);

	CreateSE("SE10","se環境_風低音_l");
//	CreateSE("SE11","se戦闘_倒壊03");
	MusicStart("SE10",2000,1000,0,1000,null,true);
//	MusicStart("SE11",4000,200,0,1000,null,true);


	CreateSE("SEL01","se動作_歩く02_l");
	MusicStart("SEL01",300,1000,0,800,null,true);
	SceneIn(1000, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100580ksr">
「カゴメアソビは、６回に５回、成功する」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100590ksr">
「一か八かで街を救うのに、決して分は悪くない」

{	St("MR",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100600ksr">
「誰かに任しちまえばいいんだ」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100610ksr">
「……どうしてそこまで、肩入れする？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100620skr">
「フウリには世話になったんです」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100630skr">
「それに――アタシは信じてます」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100640skr">
「取り返しのつかないことなんて、絶対にないって」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100650ksr">
「…………」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100660ksr">
「おまえ、さ」

{	St("MR",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100670ksr">
「よかったら、秋葉原に住めよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100680skr">
「はい？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100690skr">
「え……あれ？　それって、どういう――！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100700ksr">
「これだけぶち壊されちまったんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100710ksr">
「戦後のガード下みたいに、ゼロからやり直すしかねぇ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100720ksr">
「そしたら、オレたち河原屋組の出番だ」

{	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100730ksr">
「この街、元通りに――
　いや、もっとすげえ街にしてやる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100740skr">
「双六さんならきっとできます」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100750ksr">
「そん時、おまえが側に――」

{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100760skr">
「え――！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100770ksr">
「……いや、なんでもねえ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100780skr">
「いや、あの、でも今――」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100790ksr">
「ここだ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);

	TextBoxDelete(150);

	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteAllSt(0,false);

	Wait(1000);
//◆ＳＥ：ぎい、と扉が開く音

	CreateSE("SE01","se動作_ドア開ける05");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);


{	ClockPass(2246);}


//◆場所：あにのあな_店内


//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0302200あにのあな_店内_停電.jpg");
//	Fade("絵背景100", 0, 1000, null, false);

	OnBG(10,"bg0302200あにのあな_店内_停電");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @50,@0,"bu沙紅羅_通常_surprise");
	Move("@StNameML/ML*", 300, @-50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100800skr">
「こんなところに……？」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu双六a_通常_normal");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100810ksr">
「まだこのビルは無事みたいだな」

{	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100820ksr">
「よし、上だ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100830skr">
「はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteAllSt(0,false);


//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);


//あきゅん「修正指示：bg0108400秋葉原_俯瞰_崩壊を使用して全体を一度みる感じに」

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Wait(2000);

	CreateTextureEX("絵背景101", 101, Center, Middle, "cg/bg/bg1101500スパコン館_裏面_廃墟.jpg");
	Fade("絵背景101", 0, 0, null, true);



//◆ＳＥ：扉開く

	CreateSE("SE01","se動作_屋上ドア開ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);


//◆演出指示：崩壊した街の絵

//★ wam井野 崩壊絵のビルの上からという感じのが見あたらなかったのでスパコン館_裏面_廃墟を割り当てています。
//スパコン館_裏面_廃墟 は差し込みどころが難しかったので削除

	CreateSE("風", "se環境_風_l");
	MusicStart("風", 0, 1000, 0, 1000, null, true);


	Fade("絵色演出黒", 2000, 0, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{
//	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100840skr">
「あ……」

{
//	Fade("絵背景101", 500, 1000, null, true);
}

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100850skr">
「ひどい……」

{
//	St("C",700, @0,@0,"bu双六a_通常_sad");
//	FadeSt("C",200,true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100860ksr">
「まるで空襲の後みたいだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2247);}


	SetVolumeEX("風", 1000, 0, null);



/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0206]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/400100870tsr">
「ぐ、ぐ、ぐ、ぐ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

//◆演出指示：めきめきビルが崩れていく


	TextBoxDelete(150);


	SceneOut(5000, 300, "slide_01_01_0");

	Delete("絵背景100");

	CreateTextureEX("タヌ", 1000, Center, Middle, "cg/ev/l/ev2220太四郎ビル大破壊b_l.jpg");
	Zoom("タヌ", 0, 550, 550, null, true);
	Fade("タヌ", 0, 1000, null, false);
	#ev2220太四郎ビル大破壊b = true;

	SceneIn(300, "slide_01_01_1");

	CreateVOICE("その他男声","ba22/400100870tsr");
	MusicStart("その他男声",0,700,0,1000,null,false);

	CreateSE("SE03","se戦闘_倒壊02");
	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("タヌ", 2000, 3, 2, 0, 0, 500, null, false);
	Zoom("タヌ", 4000, 600, 600, Dxl1, true);


	SoundPlay("@xbgm22_onint",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100880skr">
「あれが、あの大狸？」

//◆音声指示：遠くから
{
//	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
//	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400100890nki">
「そんなもの、このシュヴァルツシルト・チェインで――」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100900skr">
「は？　似鳥？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//窓準備
	CreateAXLWindowEX("絵窓", "Y",2000, 96, 288, false);
//	CreateAXLWindow("絵窓", 2000, 0, 96, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
//	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");


//キャラ準備
	CreateTextureEX("絵窓/絵立絵", 1910, -400, -280, "cg/bu/bu似鳥堕皇_通常_pride.png");
	Move("絵窓/絵演立絵", 0, @100, @50, null, true);

//動作
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, false);
//	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵立絵", 200, 1000, null, true);

	Move("絵窓/絵立絵*", 3000, @0, @+290, AxlDxl, true);
	Wait(500);
//	Zoom("絵窓", 200, 1000, 0, Dxl2, true);
	WindowAXLZoom("絵窓", "Y", 200, 0, Dxl2, true);

	Delete("絵窓*");
	Delete("絵窓");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100910skr">
「ってか、あの格好は――」

//◆音声指示：遠くから
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400100920nki">
「でりゃああああああッ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＳＥ：ぷにょ――――ん


	CreateTextureEXadd("絵色100", 2000, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateSE("SE01","se戦闘_金属弾く04");
	CreateSE("SE02","se戦闘_切断02");
	MusicStart("SE01",0,500,0,1000,null,false);
	MusicStart("SE02",0,500,0,1000,null,false);

	Fade("絵色100", 200, 600, null, true);
	Fade("絵色100", 1000, 0, null, true);
//	WaitKey(1500);

	CreateSE("SE03","se擬音_ギャグ_ぷにょーん");
	MusicStart("SE03",0,500,0,1000,null,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//◆音声指示：遠くから
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400100930nki">
「ぎゃっ！」

//◆音声指示：遠くから
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400100940nko">
「そのつつみ、なんぴとたりともおかせない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 300, "slide_01_01_0");

	Delete("タヌ");
	DeleteAllSt(0,true);

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100950skr">
「か――――カッケー！！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100960ksr">
「そ……そうか？」

{	St("R",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/400100970ksr">
「まあいいや。
　とにかく、アザナエルでタヌキを――」

/*
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);
	Wait(500);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
*/
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1000);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400100980skr">
「いや、でも――おい、ノーコッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	AgainSt("C",700, @0,@0,"bu沙紅羅_通常_shout");

	TextBoxDelete(150);
	Wait(150);




//マスク準備
	CreateTextureEX("スラッシュ", 6600, -600, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEX("スラッシュ２", 6610, 600, Middle, "cg/mask/ciスラッシュ_05_01z.png");

	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 6510, "#990000");
	CreateTextureEXadd("絵マスク/絵演背景", 6520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 6530, center, middle, "cg/st/st似鳥堕皇_通常_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 712, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);


//マスク準備
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateColorEX("絵マスク左/絵演色", 6510, "#003399");
	CreateTextureEXadd("絵マスク左/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");


//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/st/stノーコa_通常_shock.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);

//イン動作
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, -300, 0, Dxl3, false);
	Move("絵マスク左", 200, -300, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -150, 80, Dxl1, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//◆音声指示：遠くから
{
//	St("ML",700, @0,@0,"buノーコa_通常_shock");
//	FadeSt("ML",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400100990nko">
「――さくらと、すごろく？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//イン動作
	Fade("スラッシュ２", 200, 1000, null, false);
	Move("スラッシュ２", 200, @-300, 0, Dxl3, false);
	Move("絵マスク", 200, 300, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 420, middle, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
{
//	St("MR",700, @0,@0,"bu似鳥堕皇_通常_shout");
//	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400101000nki">
「おまえ、生きてたのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	Wait(1000);

//アウト動作
	Fade("スラッシュ２", 200, 0, null, false);
	Move("スラッシュ２", 200, 512, 0, Dxl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, false);
//アウト動作
	Fade("スラッシュ", 200, 0, null, false);
	Move("スラッシュ", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, true);


	TextBoxDelete(150);







	EndScene();
}
//next "沙紅羅" "ba2248沙紅羅_似鳥_ノーコ.nss"
