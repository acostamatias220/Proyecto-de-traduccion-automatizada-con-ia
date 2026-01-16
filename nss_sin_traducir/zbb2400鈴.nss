
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbb2400鈴.nss_MAIN
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

scene zbb2400鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zbb2400鈴.nss"
//title "鈴の心配"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502211スーパーノヴァ_ライブ会場_消灯");
	FadeBG(0,true);

	MusicStart("@xbgm20",1000,450,0,1000,null,true);

{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zbb24/000500010fjr">
「それでは、今日のスーパーゲストのロクローさんです！」

{	Move("@StNameC/C*", 500, @100, @0, null, false);
	DeleteSt("C", 500,true);
	CreateSE("SE01","seガヤ_沸き立つ02");
	MusicStart("SE01",200,700,0,0,null,false);
	St("C",700, @0,@0,"buロクローa_通常_normal");
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/zbb24/000500020rkr">
「はいどうもー！　ロクローですッ！」

{	DeleteSt("C", 500,true);
	Wait(500);
	SetVolumeEX("@xbgm*", 1000, 300, null);
	MusicStart("SE01",1000,0,0,1000,null,false);
	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zbb24/000500030fjr">
（ロクロー様がゲストになって、なんとかお客さんへの面目は果たしたけど……）

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zbb24/000500040fjr">
（フウリちゃん、連絡もなしにどうしちゃったの……？）

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zbb24/000500050fjr">
（何か……嫌な予感がする）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolumeEX("@xbgm*", 1000, 0, null);


	EndScene();
}
