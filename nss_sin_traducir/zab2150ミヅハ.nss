
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2150ミヅハ.nss_MAIN
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

scene zab2150ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "zab2150ミヅハ.nss"
//title "疑念"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2155);}


//◆場所：半田明神_社務所
	OnBG(10,"bg0604111半田明神_社務所_通常");
	FadeBG(0,true);

{	St("R",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("R",0,true);}

	SoundPlay("@xbgm15",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zab21/500200010kms">
「ミヅハ様。平次様から、電話です」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/500200020mzh">
「ん……もじゃもじゃから？」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/500200030mzh">
「……いったい、何じゃろう」


{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/500200040mzh">
「もしもし？」

{	DeleteSt("C",200,false);}
//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zab21/500200050fjh">
『ミヅハ、頼みがある』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/500200060mzh">
「頼み？」

{	DeleteSt("C",200,false);}
//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zab21/500200070fjh">
『ああ。一生の、お願いだ』

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zab21/500200080fjh">
『オレに、アザナエルを使わせてくれ――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
