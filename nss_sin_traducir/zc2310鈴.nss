
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2310鈴.nss_MAIN
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

scene zc2310鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zc2310鈴.nss"
//title "ロクロー様との出会い"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2319);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

	SoundPlay("@xbgm27",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zc23/100100010fjr">
「憧れのロクロー様と出会うなんて……」

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	St("C",700, @0,@0,"bu鈴_もじゃ_shock");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 2000);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zc23/100100020fjr">
「これは……運命ッ！！」

{	AgainSt("C",700, @0,@0,"bu鈴_もじゃ_shock");
	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zc23/100100030fjr">
「ＤＶＤに出演依頼が来たら……どうしよう？？？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
