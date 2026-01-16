
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene y1752千秋.nss_MAIN
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
	$GameName = "1800千秋.nss";

	#START_FLAG=true;
	$SYSTEM_backselect_lock=false;
}

scene y1752千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="470">
////////////header////////////
//file name "y1752千秋.nss"
//title "プレゼント"
//previous "y1751千秋_恵那.nss"

////////////footer////////////
//next "千秋" "1800千秋.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆演出指示：時間経過

//◆演出指定：高校生です

{	ClockTime(1756);}

	CreateTextureSP("絵演", 2010, Center, Middle, "cg/obj/obj千秋携帯ストラップ.png");
	Zoom("絵演", 0, 5000, 5000, null, true);

//◆場所：小碓家_自室
	OnBG(10,"bg1602100小碓家_自室過去_通常");
	FadeBG(0,true);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	Zoom("絵演", 3000, 1000, 1000, null, false);

	FadeDelete("上背景", 3000, null, true);

	WaitKey(1000);

//◆演出指定：携帯電話のアップ
//あきゅん「素材：obj千秋携帯ストラップ」


//【小碓千秋】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100010kit">
「なんて小学校の約束憶えてるんだから……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100020kit">
「オレも細かいところに気がきくっつーかなんつーか」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100030kit">
「しっかし……今見ると、間抜けなタヌキだなあ」


//◆ＳＥ：メール着信
{	FadeDelete("絵演", 500, null, false);
	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,700,0,1000,null,true);
}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100040kit">
「お！　早速メール！
　送ってきたのは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//【小碓千秋】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100050kit">
「ちぇっ……恵那かよ」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100060kit">
「って当たり前か！
　まだアイツにしかメアド教えてないしな！」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100070kit">
「どれどれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

/*
差出人：富士見恵那
件名：携帯購入おめでとう！
本文
チアキガタスキ
*/

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	CreateWindowEX("絵窓", 0, 96, 1024, 192, false);
//	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateAXLPhWindowEX("絵演窓", "Y", 2100, 96, 192, false);
	PhWindowAXLZoom("絵演窓", "Y", 0, 0, null, true);

	CreateTextureSP("絵演窓/絵演物", 2010, Center, 90, "cg/obj/obj携帯メールやりとり.png");


//	Zoom("絵窓", 500, 1000, 1000, AxlDxl, true);
	PhWindowAXLZoom("絵演窓", "Y", 500, 1000, AxlDxl, true);

	Wait(1000);

//【小碓千秋】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100080kit">
「千秋が……たすき？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100090kit">
「わ、ワケわかんねー！
　なんか、間違ったのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	Zoom("絵窓", 500, 0, 0, null, true);
//	Delete("絵窓");
	PhWindowAXLZoom("絵演窓", "Y", 500, 0, null, true);
	Delete("@絵演窓*");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100100kit">
「まあ、いいや。ここは男らしく――」


{	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100110kit">
「『オレがタスキなわけないだろ！』と……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	//TextBoxDelete(150);

//【小碓千秋】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100120kit">
「うむ。カンペキ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100130kit">
「送信……と」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：メール着信
	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100140kit">
「うおっ！　レス早ッ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100150kit">
「どれどれ？　中味は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
　「このバカチビッ！　縮んじゃえ！」

</PRE>
	SetTextM();
	TypeBeginM2(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100160kit">
「な……あの探偵バカが！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100170kit">
「ってか、なんでオレがバカチビ呼ばわりされなきゃなんねーんだよ？　会話の流れ、おかしいだろ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100180kit">
「くそっ、そっちがその気ならオレも――」



//◆ＳＥ：メール着信
{	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,700,0,1000,null,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100190kit">
「うおっ！　またメール？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1757);}

	//TextBoxDelete(150);

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
　「バカチビには縮む呪いをかけました」

</PRE>
	SetTextM();
	TypeBeginM2(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100200kit">
「呪いって――」

//◆ＳＥ：メール着信
{	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,700,0,1000,null,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100210kit">
「またかよ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：メール着信
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
　「背もちっちゃいし声も高いし、ホントに男の子？」

</PRE>
	SetTextM();
	TypeBeginM2(0);//―――――――――――――――――――――――――――

//◆ＳＥ：メール着信
	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100220kit">
「クソ！　言いたい放題言いやがって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);


//◆ＳＥ：メール着信
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071a]
　「もうちょっと男らしいといいのにね！」

</PRE>
	SetTextM();
	TypeBeginM2(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100230kit">
「うがっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：メール着信
{	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,700,0,1000,null,true);}

	WaitKey(2000);

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072a]
　「ってか女の子になっちゃえば？」

</PRE>
	SetTextM();
	TypeBeginM2(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100240kit">
「ななっ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：メール着信
{	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,700,0,1000,null,true);}

	WaitKey(1000);

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073a]
　「けっこう、似合うかもよ」

</PRE>
	SetTextM();
	TypeBeginM2(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100250kit">
「そ、そ、そ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateVOICE("演出用","y17/520100260kit");
	$SETime = RemainTime("演出用")*3;

	CreatePlainSP("絵板写", 1000);
	Shake("絵板写", $SETime, 0, 0, 0, 100, 1000, Axl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100260kit">
「そんなわけあるかああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――





//◆演出指定：現実世界に意識が戻る
	CreateColorSP("絵色黒", 10000, "#000000");
	SetVolumeEX("SE*", 0, 0, null);
	Delete("絵板写");
	Delete("演出用");

	WaitKey(1000);

{	ClockPass(1758);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/y17/520100270fjr">
「……千秋ちゃん、大丈夫？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100280kit">
「はっ！　こ――ここは！？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100290kit">
「ってか暗い！？　なんで！？　なんで！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【富士見鈴】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
<voice name="富士見鈴" class="富士見鈴" src="voice/y17/520100300fjr">
「落ち着いて！　アタシに目隠しされてるだけだから」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100310kit">
「目隠し……？」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/y17/520100320fjr">
「ここはスーパーノヴァ。
　千秋ちゃんは、バイトのために……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100330kit">
「あ……あ、うん。そっか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【小碓千秋】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100340kit">
「思い出した」

//◆ＳＥ：メール着信
{	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,700,0,1000,null,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/y17/520100350fjr">
「あ……またメール」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100360kit">
「これが悪夢の原因か……」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/y17/520100370fjr">
「どうする？　１回目隠し外して、話してみる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【小碓千秋】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100380kit">
「いいよ。
　どーせ、恵那からのメールに決まってるし」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/y17/520100390fjr">
「へぇ。だったら尚更――」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100400kit">
「いいの！　だから、さっさと準備終わらせて！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/y17/520100410fjr">
「はいはい。もうちょっとだから、待っててね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 500, 0, null);

	//TextBoxDelete(150);


{	ClockPass(1759);}


//【小碓千秋】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100420kit">
（はぁ……）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100430kit">
（ったく……わけわかんねーよ）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100440kit">
（なんで今さら、あんな夢見たんだか……）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100450kit">
（……まあ、いいや）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100460kit">
（とにかく……さっさと、今夜のバイト終わらせて……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【小碓千秋】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
<voice name="小碓千秋" class="小碓千秋" src="voice/y17/520100470kit">
（ちゃんとアレ、返さないと……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);



	EndScene();
}
