　
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2350みそブー.nss_MAIN
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

scene z2350みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="110">
////////////header////////////
//file name "z2350みそブー.nss"
//title "ブーの涙"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2359);}

//◆場所：半田明神_涸れ井戸_雪
	OnBG(10,"bg0606200半田明神_涸れ井戸_雪");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風と葉っぱ_l");
	MusicStart("SE01",500,700,0,1000,null,true);

{	St("ML",700, @0,@0,"buみそa_通常_smile");
	FadeSt("ML",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/500200010mso">
「なんとか、辿り着いたな！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/500200020buu">
「あ……ああ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/500200030mso">
「……どうした、ブー？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/500200040buu">
「いや……なんつーか、その……」

//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/500200050buu">
「これが……これが、終わったら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buブーa_通常_cry");
	Shake("@StNameMR/MR*", 1000, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/500200060buu">
「ミヅハちゃんも……おと、おと、大人に……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/500200070mso">
「ブー、泣くな！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_cry");
	Shake("@StNameMR/MR*", 1000, 10, 0, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/500200080buu">
「でも――！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/500200090mso">
「四季は移ろう！」

{	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/500200100mso">
「桜は……その花が散るから、美しいんじゃねぇか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_cry");
	FadeSt("MR",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/500200110buu">
「みそ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
