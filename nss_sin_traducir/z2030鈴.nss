
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2030鈴.nss_MAIN
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

scene z2030鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z2030鈴.nss"
//title "地道な補修作業"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2035);}

//◆場所：スーパーノヴァ_ライブ会場_ガラス補修
	OnBG(10,"bg0502200スーパーノヴァ_ライブ会場_ガラス補修");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",0,true);

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/300500010fjr">
「うう……なんとか……直してはみるけれど……」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/300500020fjr">
「さすがにこの急ごしらえじゃ、音漏れちゃうかな……」

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/300500030fjr">
「いや、でもやらないよりはやった方がマシ！」

{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/300500040fjr">
「だよね……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
