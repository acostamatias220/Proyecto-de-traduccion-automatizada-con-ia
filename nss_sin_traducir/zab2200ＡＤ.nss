
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2200ＡＤ.nss_MAIN
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

scene zab2200ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zab2200ＡＤ.nss"
//title "絶望"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2200);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",0,true);}

	CreateSE("SE01","se環境_燃える_l");
	MusicStart("SE01",4000,400,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab22/000100010adi">
「もう……ダメ……」

{	St("C",700, @0,@0,"buＡＤ_通常_cry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab22/000100020adi">
「映っちゃイケナイもの……映っちゃった……」

{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	Shake("@StNameC/C*", 300, 6, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab22/000100030adi">
「う……電話とか……取りたくない……」


//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab22/000100040adi">
「こりゃ始末書っていうか……むしろ辞表モノ、かな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
