
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2130ミヅハ.nss_MAIN
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

scene zab2130ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zab2130ミヅハ.nss"
//title "星の教え"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2135);}

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",0,true);}

	CreateSE("SEL1","se環境_燃える_l");
	MusicStart("SEL1",3000,700,0,500,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/300100010mzh">
「わらわが……ノーコを信じては、ならなかった……？」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zab21/300100020kms">
「その通りです」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zab21/300100030kms">
「さあ、半田明神へと参りましょう」

{	St("C",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zab21/300100040kms">
「アザナエルは私たちに任せ、年越しに備えるのです」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/300100050mzh">
「う……ううむ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
