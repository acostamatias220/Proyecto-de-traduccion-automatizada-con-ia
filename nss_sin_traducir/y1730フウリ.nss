
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene y1730フウリ.nss_MAIN
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
	$GameName = "1800フウリ.nss";
//	$GameCircle=false;

	#START_FLAG=true;
	$SYSTEM_backselect_lock=false;
}

scene y1730フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="490">
////////////header////////////
//file name "y1730フウリ.nss"
//title "手紙"
//previous ""

////////////footer////////////

//next "フウリ" "1800フウリ.nss"



////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


{	ClockPass(1730);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	CreateTextureSP("絵空背景", 1000, Center, 0, "cg/bg/bg2401100空_上空_通常.jpg");
	$MoveYPoi = (ImageVertical("絵空背景")-576)*-1;

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",2000,700,0,1000,null,true);

	Move("絵空背景", 6000, @0, $MoveYPoi, DxlAuto, false);
	FadeDelete("上背景", 2000, null, true);

	WaitAction("絵空背景", null);

	WaitKey(1000);

	FadeDelete("絵空背景", 2000, null, true);


{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100010wfu">
（もう……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100020wfu">
（辺りは、真っ暗ですね）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100030wfu">
（うう……なんか、緊張してきました！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100040wfu">
（２０１１年！　第一宇宙速度年越しライブ！
　スーパー・スーパーノヴァ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100050wfu">
（鈴ちゃんが臨時のアルバイトも雇ったって言ってたし、敏腕プロデューサーのミリＰさんも登場です！）

//※下倉注：表情抑えめに変更 2010/11/18
{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100060wfu">
（絶対に失敗できないライブ）

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100070wfu">
（ううう……なんか、かえって緊張が……）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100080wfu">
（こ、この緊張をほぐすには……）

{	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100090wfu">
「肉まんです！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100100wfu">
（そう！　あったかい肉まん！
　肉まんこそが、私の心を温めてくれる……はず！）

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100110wfu">
「いよおおおおし！　かくなる上は！」


{	St("C",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100120wfu">
「秋葉原の全コンビニを、制圧――」

//◆ＳＥ：ぴゅうううううう！！
{	CreateSE("SE01","se擬音_ギャグ_寒い風");
	MusicStart("SE01",0,700,0,750,null,false);
	WaitKey(500);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100130wfu">
「…………きゅ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1731);}

	//TextBoxDelete(150);

	DeleteAllSt(200,true);

//※下倉注：葉っぱ飛んできてる感じで。SEももう少し木々などの揺れ入れて増して欲しい 2010/11/18

//あきゅん「素材：objフウリ葉っぱの手紙変化前」
	CreateTextureEX("絵背景", 1500, Center, Middle, "cg/obj/objフウリ葉っぱの手紙変化前.png");
	Move("絵背景", 0, @-100, @30, null, true);

	Rotate("絵背景", 800, @0, @0, @-180, null,false);
	Move("絵背景", 500, @80, @-30, Dxl3, false);
	Fade("絵背景", 500, 1000, null, true);

	Move("絵背景", 2000, 296, @0, null, true);

	WaitKey(1000);

	Move("絵背景", 2000, @0, @60, null, false);
	FadeDelete("絵背景", 1000, null, true);

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100140wfu">
（あ……この葉っぱは……）

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100150wfu">
（普通の葉っぱじゃ……ない？）

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100160wfu">
（もしかして、これ……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100170wfu">
（故郷からの……手紙？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 300, 0, null);

//◆演出指示：回想モードに入ります

{	ClockTime(1732);}

	//TextBoxDelete(150);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

	ClockDelete(0,true);
	DeleteAllSt(0,true);

//◆場所：屋島_古戦場
	OnBG(10,"bg2201100屋島_古戦場_通常");
	FadeBG(0,true);

//◆ＳＥ：遠くから汽笛
	CreateSE("SE01","seメカ_船_汽笛");
	MusicStart("SE01",0,900,0,1000,null,false);

	WaitKey(2000);

	FadeDelete("絵色白", 3000, null, true);

	SoundPlay("@xbgm25",0,450,true);

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100180wfu">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100190wfu">
（ここは……ずっと、景色が変わりません）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100200wfu">
（まるで、時が止まってしまったみたいです）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100210wfu">
（でも……やっぱり、時間は経っていて）

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100220wfu">
（私はまるで、時間と共に、自分じゃなくなっていくみたいで……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100230wfu">
（太四郎さんのお父さんは、大狸太三郎様です。
　もし村を出れば、大恥をかかせてしまいます）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100240wfu">
（もう帰ってこられないのは、わかります）

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100250wfu">
（でも……それでも……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100260wfu">
「ひと月経っても、涙が止まんなくて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1733);}

	//TextBoxDelete(150);


{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100270wfu">
「１年経っても、胸が詰まって――」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100280wfu">
「１０年経っても、想いが変わらなかったから――」


//※下倉注：表情調整 2010/11/18

{	St("C",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100290wfu">
「貫太さん、私は――」


{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100300wfu">
「あなたに、会いに行きます」


{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100310wfu">
「はぁあああああっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateSE("SE01","se動物_タヌキ_腹鼓03");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100320wfu">
「ぽん！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100330wfu">
「この音――聞こえますか？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100340wfu">
「聞こえますよね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 2000, 500, null, true);

	WaitKey(1000);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@xbgm*", 1000, 0, null);
	Fade("絵色白", 500, 1000, Axl2, true);

//◆時間：ジャンプ
{	ClockPass(1734);}


//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	WaitKey(1000);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",2000,700,0,1000,null,true);

	FadeDelete("絵色白", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100350wfu">
（そうして、田舎を出てきてから――１年）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※下倉注：ここに葉っぱが出るといいかも…… 2010/11/18
	CreateTextureEX("絵背景", 1500, Center, Middle, "cg/obj/objフウリ葉っぱの手紙変化前.png");
	Move("絵背景", 0, @0, @100, null, true);

	Move("絵背景", 500, @0, @-100, DxlAuto, false);
	Fade("絵背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090b]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100360wfu">
（とうとう、見つかってしまったのでしょうか？）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100370wfu">
（許嫁を見捨てて、村を飛び出すのですから……
　罰を与えられて、当然ですよね）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵背景", 2000, @0, @100, null, false);
	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
{	St("ML",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100380wfu">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100390wfu">
（いっそ、読まずに逃げ出しましょうか？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

{	St("ML",700, @0,@0,"fuフウリ_胸手_think");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100400wfu">
（……ううん。ダメです）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100410wfu">
（一度見つかってしまったのだから、太三郎様から逃げられるわけがありません）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100420wfu">
（ここは、覚悟を決めて――）

{	St("ML",700, @0,@0,"fuフウリ_胸手_hard");
	FadeSt("ML",200,true);
	WaitKey(500);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100430wfu">
「綿抜、フウリ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateTextureEX("絵演", 100, Center, Middle, "cg/obj/objフウリ葉っぱの手紙変化前.png");
	Move("絵演", 0, @0, @100, null, true);

	Move("絵演", 500, @0, @-100, DxlAuto, false);
	Fade("絵演", 500, 1000, null, true);

//◆ＳＥ：ドロン！
//あきゅん「素材：objフウリ葉っぱの手紙変化後」
	CreateColorSP("絵色白", 5000, "#FFFFFF");

	CreateSE("SE01","se動物_タヌキ_化ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵演", 2000, Center, Middle, "cg/obj/objフウリ葉っぱの手紙変化後.png");

	$SETime = RemainTime("SE01");
	DrawDelete("絵色白", $SETime, 100, null, "effect_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　彼女の呟きで、その葉っぱは白煙に包まれる。

　中から飛び出したのは、一枚の手紙。

{	FadeDelete("絵演", 500, null, true);
	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100440wfu">
「貫太さん――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100450wfu">
「どうか、私を助けてくださ――」

{	DeleteAllSt(200,true);
	CreateSE("SE01","se動作_紙めくる");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(1000);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100460wfu">
「………………」

　手紙に視線を向けた途端、フウリの動きが止まる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	SetVolumeEX("SE*", 200, 0, null);

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100470wfu">
「……え？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100480wfu">
「うそ……です……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/y17/300100490wfu">
「そんなはず……ない」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	EndFileBlackOut(20000,2000);
	EndScene();
}
