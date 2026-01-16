
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2310ユージロー.nss_MAIN
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

scene z2310ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z2310ユージロー.nss"
//title "恵那の危機！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2310);}

//◆場所：泰然堂大学病院_正面
	OnBG(10,"bg1401100泰然堂大学病院_正面_通常");
	FadeBG(0,true);

{	St("MR",700, @50,@50,"buユージローa_通常_hard");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

	Move("@StNameMR/MR*", 200, @-50, @-50, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/100200010ujr">
「大変だ――恵那が危ないッ！！」

{	St("MR",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameMR/MR*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/100200020ujr">
「平次のオヤジさんも……
　足の怪我がどうこう言ってる場合じゃない！」

{	St("MR",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/100200030ujr">
「早く、助けに行かなきゃ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
