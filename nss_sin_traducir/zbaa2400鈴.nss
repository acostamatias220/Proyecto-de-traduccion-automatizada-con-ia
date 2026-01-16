
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbaa2400鈴.nss_MAIN
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

scene zbaa2400鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zbaa2400鈴.nss"
//title "今年の抱負"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603411半田明神_境内_ノーマル新年");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_半田明神02_l");
	MusicStart("SE01",1000,700,0,0,null,true);

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zbaa24/000600010fjr">
「スーパーノヴァはメチャクチャになっちゃったけど。
　みんな無事だったし、これからなんとかなるって」

{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zbaa24/000600020fjr">
「いよーし！
　今年は良い一年になりますようにっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	MusicStart("SE01",1000,0,0,1000,null,false);

	EndScene();
}
