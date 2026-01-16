
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2130みそブー_ＡＤ.nss_MAIN
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
	EndScript();

}

scene z2130みそブー_ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="110">
////////////header////////////
//file name "z2130みそブー_ＡＤ.nss"
//title "テレビに合流"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2136);}

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1201300ＵＰ＋_屋外セット_暗闇");
	FadeBG(0,true);

	CreateSE("SE01","se環境_燃える_l");
	MusicStart("SE01",1000,400,0,1000,null,true);

{	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/300100010mso">
「姐さ――――んッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/300100020buu">
「どこですか――――ッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/300100030mso">
「クソ、ダメだ！　全然見つから――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/300100040adi">
「あ、みそブーさん！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/300100050mso">
「あ……あんたはＡＤの！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_happy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/300100060buu">
「先ほどは、脱便に協力ありがとうございました！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/300100070adi">
「あの、お願いがあるんですッ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/300100080mso">
「お願い？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/300100090adi">
「はい、人手が足りなくて！」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/300100100adi">
「それで、ミリＰさんと一緒に、中継スタッフになってもらいたいんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/300100110adi">
「だめ……ですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
