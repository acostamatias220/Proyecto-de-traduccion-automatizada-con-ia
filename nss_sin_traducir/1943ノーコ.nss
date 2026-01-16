
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1943ノーコ.nss_MAIN
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
	$GameName = "1948沙紅羅_ノーコ.nss";
}

scene 1943ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="540">
////////////header////////////
//file name "1943ノーコ.nss"
//title "共感"
//previous "1942沙紅羅_ノーコ.nss"

////////////footer////////////
//next "ノーコ" "1948沙紅羅_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

{	ClockPass(1943);}

	CreateTextureEX("絵背景１", 10, 0, -1152, "cg/bg/bg0301211あにのあな_正面_停電.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	CreateSE("SE10","seガヤ_街中_l");
	MusicStart("SE10",2000,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100010mzh">
「うう……逃げられてしもうた。
　なんて身勝手なヤツ！」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100020nko">
「バッグ、ふたつともおなじ」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100030mzh">
「ん……？　おお、本当じゃ。変な模様がついておるの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景２", 2000, Center, Middle, "cg/obj/objエコバッグ.png");

	DeleteSt("MR",300,false);
	Fade("絵背景２", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100040nko">
「ソトカンダー」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100050nko">
「にとりの、やっつけデザイン」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	Move("絵背景２", 500, @20, @0, Dxl1, false);
	Fade("絵背景２", 500, 0, null, false);
	MoveEX($ML_次, 500, -20, 0, Dxl1, false);
	FadeSt("ML",500,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100060nko">
「わたしはもう……これとおなじ」

{	St("ML",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100070nko">
「ひつようと、されていない……」

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100080mzh">
「お、おい！　しっかりせんか！　様子がおかしいぞ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100090mzh">
「おぬし、何者じゃ？
　何故、わらわを星の元に返そうとする？」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100100nko">
「それは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE*", 2000, 0, null);


//◆演出指定：時間経過・説明省略
	CreateColorEX("絵色１", 20000, "#000000");
	Fade("絵色１", 1000, 1000, null, true);

//◆時間：ジャンプ
{	ClockPass(1946);}
	Wait(1000);

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	DeleteSt("ML",0,false);
	FadeSt("MR",0,true);}

	SoundPlay("@xbgm15",0,450,true);

	Fade("絵色１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100110mzh">
「そうか……」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100120mzh">
「おぬしはそれで、わらわのところに」

{	St("ML",700, @0,@0,"buノーコa_通常_pain");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100130nko">
「もう、たえられない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100140nko">
「いますぐきえたい」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100150mzh">
「……変じゃ」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100160mzh">
「おかしい！
　おかしいおかしいおかしい！」

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100170mzh">
「ノーコよ、その理屈はおかしいぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("MR",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100180mzh">
「どうしてたかが脳内彼女だからといって、おぬしがその似鳥とやらに拒絶されねばならんのだ？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100190mzh">
「そもそもおぬしを生み出したのは似鳥であろ！
　おぬしを、散々利用してきたのであろ？」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100200mzh">
「ならば、最後まで責任を――」


{	St("ML",700, @0,@0,"buノーコa_通常_pain");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100210nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100220mzh">
「ノーコ……？」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100230nko">
「にとりを、くるしめたくない」

{	St("ML",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100240nko">
「だから、きえたい」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100250mzh">
「…………」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100260mzh">
「のう、ノーコ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100270mzh">
「わらわとおぬしは、似たもの同士じゃ」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100280mzh">
「わらわも昔、水神として魚河岸に奉られておっての。
　かつては間近に人の命を感じながら暮らしておった」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100290mzh">
「わらわを崇める人間を、愛おしくも感じていた」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100300mzh">
「じゃが、時は経ち、人々の信心は薄れ、わらわも半田明神へと遷座することと相成った」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1947);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100310mzh">
「今や、境内の端に鎮座するわらわの事を、どれだけの人間が憶えているじゃろうか」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100320mzh">
「人間は恩などすぐに忘れてしまう」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100330mzh">
「わらわはすぐにひとりぼっちじゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100340mzh">
「いっそ、消えてしまいたい。
　本心を言えば、そう思ったこともある」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100350mzh">
「じゃが――」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100360mzh">
「わらわは、みそと、ブーに会った！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100370mzh">
「あやつらはバカじゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100380mzh">
「ビックリするくらいのバカじゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100390mzh">
「底抜けのバカじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100400mzh">
「じゃが……わらわが泣いている理由を聞いてくれた」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100410mzh">
「誘拐をしてまで、わらわを外に連れ出してくれた」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100420mzh">
「しかも、けばぶを買ってくれた！」

{	St("ML",700, @0,@0,"buノーコa_幽霊_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100430nko">
「ケバブ……？」

{	St("MR",700, @0,@0,"buミヅハ_通常_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100440mzh">
「お肉が美味じゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
<voice name="ノーコ" class="ノーコ" src="voice/19/430100450nko">
「……たんじゅん」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100460mzh">
「そう、驚くほど単純じゃ」

{	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100470mzh">
「じゃが、そんな単純なことで、思ったのじゃ」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100480mzh">
「わらわは、ぜんぜん、さびしくない！」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100490mzh">
「のう、ノーコよ。
　わらわには、おぬしの寂しさを、拭ってやれぬか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100500nko">
「ともだち？」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100510mzh">
「ん？　おお、そうじゃ！」

{	St("MR",700, @0,@0,"buミヅハ_フラット_happy");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/430100520mzh">
「わらわとノーコも、友達になればよいのじゃ！」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100530nko">
「わたしと、ミヅハが、ともだち……」

{	St("ML",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/430100540nko">
「ともだちは、でも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@xbgm*", 500, 0, null);

	DeleteAllSt(200,true);


	EndScene();
}
