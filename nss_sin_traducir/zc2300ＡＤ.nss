
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2300ＡＤ.nss_MAIN
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

scene zc2300ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="130">
////////////header////////////
//file name "zc2300ＡＤ.nss"
//title "片付け終わり"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2300);}

//◆場所：スーパーノヴァ_ライブ会場_ガラス割れ
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);



	MusicStart("@xbgm20",1000,450,0,1000,null,true);


	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc23/000100010adi">
「ミリＰさ――ん！」

{	St("MR",700, @120,@0,"buＡＤ_通常_smile");
	Move("@StNameMR/MR*", 200, @-120, @0, Dxl1, false);
	FadeSt("MR",200,false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc23/000100020adi">
「ゆるキャラバンの片付け、終わりましたー！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc23/000100030mrp">
「お疲れ様！」

{	St("ML",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc23/000100040mrp">
「それじゃ悪いけど、これからもう一踏ん張りしてもらうからね！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_pride");
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 2500);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc23/000100050adi">
「はいっ！　あ……あの、でも……
　ライブ、するんですよね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	AgainSt("MR",700, @0,@0,"buＡＤ_通常_sad");
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc23/000100060mrp">
「そのつもりよ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc23/000100070adi">
「この窓ガラス……割れてますよね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc23/000100080mrp">
「割れてるわよ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc23/000100090adi">
「どうするんですか……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc23/000100100mrp">
「それを、考えましょう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zc23/000100110adi">
「考えるって……今から？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_ショータイム_shout");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc23/000100120mrp">
「諦めちゃダメよ！」

{	St("ML",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/zc23/000100130mrp">
「まだきっと……できることがあるはず！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
