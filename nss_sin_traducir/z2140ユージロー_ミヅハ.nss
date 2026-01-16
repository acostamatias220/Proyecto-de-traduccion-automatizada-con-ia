
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2140ユージロー_ミヅハ.nss_MAIN
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

scene z2140ユージロー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z2140ユージロー_ミヅハ.nss"
//title "モジャモジャ"
////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

{	ClockPass(2143);}

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",1000,700,0,1000,null,true);

{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z21/400300010mzh">
「犬は飼い主に似るというが……」

{	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z21/400300020mzh">
「おぬし、飼い主そっくりじゃのう」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buユージローa_通常_hard");
	Shake("@StNameMR/MR*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z21/400300030ujr">
（……いやいや、飼い主がオレに似せてんだから！
　オレは好きでモジャモジャなわけじゃないから！）

{	St("MR",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("MR",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z21/400300040ujr">
（っていうか正確には平次はモジャモジャじゃないから！
　直毛だから！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
