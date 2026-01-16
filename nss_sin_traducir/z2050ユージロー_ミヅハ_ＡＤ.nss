
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2050ユージロー_ミヅハ_ＡＤ.nss_MAIN
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

scene z2050ユージロー_ミヅハ_ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "z2050ユージロー_ミヅハ_ＡＤ.nss"
//title "ブルマー仮面参上！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2050);}

//◆場所：ＵＰ＋_セット上
//	OnBG(10,"bg1202100ＵＰ＋_セット上_通常");
//	FadeBG(0,true);
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm16_noint",0,450,true);

	FadeDelete("上背景", 500, null, true);

	St("L",700, @0,@80,"buユージローb_通常_pride");
	Move("@StNameL/L*", 200, @0, @-80, Dxl3, false);
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/500200010ujr">
（ブルマー仮面、参上ッ！！）

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/500200020mzh">
「なななな、なんじゃとー！？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/500200030adi">
「いったい、何が――！？」

{	DeleteAllSt(200,false);
	CreateTextureEX("ユージローBU", 100, -185, 179, "cg/bu/buユージローb_通常_ero.png");
	Fade("ユージローBU", 200, 1000, null, true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/500200040ujr">
（アタ――――ック！）

{	CreateSE("SE01","se動作_ジャンプ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("ユージローBU", 100, @300, @0, null, false);
	FadeDelete("ユージローBU", 80, null, true);}
{	Wait(500);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_angry");
	Shake("@StNameC/C*", 1000, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z20/500200050mzh">
「ぎゃあああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z20/500200060adi">
「ウソぉッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
