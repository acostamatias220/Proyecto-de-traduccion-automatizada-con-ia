
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2110千秋.nss_MAIN
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
	$GameName = "aa2120千秋_恵那.nss";
//	$GameCircle=false;

}

scene aa2110千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1320">
////////////header////////////
//file name "aa2110千秋.nss"
//title "勝利の代償"
//previous "aa2100千秋_フウリ.nss"

////////////footer////////////
//next "千秋" "aa2120千秋_恵那.nss"


////////////body////////////


// ↓頭から中盤までコメントアウトされていますが、その範囲カットでしょうか？チェック用でしょうか？
//あきゅん「チェック用の外しを忘れていました。」

//■再定義定型文
	PrintBG("上背景", 30000);
{	ClockPass(2110);}

//◆演出指定：途切れ途切れの意識な特別演出・待ちの輪郭が何度もぼやける感じで

	SetVolumeEX("@xbgm*", 1500, 0, null);
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",0,true);}

//	FadeDelete("上背景", 1500, null, true);
	FadeDelete("上背景", 0, null, true);

	DeleteAllSt(200,true);

	CreatePlainEX("絵板写", 10);
	SetShade("絵板写", MEDIUM);
	Fade("絵板写", 300, 1000, null, true);
	SetShade("@OnBG*", MEDIUM);
	Wait(16);
	Delete("絵板写");

	CreateTextureEX("絵背景", 11, Center, @0, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");
	SetShade("絵背景", null);
	Fade("絵背景", 300, 1000, null, true);
	Wait(200);
	Fade("絵背景", 300, 0, null, true);
	Wait(200);
	Fade("絵背景", 300, 1000, null, true);
	Wait(200);
	Fade("絵背景", 300, 0, null, true);



//	SoundPlay("@xbgm16",0,250,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400010kit">
（あれ？）

//◆音声指示：朦朧エフェクト
//◆音声指示：スピーカー越し
{	St("R",700, @0,@0,"buミリＰb_ショータイム_shout");
	SetShade("@StNameR/R*", MEDIUM);
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100400020mrp">
『全国ゆるキャラバン決勝戦！
　ついに、決着がつきました！』

//◆ＳＥ：観客の大歓声

{
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",0,250,0,500,null,true);
}

{
	DeleteAllSt(200,true);
}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400030kit">
（なんだ……ここ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",19010, @0,@0,"fu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400040kit">
（急に……世界が……遠く……）


//◆音声指示：朦朧エフェクト
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buＡＤ_通常_shock");
	SetShade("@StNameL/L*", MEDIUM);
	FadeSt("L",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100400050adi">
「大丈夫ですか？　ごめんなさい！
　アッキーさん、しっかり！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400060kit">
「大丈夫です……大丈夫……」

{
	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu千秋_通常_worry");
	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400070kit">
（自分の声……？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400080kit">
（でも……まるで自分じゃないみたいだ……）

//◆音声指示：朦朧エフェクト
//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰb_通常_happy");
	SetShade("@StNameR/R*", MEDIUM);
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100400090mrp">
『それでは、優勝した秋葉原チームにインタビューを！』

{	ClockPass(2111);}

{
	DeleteAllSt(200,false);
	St("C",19010, @0,@0,"fu千秋_通常_sigh");
	FadeSt("C",200,true);
}//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400100kit">
（そうか……オレたち……優勝したんだ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「演出：10/12/17パッチで追加」
	CreatePlainEX("絵板写", 19020);
	SetShade("絵板写", MEDIUM);
	CreateColorEX("絵色黒", 20000, "#000000");

	Fade("絵板写", 500, 1000, null, true);
	Wait(500);
	Fade("絵色黒", 1500, 1000, null, true);

//◆時間：ジャンプ
{	ClockPass(2113);}
	Wait(1000);

	DeleteAllSt(0,true);

	Delete("絵板写");
	FadeDelete("絵色黒", 2000, null, true);

	St("L",700, @0,@0,"buフウリ_前のめり_shout");
	SetShade("@StNameL/L*", MEDIUM);
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//◆音声指示：朦朧エフェクト
//◆音声指示：スピーカー越し
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100400110wfu">
『この場をお借りしてお話ししたいのです』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2114);}


{
	DeleteAllSt(200,true);
}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400120kit">
（いや……違う……こうしてる場合じゃ……）

//◆音声指示：朦朧エフェクト
{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	SetShade("@StNameC/C*", MEDIUM);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100400130adi">
「あ……あれ？　アッキーさん？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400140kit">
（ゴメン……オレ、行かなきゃ――）

//◆音声指示：朦朧エフェクト
{
	CreatePlainSP("絵板写", 5000);
	Wait(16);
	St("C",700, @0,@0,"buＡＤ_通常_shock");
	SetShade("@StNameC/C*", MEDIUM);
	FadeSt("C",0,true);
	FadeDelete("絵板写", 200, null, true);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100400150adi">
「ちょっと、まだ表彰式が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400160kit">
（恵那を……追いかけなきゃ……いけないんだ）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400170kit">
（それで、告白……告白、しなきゃ）

{	St("C",19010, @0,@0,"fu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400180kit">
（今日は、ずっと恵那に嘘ついてばっかりで……）

{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400190kit">
（あいつだって、強がってばっかりだけどさ……）

{	St("C",19010, @0,@0,"fu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400200kit">
（もうちょっと……素直に、なれよな……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2115);}

//◆場所：秋葉原_中央通り

	SetVolumeEX("@SE01*", 1500, 0, null);
	SetVolumeEX("@xbgm*", 1500, 0, null);
	SceneOut(19020, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg0103211秋葉原_中央通り_閉店");
	FadeBG(0,true);
	SetShade("@OnBG*", LIGHT);
	SceneIn(1000, "blind_01_00_1");

	SoundPlay("@xbgm26",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【小碓千秋】
[text0060]
{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400210kit">
（ああ……そうだ……）

{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400220kit">
（あいつはずっと、ウソ、ついてきたんだ）

{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400230kit">
（苦しいときは、苦しいって言えばいいのに）

{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400240kit">
（側にいて欲しいときは、側にいて欲しいって言えばいいのに……）



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",19010, @0,@0,"fu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400250kit">
（恵那はずっと、人に弱み見せないで――）

{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400260kit">
（母親が失踪したときは、その謎を絶対解いてやるって）

{	St("C",19010, @0,@0,"fu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400270kit">
（まだ小学生のくせに、目にいっぱい涙溜めながら、強がっちゃってさ）

{	St("C",19010, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400280kit">
（そうだ。そのちょっと後――）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400290kit">
（タヌキが車に轢かれたときもそうだった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

//	TextBoxDelete(150);
	CreateTextureEX("絵演背景", 2100, Center, Middle, "cg/ev/l/ev2210ユージロー転倒c_l.jpg");
	SetTone("絵演背景", Monochrome);
	Fade("絵演背景", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{
//	St("C",19010, @0,@0,"fu千秋_通常_worry");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400300kit">
（タヌキは道路に飛び出した恵那の、身代わりになってくれたんだって）

{
//	St("C",19010, @0,@0,"fu千秋_通常_sigh");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400310kit">
（どうしても、助けてあげたいって言って聞かなくて）

{
	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateTextureSP("絵演背景", 2100, Center, -380, "cg/bg/l/bg1502100柳神社_お墓_通常_l.jpg");
	SetTone("絵演背景", Monochrome);
	Wait(16);
	FadeDelete("絵板写", 1000, null, false);
//	St("C",19010, @0,@0,"fu千秋_通常_think");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400320kit">
（でも結局、どうしようもなくて、オレとふたりで柳神社に埋めたんだよな……）

{
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, false);
//	St("C",19010, @0,@0,"fu千秋_通常_sigh");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400330kit">
（なんか、ものすごく久々に思い出したけど）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	WaitAction("@絵色黒", null);

{	ClockPass(2116);}

//◆場所：秋葉原_裏通り

	SceneOut(19020, 0, "blind_01_00_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);
	SetShade("@OnBG*", LIGHT);

	Delete("絵色黒");
	Delete("絵演背景");
	Delete("絵背景");
	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",19010, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400340kit">
（あの後、しばらく恵那は元気がなくて……
　そうだ、アイツのためにストラップとか買ったっけ）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400350kit">
（携帯電話を持ってなかったころから、カバンにつけて肌身離さず持ってて……）

{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400360kit">
（ああ……もしかしたらあの時から、オレたち――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ぐるるるるるるる！！


{	ClockPass(2117);}

//◆場所：銭形公園_全景
	SceneOut(19010, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");

	SetVolumeEX("@xbgm*", 500, 0, null);
	CreateSE("SE01","se人体_腹下し");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	Shake("@StNameC/C*", 500, 6, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400370kit">
「と……とか……」

//◆ＳＥ：ぐるるるるるるる！！

{
	CreateSE("SE01","se人体_腹下し");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu千秋_通常_sigh");
	Shake("@StNameC/C*", 500, 6, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400380kit">
「回想してる……場合じゃない……」

{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400390kit">
「お、お……おな……おなかが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,true);


	TextBoxDelete(150);


//◆場所：銭形公園_トイレ正面
	SceneOut(5000, 300, "slide_01_01_0");
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
{	St("C",700, @-50,@0,"bu千秋_通常_pinch");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400400kit">
「トイレ……トイレ……」

{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400410kit">
「こっちが先に手遅れになったら……まずいもん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：黒い影が走る

	//DeleteAllSt(200,false);
	CreateSE("SE01","se戦闘_風切り音06");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵マスク", 5000, "#000000");
	DrawTransition("絵マスク", 200, 0, 1000, 100, null , "cg/data/slide_01_01_1.png", true);
	DrawDelete("絵マスク", 200, 5, null , "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 5, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400420kit">
「ヒエッ！」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400430kit">
「な……今の……え？」

{	St("C",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400440kit">
「中に……何かいた？」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400450kit">
「………………」

{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400460kit">
「いや、でも、漏れそうだし……
　これ以上は、一刻の猶予も……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ギャグ_ガーン01");

	CreateTextureEX("絵背景", 2100, Center, Middle, "cg/mask/ciウィンドウ縦01.png");

	CreateColorEXadd("絵色白", 2090, "#FFFFFF");

	CreateWindowEX("絵窓女", -512, 0, 1024, 576, false);
	CreateTextureEX("絵窓女/絵演背景", 2010, -410, -300, "cg/bg/l/bg1702100銭形公園_トイレ正面_通常_l.jpg");

	CreateWindowEX("絵窓男", 512, 0, 1024, 576, false);
	CreateTextureEX("絵窓男/絵演背景", 2020, -720, -300, "cg/bg/l/bg1702100銭形公園_トイレ正面_通常_l.jpg");

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景", 0, 1000, null, true);
	DrawTransition("絵背景", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Fade("絵色白", 0, 1000, null, true);

	Fade("絵窓女/絵演背景", 0, 1000, null, true);
	Fade("絵窓男/絵演背景", 0, 1000, null, true);

	FadeDelete("絵色白", 1000, null, true);


	CreateSE("SE02","se人体_鼓動_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵窓男", 2000, @512, @0, AxlDxl, false);
	Move("絵窓女", 2000, @512, @0, AxlDxl, false);
	Move("絵背景", 2000, @512, @0, AxlDxl, true);

	CreateSE("SE03","se人体_鼓動_l");
	MusicStart("SE03",0,700,0,1000,null,false);

	WaitAction("@絵背景", null);
	Move("絵窓男", 2000, @-1024, @0, AxlDxl, false);
	Move("絵窓女", 2000, @-1024, @0, AxlDxl, false);
	Move("絵背景", 2000, @-1024, @0, AxlDxl, true);

	CreateSE("SE03","se人体_鼓動_l");
	MusicStart("SE03",0,700,0,1000,null,false);

	WaitAction("@絵背景", null);
	Move("絵窓男", 2000, @512, @0, AxlDxl, false);
	Move("絵窓女", 2000, @512, @0, AxlDxl, false);
	Move("絵背景", 2000, @512, @0, AxlDxl, true);

	Wait(1000);

	St("C",19010, @0,@0,"fu千秋_通常_pinch");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400470kit">
「う……うう……どっちだ！？
　どっちに入れば……」

{	St("C",19010, @0,@0,"bu千秋_頭突き_rage2");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400480kit">
「え、ええい、ままよっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteSt("C",200,true);

	CreateColorEX("絵色黒", 5000, "#000000");

	TextBoxDelete(150);

	Move("絵窓男", 600, 0, @0, null, false);

	$枠線幅 = 0 - ImageHorizon("絵背景");

	Move("絵背景", 600, $枠線幅, @0, null, true);

	SetVertex("絵窓男/絵演背景", 1660, 640);
	Move("絵窓男/絵演背景", 900, -1136, -311, DxlAuto, false);
	Zoom("絵窓男/絵演背景", 900, 2000, 2000, DxlAuto, false);

	Wait(600);

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//◆場所：銭形公園_トイレ破壊

	SceneOut(5000, 0, "slide_01_01_0");

	OnBG(10,"bg1703300銭形公園_トイレ中_破壊");
	FadeBG(0,true);

	Delete("絵背景");
	Delete("絵色黒");
	Delete("絵窓*");
	SceneIn(300, "slide_01_01_0");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
{	St("C",700, @-50,@0,"bu千秋_通常_worry");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400490kit">
「あれ……？　奧、壊れて……」

{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400500kit">
「ってそれどころじゃない！
　手前、空いてる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteSt("C",200,true);

	TextBoxDelete(150);

//◆ＳＥ：バタン！　扉を閉じる


//◆場所：銭形公園_トイレ個室
	SceneOut(5000, 300, "slide_01_01_0");
	OnBG(10,"bg1704100銭形公園_トイレ個室_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	CreateSE("SE01","se動作_ドア閉める02");
	MusicStart("SE01",0,700,0,1000,null,false);
	SceneIn(300, "slide_01_01_1");

	CreateTextureEX("絵背景", 15, Center, @0, "cg/bg/bg1704100銭形公園_トイレ個室_通常.jpg");
	SetShade("絵背景", MEDIUM);


//◆ＳＥ：ガサガサスカートまくる

	CreateSE("SE02","se動作_着替え");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("@xbgm*", 2500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{
//	St("C",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400510kit">
「えと、これは……まくればいい……？」

{
	SetVolumeEX("SE*", 300, 0, null);
//	St("C",700, @0,@0,"bu千秋_通常_sigh");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400520kit">
「ふぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);
	Fade("絵背景", 300, 1000, null, true);
	Wait(200);
	Fade("絵背景", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
{
//	St("C",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400530kit">
「ああ……なんか……せかい、回ってる……」

{
//	St("C",700, @0,@0,"bu千秋_通常_sigh");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400540kit">
「なんか……迎えに行っても、足引っ張るような……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400550kit">
「今、どこにいるんだろうな……恵那」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	DeleteAllSt(200,false);

//◆ＳＥ：がたんッ！！
	CreateSE("SE01","se擬音_トイレガタガタ03");
	MusicStart("SE01",0,2000,0,1000,null,false);
//	Shake("@OnBG*", 300, 0, 5, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 0, 8, 0, 0, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400560kit">
「ひっ！」

{
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400570kit">
「あ……ごめんなさい！」


{
//	St("C",700, @0,@0,"bu千秋_通常_sigh");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400580kit">
（そういえば……隣に人がいるんだっけ）

{
//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400590kit">
（声出せないな）

{
//	St("C",700, @0,@0,"bu千秋_通常_sigh");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400600kit">
（さて……どうやって恵那を探すか……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400610kit">
（……電話、かな）

//◆ＳＥ：がたがたッ！！

{
	CreateSE("SE01","se擬音_トイレガタガタ02_l");
	MusicStart("SE01",0,1000,0,1000,null,true);
//	Shake("@OnBG*", 500, 0, 3, 0, 0, 500, null, false);
	BGPlainShake(50, 500, 0, 8, 0, 0, 1000, Dxl1, true);
	SetVolumeEX("@SE01*", 2500, 0, null);
}

{
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400620kit">
「ひえええっ！」

//◆ＳＥ：がたがたッ！！　しつこく

{
	CreateSE("SE02","se擬音_トイレガタガタ02_l");
	MusicStart("SE02",0,700,0,1000,null,false);
	Shake("@OnBG*", 50, 0, 3, 0, 0, 500, null, false);
	Wait(500);
	SetVolumeEX("@SE02*", 3500, 0, null);
}

{
//	St("C",700, @0,@0,"bu千秋_通常_shout");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400630kit">
「な……あ、あの！」

{
//	St("C",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400640kit">
「さっきから、大丈夫ですか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2118);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400650kit">
「あの、返事を――」

//◆ＳＥ：がたがたッ！！

{
	CreateSE("SE01","se擬音_トイレガタガタ02_l");
	MusicStart("SE01",0,1000,0,1000,null,false);
//	Shake("@OnBG*", 500, 0, 3, 0, 0, 500, null, false);
	BGPlainShake(50, 500, 0, 8, 0, 0, 1000, Dxl1, true);
//	Wait(500);
	SetVolumeEX("@SE01*", 2500, 0, null);
}


{
//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400660kit">
（な……なんだよ、隣。
　さっきから返事もしないで、大丈夫か？）

{
	CreateSE("SE03","se環境_水流_l");
	MusicStart("SE03",2000,500,0,1000,null,true);
}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400670kit">
「ん、水……？」

{
//	St("C",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400680kit">
「あ……あれ？」

{
//	St("C",700, @0,@0,"bu千秋_通常_shout");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400690kit">
「確か、このトイレって……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：1910恵那.nssの回想開始
// ↑該当ファイルに↓の文章がありません aa2110恵那.nss の間違いでは？

	SetVolumeEX("@SE03*", 500, 0, null);
	SetVolumeEX("@SE01*", 500, 0, null);
	CreateSE("SE02","se擬音_フラッシュバック");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

	ClockDelete(0,true);

	PrintGO("上背景", 20010);
	DeleteSt("C",0,true);
	OnBG(10,"bg1701200銭形公園_全景_夕");
	FadeBG(0,true);
	SetTone("@OnBG*",Sepia);
//
//	CreateColorSPadd("絵色", 1500, "#847000");
	Fade("絵色", 0, 200, null, true);
	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100400700fec">
「『みーちゃんのひとりあそび』って知ってる？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100400710fec">
「それからね、夜にひとりでここのトイレに入ると、鍵のかかった個室から、物音がするの」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100400720fec">
「中に入ると、突然鍵が閉まって――」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100400730fec">
「足元から、どんどん水がせり上がってきて――」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/aa21/100400740fec">
「そのまま、溺れ死んじゃうんだって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想終了

	CreateColorEXadd("フラッシュ白", 2000, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);

{	ClockPass(2118);}

	PrintGO("上背景", 20010);
	DeleteSt("C",0,true);
	OnBG(10,"bg1704100銭形公園_トイレ個室_通常");
	FadeBG(0,true);
	SetTone("@OnBG*",null);
	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);


//◆ＳＥ：がたがたッ！！
	CreateSE("SE01","se擬音_トイレガタガタ03");
	MusicStart("SE01",0,2000,0,1000,null,false);
//	Shake("@OnBG*", 300, 0, 5, 0, 0, 500, null, false);
	BGPlainShake(50, 500, 0, 8, 0, 0, 1000, Dxl1, true);
//	Wait(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{
	SoundPlay("@xbgm05",0,450,true);
//	St("C",700, @0,@0,"bu千秋_驚天_shock");
//	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 5, 0, 0, 500, null, false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400750kit">
「ひえええええ――――――――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@SE01*", 2500, 0, null);
//◆場所：銭形公園_トイレ中_破壊

	CreateSE("SE01","se動作_ドア蹴破る");
	MusicStart("SE01",0,1100,0,1000,null,false);
	SceneOut(5000, 300, "slide_01_01_0");
	OnBG(10,"bg1703300銭形公園_トイレ中_破壊");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	SceneIn(300, "slide_01_01_1");
	Wait(300);

//◆場所：銭形公園_トイレ正面
	CreateSE("SE02","se擬音_ギャグ_逃げる");
	MusicStart("SE02",0,700,0,1000,null,false);
	SceneOut(5000, 300, "slide_01_01_0");
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");
	Wait(300);


//◆場所：銭形公園_全景
	CreateSE("SE03","se擬音_ギャグ_逃げる");
	MusicStart("SE03",0,700,0,1000,null,false);
	SceneOut(5000, 300, "slide_01_01_0");
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @-50,@0,"bu千秋_通常_pain");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400760kit">
「はぁっ、はぁっ、はぁっ、はぁっ！
　やば――ヤバイヤバイヤバイヤバイ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400770kit">
「ホントに――ホントに出たッ！！」

{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400780kit">
「幻覚？　いやいや、そんなことないって！」

{	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400790kit">
「っていうか、なんかトイレ壊れてたし！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400800kit">
「どうしよう？　どうしようどうしよう？
　オレ、取り憑かれてたりしたら――ううっ！」

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400810kit">
「そ――そうだっ！　恵那に連絡！」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400820kit">
「確かアイツ、『みーちゃんのひとりあそび』の謎も解きたいって――」

//◆ＳＥ：電話コール

{
	CreateSE("SE01","seメカ_携帯_コール01_l");
	MusicStart("SE01",0,700,0,1000,null,true);
}


{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400830kit">
「繋がれ……繋がれってば、早く！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400840kit">
「もうオレ……意識が……限界……」

//◆ＳＥ：遠くから着信音

{
	SetVolumeEX("@xbgm*", 1500, 0, null);
	CreateSE("SE02","seメカ_携帯_メール着信_恵那_l");
	MusicStart("SE02",2000,200,0,1000,null,true);
	SetVolumeEX("SE01", 4000, 0, null);
}


{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400850kit">
「あ……あれ……？」

{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400860kit">
「幻聴……？」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400870kit">
「いや……でも、聞こえるよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400880kit">
「この音、確か――」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400890kit">
「恵那の携帯の音……」

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400900kit">
「でも……どこから……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆場所：銭形公園_トイレ正面
	SceneOut(5000, 300, "slide_01_01_0");
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	SetVolumeEX("@SE02*", 300, 500, null);
	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400910kit">
「やっぱり……この中だ……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400920kit">
「………………」

{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400930kit">
「どうしよう……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400940kit">
「中に……みーちゃんが……ホントにいたら……」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400950kit">
「いや、でも――」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400960kit">
「ホントにいたとしたら、それこそ恵那が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400970kit">
「どうする……」

{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400980kit">
「どうする、オレ……」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100400990kit">
「…………」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401000kit">
「そうだ……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401010kit">
「躊躇ってる暇なんて、ない……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆演出指定：ここで携帯電話止める
	SetVolumeEX("@SE*", 200, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401020kit">
「よっしゃ！　気合い入れ――」


//◆ＳＥ：ぐるるるるるるる！！

{
	CreateSE("SE01","se人体_腹下し");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",0,true);
	Shake("@StNameC/C*", 300, 6, 0, 0, 0, 1000, Dxl1, false);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401030kit">
「ううっ、またお腹が――」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401040kit">
「でも……頑張らないと……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SoundPlay("@xbgm30",0,450,true);

//◆場所：銭形公園_トイレ中_破壊
	SceneOut(5000, 150, "circle_01_00_0");
	OnBG(10,"bg1703300銭形公園_トイレ中_破壊");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	SceneIn(150, "circle_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @30,@0,"bu千秋_通常_normal");
	Move("@StNameC/C*", 300, @-30, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401050kit">
「恵那……いるんだろ？」

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401060kit">
「恵那！　返事してくれよ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401070kit">
「なあ、恵那！　恵那ってば！」

{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401080kit">
「今――開けてやるからな！」

{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401090kit">
「おばけ、出るなよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @-60, @0, Dxl2, false);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景", 20, 0, -200, "cg/bg/l/bg1703300銭形公園_トイレ中_破壊_l.jpg");
	Fade("絵背景", 200, 1000, null, true);

	St("ML",700, @60,@0,"bu千秋_通常_angry");
	Move("@StNameML/ML*", 200, @-60, @0, Dxl2, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0269]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401100kit">
「ん……ああっ、クソ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se擬音_ロープきしむ");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401110kit">
「壊れてて……開きそうなのに……ううっ！　う！」

{	CreateSE("SE01","se擬音_トイレガタガタ02_l");
	MusicStart("SE01",0,1100,0,1000,null,true);
	St("ML",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401120kit">
「もう……身体に、力が……」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	Shake("@StNameML/ML*", 600, 4, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401130kit">
「こんの……野郎ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2119);}


/*

//※下倉注：ここ、別の扉ガタガタって開くＳＥとかに変える必要アリ 2010/11/01

//◆ＳＥ：モップ転がる
//	CreateSE("SE01","se日常_モップ転がる");
//	MusicStart("SE01",0,700,0,1000,null,false);

*/
	SetVolumeEX("SE*", 300, 0, null);

	CreateSE("SE01","se擬音_トイレガタガタ03");
	MusicStart("SE01",0,700,0,1000,null,false);
//	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 0, 8, 0, 0, 1000, Dxl1, true);

	WaitKey(1000);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateTextureSP("絵背景", 20, 0, -200, "cg/bg/l/bg1703100銭形公園_トイレ中_通常_l.jpg");
	CreateSE("SE02","se動作_ドア蹴破る");
	MusicStart("SE02",0,700,0,1000,null,false);
	Delete("絵板写");

	Move("@StNameML/ML*", 200, @80, @0, Axl1, false);
	DeleteAllSt(200,true);

	BGPlainShake(50, 300, 40, 0, 0, 0, 1000, Dxl1, true);

	CreateSE("SE01","se人体_倒れる01");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

//	CreateSE("SE01","se日常_モップ転がる");
//	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
{	St("ML",700, @80,@0,"bu千秋_通常_worry");
	Move("@StNameML/ML*", 200, @-80, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401140kit">
「恵那……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2110恵那水没.txt"
// 次ファイルのイベントCG指定箇所までイベントCG表示したまま？

	CreateTextureEX("絵演場面", 3000, -835, -477, "cg/ev/l/ev2110恵那水没_l.jpg");
	SetBlur("絵演場面", true, 2, 500, 60, false);
	Move("絵演場面", 500, -221, -239, Dxl2, false);
	Fade("絵演場面", 300, 1000, null, true);

	#ev2110恵那水没 = true;


	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401150kit">
「恵那！　恵那！」

{	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateTextureSP("絵演場面", 2010, -458, -86, "cg/ev/l/ev2110恵那水没_l.jpg");
	SetVertex("絵演場面", 913, 170);
	Zoom("絵演場面", 0, 500, 500, null, true);
	Request("絵演場面", Smoothing);
	FadeDelete("絵板写", 300, null, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401160kit">
（まだ……生きてる……）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401170kit">
（でも息が……）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401180kit">
「人口呼吸……？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401190kit">
「そうだ、人工呼吸――どうやんだっけ？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401200kit">
「ああクソ！　わかんねーけど！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：以下、ＢＧループで
// ↑演出指示の内容が不明。BG（背景？）BGM？
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0285]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401210kit">
「――――ッ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401220kit">
「はぁっ、はぁっ、はぁっ」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401230kit">
「――――ッ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401240kit">
「はぁっ、はぁっ、はぁっ」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401250kit">
「――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/
//◆演出指定：以上、ＢＧループで
	CreateVOICE("小碓千秋","aa21/100401210");
	MusicStart("小碓千秋",0,600,0,1000,null,true);

	Move("絵演場面", 60000, 72, -403, DxlAuto, false);
	Zoom("絵演場面", 60000, 2000, 2000, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401260kit">
（恵那！　帰ってきてくれ！）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401270kit">
（もう、嘘ついたりなんてしない！）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401280kit">
（オレ……本当は千秋で……）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401290kit">
（それで、おまえのことが……）


{	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 3000, 300, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401300kit">
（ああっ、クソ……頭がクラクラ……）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401310kit">
（だめだ……オレ……）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100401320kit">
（もう……限界……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("小碓千秋", 300, 0, null);
	SetVolumeEX("SE*", 300, 0, null);
	SetVolumeEX("@xbgm*", 300, 0, null);

	CreateColorEX("絵色黒上", 20000, "#000000");
	Fade("絵色黒上", 300, 1000, null, true);

	WaitKey(1000);

	EndFileBlackOut(20000,0);
	EndScene();
}
//next "千秋" "aa2120千秋_恵那.nss"
