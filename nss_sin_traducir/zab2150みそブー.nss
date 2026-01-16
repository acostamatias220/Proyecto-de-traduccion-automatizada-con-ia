
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2150みそブー.nss_MAIN
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

scene zab2150みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zab2150みそブー.nss"
//title "悲劇"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2159);}

//◆場所：似鳥マンション_リビング
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

{	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab21/500100010mso">
「…………」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab21/500100020buu">
「…………」

//◆音声指示：小声
{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab21/500100030mso">
「こんなのって……」

//◆音声指示：小声
{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab21/500100040buu">
「ないだろ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
