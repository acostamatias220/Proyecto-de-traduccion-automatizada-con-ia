
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2110みそブー.nss_MAIN
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

scene zab2110みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zab2110みそブー.nss"
//title "みせぱん"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2110);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

{	St("R",700, @0,@0,"buブーa_通常_smile");
	FadeSt("R",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab21/100100010buu">
「見せパン見ねば――」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab21/100100020mso">
「<RUBY text="おとこ">侠</RUBY>が廃るッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
