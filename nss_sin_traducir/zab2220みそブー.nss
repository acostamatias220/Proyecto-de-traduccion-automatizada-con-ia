
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2220みそブー.nss_MAIN
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

scene zab2220みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zab2220みそブー.nss"
//title "巨大タヌキ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2228);}

//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

{	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",0,true);}

	CreateSE("SE01","seガヤ_阿鼻叫喚_l");
	MusicStart("SE01",4000,200,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zab22/200100010mso">
「は……なんだぁ！？」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab22/200100020buu">
「秋葉原に……巨大な……」

{	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zab22/200100030buu">
「巨大な、タヌキ……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
