
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1950みそブー_ミヅハ.nss_MAIN
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

scene z1950みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="140">
////////////header////////////
//file name "z1950みそブー_ミヅハ.nss"
//title "地下道"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1957);}

//◆場所：地下_通路_スパコン館
	OnBG(10,"bg0701500地下_通路_スパコン館");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】

<voice name="みそ" class="みそ" src="voice/z19/500200010mso">
「あ……あれ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/500200020buu">
「ん？　どしたみそ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/500200030mso">
「い、いや……なんつーか、その……」

//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/500200040mso">
「肩車してる……ミヅハから、なんかこう……
　得も言われぬ迫力を感じるというか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/500200050mzh">
「だーかーら、言っておるであろう？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/500200060mzh">
「わらわは……かみさ――」

{	St("MR",700, @0,@0,"buブーa_通常_happy");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/500200070buu">
「はい代わろう！　オレと代わろう！」

{	St("MR",700, @0,@0,"buブーa_オラオラ_happy");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/500200080buu">
「寒気がするだろ？　肩が重いだろ？
　はいソレは霊障ですッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/500200090mzh">
「しかし――」

{	St("MR",700, @0,@0,"buブーa_オラオラ_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/500200100buu">
「怖がらなくても大丈夫！」

{	St("MR",700, @0,@0,"buブーa_オラオラ_pride");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/500200110buu">
「首でおまたをこするだけ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/500200120mso">
「行くぞ」

{	Move("@StNameML/ML*", 200, @-50, @0, Axl3, false);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z19/500200130mzh">
「うむ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @-50, @0, Axl3, false);
	DeleteAllSt(200,true);

	St("MR",700, @0,@0,"buブーa_オラオラ_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 30, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/500200140buu">
「ちょ、ちょっと待った！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
