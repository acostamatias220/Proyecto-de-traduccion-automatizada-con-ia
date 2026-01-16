
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2110鈴.nss_MAIN
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

scene zab2110鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zab2110鈴.nss"
//title "予期せぬバイト"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2110);}

//◆場所：スーパーノヴァ_控え室

	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",0,true);}

	MusicStart("@xbgm20",1000,450,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zab21/100300010fjr">
「ふぅ……みんな恋愛、大変ねえ……」

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zab21/100300020fjr">
「それにしても……はぁ……」

{	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zab21/100300030fjr">
「ホント、人手が足りなすぎる……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
