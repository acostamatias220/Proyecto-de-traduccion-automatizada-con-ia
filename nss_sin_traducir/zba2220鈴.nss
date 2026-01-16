
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2220鈴.nss_MAIN
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

scene zba2220鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zba2220鈴.nss"
//title "地震！？"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2228);}

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕");
	FadeBG(0,true);

	CreateSE("SE01","se環境_地鳴り01_l");
	MusicStart("SE01",1000,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

	Wait(2000);

{	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zba22/200500010fjr">
「え……？　何、この音……」

{	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zba22/200500020fjr">
「地震……じゃ、ない！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	//MusicStart("SE01",1000,0,0,1000,null,false);

	EndScene();
}
