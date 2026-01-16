
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1800鈴.nss_MAIN
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

scene z1800鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z1800鈴.nss"
//title "秘密の遊び"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

{	ClockPass(1800);}

	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",0,true);

	SoundPlay("@xbgm20",0,250,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z18/000600010fjr">
（いやー、参った参った）

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z18/000600020fjr">
（冗談で言ってみたのに、まさか本気にするなんて……）

{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z18/000600030fjr">
（っていうか、そんな返して欲しいんだ……アレ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
