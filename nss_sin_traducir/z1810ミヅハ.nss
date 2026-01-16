
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1810ミヅハ.nss_MAIN
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

scene z1810ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="100">
////////////header////////////
//file name "z1810ミヅハ.nss"
//title "星のおしりペンペン"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1810);}

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",0,true);

	SoundPlay("@xbgm15",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z18/100300010kms">
「おしり――」

{	CreateSE("SE01","se動作_はたく02");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z18/100300020kms">
「ぺん！」

{	DeleteAllSt(200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/100300030mzh">
「ぎゃあっ！」

{	CreateSE("SE01","se動作_はたく02");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z18/100300040kms">
「ぺんっ！」

{	DeleteAllSt(200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/100300050mzh">
「ぎゃああああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@60,"buミヅハ_通常_sigh");
	Move("@StNameC/C*", 1000, @0, @-60, Dxl1, false);
	FadeSt("C",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/100300060mzh">
「ううう……星は、鬼じゃ……」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z18/100300070kms">
「私も好きでやっているわけではありません！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z18/100300080kms">
「ただ今日は……今日だけは、どうしても、私の言うことを聞いてもらわねばならないのです！」

{	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/z18/100300090kms">
「わかりますね？」

{	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 1000, @0, @60, Dxl1, false);
	Shake("@StNameML/ML*", 500, 10, 0, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/100300100mzh">
「うううう…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
