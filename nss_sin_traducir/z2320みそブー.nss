
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2320みそブー.nss_MAIN
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

scene z2320みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z2320みそブー.nss"
//title "ロケボー再生"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2326);}

//▼べー：仮入れ
	OnBG(10,"bg0604200半田明神_社務所_雪");
	FadeBG(0,true);

//※下倉注：背景検討

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/200200010buu">
「ボードに花火をくくりつけて――」

{	St("MR",700, @0,@0,"buブーa_通常_pride");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/200200020buu">
「ウシ！　完成！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/200200030mso">
「いよっしゃ！　行くぜ！」

//▼べー：仮入れ。要調整
//◆ＳＥ：花火
{	DeleteAllSt(200,false);
	CreateSE("SE00","se特殊_ロケボー");
	MusicStart("SE00",0,700,0,1000,null,false);
	Wait(500);
	CreateSE("SE01","se環境_花火打ち上げ");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitPlay("SE01");
	CreateSE("SE02","se環境_花火01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 100, null,true);
	WaitPlay("SE02");
	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/200200040mso">
「た――まや――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_happy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/200200050buu">
「か――ぎや――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
