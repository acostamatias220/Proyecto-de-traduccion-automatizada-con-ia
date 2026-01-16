
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2230ＡＤ.nss_MAIN
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

scene zc2230ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="100">
////////////header////////////
//file name "zc2230ＡＤ.nss"
//title "絶望"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2235);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buＡＤ_通常_cry");
	FadeSt("C",0,true);}

	CreateSE("SE01","se環境_燃える_l");
	MusicStart("SE01",1000,700,0,800,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc22/300100010adi">
「ダメだあ……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc22/300100020adi">
「映っちゃイケナイもの……映っちゃった……」

{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc22/300100030adi">
「時間が足りたのがせめてもの救いだけど……」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc22/300100040adi">
「ああ……若原Ｄに、なんて言おう」

{	DeleteAllSt(200,true);
	St("C",700, @-200,@200,"buミリＰa_ショータイム_normal");
	Move("@StNameC/C*", 200, @200, @-200, Dxl1, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc22/300100050mrp">
「そんな、落ち込まないでよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc22/300100060adi">
「ミリＰさん……！？
　来たんですか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc22/300100070mrp">
「まあ確かに、やり過ぎだったかもしれないけどさ」

{	St("ML",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc22/300100080mrp">
「私たちは、できる限りのことを精一杯やった」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 2600);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc22/300100090adi">
「…………はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	AgainSt("MR",700, @0,@0,"buＡＤ_通常_smile");
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc22/300100100mrp">
「ところで、ここの撤収終わったら、ちょっと手伝って欲しいことがあるんだけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
