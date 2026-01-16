
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2200鈴.nss_MAIN
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

scene zb2200鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zb2200鈴.nss"
//title "打つ手無し"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2205);}

//◆場所：スーパーノヴァ_正面_ガラス割れ
	OnBG(10,"bg0501500スーパーノヴァ_正面_ガラス割れタイヤ痕");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",0,true);}

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zb22/000400010fjr">
「同人誌は片付いたけど……
　ガラス、直すアテがない……」

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zb22/000400020fjr">
「どうしよう……」

{	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zb22/000400030fjr">
「いやホント、いっそ地震とか来てくれた方が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
