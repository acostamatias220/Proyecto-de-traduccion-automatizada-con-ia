
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2250フウリ.nss_MAIN
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
	$GameName = "2300フウリ_h.nss";

}

scene 2250フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="810">
////////////header////////////
//file name "2250フウリ.nss"
//title "再会です！"
//previous "2250カゴメ4.nss"

////////////footer////////////
//next "フウリ" "2300フウリ_h.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);

	ClockDelete(0,true);

//バグ対応：ID 0001030
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

{	ClockTime(2250);}

//定義
	Kagome_AllEffect_Set(3000);

	FadeDelete("上背景", 200, Axl1, true);

//あきゅん「演出：成功演出組込みました」
//動作
	CreateColorEXadd("絵色100", 15000, "WHITE");
	Kagome_AllEffect_Start();
	Fade("絵色100", 500, 1000, null, true);

//バグ対応：ID 0001030
//◆場所：屋島_古戦場
	OnBG(10,"bg2201100屋島_古戦場_通常");
	FadeBG(0,true);

	FadeDelete("絵色100", 1000, null, true);

	Wait(1500);

//消去
	Kagome_AllEffect_Delete(2000);

//◆ＳＥ：アザナエル落下
//嶋：仮入れ
	CreateSE("SE01","se銃_投げ捨てる");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200010wfu">
「きゅ……？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200020wfu">
「あれ……ここ……」

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200030wfu">
「ん――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

//◆ＳＥ：足音
	CreateSE("SE01","se動作_歩く05_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	Wait(1000);

	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200040wfu">
「足音――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2251);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200050wfu">
「知ってる……私、この足音知ってる……！」

{	St("C",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200060wfu">
「太四郎さんじゃなくて、これは――」

{	SetVolume("SE*", 500, 0, null);
	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200070wfu">
「貫太さんッ！！　待って！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	DeleteSt("C",200,true);}

//◆演出指定：織田貫太が背中を向けた全身立ち絵初出がいいな

	CreateTextureSP("絵背景0", 2000, Center, Middle, "cg/bg/bg2201100屋島_古戦場_通常.jpg");

	CreateTextureSP("絵背景100", 1000, -256, -288, "cg/bg/m/bg2201100屋島_古戦場_通常_m.jpg");
	SetShade("絵背景100", MEDIUM);

	CreateTextureSP("絵st100", 1000, 109, -290, "cg/bu/l/bu織田貫太_通常_x01.png");

	CreateSE("SE10","se環境_風と葉っぱ_l");
	MusicStart("SE10",2000,500,0,1000,null,true);

	Move("絵背景100", 3000, @0, 0, DxlAuto, false);
	FadeDelete("絵背景0", 1000, null, false);
	Move("絵st100", 3000, @0, -62, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200080odk">
「やあ」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200090odk">
「ごめん。久しぶり」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200100wfu">
「貫太さん……？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200110wfu">
「ホントに……ホントに、貫太さんですか？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200120odk">
「一応、本物……かな」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200130odk">
「信じられないかい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2252);}

	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",0,true);}

	FadeDelete("絵*", 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200140wfu">
「貫太さん！」

{	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200150wfu">
「とりゃ！」

//◆ＳＥ：ぽこぽこぽこぽこ
{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"fuフウリ_通常_hard");
	CreateSE("SE01","se動物_タヌキ_腹鼓03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("@StNameC/C*", 300, 3, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200160wfu">
「ど……どうですか？」

{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"bu貫太_横向き_normal");
	FadeSt("MR",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200170odk">
「うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_横向き_smile");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200180odk">
「いい音だ」

{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("MR",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200190odk">
「僕まで、ずっと、届いてた」

{	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200200odk">
「君の音、ずっと聞いていたよ」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200210wfu">
「うきゅっ――！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200220wfu">
「う……きゅ……きゅうううう……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"fuフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200230wfu">
「かんたさあああああああああああああん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2253);}

//	TextBoxDelete(150);

	SetVolume("SE*", 1000, 0, null);

//◆演出指定：時間経過
	CreateColorEX("絵色100", 1500, "Black");
	Fade("絵色100", 500, 1000, null, true);
	DeleteSt("C",0,true);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/ev/ev2250フウリ貫太と再会.jpg");
	CreateTextureSP("絵背景101", 1200, 0, 0, "cg/ev/l/ev2250フウリ貫太と再会_l.jpg");

	SoundPlay("@xbgm28",1000,450,true);


	Move("絵背景101", 60000, -411, -58, null, false);
//◆ＥＶ："ev/ev2250フウリ貫太と再会.txt" 差分Ａ
	FadeDelete("絵色100", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200240odk">
「元気にしてたかい？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200250wfu">
「元気なわけありません！」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200260odk">
「病気でもした？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200270wfu">
「恋の病……です」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200280odk">
「大変だ」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200290wfu">
「大変って！　人ごとみたいに！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200300wfu">
「原因は貫太さんですよ」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200310odk">
「ごめんね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2254);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200320wfu">
「ごめんねじゃすみません」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200330wfu">
「どうせ貫太さんのことです！
　東京に出たのだって、自分のためじゃないでしょう？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200340odk">
「自分のためだよ。僕には夢が――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200350wfu">
「それだけじゃないです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2255);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200360odk">
「そんなこと――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200370wfu">
「あんまりバカにしないでください」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200380wfu">
「私だって、少しは物を考えます」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200390wfu">
「貫太さんは、私の許嫁だった太四郎さんに、遠慮した」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200400wfu">
「……違いますか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200410odk">
「僕は、みんなに幸せになって欲しかった」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200420wfu">
「みんなに？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200430wfu">
「そのみんなの中に、私は含まれるんですか？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200440wfu">
「貫太さん自身は、含まれるんですか？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200450wfu">
「貫太さんは、辛くなかったんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2256);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200460wfu">
「貫太さんは、私のことなんてなんとも――」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200470odk">
「違う！　もしなんの障害もなければ、僕も――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200480wfu">
「貫太さん……」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200490odk">
「でも……僕らは、こうして生まれてきた。
　だから、こうして生きて行くしかない」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200500odk">
「今は死にたくなるくらい辛いことも、きっと、時間が解決してくれる――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵背景101", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200510wfu">
「どれだけ待てばよかったんですか？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200520wfu">
「私には、貫太さんのいない時間は、長すぎでした。
　解決なんて、全然、やってきませんでした」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200530wfu">
「私は、ずっと、貫太さんと一緒にいたい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2257);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200540wfu">
「それだけです」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200550odk">
「それも、時間が経てば、忘れる想いかもしれないよ」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200560wfu">
「きゅー……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200570wfu">
「貫太さんは、私を嫌いになってしまったのですか？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200580odk">
「…………そうかも、しれない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200590wfu">
「貫太さんのウソは、すぐにわかります」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200600odk">
「やっぱり、ダメか」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200610wfu">
「ダメです。どうしてそんな、意地悪をしますか？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200620odk">
「距離を置かないと」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200630odk">
「もう二度と、離れられなくなりそうだから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2258);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200640wfu">
「だったら、離れなくても――！」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200650odk">
「本当かい？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200660odk">
「君はそれで、いいのかい？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200670odk">
「それで本当に、幸せになれるのかい？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200680wfu">
「きゅー……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200690odk">
「……意地悪して、ごめん」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200700odk">
「幸せの形なんて、わからないよね。
　そんなもの、掴んでみるまでは――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200710wfu">
「今、私が掴んでいるのが」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200720wfu">
「私の幸せです……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2259);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200730odk">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200740wfu">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200750wfu">
「でもこれは、あの時掴めなかった手だから」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200760wfu">
「ずっとずっと、掴めなかった手だから」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200770wfu">
「もう絶対、離しません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200780odk">
「一度、掴んだら――」

{	SetVolume("@xbgm*", 2000, 0, null);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200790wfu">
「二度と離れなくなりそうならば」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/500200800wfu">
「離れなく、なっちゃいましょう」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/500200810odk">
「フウリ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
