
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2250ユージロー.nss_MAIN
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

scene z2250ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z2250ユージロー.nss"
//title "病院からの脱走"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2250);}

//◆場所：泰然堂大学病院_正面
	OnBG(10,"bg1401100泰然堂大学病院_正面_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,200,0,1000,null,true);

{	St("MR",700, @50,@50,"buユージローa_通常_normal");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/500300010ujr">
「……あれ？」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/500300020ujr">
「なんか今、病院からムキムキマッチョマンの変態が現れて……」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/500300030ujr">
「村崎の車盗んじゃったけど」

{	St("MR",700, @50,@50,"buユージローa_通常_hard");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/500300040ujr">
「まさか……」

{	CreateSE("SE01","se擬音_平次閃く");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @50,@50,"buユージローa_通常_angry");
	Move("@StNameMR/MR*", 200, @-50, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/500300050ujr">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
