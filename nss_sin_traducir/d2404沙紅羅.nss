
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene d2404沙紅羅.nss_MAIN
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

	//★エンディング中（d）
	//★エンドロール
	PreSetRoll(0);
	TheEND(0);

	$GameName = "";
	$GameCircle=false;
	$GameClear=true;
}
scene d2404沙紅羅.nss
//scene 040100020kmsd2404沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="140">
////////////header////////////
//file name "d2404沙紅羅.nss"
//title "いきているあかし"
//previous "c2404沙紅羅.nss"

////////////footer////////////
//flag "fld"
//next オシマイ


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

//◆場所：半田明神_社務所_雪
	OnBG(10,"bg0604212半田明神_社務所_雪");
	FadeBG(0,true);

	CreateSE("SEFW", "se環境_花火02");
	MusicStart("SEFW", 6000, 300, 0, 1000, null,true);

	FadeDelete("上背景", 1000, null, true);

//★inc櫻井　こちら星は座り込んで泣いてると想定して立ち絵なしにしています。


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d24/040100010kms">
「ぅ……ぅぅ……ぅぅ……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d24/040100020kms">
「ミヅハノメ様……お達者で……お達者で……！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/040100030skr">
「ほら、んな悲しい顔するなって、な？」

{	DeleteSt("ML",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d24/040100040kms">
「悲しくなど……悲しくなど……」

//※下倉注：以下の台詞カット 2010/10/31
/*

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/040100050skr">
「別れは、悲しいもんだ」

*/

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2402);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//※下倉注：以下の台詞カット
/*
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/040100060skr">
「そうだろ？」
*/

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d24/040100070kms">
「ううっ！　う……う……」

//◆音声指示：小声
{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/040100080skr">
「そうだ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);

	TextBoxDelete(150);

//あきゅん「修正指示：病院の絵は良いですね、でもフラッシュバック風に」


	CreateColorEXadd("回想白", 15000, WHITE);
	Fade("回想白", 200, 1000, null, true);
	DeleteSt("C",0,true);
	CreateTextureSP("背景", 2000, @0, @0, "cg/bg/bg1402100泰然堂大学病院_病室_通常.jpg");
	DeleteSt("ML",0,true);

	Fade("回想白", 200, 0, null, true);



//あきゅん「修正指示：沙紅羅は出さない、語りっぽく空上にパンして終り」
//inc久保田　修整しました。

//◆音声指示：小声

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：小声
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/040100090skr">
「辛いことも……悲しいことも、世の中にはたくさんある」

{	Fade("回想白", 200, 1000, null, true);
	CreateTextureSP("背景02", 2100, @0, @0, "cg/bg/bg1404100泰然堂大学病院_霊安室_通常.jpg");
	Delete("背景");
	Fade("回想白", 200, 0, null, true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/040100100skr">
「取り返しのつかないことだって、山ほどある」

//◆音声指示：小声
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/040100110skr">
「いつかは、その悲しさも静まるだろう」

{	CreateTextureEX("背景03", 2200, @0, -443, "cg/bg/bg2401100空_上空_通常.jpg");
	SetVolumeEX("SEFW", 5000, 700, null);
	Move("背景03", 30000, @0, 0, null, false);
	Fade("背景03", 1000, 1000, null, true);
	fireworks_set(2210);}
//◆音声指示：小声
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/040100120skr">
「静まってもう一回、前に進もうって気持ちになるだろう」

//◆音声指示：小声
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/040100130skr">
「いつか、きっと、未来を信じられるようになる。
　だから……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：小声

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/040100140skr">
「今は少し、悲しみに……身を浸らせてくれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(1000);
	Wait(1000);

//	ClearWaitAll(1500, 1500);

	CreateColorEX("絵色黒", 2300, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Delete("回想*");
	fireworks_Delete(0,true);

	EndingReady();
	EndScene();
}
