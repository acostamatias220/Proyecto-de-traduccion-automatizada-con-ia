
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbab2400鈴.nss_MAIN
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

scene zbab2400鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zbab2400鈴.nss"
//title "今年の抱負"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：スーパーノヴァ_ライブ会場_消灯
	OnBG(10,"bg0502200スーパーノヴァ_ライブ会場_消灯");
	FadeBG(0,true);

{	St("C",700, @0,@100,"bu鈴_シリアス_think");
	FadeSt("C",0,true);}

	Move("@StNameC/C*", 500, @0, @-100, null, false);
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zbab24/000500010fjr">
「ん……あれ？　ここは……」

{	St("C",700, @0,@0,"bu鈴_もじゃ_shock");
	Shake("@StNameC/C*", 50, 30, 5, 0, 0, 1000, Dxl1, false);
	FadeSt("C",0,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zbab24/000500020fjr">
「ああっ！　そうだ、ライブライブっ！」

{	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zbab24/000500030fjr">
「フウリちゃん、遅刻！？
　早速電話で呼ばないと――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @200, @0, Dxl1, false);
	DeleteSt("C", 150,true);

	EndScene();
}
