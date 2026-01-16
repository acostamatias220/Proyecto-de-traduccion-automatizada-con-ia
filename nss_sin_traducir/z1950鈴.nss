
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1950鈴.nss_MAIN
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

scene z1950鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z1950鈴.nss"
//title "？？？"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1952);}

	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",0,true);

	SoundPlay("@xbgm20",2000,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/500500010fjr">
（こ……これはいったい、どういうことなの？）

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/500500020fjr">
（恵那ちんは、確かにあそこを握ったはず……）

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/500500030fjr">
（も、もしかして、千秋ちゃん、本当に……）

{	St("C",700, @0,@40,"bu鈴_もじゃ_shock");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/500500040fjr">
（モロッコ……モロッコなの……！？）

{	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake("@StNameC/C*", 1000, 15, 0, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/500500050fjr">
（ひええええええええ……！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
