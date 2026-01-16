
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2350ＡＤ.nss_MAIN
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

scene z2350ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z2350ＡＤ.nss"
//title "屋上へ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2355);}

//◆場所：半田明神_屋根_雪
	OnBG(10,"bg0605300半田明神_屋根_雪");
	FadeBG(0,true);

//xsong02_live
//定義
	SoundPlay("@xsong02_live",0,1,true);
	SetStream("@xsong02_live", 79700);

	Wait(1000);
//調整するときはここでボリューム変更してください。
	SetVolume("@xsong02_live", 3000, 300, null);

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/500100010adi">
「な……なんだか……」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/500100020adi">
「緊張……してきたというか……」

{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/500100030adi">
「うう……震えが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
