
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene a2047沙紅羅_フウリ.nss_MAIN
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

	$LFlag_NowFile = "a2047沙紅羅_フウリ.nss";
	$GameName = "a2050カゴメ.nss";
	//$GameName = "aa2050沙紅羅_フウリ.nss";
}

scene a2047沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="240">
////////////header////////////
//file name "a2047沙紅羅_フウリ.nss"
//title "決着には早すぎる"
//previous "2045沙紅羅_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "aa2050沙紅羅_フウリ.nss"
//next "フウリ" "aa2050沙紅羅_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：ＵＰ＋_屋外セット_炎上
//	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	CreateTextureSP("絵背景100", 100, Center, -120, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

{	ClockPass(2047);}

	SoundPlay("@xbgm30",0,450,true);

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEX("スラッシュ", 1620, 600, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/bg/bg1201211ＵＰ＋_屋外セット_炎上.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buＡＤ_通常_angry.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buＡＤ_通常_sad.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buＡＤ_通常_normal.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク/絵演立絵2", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵3", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆音声指示：インカム
{
//	St("R",700, @0,@0,"buＡＤ_通常_angry");
//	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
//	FadeSt("R",200,true);
	}

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/470100010adi">
『ミリＰさん！』

//◆音声指示：小声
{
	St("L",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("R",200,false);
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/470100020mrp">
「うるさいわね！　今実況中――」

//◆音声指示：インカム
{
	CreatePlainSP("絵板写", 2000);
	Wait(16);
	Fade("絵マスク/絵演立絵", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 0, 1000, Dxl1, true);
	FadeDelete("絵板写", 200, null, true);
}
{
//	St("R",700, @0,@0,"buＡＤ_通常_angry");
//	DeleteSt("C",200,false);
//	FadeSt("R",200,true);
	}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/470100030adi">
『大変です！　もう食べ物がありませんッ！』

//◆音声指示：小声
{
	St("L",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/470100040mrp">
「なんですって――！？　追加は？」

//◆音声指示：インカム
{
	CreatePlainSP("絵板写", 2000);
	Fade("絵マスク/絵演立絵2", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵3", 0, 1000, Dxl1, true);
	FadeDelete("絵板写", 200, null, true);
}
{
//	DeleteSt("C",200,true);
//	St("C",700, @0,@0,"buＡＤ_通常_sad");
//	FadeSt("C",200,true);
	}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/470100050adi">
『あんなペースじゃ、いくら追加で買ってきても――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainSP("絵板写", 2000);
	Wait(16);

	DeleteSt("L",0,false);
	Fade("スラッシュ", 0, 0, null, false);
	Fade("@絵マスク*", 0, 0, null, true);

	Delete("@絵マスク*");
	Delete("スラッシュ");

	FadeDelete("絵板写", 200, null, true);

	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",300,700,0,1000,null,true);


{	ClockPass(2048);}

{	St("C",700, @0,@0,"buフウリ_頬手_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/470100060wfu">
「ケバブがやまもり！」

{	St("C",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/470100070wfu">
「やはり、寒い日はケバブのお肉臭がそそります！」

{	St("C",700, @0,@0,"buフウリ_頬手_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/470100080wfu">
「いただきます！」

{	St("C",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @0, @60, Dxl1, false);
	DeleteAllSt(200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/470100090wfu">
「あむ」

{	St("C",700, @0,@60,"buフウリ_前のめり_smile");
	Move("@StNameC/C*", 200, @0, @-60, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/470100100wfu">
「ごちそうさま！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@SE01*", 1500, 0, null);

	TextBoxDelete(150);
	DeleteSt("C",200,false);

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("スラッシュ", 1620, 600, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/bg/bg1201211ＵＰ＋_屋外セット_炎上.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buＡＤ_通常_angry.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buＡＤ_通常_sad.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buＡＤ_通常_normal.png");
	Request("絵マスク/絵演立絵3", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵4", 1530, 450, middle, "cg/bu/buＡＤ_通常_shock.png");
	Request("絵マスク/絵演立絵4", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク/絵演立絵2", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵3", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵4", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	St("L",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("L",200,false);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, null, false);
	Move("絵マスク/絵演立絵2", 200, 450, InBottom, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/470100110mrp">
「あの食べっぷりは……想定外だわ」

//◆音声指示：インカム
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/470100120adi">
『どうしましょう！？』

//◆音声指示：インカム
{
	CreatePlainSP("絵板写", 2000);
	Wait(16);
	Fade("絵マスク/絵演立絵2", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵3", 0, 1000, Dxl1, true);
	FadeDelete("絵板写", 200, null, true);
}
{
//	St("C",700, @0,@0,"buＡＤ_通常_normal");
//	FadeSt("C",200,true);
	}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/470100130adi">
『何かで繋がないと、もう次の便まで――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆音声指示：小声
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/470100140mrp">
「それを考えるのがあなたの仕事！
　秋葉原生まれなんだからなんとかして！」

//◆音声指示：インカム
{
	CreatePlainSP("絵板写", 2000);
	Wait(16);
	Fade("絵マスク/絵演立絵3", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵4", 0, 1000, Dxl1, true);
	FadeDelete("絵板写", 200, null, true);
}
{
//	DeleteSt("C",200,true);
//	St("C",700, @0,@0,"buＡＤ_通常_shock");
//	FadeSt("C",200,true);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/470100150adi">
「ええっ、そんな！
　もう長い間、実家には帰ってない――」

//◆音声指示：小声
{
	St("L",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/470100160mrp">
「ああっ、じれったいわね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2049);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆音声指示：小声
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/470100170mrp">
「裏に、なんかたくさんお土産があったでしょ！
　アレを持ってきなさい！」

//◆音声指示：インカム
{
	CreatePlainSP("絵板写", 2000);
	Wait(16);
	Fade("絵マスク/絵演立絵4", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵3", 0, 1000, Dxl1, true);
	FadeDelete("絵板写", 200, null, true);
}
{
//	DeleteSt("C",200,true);
//	St("C",700, @0,@0,"buＡＤ_通常_normal");
//	FadeSt("C",200,true);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/470100180adi">
『え、でもアレは――』

//◆音声指示：小声
{
	St("L",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/470100190mrp">
「アレも秋葉原土産でしょ！？」

//◆音声指示：インカム
{
//	DeleteSt("C",200,true);
//	St("C",700, @0,@0,"buＡＤ_通常_normal");
//	FadeSt("C",200,true);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/470100200adi">
『それは確かに――』

//◆音声指示：小声
{
	St("L",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/470100210mrp">
「時間がないの！
　今すぐ準備しなさい！　早く！」

//◆音声指示：インカム
{
	CreatePlainSP("絵板写", 2000);
	Wait(16);
	Fade("絵マスク/絵演立絵3", 0, 0, Axl1, false);
	Fade("絵マスク/絵演立絵4", 0, 1000, Dxl1, true);
	FadeDelete("絵板写", 200, null, true);
}
{
//	DeleteSt("C",200,true);
//	St("C",700, @0,@0,"buＡＤ_通常_shock");
//	FadeSt("C",200,true);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/470100220adi">
『は、はい！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);
	Delete("@絵マスク*");
	Delete("スラッシュ");
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
//	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/470100230ktt">
「なんだか、すごく揉めてますね」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteSt("MR",200,true);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/470100240skr">
「ああ。嫌な予感が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 300, 0, 1000, 50, null, "cg/data/circle_02_00_1.png", true);

	EndScene();
}
//next "沙紅羅" "aa2050沙紅羅_フウリ.nss"
//next "フウリ" "aa2050沙紅羅_フウリ.nss"
