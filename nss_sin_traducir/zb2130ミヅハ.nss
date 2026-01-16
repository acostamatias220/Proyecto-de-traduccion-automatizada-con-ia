
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2130ミヅハ.nss_MAIN
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

scene zb2130ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "zb2130ユージロー_ミヅハ.nss"
//title "前門の鬼、後門のもじゃもじゃ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2139);}

//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

{	St("R",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("R",0,true);}

	CreateSE("SE01","seガヤ_街中_l");
	CreateSE("SE02","seガヤ_ざわざわ_l");
	MusicStart("SE01",2000,400,0,1000,null,true);
	MusicStart("SE02",2000,300,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/300100010mzh">
「逃げろー！！」

{	Move("@StNameR/R*", 300, @-150, @0, Axl1, false);
	DeleteSt("R",200,false);
	St("MR",700, @120,@0,"bu平次_御用だ_shout");
	Move("@StNameMR/MR*", 300, @-120, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zb21/300100020fjh">
「てめぇっ！　逃げるんじゃねぇ！」

{	St("MR",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zb21/300100030fjh">
「大人しく、家に――」

{	DeleteSt("MR",200,false);
	St("L",700, @-120,@0,"bu歌門_通常_shout");
	Move("@StNameL/L*", 300, @150, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zb21/300100040kms">
「いましたッ！」

{	DeleteSt("L",200,false);
	St("C",700, @150,@0,"buミヅハ_フラット_shock");
	Move("@StNameC/C*", 300, @-150, @0, AxlDxl, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/300100050mzh">
「な――星ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/300100060mzh">
「くそうっ！
　前門の鬼、後門のもじゃもじゃか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
