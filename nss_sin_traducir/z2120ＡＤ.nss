
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2120ＡＤ.nss_MAIN
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

scene z2120ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="100">
////////////header////////////
//file name "z2120ＡＤ.nss"
//title "闖入者"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2129);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201311ＵＰ＋_屋外セット_暗闇");
	FadeBG(0,true);

	CreateSE("SE01","se環境_燃える_l");
	MusicStart("SE01",1000,400,0,1000,null,true);

{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/200100010adi">
「そんなの……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/200100020adi">
「そんなのって、ないよ……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/200100030adi">
「こんな風に……私たちの努力が、壊されちゃうなんて」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z21/200100040mrp">
「――まだよ」

{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/200100050adi">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z21/200100060mrp">
「ピンチこそ、チャンス――」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z21/200100070mrp">
「ネットに繋がれば、映像は送れるわね？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/200100080adi">
「あ、はい。だいぶ画は汚くなりますけど、そもそもそういうところから立ち上がった企画ですから――」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z21/200100090adi">
「って、まさか――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z21/200100100mrp">
「そう……番組は継続！
　あのカッターのコを追いかけるわっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
