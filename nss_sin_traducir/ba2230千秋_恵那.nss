
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2230千秋_恵那.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "ba2235千秋_恵那_ノーコ.nss";
	}else if($CharaName=="恵那"){
		$GameName = "ba2235千秋_恵那_ノーコ.nss";
	}else{
		$GameName = "ba2235千秋_恵那_ノーコ.nss";
	}

}

scene ba2230千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="790">
////////////header////////////
//file name "ba2230千秋_恵那.nss"
//title "弱点を推理せよ！"
//previous "ba2221千秋_恵那.nss"

////////////footer////////////
//next "千秋" "ba2235千秋_恵那_ノーコ.nss"
//next "恵那" "ba2235千秋_恵那_ノーコ.nss"


////////////body////////////


//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2230);}

//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);

	CreateSE("SEL01","se動作_集団走る");
	MusicStart("SEL01",0,700,0,1000,null,true);

//◆演出指示：地響き
	CreateSE("SE05","se環境_地鳴り03");
//	CreateSE("SE05","se戦闘_倒壊04");
	MusicStart("SE05",0,500,0,1000,null,false);
	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0103200秋葉原_中央通り_閉店.jpg");
	Fade("絵背景", 0, 1000, null, false);
	Shake("絵背景", 3000, 5, 2, 0, 0, 500, AxlDxl, false);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100010tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

	CreateVOICE("その他男声","ba22/300100010tsr");
	MusicStart("その他男声",0,700,0,1000,null,false);

	$SETime = RemainTime("その他男声")-300;
	WaitKey($SETime);

{	St("MR",700, @-50,@0,"bu千秋_通常_sad");
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100020kit">
「なんか、近づくにつれて音が大きくなってるっつーか」

{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100030kit">
「もしかしてこれ、ホントに怪獣かなんかじゃ――」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 5, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100040kit">
「ぅぇ……走りすぎて気持ちも悪くなってきた……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"st恵那_通常_angry");
	FadeSt("ML",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100050fje">
「ほら、千秋！　早く――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);
	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);
	Zoom("絵背景", 0, 1800, 1800, null, false);

	SetVolumeEX("SE*", 300, 0, null);
	SetVolumeEX("@xbgm*", 300, 0, null);

	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　先に交差点に辿り着いた恵那が、角の先の光景を目の当たりにして、固まる。


{	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100060fje">
「な……なに、アレ？」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100070fje">
「もう事件とか、そういうレベルじゃ――」

{	St("R",600, @50,@0,"bu千秋_朗らか_normal");
	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100080kit">
「おい待てよ！　なにが……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2220太四郎ビル大破壊.txt"
//あきゅん「修正指示：ここでのＥＶ表示はもう少しもったいぶって、ノーコとの戦闘デモンストレーションをいれてください」

	DeleteAllSt(200,true);


	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 120, -824, -576, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景300", 120, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);


	Fade("絵背景200", 300, 1000, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1300);
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);


	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");


	Fade("絵色100", 500, 0, null, true);


/*
	CreateTextureEX("絵背景１", 2000, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	CreateTextureEX("絵背景２", 2010, Center, @0, "cg/ev/ev2220太四郎ビル大破壊.jpg");
//	Zoom("絵背景１", 0,1000, 1000, Dxl2, false);

	Move("絵背景１", 500, @0, @400, Dxl2, false);
	Fade("絵背景１", 500, 1000, null, true);
	DeleteAllSt(0,true);
	Wait(500);
	Fade("絵背景２", 300, 1000, null, true);

//	Shake("@絵背景*", 1000, 0, 10, 0, 0, 500, null, false);

//	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2220太四郎ビル大破壊.jpg");
//	Fade("絵背景１", 1000, 1000, null, true);
//	DeleteAllSt(200,false);
*/

	SoundPlay("@xbgm19",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小碓千秋】
{	St("MR",600, @0,@0,"bu千秋_驚天_shock");
	FadeSt("MR",200,true);}
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100090kit">
「な……なんだあれぇえ！？」

{

	CreateTextureEX("絵背景１", 2000, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	CreateTextureEX("絵背景２", 2010, Center, @0, "cg/ev/ev2220太四郎ビル大破壊.jpg");
//	Zoom("絵背景１", 0,1000, 1000, Dxl2, false);

	Move("絵背景１", 2000, @0, @400, Dxl2, false);
	Fade("絵背景１", 2000, 1000, null, true);
	DeleteAllSt(0,true);
	Wait(500);
	Fade("絵背景２", 1000, 1000, null, true);

//	Shake("@絵背景*", 1000, 0, 10, 0, 0, 500, null, false);

//	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2220太四郎ビル大破壊.jpg");
//	Fade("絵背景１", 1000, 1000, null, true);
//	DeleteAllSt(200,false);

}


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100100fje">
「タヌキよ……」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100110fje">
「タヌキが、ノーコさんと戦ってる……！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100120kit">
「おかしいよ！　でかすぎるだろ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100130kit">
「ってか、急展開過ぎて何が何だか――」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100140fje">
「父さん……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆場所：スパコン館_裏面

	SceneOut(5000, 300, "blind_01_00_0");

	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);

	Fade("絵背景*", 0, 0, null, true);

	SceneIn(300, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]



{	St("MR",700, @50,@0,"bu恵那_ハルヒ_shock");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100150fje">
「父さんッ！！　それに――ユージローも！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/300100160fjh">
「おう、恵那」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ba22/300100170ujr">
「わうわうっ！！」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/300100180mso">
「ゲ！　さっきの――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/300100190buu">
「父さんって……親子？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100200fje">
「アンタたちは黙ってて！」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100210fje">
「父さん、なにが起こってるの？」

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1900);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100220fje">
「あのタヌキは――あれ？
　父さん抱えてるの、別のタヌキ――」

{	AgainSt("C",700, @0,@0,"bu恵那_通常_sigh");
	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100230fje">
「ってか父さん、脚に怪我してる！？」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/300100240fjh">
「説明してるヒマはねぇ！　まずは避難だ！
　近くのビルに人がいねぇか確認しろ！」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ba22/300100250fjh">
「あいつ、本当に街を壊しかねねぇぞ！」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100260fje">
「……千秋！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100270kit">
「お……おう」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_オラオラ_shout");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ba22/300100280mso">
「オレたちも、いっちょやるか！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ba22/300100290buu">
「おうよ！　百野殺駆の底力、見せてやろうぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,false);
	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/300100300mrp">
『スクープよ！　みんな、ちゃんと見てる！？』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_angry");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/300100310mrp">
『今まさに、秋葉原は大混乱の中！』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_pinch");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ba22/300100320mrp">
『巨大ダヌキが、電気街を破壊しようとしているわ！！』


{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"buＡＤ_通常_shock");
	Move("@StNameML/ML*", 200, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ba22/300100330adi">
「ミリＰさんっ！
　もうそろそろ中継時間が――ッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu恵那_ハルヒ_angry");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 500, null, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100340fje">
「ふたりとも、あんまり向こうに近づきすぎないでね！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/ba22/300100350adi">
「わかってます！」


{	DeleteAllSt(200,false);
{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 4000);}
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100360kit">
「ほらみんな、気をつけて！
　橋を渡って、避難を――うぅっ」

{
	AgainSt("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);
	Move("@StNameC/C*", 300, @0, @20, Dxl2, true);
	DeleteAllSt(200,false);
	Wait(500);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100370fje">
「千秋、顔色が――！　 みんなと一緒に避難したら？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@50,"bu千秋_気合い_hard");
	Move("@StNameML/ML*", 200, @0, @-50, Dxl2, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100380kit">
「う、うるさい！
　ただでさえ人手が足りないのに、逃げられないだろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);

	CreateTextureEX("絵背景１", 1900, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Move("絵背景１", 0, @0, @400, Dxl2, true);

	CreateSE("SE05","se環境_地鳴り03");
	MusicStart("SE05",0,500,0,1000,null,false);

	Fade("絵背景１", 300, 1000, null, true);

//	Shake("絵背景１", 1000, 5, 2, 0, 0, 500, AxlDxl, false);
	BGPlainShake(1910, 1000, 5, 2, 0, 0, 500, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100390tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2231);}

//◆ＳＥ：腹鼓
//あきゅん「修正指示：ノーコの戦闘描写も入れてください」

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 2100, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 2000, -824, -576, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景300", 2000, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);

	Delete("@絵演背景自動生成振動");
	Fade("絵背景200", 300, 1000, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1300);
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);


	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");


	Fade("絵色100", 500, 0, null, true);



	CreateSE("SE01","se戦闘_衝撃_衝突01");//腹太鼓の代わりに
	CreateSE("SE02","se戦闘_風切り音10");
	CreateSE("SE03","se戦闘_爆発01");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);

//	Fade("絵背景", 0, 500, null, false);
//	Shake("絵背景１", 3000, 5, 2, 0, 0, 500, AxlDxl, false);
	BGPlainShake(1910, 1000, 5, 2, 0, 0, 500, AxlDxl, false);

	Wait(300);

/*
	St("C",700, @0,@0,"stノーコa_発狂_normal");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 1000, 15, 0, 0, 0, 1000, Dxl1, false);
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100400nko">
「きゃ――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Delete("@絵演背景自動生成振動");
	Fade("絵背景１", 100, 0, null, false);

	Shake("*", 100, 0, 0, 0, 0, 1000, Dxl1, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100410kit">
「ノーコさんが苦戦してる」

{
	DeleteAllSt(200,true);

	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100420fje">
「彼女の動き……
　やっぱり、囮になってくれてるとしか思えない」

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100430fje">
「どういうこと？　ただの悪人じゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);

	CreateTextureEX("絵背景１", 2000, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	CreateTextureEX("絵背景２", 2010, Center, @0, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	Move("絵背景１", 0, @0, @400, Dxl2, true);

	CreateSE("SE05","se戦闘_倒壊03");
	MusicStart("SE05",0,500,0,1000,null,false);
//	CreateSE("SE05","se環境_地鳴り03");
//	MusicStart("SE05",0,500,0,1000,null,false);

	Fade("絵背景１", 300, 1000, null, true);
//	Shake("絵背景１", 1000, 5, 2, 0, 0, 500, AxlDxl, false);
	BGPlainShake(1910, 1000, 5, 2, 0, 0, 500, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100440tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2232);}

//◆演出指示：玉袋

	Zoom("絵背景２", 0, 1300, 1300, null, true);
	CreateSE("SE12","se戦闘_玉袋アタック");

	Delete("@絵演背景自動生成振動");
	MusicStart("SE12",0,700,0,1000,null,false);
	Shake("絵背景２", 300, 5, 2, 0, 0, 500, AxlDxl, false);
	Zoom("絵背景２", 300, 1000, 1000, Dxl2, false);
	Fade("絵背景２", 300, 1000, null, true);

	$SETime = RemainTime("SE12")/2;
	WaitKey($SETime);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg1101400スパコン館_裏面_半廃墟.jpg");
	Fade("絵背景", 0, 1000, null, true);
	Fade("絵背景１", 0, 0, null, true);

	Fade("絵背景２", 500, 0, null, true);

{	St("C",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100450kit">
「あ……なんか包まれた！？」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100460kit">
「アレって、その……たんたんタヌキの……」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100470fje">
「完璧に妖怪ね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100480kit">
「妖怪？」

{
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100490fje">
「タヌキの袋は、すごく伸びるのよ」

{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100500fje">
「八畳敷きっていうくらいだからね。
　あのサイズだったら街中包んでもおかしくないかも」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100510kit">
「っていうか、ノーコさんを助けないと――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100520fje">
「助けるって、どうやって？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,true);
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100530kit">
「わかんないよ！　わかんないけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameML/ML*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,false);

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]


{	CreateSE("SE05","se戦闘_倒壊03");
	MusicStart("SE05",0,500,0,1000,null,false);}

//◆音声指示：遠くから
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100540tsr">
「ぐおおおおおおおおお！！」


{	St("MR",700, @50,@0,"bu恵那_哀愁_pinch");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 500, null, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100550fje">
「って、千秋！　近づきすぎ！　逃げて――」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100560kit">
「げ……なんか、マジで気持ち悪くなってきた……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100570fje">
「気持ち悪くって、こんな時に！？」

{	DeleteAllSt(200,false);
	Shake("絵背景", 3000, 5, 2, 0, 0, 500, AxlDxl, false);
}

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100580tsr">
「ぐおおおおおおおおお！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Shake("絵背景", 5000, 3, 1, 0, 0, 500, AxlDxl, false);

	CreateColorEX("黒幕１", 3000, "BLACK");

	Fade("黒幕１", 5000, 500, null, false);

{	ClockPass(2233);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]


//◆演出指示：玉袋

{	CreateSE("SE11","se戦闘_玉袋膨張");
	MusicStart("SE11",0,700,0,1000,null,false);}


{	St("C",700, @0,@0,"bu千秋_驚天_shy");
	FadeSt("C",200,true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100590kit">
「のわっ！」

{	St("C",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100600kit">
「ひ……ひえっ……ふま……踏まれ……」

/*
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 300, 10, 0, 0, 0, 500, null, false);}
*/
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100610fje">
「千秋！　逃げて！」

{
	Fade("黒幕１", 2000, 700, null, false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100620kit">
「ひええええ……ぇ……ぇ……え……」

{
	Fade("黒幕１", 0, 1000, null, false);
	SetVolumeEX("SE*", 100, 0, null);
	SetVolumeEX("@x*", 100, 1, NULL);
}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100630kit">
「おええええええええええええええッッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(0,false);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]


　恐怖と揺れと混乱のあまり、千秋は吐いた。

{
	Fade("黒幕１", 2000, 0, null, false);
}
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100640tsr">
「ぐ、ぐ、ぐ、ぐ……」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100650tsr">
「ぐぅぅぅぅ…………」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100660fje">
「あ……あれ？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100670fje">
「タヌキが逃げた？　なんで？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100680kit">
「う……うう……うぷっ……」

{	St("ML",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100690kit">
「た……助かった……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100700fje">
「ゲロを踏むのが嫌だった？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100710kit">
「うわ……なんかコンニャクの残骸が――
　ぅえっ、気持ち悪っ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100720fje">
「そんなことより、上！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	DeleteAllSt(200,false);

	CreateTextureEX("絵演背景", 1000, Center, Middle, "cg/bg/l/bg2401100空_上空_通常_l.jpg");
	$水平値=0-ImageHorizon("絵演背景")+1024;
	$垂直値=576-ImageVertical("絵演背景");
	Move("絵演背景", 0, $水平値, $垂直値, null, true);

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1500,null,false);
	Move("絵演背景", 300, @0, 0, Dxl1, false);
	Fade("絵演背景", 300, 1000, null, true);

	SetVolumeEX("@xbgm19", 300, 450, NULL);


//あきゅん「修正指示：ここからノーコ戦闘入れていく感じに」


	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景101", 2001, Center, Middle, "cg/ef/efカッター剣閃b.jpg");
	CreateTextureEX("絵背景200", 120, -824, -576, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景300", 120, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);

//	Rotate("絵背景101", 0, @180, @0, @0, null,true);

	Fade("絵背景200", 0, 1000, null, true);

	FadeDelete("絵演背景", 300, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1300);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);



	CreateAXLWindowEX("絵窓", "X",2500, 32,256, false);
	WindowAXLZoom("絵窓", "X",0, 0, null, true);
	CreateTextureSP("絵窓/絵背景", 2400, 0, Middle, "cg/bg/bg1101400スパコン館_裏面_半廃墟.jpg");
	SetShade("絵窓/絵背景", HEAVY);

	CreateTexture("絵窓/キャラ", 2410, Center, InBottom, "cg/bu/bu千秋_朗らか_shock.png");
	SetAlias("絵窓/キャラ","絵窓/キャラ");
	Move("絵窓/キャラ", 0, -0, @96, null, true);
	WindowAXLZoom("絵窓", "X",300, 1000, Dxl2, true);

{	DeleteAllSt(200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0159a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100730kit">
「ノーコさん……いまので、逃げ出せたのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,false);
//	TextBoxDelete(150);

	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);


//◆ＥＶ："ev/ev0000ノーコカッター.txt"


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0159b]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100740nko">
「これで、おわり――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100750nko">
「くらえ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//あきゅん「修正指示：ノーコの攻撃、ここで激しく」

	DeleteAllSt(200,false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);

	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);

	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");



	CreateSE("SE02","se戦闘_風切り音10");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("絵色100", 200, 0, null, true);

	Fade("絵背景101", 0, 1000, null, true);

	Shake("絵背景101", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景101", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);


//	Fade("絵背景", 0, 500, null, false);
	Shake("絵背景１", 3000, 5, 2, 0, 0, 500, AxlDxl, false);

	Fade("絵背景101", 200, 0, null, false);
	Fade("絵色100", 200, 0, null, false);


	CreateSE("SE03","se戦闘_衝撃_衝突01");//腹太鼓の代わりに
//	CreateSE("SE03","se戦闘_風切り音10");
	CreateSE("SE04","se戦闘_爆発01");
	MusicStart("SE03",0,700,0,1000,null,false);
//	MusicStart("SE03",0,700,0,1000,null,false);
	MusicStart("SE04",0,700,0,1000,null,false);


	CreateTextureEX("絵背景１", 2020, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Move("絵背景１", 0, @0, @400, Dxl2, true);

//	CreateSE("SE05","se環境_地鳴り03");
//	MusicStart("SE05",0,500,0,1000,null,false);

	Fade("絵背景１", 300, 1000, null, true);
//	Shake("絵背景１", 1000, 5, 2, 0, 0, 500, AxlDxl, false);
	BGPlainShake(2030, 500, 0, 8, 0, 0, 500, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]


//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100760tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);

	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");
	Delete("@絵演背景自動生成振動");

	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",0,true);

	Fade("絵背景*", 300, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/300100770kit">
「よっしゃ！　行け――」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100780fje">
「待ったッ！！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/300100790fje">
「タヌキの足元に――ミリＰさんたちが！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//	TextBoxDelete(150);


	EndScene();
}
//next "千秋" "ba2235千秋_恵那_ノーコ.nss"
//next "恵那" "ba2235千秋_恵那_ノーコ.nss"
