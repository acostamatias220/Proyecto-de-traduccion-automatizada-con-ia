
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2100ミヅハ.nss_MAIN
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

scene zaa2100ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zaa2100ミヅハ.nss"
//title "星の帰還"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2100);}

//◆場所：半田明神_鳥居
	OnBG(10,"bg0602111半田明神_鳥居_通常");
	Move("@OnBG*", 0, @0, @-390, null, true);
	FadeBG(0,true);

	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa21/000300010mzh">
「むむ……なにやらテレビゆるキャラバンは大詰め！」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa21/000300020mzh">
「あのもじゃもじゃはどこかにいなくなったようじゃし」

{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa21/000300030mzh">
「ここはズバリ！
　抜け出してあやつらの所へと――」

{	St("R",700, @150,@0,"bu歌門_通常_pride");
	Move("@StNameR/R*", 200, @-150, @0, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zaa21/000300040kms">
「どこへ抜け出そうというのですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-200, @0, Dxl3, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 500, 15, 0, 0, 0, 500, Dxl3, false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zaa21/000300050mzh">
「ひええええええっ！　星！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
