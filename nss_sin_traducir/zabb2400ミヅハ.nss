
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zabb2400ミヅハ.nss_MAIN
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

scene zabb2400ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "zabb2400ミヅハ.nss"
//title "復讐"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2250);}

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆音声指示：ダメージを喰らって
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zabb24/000800010mzh">
「星……ダメじゃ」

//◆音声指示：ダメージを喰らって
{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zabb24/000800020mzh">
「既に、タヌキは倒した。
　もう……全ては終わったのじゃ」

//◆音声指示：ダメージを喰らって
{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zabb24/000800030mzh">
「これ以上、悲劇を呼ぶことは――」


{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zabb24/000800040kms">
「なりません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zabb24/000800050kms">
「河原屋双一は、ミヅハ様の呪いが解ける機会を奪った」

{	St("C",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zabb24/000800060kms">
「絶対に、許すわけにはいかないのです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
