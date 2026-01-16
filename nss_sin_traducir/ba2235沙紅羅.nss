
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2235沙紅羅.nss_MAIN
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
	$GameName = "ba2240沙紅羅.nss";
}

scene ba2235沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="470">
////////////header////////////
//file name "ba2235沙紅羅.nss"
//title "タカ"
//previous "ba2230沙紅羅_似鳥.nss"

////////////footer////////////
//next "沙紅羅" "ba2240沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	Request("@SE*", UnLock);

//◆時間：ジャンプ
{	ClockPass(2234);}


//◆場所：スパコン館_通路_半崩壊
	OnBG(10,"bg1102200スパコン館_通路_半崩壊");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, null, "slide_01_02_1", true);

//◆ＳＥ：地鳴りが大きく


	OnBG(10,"bg1102200スパコン館_通路_半崩壊");
	FadeBG(0,true);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1102200スパコン館_通路_半崩壊.jpg");
	Fade("絵背景100", 0, 500, null, false);

	Shake("絵背景100", 30000, 20, 10, 0, 0, 500, AxlDxl, false);
	CreateSE("SE04","se戦闘_倒壊04");
	MusicStart("SE04",0,700,0,1000,null,false);

	SoundPlay("@xbgm23",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @-50,@0,"bu沙紅羅_通常_angry");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	Shake("@StNameC/C*", 1000, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100010skr">
（クソッ！　上――早く！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 300, @50, @0, Axl2, false);
	SceneOut(5000, 300, "slide_01_01_0");	

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100020skr">
（アイツだけは、何とか助けてやらなきゃ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2235);}


	TextBoxDelete(150);

	DeleteAllSt(0,true);
	CreateTextureEX_mono("絵背景１", 6000, 0, 0, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	Fade("絵背景１", 500, 1000, null, true);

	Shake("絵背景100", 0, 0, 0, 0, 0, 500, null, false);

//	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
//	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100030skr">
（目の前で、愛する仲間を失って――
　そのまま、自分もやられちまうなんて――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景L", 100, Center, Middle, "cg/bg/l/bg1102200スパコン館_通路_半崩壊_l.jpg");
	Fade("絵背景L", 0, 1000, null, true);

	Fade("絵背景１", 500, 0, null, true);
	SceneIn(300, "slide_01_01_1");
	St("C",700, @-50,@0,"bu沙紅羅_通常_rage");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100040skr">
（そんな理不尽、許してたまるか！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100050skr">
（絶対に、絶対に――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2235);}


	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");	

	Delete("絵背景L");
	DeleteAllSt(0,true);

	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{
	St("MR",710, @-50,@0,"bu似鳥_通常_rage");
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350100060nki">
「沙紅羅！」

{	St("ML",700, @-50,@0,"bu沙紅羅_通常_rage");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100070skr">
「ここか！」

{	St("MR",710, @0,@0,"bu似鳥_通常_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/350100080nki">
「ああ、行くぞ！！」

//▼シナリオ整合により修正
{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100090skr">
「おうっ！！　覚悟――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@x*", 1000, 0, NULL);

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg1103200スパコン館_店内_半崩壊");
	FadeBG(0,true);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1103200スパコン館_店内_半崩壊.jpg");
	Fade("絵背景100", 0, 500, null, false);

//◆演出指示：扉開けて部屋に入った途端？？

//◆演出指示：一際大きな振動

	SceneIn(300, "slide_01_01_1");

	CreateTextureEX("絵背景EV01", 100, 0, -555, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Shake("絵背景EV01", 2000, 5, 5, 0, 0, 1000, null, false);

//◆ＳＥ：大破壊
	CreateSE("SE01a","se戦闘_破壊01");
	CreateSE("SE01","se戦闘_倒壊01");
	CreateSE("SE02","se戦闘_倒壊04");

	MusicStart("SE01a",0,700,0,1000,null,false);
	Fade("絵背景EV01", 0, 1000, null, false);
	FadeF4("絵背景EV01", 1000, 1000, 1000, 0, 0, Dxl1, false);
	Zoom("絵背景EV01", 1000, 1500, 1500, Dxl2, 900);

	FadeDelete("絵背景EV01", 200, null, false);
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,1500,0,1000,null,false);


	CreateVOICE("その他男声","ba22/350100100tsr");
	MusicStart("その他男声",0,700,0,1000,null,false);

	Shake("絵背景100", 30000, 30, 20, 0, 0, 500, AxlDxl, false);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/350100100tsr">
「ぐおおおおおおおお――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100110skr">
「え――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：ビル崩壊

	Shake("絵背景100", 30000, 30, 20, 0, 0, 500, AxlDxl, false);

	CreateSE("SE01","se戦闘_倒壊03");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	CreateColorEX("上背景", 20000, "#000000");
	Fade("上背景", 2000, 1000, null, true);

	ClockDelete(0,true);

	Shake("C", 3000, 30, 30, 0, 0, 500, AxlDxl, false);
	Shake("絵背景100", 3000, 30, 30, 0, 0, 500, AxlDxl, false);

	SetVolumeEX("その他男声", 3000, 0, null);


	Wait(3000);



	Shake("絵背景100", 0, 0, 0, 0, 0, 500, AxlDxl, false);

	Wait(3000);

	SetVolumeEX("SE*", 1000, 0, NULL);

	CreateColorSP("黒背景", 500, "Black");
	CreateColorEX("フラッシュ白", 15000, "WHITE");

	Fade("黒背景",0,1000,null,true);


	Fade("上背景", 2000, 0, null, true);

	SoundPlay("@xbgm25",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100120skr">
（連絡があって、アタシは原付をかっ飛ばした）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100130skr">
（その日に限って、雪道は不気味なくらい静かだった）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100140skr">
（降り積もるぼた雪が、世界から全ての音を奪い取ってしまうような、そんな日だった）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100150skr">
（――何かの間違いだ！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100160skr">
（――ふざけるな！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100170skr">
（――なんで今日に限って、こんなに静かなんだ！？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100180skr">
（アタシは雪道を、絶叫しながら走った）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100190skr">
（そうしないと、身が凍るほど冷たい冬の静寂に、全てを掻き消されてしまう気がした）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：雪降る空のＥＶとか用意

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);
	DeleteAllSt(0,true);

	CreateTextureSP("絵背景100", 1000, 50, -400, "cg/bg/l/bg2502100信号機_見上げ_青標識無_l.jpg");
	CreateTextureSP("絵背景100a", 1000, 50, -400, "cg/bg/l/bg2502300信号機_見上げ_赤標識無_l.jpg");
	Request("絵背景100*", Smoothing);
	Rotate("絵背景100*", 0, @0, @180, @0, null,true);
	Zoom("絵背景100*", 0, 1400, 1400, null, true);


	$SYSTEM_effect_drop_image = "cg/ef/efDro_雪001.png";
	$SYSTEM_effect_drop_speed = 6;
	CreateEffect("エフェクト１", 1000, 0, 0, 1024, 576, "Drop");

	Wait(2000);

	BrinkTexture_Start(100,700,"@絵背景100a");

	Fade("フラッシュ白",1500,0,null,true);
	Delete("フラッシュ白");





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100200skr">
（タカは――）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100210skr">
（降り積もる雪に、半ば埋もれていた）


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100220skr">
「うおおおおおおおおおおお！！」


//【警官Ｂ】
<voice name="警官Ｂ" class="その他男声" src="voice/ba22/350100230e17">
「やめなさい！　離れて！　現場が――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100240skr">
「うるせぇ！　バカ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100250skr">
「畜生！　降るな、雪！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100260skr">
「タカを――埋めるんじゃねぇ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100270skr">
「バカ雪！　降んな！　降んなって」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100280skr">
「タカ――――――――――ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@x*", 2000, 0, NULL);

	TextBoxDelete(150);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

	BrinkTexture_Stop();
	Delete("絵背景100*");
	Delete("エフェクト１");

	Fade("フラッシュ白",2000,0,null,true);
	Delete("フラッシュ白");

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100290skr">
（あいつは――前の日に、電話で言ってた）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100300skr">
（ワルばっかりやって、オチコボレなアタシたちだけど、ふたりならやり直せるって）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100310skr">
（心を入れ替えれば、きっとまともに生きられるって）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100320skr">
（やり直すのに、遅いってことは、ないって……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100330skr">
（最初は、神様に裏切られた気持ちだった）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100340skr">
（なんでわざわざ、命が消える前に、そんなことを言わせなきゃならないのかって）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100350skr">
（でも――弟のマーくんから連絡が来て、わかったのだ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100360skr">
（その言葉は、未来の私に向けられた応援歌だって）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100370skr">
（アタシは、その言葉を信じて……だから……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100380skr">
（きっと……きっと、まだ、間に合うって……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100390skr">
（今も、信じてる）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	Fade("黒背景",500,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",19010, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",1000,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100400skr">
（だから、わかんだよ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100410skr">
（どんだけ、あいつが苦しいか）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100420skr">
（それに、どんだけ――）

{	St("C",19010, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100430skr">
（どんだけ、あいつが間違ってるか）

{	St("C",19010, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100440skr">
（タカはもう、アタシの元を離れたけど）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100450skr">
（でも、だからって、全部が終わりじゃないんだ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100460skr">
（やり直しなんて、どっからでも効く）

{	St("C",19010, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/350100470skr">
（なあ……そうだろう、タカ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);

	CreateColorEX("絵背景", 20000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);

	DeleteAllSt(0,true);

	FadeDelete("上背景", 0, null, true);
	EndScene();


}
//next "沙紅羅" "ba2240沙紅羅.nss"
