
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2350双六.nss_MAIN
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

scene z2350双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z2350双六.nss"
//title "水流"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2357);}

//◆場所：地下_通路_水
	OnBG(10,"bg0701300地下_通路_水");
	FadeBG(0,true);

	CreateSE("SE01","se環境_水_l");
	MusicStart("SE01",500,500,0,1000,null,true);

//◆演出指示：水から上がる

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z23/500500010ksr">
「ふぅ……あぶねぇ。
　閉じ込められるかと思ったぜ……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z23/500500020ksr">
「しかし、ここはまさか……
　アイツ、最初からここまで計算に入れて……？」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z23/500500030ksr">
「いずれにせよ、もう一度チャンスが巡ってきたみたいだな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
