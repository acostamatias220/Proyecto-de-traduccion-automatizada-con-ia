
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1900ノーコ.nss_MAIN
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
	$GameName = "1910ノーコ_フウリ.nss";
}

scene 1900ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="950">
////////////header////////////
//file name "1900ノーコ.nss"
//title "にとりがしぬ"
//previous "1840似鳥_ノーコ_h.nss"


////////////footer////////////
//next "ノーコ" "1910ノーコ_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：似鳥マンション_リビング_同人誌散乱

	//★徒歩：ＳＥ
	//▼べー：ＳＥ欠番につきコメントアウト
//	CreateSE("SE00","seガヤ_テレビ_TV番組_l");
//	MusicStart("SE00",3000,700,0,1000,null,true);

	if($LFlag_NowFile=="1840似鳥_ノーコ_h.nss"){

	Wait(1000);

{	ClockPass(1900);}
	WaitAction("@OclockC*", null);
	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);
	FadeDelete("上背景", 3000, null, true);

	}else{

	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);
{	ClockPass(1900);}
	WaitAction("@OclockC*", null);
	FadeDelete("上背景", 0, null, true);
	}

	Wait(300);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	MoveEX($C_次, 500, 0, -20, Dxl1, false);
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100010nko">
「……あれ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100020nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100030nko">
「にとり？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100040nko">
「にとりは……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100050nko">
「……しょうしつ？」



{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100060nko">
「そんな……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100070nko">
「どうしてきえる？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100080nko">
「きえるはずなんて……」

{	DeleteSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000100090nki">
「ん……んんん……」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100100nko">
「このこえは――」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100110nko">
「した？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1901);}

	SetVolume("@SE00", 4000, 0, NULL);

	MusicStart("@xbgm24",4000,450,0,1000,null,true);

	Move($C_今, 200, @0, @20, Axl1, false);
	DeleteSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000100120nki">
「ん……ぁ、んん……」

　ノーコは床を見下ろす。

　倒れた本棚と崩れた同人誌の下から、似鳥の腕が突き出していた。

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100130nko">
「にとり！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100140nko">
「にとり、にとり！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100150nko">
「だいじょうぶ？」

{	DeleteSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000100160nki">
「ぁ……ん……くぅ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000100170nki">
「ぅぅ……ぅぅぅぅ……」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100180nko">
「あ……！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100190nko">
「ひたいに、ち」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100200nko">
「どうすれば……どうすればいい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100210nko">
「でもほんだながうごかないと――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100220nko">
「おもくて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100230nko">
「つぶれて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100240nko">
「ちがでて」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100250nko">
「しんじゃう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100260nko">
「うそ……いや……しぬのいや……！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100270nko">
「どかさなきゃ。はやく。しなないうちに……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100280nko">
「でも――わたしは、さわれない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000100290nki">
「ん……んくっ、ん……」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100300nko">
「くるしそう……しんじゃう……しんじゃうよう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100310nko">
「しぬ」

{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100320nko">
「しぬ……しぬ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100330nko">
「しぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬしぬ……」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100340nko">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1902);}

	SetVolume("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(150,true);

	SoundPlay("@xbgm09",0,450,true);


	CreatePlainEX("揺用", 100);
	SetShade("揺用", HEAVY);
	SetTone("揺用", Monochrome);

	St("C",700, @0,@50,"fuノーコa_幽霊_think");

	Fade("揺用", 1000, 1000, null, false);

	Wait(700);

	Move("@StNameC/C*", 500, @0, @-50, Dxl1, false);
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100350nko">
「そうだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100360nko">
「ころす？」

{	St("C",700, @0,@0,"fuノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100370nko">
「ころそう」

{	St("C",700, @0,@0,"fuノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100380nko">
「ころすしかない」

{	St2("C",700, @0,@0,"fuノーコa_通常_smile","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100390nko">
「ころしちゃえ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100400nko">
「にとりはかわってしまう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100410nko">
「わたしもかわってしまう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100420nko">
「それはいや」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100430nko">
「せめてほんとうのきもちをききたかった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100440nko">
「そうすれば、かわってもへいき」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100450nko">
「でも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St2("C",700, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100460nko">
「にとりは、それもゆるさなかった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100470nko">
「わたしへのきもち、いわなかった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100480nko">
「もうだめなんだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100490nko">
「おわりつつあるんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1903);}

	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100500nko">
「なにかがかわってしまうまえに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100510nko">
「なにかがこわれてしまうまえに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100520nko">
「でもわたしはにとりのもの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100530nko">
「だからにとりにはさわれる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100540nko">
「にとりならころせる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100550nko">
「だから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：カッターナイフキリキリ
	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_刃出す01普通");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitAction("SE01", null);

	St2("C",700, @0,@0,"fuノーコa_通常_smile","cg2/",".png");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100560nko">
「らくにしてあげよう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100570nko">
「ふたりでいっしょに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100580nko">
「このせかいから」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100590nko">
「きえよう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100600nko">
「さよなら、にとり」

{	SetVolume("@xbgm*", 200, 0, null);
	Wait(300);
	St2("C",700, @0,@0,"fuノーコa_通常_shock","cg2/",".png");
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 1500);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000100610nki">
「いやだ……」

{	//★立ち絵プロセス：再定義
	AgainSt2("C",700, @0,@0,"fuノーコa_通常_shock","cg2/",".png");}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000100620nki">
「オレ……このまま……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000100630nki">
「このままじゃ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000100640nki">
「だめなんだ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100650nko">
「このままじゃ……だめ？」

{	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100660nko">
「なにもかも、かわっていくの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100670nko">
「それが……にとりの、のぞみなの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100680nko">
「それとも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1904);}


	TextBoxDelete(150);

//◆演出指示：ノーコ自殺未遂フラッシュバック

	CreateColorEXadd("絵色１", 10000, "#FFFFFF");

	Fade("絵色１", 300, 1000, null, true);
	CreateTextureEX_mono("絵背景１", 2000, 0, 0, "cg/ev/ev1800ノーコ雨風に濡れる.jpg");
	Fade("絵背景１", 0, 1000, null, true);
	Fade("絵色１", 700, 0, null, true);
	Wait(300);

	Delete("揺用");

	SoundPlay("@xbgm24",0,450,true);


	Fade("絵色１", 300, 1000, null, true);
	Delete("絵背景１");
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",0,true);
	Fade("絵色１", 1000, 0, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100690nko">
「わたしも、かわりかけている？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100700nko">
「わたしのこえ、フウリにとどいた」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100710nko">
「ともだち？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100720nko">
「よくわからない」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100730nko">
「そわそわする」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100740nko">
「このかんじはなに？」

{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100750nko">
「わからない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100760nko">
「わからない、わからないわからない……」

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100770nko">
「けど」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100780nko">
「もし」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100790nko">
「にとりをすくうなら――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100800nko">
「にとりをころしたくないなら――」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100810nko">
「にとりといきたいなら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Move($C_今, 400, @40, @0, Axl1, false);
	DeleteSt("C",400,true);

	PrintFadeNut("上背景", 500, true);

{	ClockPass(1905);}

//◆場所：似鳥マンション_正面
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

	St("C",700, @-40,@0,"buノーコa_通常_normal");
	FadeSt("C",0,true);

	Move($C_今, 500, @40, @0, Dxl1, false);
	FadeDelete("上背景", 500, null, true);

	Move($C_今, 400, @40, @0, Axl1, false);
	DeleteSt("C",400,false);

	PrintFadeNut("上背景", 500, true);

{	ClockPass(1906);}

//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	MoveEX($C_次, 500, 0, 40, Dxl1, false);
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100820nko">
「いかなきゃ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100830nko">
「にとりはわたしをすきといわない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100840nko">
「でもきらいともいわない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100850nko">
「こたえはでていない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100860nko">
「まだわからない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100870nko">
「わたしのしょうたいがしられなければ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100880nko">
「まだきぼうはある」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100890nko">
「わたしも、かわれる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@x*", 3000, 0, NULL);

	TextBoxDelete(150);

	PrintFadeNut("上背景", 3000, true);

	Wait(1000);


//◆時間：ジャンプ
{	ClockPass(1909);}

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	MusicStart("@xbgm20",1000,300,0,1000,null,true);

	//★徒歩：ＳＥ
	CreateSE("SE00","seガヤ_街中_l");
	MusicStart("SE00",1000,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

	Wait(2000);

	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	MoveEX($MR_次, 200, -20, 0, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100900nko">
「フウリ、いた！」

//◆音声指示：遠くから
{	St("ML",700, @0,@0,"stフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000100910wfu">
「え？　ノーコちゃん？」

//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000100920wfu">
「走ってどうしました？　まだライブは――」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100930nko">
「たすけて！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000100940nko">
「にとり、しぬ！！」

{	St("ML",700, @0,@0,"stフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/000100950wfu">
「へ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@SE*", 2000, 0, NULL);
	SetVolume("@x*", 2000, 0, NULL);

	TextBoxDelete(150);

	EndScene();
}
