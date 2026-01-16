
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2250フウリ.nss_MAIN
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
	$GameName = "c2300フウリ.nss";
	//$GameCircle=false;

}

scene c2250フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

	ClockDelete(0,true);//時計は非表示！

//◆場所：柳神社_境内
//	OnBG(10,"bg1502100柳神社_お墓_通常");
//	FadeBG(0,true);
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",0,true);

//◆ＥＶ："ev/ev2250カゴメアソビ4.txt" 差分Ａ
	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2250カゴメアソビ4a.jpg");
	Fade("絵背景１", 0, 1000, null, true);

//◆演出指定：ＢＧＭカゴメカゴメが流れ始める
	MusicStart("@xbgm14",0,450,0,1000,null,true);

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100010wfu">
「もしも私が死ぬのなら」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100020wfu">
「それは、私の願いってことじゃ、ないですか」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100030wfu">
「……私がわからないです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100040wfu">
「ずっとずっと、貫太さんが生きてるって、自分にそう言い聞かせて、ウソもホントになっちゃいました」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100050wfu">
「ホントもウソになっちゃったかもしれません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100060wfu">
「もしもアザナエルがそれを教えてくれるなら」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100070wfu">
「やっと、肩の荷物がおります」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100080okt">
「どうしても、行くんだね？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100090wfu">
「はい」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100100okt">
「帰ってこられなくても」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100110wfu">
「はい」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100120okt">
「後悔は、しないんだね」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100130wfu">
「はい」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100140okt">
「そうか……」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100150okt">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9040]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100160okt">
「なら、僕は――」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100170okt">
「僕は、あっちを向いていよう」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100180okt">
「君の足を、引っ張ることは、しない」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100190okt">
「だって、それは……僕は……」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100200okt">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9050]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100210okt">
「僕は……やっぱり今でも、君が好きだからね」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100220wfu">
「最後まで……わがままで、ごめんなさい」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/500100230okt">
「…………いいんだ」

　そう言って――太四郎は、フウリに背を向ける。

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100240wfu">
「ありがとう――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100250wfu">
「ごめんなさい――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100260wfu">
「さようなら――太四郎さん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆演出指定：銃を頭に向ける
	PrintGO("上背景", 30000);

//◆ＥＶ："ev/ev2250カゴメアソビ4.txt" 差分Ｂ
	CreateTextureEX("絵背景２", 2000, 0, 0, "cg/ev/ev2250カゴメアソビ4b.jpg");
	Fade("絵背景２", 0, 1000, null, true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100270wfu">
「貫太さん、聞こえますか？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100280wfu">
「もう、遠く……遠く離れてしまったけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500100290wfu">
「私のタイコの音……聞こえますよね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@SE*", 3000, 0, NULL);
	SetVolume("@x*", 5000, 0, NULL);

	CreateColorEX("絵色１", 10000, "#FFFFFF");
	Fade("絵色１", 2000, 1000, null, true);

	Wait(3000);

//<continuation number="920">
////////////header////////////
//file name "c2250フウリ.nss"
//title "貫太からの答え"
//previous "2250カゴメ4.nss"

////////////footer////////////
//next "フウリ" "c2300フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);


//◆場所：柳神社_境内
//↑　★inc櫻井 2240フウリでは背景がお墓前でしたが、境内で良いのでしょうか。

	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);


//★ inc櫻井　じらす意味を込めて弾切れ音のあとに少しウェイトをいれています。

	SetVolume("@x*", 0, 0, NULL);

//◆ＳＥ：カチッ！
	CreateSE("弾切れ", "se銃_弾切れ01");
	MusicStart("弾切れ", 0, 700, 0, 1000, null, false);

	FadeDelete("上背景",0,null,true);

{	ClockPass(2250);}

	Wait(1500);

	CreateSE("林", "se環境_風と葉っぱ_l");
	MusicStart("林", 1200, 500, 0, 1000, null,true);

	Wait(1500);

	St("ML",700, @0,@0,"buフウリ_銃構え_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100010wfu">
「…………あれ？」

//◆ＳＥ：カチッ！　カチッ！　カチッ！

{	CreateSE("弾切れ02", "se銃_弾切れ02");
	MusicStart("弾切れ02", 0, 700, 0, 1000, null, false);
	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100020wfu">
「あれ？　あれ？　あれ！？」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100030wfu">
「た……弾切れ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：アザナエル落下
//	CreateSE("落下", "se銃_落とす01");
//	MusicStart("落下", 0, 700, 0, 1000, null, false);

	Wait(500);

	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100040wfu">
「そ……そんな……
　そんな……のって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("ガクリ", "se人体_倒れる04");
	MusicStart("ガクリ", 0, 700, 0, 1000, null,false);
	Move("@StNameML/ML*", 500, @0, @150, AxlAuto, false);
	DeleteSt("ML",200,true);


	Wait(1000);

{	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",200,true);}


	SoundPlay("@xbgm26", 0, 450, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100050okt">
「フウリ……」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100060okt">
「きっと……これが貫太からの答えだよ」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100070okt">
「彼は、自分の所に来るなって。
　そう、言いたいんだよ」

{	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100080okt">
「……だよな、貫太」

{	DeleteSt("MR",200,true);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100090wfu">
「そんな……」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100100wfu">
「私は……わかりません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolume("林", 1000, 0, null);

//	SoundPlay("@xbgm26", 1000, 450, true);

	CreateSE("SET00A", "se擬音_フラッシュバック");
	MusicStart("SET00A", 0, 200, 0, 1000, null, false);

	CreateColorEX("白", 20000, WHITE);
	Fade("白", 1000, 1000, null, true);

	ClockDelete(0,true);

	DeleteSt("ML",0,false);
	CreateColorSP("下白", 800, WHITE);
	CreateTextureSP("背景", 900, @0, @0, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
	Fade("背景", 0, 600, null, false);


	CreateTextureEX("絵ＳＴ100", 1100, 80, InBottom, "cg/bu/bu貫太_通常_normal.png");
	CreateStencil("絵マスク１",1110,80,InBottom,128,"cg/bu/bu貫太_通常_normal.png",false);
	CreateColor("絵マスク１/色１", 1120, 0, 0, 1024, 576, "BLACK");

	Move("絵ＳＴ100", 0, @200, @0, null, true);
	Move("絵マスク１", 0, @200, @0, null, true);
	DrawTransition("絵マスク１/色１", 0, 0, 500, 100, null, "cg/data/slide_02_00_0.png", true);

	Fade("絵マスク１/色１", 300, 900, null, false);
	Fade("絵ＳＴ100", 0, 800, null, true);

	Fade("白", 300, 0, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100110wfu">
「こんなに、こんなに強く想っているのに！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100120wfu">
「こんなに、こんなに好きなのに！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100130wfu">
「どうして……どうして、届かないんですかッ！？」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100140wfu">
「私のタイコは、どうして……どうして……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2251);}

	TextBoxDelete(150);

	Fade("白", 300, 1000, null, true);

{	ClockPass(2250);}

	Delete("下白");


	Delete("絵ＳＴ100");
	Delete("絵マスク１/色１");
	Delete("背景");
//	SetVolume("@xbgm*", 1000, 0, null);

	FadeDelete("白",1000,null,true);

//	CreateSE("林", "se環境_林_l");
//	MusicStart("林", 700, 500, 0, 1000, null,true);

{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100150wfu">
「貫太さんのいない世界なんてッ！」

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100160wfu">
「貫太さんがいない世界に、私がいる意味なんて――！」

{	Move("@StNameC/C*", 500, @-100, @0, Axl1, false);
	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"bu貫太_通常_shout");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100170okt">
「フウリっ！」

{	DeleteSt("MR",200,true);
	St("L",700, @0,@0,"stフウリ_通常_angry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100180wfu">
「来ないでくださいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("L",700, @0,@0,"stフウリ_通常_sad");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100190wfu">
「追いかけて、来ないで――」

{	DeleteSt("L",200,true);
	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100200okt">
「……僕は、待ってる」

{	DeleteSt("MR",200,true);
	St("L",700, @0,@0,"stフウリ_通常_sad");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100210wfu">
「待つなんて、やめて――」

{	DeleteSt("L",200,true);
	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100220okt">
「僕にももう、帰る場所はないんだ」

{	DeleteSt("MR",200,true);
	St("L",700, @0,@0,"stフウリ_通常_sad");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100230wfu">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("L",200,true);
	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100240okt">
「同情をひくみたいで、本当は言いたくなかったけど」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100250okt">
「僕は、父さんの葉っぱを勝手に盗んだ。
　それで、アザナエルの結界を解いた」

{	DeleteSt("MR",200,true);
	St("L",700, @0,@0,"stフウリ_通常_sad");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100260wfu">
「太三郎様の……？」

{	DeleteSt("L",200,true);
	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100270okt">
「そう。だから……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2252);}

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100280okt">
「もう、帰れない」

{	DeleteSt("MR",200,true);
	St("L",700, @0,@0,"stフウリ_通常_sad");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100290wfu">
「……どうして、そんなことを？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);

//	TextBoxDelete(150);


//嶋：いいシーンなので、一人ずつ表示して雰囲気作りに変更します
//	CreateWindow("ウィンドウ１", 3000, 512, 0, 512, 576, false);
//	CreateWindow("ウィンドウ１EX", 3000, 512, 0, 512, 576, false);
//	CreateTextureEX("ウィンドウ１EX/絵ev100", 2000, @0, @0, "cg/bg/l/bg1502100柳神社_お墓_通常_l.jpg");
//	Fade("ウィンドウ１EX/絵ev100", 0, 1000,null,false);
//	DrawTransition("ウィンドウ１EX/絵ev100", 1000, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", false);

//	CreateTextureEX("ウィンドウ１/絵ev100", 2100, 550, Inbottom, "cg/bu/bu貫太_通常_hard.png");
//	Request("ウィンドウ１/絵ev100", Smoothing);
//	Zoom("ウィンドウ１/絵ev100", 0, 1500, 1500, null, true);

//	Fade("ウィンドウ１/絵ev100", 0, 1000,null,false);
//	DrawTransition("ウィンドウ１/絵ev100", 1000, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", false);

//	Fade("ウィンドウ１/絵ev100", 0, 1000,null,false);
//	DrawTransition("ウィンドウ１/絵ev100", 1000, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", false);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 100, 9, 69, "cg/bg/bg1501100柳神社_境内_通常.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", MEDIUM);
	CreateTextureEX("絵st100", 2000, Center, -208, "cg/bu/l/bu織田貫太_通常_shout_x01.png");
	CreateTextureEX("絵st300", 2000, Center, -238, "cg/bu/l/bu織田貫太_通常_hard_x01.png");
	CreateTextureEX("絵st200", 2000, Center, -238, "cg/bu/l/bu織田貫太_通常_cry_x01.png");
	CreateTextureEX("絵st400", 2000, Center, -238, "cg/bu/l/bu織田貫太_通常_sad_x01.png");

	SetVolume("林", 300, 0, null);

	Move("絵背景100", 500, @0, 53, Dxl1, false);
	Move("絵st100", 500, @0, -238, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, false);
	Fade("絵st100", 300, 1000, null, true);


//★ inc遠藤 貫太の表情が変わる度にパカパカしちゃってるよ。ポーズ変えじゃないし、パカパカしないようにしてください。キモイす。
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100300okt">
「君に会いたかったからに決まってる！！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100310wfu">
「…………」

{	Fade("絵st300", 300, 1000, null, true);
	Fade("絵st100", 0, 0, null, false);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100320okt">
「君のためだったら、どんな格好でもいい！
　僕が僕でなくなってもいい！」

{
//	CreateTextureEX("ウィンドウ１/絵ev200", 2150, 600, Inbottom, "cg/bu/bu貫太_通常_shout.png");
//	Request("ウィンドウ１/絵ev200", Smoothing);
//	FadeDelete("ウィンドウ１/絵ev100",300,Axl2,false);
//	Zoom("ウィンドウ１/絵ev200", 0, 1500, 1500, null, true);
//	Fade("ウィンドウ１/絵ev200", 200, 1000,null,true);
	Fade("絵st200", 300, 1000, null, true);
	Fade("絵st300", 0, 0, null, false);
}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100330okt">
「僕なんか認めてくれなくていい！
　なんでもいい！」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100340okt">
「君は生きなきゃならない！」

{	Fade("絵st400", 300, 1000, null, true);
	Fade("絵st200", 0, 0, null, false);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100350okt">
「どんな辛いことがあっても、君は――」

//◆ＳＥ：歩いて去っていく

{
//	Move("@StNameL/L*", 800, @-150, @0, null, false);
//	DeleteSt("L",500,false);
//	CreateTextureEX("ウィンドウ１/絵ev300", 2160, 600, Inbottom, "cg/bu/bu貫太_通常_sad.png");
//	Request("ウィンドウ１/絵ev300", Smoothing);
//	FadeDelete("ウィンドウ１/絵ev200",300,Axl2,false);
//	Zoom("ウィンドウ１/絵ev300", 0, 1500, 1500, null, true);
//	Fade("ウィンドウ１/絵ev300", 200, 1000,null,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100360wfu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("去る", "se動作_歩く04_l");
	MusicStart("去る", 300, 500, 0, 1000, null, true);

	CreateColorEX("絵色100", 3000, "Black");
	Fade("絵色100", 1000, 1000, null, true);

	Delete("絵背景*");
	Delete("絵st*");

	SetVolume("去る", 3000, 0, null);
	SetVolume("林", 1000, 0, null);

	CreateColorSP("黒", 3000, BLACK);
	Delete("絵色100");

//	Delete("ウィンドウ*/*");


	TextBoxDelete(150);

//◆音声指示：遠くから

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100370okt">
「待ってるから！」

//◆音声指示：遠くから
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100380okt">
「僕、ずっと、ずっと――」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/c22/500100390okt">
「君を待ってるから――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SceneOut(20000, 1000, "blind_01_00_0");
	SetVolume("去る", 1000, 0, null);

	Delete("黒");
	DeleteSt("C",0,true);
//◆場所：秋葉原_万世橋
	OnBG(10,"bg0104200秋葉原_万世橋_閉店");

//◆時間：ジャンプ
{	ClockPass(2254);}
	Wait(2000);


	FadeBG(0,true);

//	SoundPlay("@xbgm26",2000,450,true);

	SceneIn(1000, "blind_01_00_1");

	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,500,0,1000,null,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100400wfu">
（…………）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100410wfu">
（……ごめんなさい、太四郎さん）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100420wfu">
（私は、でも、駄目なんです）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100430wfu">
（貫太さんがいなかったら、もう……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100440wfu">
（全てが、どうでも……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100450wfu">
（…………）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆時間：ジャンプ
{	ClockPass(2257);}


	SetVolumeEX("@SE*", 3000, 0, NULL);

	CreateSE("SE11","seガヤ_交通_l");
	MusicStart("SE11",2000,500,0,1000,null,true);


//◆場所：秋葉原_中央通り
	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteSt("C",0,true);
	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"fuフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100460wfu">
（タイコの音は、届かない）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100470wfu">
（貫太さんを追いかけた１年……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100480wfu">
（私は、何をしに来たんだろう？）

{	St("C",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100490wfu">
（ここに来たのは、貫太さんの死を知るため……？）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100500wfu">
（貫太さんがもういないってことを認めて、それで……）

//★ inc櫻井　切り替え秒数600はワザとです。
{	St("C",700, @0,@0,"fuフウリ_胸手_lost");
	FadeSt("C",600,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100510wfu">
（終わらせちゃおうかな）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100520wfu">
（全部終わらせて）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolumeEX("@SE*", 3000, 0, NULL);
	CreateSE("SE10","seガヤ_ざわざわ_l");
	MusicStart("SE10",2000,700,0,1000,null,true);





//◆演出指定：画面、あにのあな屋上を見上げる
	DeleteSt("C",200,false);
	CreateTextureEX("絵背景100", 100, Center, -512, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("絵背景100", 1000, 1000, null, false);

	Fade("絵色100", 1000, 0, null, false);
	Move("絵背景100", 2000, @0, 0, Dxl2, true);
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100530wfu">
（貫太さんの側に――）

{	SetVolume("@SE*", 1000, 0, null);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100540nko">
「しのう」

//	TextBoxDelete(150);
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100550wfu">
「え――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm22", 0, 450, true);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev1800ノーコ雨風に濡れる.txt"
//	CreateTextureEX("ノーコ", 2500, @0, @0, "cg/ev/ev1800ノーコ雨風に濡れる.jpg");
//	Fade("ノーコ", 1000, 1000, null, true);


//★inc櫻井 1800ノーコより引用
//嶋：雨降っていないので、全変更
//マスク準備
	CreateTextureEX("絵マスク枠", 1610, 4, 110, "cg/mask/ciライン_00_01z_ogm.png");
	Rotate("絵マスク枠", 0, @0, @0, 71, null,true);
	CreateMask("絵マスク左", 1000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1520, 0, 280, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	Zoom("絵マスク左/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵マスク左/絵演背景", MEDIUM);


//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 1530, center, middle, "cg2/fu/fuノーコa_通常_normal.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -662, -389, null, true);
	Move("絵マスク枠", 0, -1024, 200, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);

//イン動作
	Move("絵マスク枠", 500, -20, 200, Dxl3, false);
	Move("絵マスク左", 500, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 500, 1000, null, false);
	Move("絵マスク左/絵演立絵", 500, -662, -409, Dxl1, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100560wfu">
「ノーコちゃんッ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100570nko">
「私といっしょに――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100580nko">
「しのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵マスク左/絵演立絵", 500, -662, -429, Dxl1, true);
	Fade("絵マスク左/絵演立絵", 300, 0, Dxl1, false);
	Move("絵マスク左/絵演立絵", 300, -662, 1000, Dxl1, true);

	Move("絵マスク枠", 500, -1024, 0, Dxl3, false);
	Move("絵マスク左", 500, -1024, 0, Dxl3, true);

	Delete("絵マスク左/絵*");
	Delete("絵マスク枠");
	Delete("絵マスク左");

//★inc櫻井 1800ノーコより引用
//嶋：シーン変更に基づき変更

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵背景*");
	Delete("絵色*");
	Delete("絵人物*");
	OnBG(10,"bg0301111あにのあな_正面_通常");
	Move("@OnBG*", 0, 0, -1100, null, true);
	FadeBG(0,true);

	DrawDelete("黒幕１", 200, 100, null, "slide_02_01_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100590wfu">
「だめッ！！」

{	DeleteSt("C",200,false);}
　フウリは咄嗟に、落下地点へと駆け寄ると――

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100600wfu">
「そりゃあああああ！！」


{	SetVolumeEX("@xbgm*", 500, 0, null);
	CreateSE("抱擁", "se動作_抱く");
	MusicStart("抱擁", 0, 700, 0, 1000, null);
	Shake("@OnBG*", 300, 10, 20, 0, 0, 300, Axl1, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100610wfu">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100620wfu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2258);}

{	St("C",700, @0,@60,"buフウリ_通常_fear");
	Move("@StNameC/C*", 300, @0, @-60, null, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100630wfu">
「……あれ？」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100640wfu">
「ノーコちゃん、無事？」

{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100650nko">
「うそ」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100660wfu">
「うそ？　って、飛び降りが！？」

{	SoundPlay("@xbgm25", 0, 450, true);
	St("MR",700, @0,@0,"buノーコa_通常_fear");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100670nko">
「あなたは、わたしをたすけようとした」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100680nko">
「それは、なぜ？」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100690wfu">
「あ、当たり前です！　当然のことをしたまで――」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100700nko">
「それと、おなじ」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100710nko">
「フウリ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100720nko">
「あなたは、わたしをたすけてくれた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100730nko">
「おかげで、わたしはたくさんのことをまなんだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100740nko">
「みじかいけれど、とてもたいせつなじかんをすごせた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100750nko">
「うれしかった」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100760wfu">
「な……なんですか、急に？　変……変ですよ！」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100770wfu">
「っていうか――あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2259);}

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100780wfu">
「身体が――ノーコちゃん！？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100790wfu">
「もう、身体が現実になったんじゃ――」

{	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	Fade("@StNameC/C*",200,800,null,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100800nko">
「カゴメアソビに、しっぱいした」

{	Fade("@StNameC/C*",200,0,null,true);
	DeleteSt("C",0,true);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100810wfu">
「ウソ……」

{	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	Fade("@StNameC/C*",200,800,null,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100820nko">
「だから、もうきえる」

{	Fade("@StNameC/C*",200,0,null,true);
	DeleteSt("C",0,true);
	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100830wfu">
「そ、そんな……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SetVolume("@xbgm*", 1000, 0, null);

	DeleteSt("ML",200,true);

	CreateTextureEX("絵背景100", 100, Center, -1667, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", MEDIUM);

//	SoundPlay("@xbgm28",1000,450,true);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);

{	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	Fade("@StNameC/C*",500,600,null,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100840nko">
「みじかいあいだだったけど、しあわせだった」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100850wfu">
「だめ！　やめて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("揺用", 2005);

	DeleteSt("C",0,true);

{	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	Fade("@StNameC/C*",0,600,null,true);}

	FadeDelete("揺用", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100860nko">
「さしちゃって、ごめんなさい」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100870wfu">
「そんなのいいです！　いいですから！
　だから、行かないで――もっとお話――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("揺用", 2005);

	DeleteSt("C",0,true);

{	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	Fade("@StNameC/C*",0,600,null,true);}

	FadeDelete("揺用", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100880nko">
「おともだちになってくれて、ありがとう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100890nko">
「あなたも、おともだちと、なかよく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("揺用", 2005);

	DeleteSt("C",0,true);

{	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	Fade("@StNameC/C*",0,600,null,true);}

	FadeDelete("揺用", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/c22/500100900nko">
「さよなら」

{
//	SetVolume("@xbgm*", 1000, 0, null);
	Fade("@StNameC/C*",1000,0,null,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100910wfu">
「ノーコちゃん――――っ！」

{	FadeDelete("絵背景100", 500, null, false);
	Move("@OnBG*", 1000, @0, @1100, DxlAuto, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c22/500100920wfu">
「ノーコちゃあああああああああああんッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	ClearWaitAll(2000, 2000);
	CreateColorSP("絵色黒", 20000, "#000000");

	EndScene();
}
