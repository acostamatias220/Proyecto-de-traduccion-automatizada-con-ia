
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2140千秋_恵那.nss_MAIN
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
		$GameName = "2143恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "2143恵那.nss";
	}else{
		$GameName = "2143恵那.nss";
	}

}


scene b2140千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="470">
////////////header////////////
//file name "b2140千秋_恵那.nss"
//title "荒ぶる鈴！"
//previous "b2120千秋.nss"
//previous "b2134恵那.nss"

////////////footer////////////
//next "千秋" "2143恵那.nss"
//next "恵那" "2143恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	if($PreGameName=="b2120千秋.nss"||$PreGameName=="b2134恵那.nss"){
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	}else{
	}
	FadeDelete("上背景", 0, null, true);

{	ClockPass(2140);}

	Fade("フラッシュ白",500,0,null,true);

	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,1000,null,false);

	WaitKey(200);

//★ wam井野 ここから出るまでの千秋の立ち絵は低く設定した方が良かったでしょうか？

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

{	St("C",700, @0,@50,"bu千秋_朗らか_shock");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【小碓千秋】

<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100010kit">
「はっ！」

{
	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100020fje">
「起きた……！？」

{	MusicStart("@xbgm11",0,450,0,1000,null,true);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100030kit">
「あ……あれ？
　恵那に……ユージロー？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/400100040ujr">
「わう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100050kit">
「あれ？
　ユージローが、しゃべってない？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/400100060ujr">
「わう！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100070fje">
「まだ夢の続き見てるわけ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100080kit">
「夢の……続き？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100090kit">
「ってことはオレ、死んでない？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100100fje">
「当たり前でしょ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100110kit">
「よかっ――ぅえっ！」

{	St("ML",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100120kit">
「オエエエエエッ！　オェッ！
　ぅぅうう……ケホッケホッ！」

{
	Shake("@StNameML/ML*", 300, 5, 10, 0, 0, 500, null, true);
}


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100130fje">
「ちょ！　大丈夫？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100140kit">
「あんまり……大丈夫じゃ、ないかも……
　オエエッ！　オエッ！　う……ううう……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100150fje">
「ったく、なんでクリマンなんて食べたのよ！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100160kit">
「しょうがないだろ？　そういう空気だったんだし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100170fje">
「バカ！　空気で死にかけてどうするのよ！
　まだ全然、救急車が来る気配はないし……」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100180kit">
「病院！？　だ……だめだ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100190fje">
「は？」

//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100200kit">
「こんな格好で行ったらオレ、マジで変態扱い……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2141);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100210fje">
「ん？　なんか言った？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100220kit">
「とにかく……病院は駄目なんだ！
　家に……家に、送ってくれ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100230fje">
「家にって……しょうがないわね」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100240fje">
「立てる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】

<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100250kit">
「た……立つとか、無理……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100260fje">
「泣き言言わないの！」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100270fje">
「待ってたってどうしようもないんだから、ほら！
　肩貸して！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100280kit">
「う……うう……う……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100290fje">
「隣で戻したりしたら、承知しないからね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100300kit">
「がんばります……」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2142);}

//◆場所：秋葉原_中央通り

	SetVolumeEX("@x*", 2000, 0, NULL);

	SceneOut(5000, 1000, "blind_01_00_0");

	OnBG(10,"bg0103211秋葉原_中央通り_閉店");
	DeleteAllSt(0,false);
	FadeBG(0,true);

	CreateSE("SE00","seガヤ_交通_l");
	MusicStart("SE00",2000,400,0,1000,null,true);

	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]


{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100310fje">
「タクシー！　タクシー！」

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100320fje">
「……ダメだ。捕まんない」


{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100330fje">
「大晦日だからそもそも数が少ないし……
　みんなお客さんが乗ってる」

{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100340fje">
「それにこの感じ、なんだろ。
　街中が……いつもと違う？」

{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100350fje">
「さっきの音も気になるし……」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100360kit">
「あうあう……あうあうあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100370fje">
「……しょうがないわ」

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100380fje">
「ほら、もう少し歩いて！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100390fje">
「スーパーノヴァまで頑張って歩きましょ！」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100400fje">
「あそこなら休めるし、誰かが車出してくれるかも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	TextBoxDelete(150);

//※下倉注：ここで bg0101200秋葉原_裏通り_閉店 に移動をお願いします… 2010/11/24←済(あきゅん：2010/11/24)

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);

	SetVolumeEX("SE00", 2000, 250, null);
	Wait(500);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

{	St("C",700, @60,@0,"bu恵那_通常_sigh");
	Move("@StNameC/C*", 200, @-60, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100410fje">
「ほら、もう少し頑張って！」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	Move("@StNameMR/MR*", 2000, @0, @30, Dxl2, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/400100420kit">
「はら……はらほろひれはれ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buユージローa_通常_angry");
	Move("@StNameML/ML*", 200, @-50, @0, Dxl2, false);
	Shake("@StNameML/ML*", 300, 0, 10, 0, 0, 500, Axl2, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/400100430ujr">
「わうわうわう！！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@SE*", 1000, 0, NULL);


	TextBoxDelete(150);
//◆ＳＥ：プップー！　車の音

//◆ＳＥ：キキー！　ブレーキ

//◆演出指定：ガッチャーン！！

	DeleteAllSt(200,false);

	CreateSE("SE01","seメカ_車_クラクション_l");
	CreateSE("SE02","seメカ_車_急ブレーキ");
	CreateSE("SE03","se戦闘_ガラス割れる02");

	MusicStart("SE02",0,1200,0,1000,null,false);
	Wait(500);
	MusicStart("SE01",0,1200,0,1000,null,false);
	Wait(1500);
	MusicStart("SE03",0,1200,0,1000,null,false);
	Shake("@OnBG*", 1500, 1, 5, 0, 0, 1000, null, false);
	Wait(1500);

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100440fje">
「え……？」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100450fje">
「な、なに！？　今の音――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆場所：スーパーノヴァ_正面_ガラス車イン
{
	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg0501400スーパーノヴァ_正面_ガラス車イン");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{
	St("C",700, @-50,@0,"bu恵那_哀愁_pinch");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100460fje">
「あ」


//あきゅん「修正指示：立ち絵出さないで事故場所のアップ」
//★ wam井野 修正いたしました。10/11/18

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SceneOut(5000, 300, "slide_01_02_0");

	CreateTextureEX("絵背景100", 1010, -720, -370, "cg/bg/l/bg0501400スーパーノヴァ_正面_ガラス車イン_l.jpg");
	Zoom("絵背景100", 0, 800, 800, null, true);

	Move("絵背景100", 1000, @-50, @0, Dxl2, false);

	Fade("絵背景100", 1000, 1000, null, true);

	DeleteAllSt(0,false);

//	SceneIn(300, "slide_01_02_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/400100470fje">
「車、突っ込んでる……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Move("絵背景100", 1000, @-50, @0, Axl2, false);

	Fade("絵背景100", 1000, 0, null, true);


//	ClearWaitAll(1000, 1000);


	EndScene();
}
