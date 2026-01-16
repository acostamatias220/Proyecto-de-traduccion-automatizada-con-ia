
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2020ユージロー_みそブー.nss_MAIN
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

scene z2020ユージロー_みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="130">
////////////header////////////
//file name "z2020ユージロー.nss"
//title "地下迷宮迷子"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2020);}


//◆場所：地下_通路_あにのあな
	OnBG(10,"bg0701400地下_通路_あにのあな");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",500,700,0,1000,null,true);

	CreateSE("SE03","se動作_走る01_l");
	MusicStart("SE03",500,700,0,1000,null,true);

	CreateSE("SE04","se動物_イヌ_走る_l");
	MusicStart("SE04",500,700,0,1000,null,true);

	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/200300010buu">
「はぁっ……はぁっ……はぁっ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/200300020mso">
「はぁっ……はぁっ……はぁっ……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/200300030ujr">
「ハァッ……ハァッ……ハァッ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/200300040buu">
「あの……さ」

//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/200300050buu">
「ここまで追いかけっこしあってアレだけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/200300060buu">
「今、どこにいるか。
　どっちが出口か、わかるヤツいるか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/200300070ujr">
（…………）

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/200300080mso">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/200300090buu">
「…………だよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/200300100mso">
「どうする……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/200300110ujr">
（うう……）

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/200300120mso">
「一時休戦……か？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/200300130ujr">
（しかたがない……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
