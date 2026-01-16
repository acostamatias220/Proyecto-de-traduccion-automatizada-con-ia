
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2120ユージロー_ミヅハ.nss_MAIN
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

scene zb2120ユージロー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zb2120ユージロー_ミヅハ.nss"
//title "天国"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	TextBoxDelete(0);
	FadeDelete("上背景", 500, null, true);

//◆場所：天国
	GameEnd_StartAnction();

{	St("C",700, @0,@80,"buユージローa_通常_hard");
	Move("@StNameC/C*", 200, @0, @-80, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb21/200100010ujr">
「ん？　ここがどこかだって？」

{	St("C",710, @0,@0,"buミヅハ_フラット_happy");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/200100020mzh">
「さあ、どこでちかね――じゃない！
　どこじゃろうのう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	GameEnd_EndAnction();

	EndScene();
}
