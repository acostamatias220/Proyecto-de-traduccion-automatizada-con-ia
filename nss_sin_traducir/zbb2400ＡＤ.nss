
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbb2400ＡＤ.nss_MAIN
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

scene zbb2400ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zbb2400ＡＤ.nss"
//title "一段落"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603411半田明神_境内_ノーマル新年");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",0,true);}

	CreateSE("SE01","seガヤ_半田明神02_l");
	MusicStart("SE01",1000,500,0,0,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbb24/000100010adi">
「ギリギリ首は繋がったけど。これからどうなるのか……」

{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbb24/000100020adi">
「はぁ……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zbb24/000100030adi">
「久しぶりに実家、帰ってみようかな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	//MusicStart("SE01",1000,0,0,1000,null,false);
	EndScene();
}
