
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z0000鈴.nss_MAIN
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

scene z0000鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z0000鈴.nss"
//title "自己紹介"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//▼べー：背景指定がありませんので適当にいれました
//cono：背景変更
	OnBG(10,"bg0502100スーパーノヴァ_ライブ会場_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",0,true);

	SoundPlay("@xbgm20",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z00/000600010fjr">
「私の名前は富士見鈴」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z00/000600020fjr">
「ガールズバンド『第一宇宙速度』でベースをやってまーす！　ついでに一応リーダーね」

{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z00/000600030fjr">
「スーパーノヴァってライブハウスでアルバイトなんかもやってます！　秋葉原に来たらヨロシクね！」

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z00/000600040fjr">
「趣味はブリッジ！　特技はドロップキック！」

{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z00/000600050fjr">
「好きな言葉は『ブッ潰してやる』です！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
