
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2150みそブー.nss_MAIN
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

scene z2150みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z2150みそブー.nss"
//title "マズい"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2150);}

//◆場所：似鳥マンション_リビング
	OnBG(10,"bg1304300似鳥マンション_リビング_掃除後");
	FadeBG(0,true);

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/500200010mso">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/500200020buu">
「…………」

//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/500200030mso">
「もしかして、オレたち……すげえマズいことした？」

//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/500200040buu">
「なんか、そんな気が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
