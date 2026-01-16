
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1840ＡＤ.nss_MAIN
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

scene z1840ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "z1840ＡＤ.nss"
//title "ミリＰ登場"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1847);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201100ＵＰ＋_屋外セット_通常");
	FadeBG(0,true);

	St("ML",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("ML",0,true);

	SoundPlay("@xbgm16",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z18/400100010mrp">
「はろぉ～」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/400100020adi">
「あ！　ミリＰさん！　早い――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_ショータイム_pride");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z18/400100030mrp">
「偶然、秋葉原に向かってたの。
　まだまだ神様は私たちを見捨ててないってことかしら」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/400100040adi">
「あの、番組概要ですけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z18/400100050mrp">
「大丈夫！　どんだけミーティングに噛ませてもらったと思ってんのよ！」

{	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	St("ML",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("ML",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("ML", 200, 2200);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z18/400100060mrp">
「さ、早速現場を――あれ？」

{	AgainSt("ML",700, @0,@0,"buミリＰa_通常_shock");
	St("ML",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z18/400100070mrp">
「ちょっと！　ソトカンダーの模型はどこ！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z18/400100080adi">
「あ、そうだ――まだトラックに！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
