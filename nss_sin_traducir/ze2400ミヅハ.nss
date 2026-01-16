
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ze2400ミヅハ.nss_MAIN
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

scene ze2400ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="110">
////////////header////////////
//file name "ze2400みそブー.nss"
//title "元の姿へ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2402);}

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu歌門_口覆い_happy");
	FadeSt("C",0,true);}

	SoundPlay("@xbgm15",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ze24/000200010kms">
「ミヅハ――いえ、ミヅハノメ様ッ！！」

{	St("C",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ze24/000200020kms">
「ああ……元の姿に戻られて……
　なんとご立派な……」

{	DeleteAllSt(200,true);
	St("C",800, @0,@0,"buミヅハノメ_通常_normal");
	GodFadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/ze24/000200030mhn">
「うむ……ありがとう」

/*
{	St("C",100, @0,@0,"buミヅハノメ_通常_smile");
	PlainFadeSt("C",200,false,1000)}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/ze24/000200040mhn">
「わらわがこの姿になれたのは、おぬしらのおかげじゃ」
*/

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu歌門_口覆い_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ze24/000200050kms">
「そんな、とんでもない！」

{	St("ML",700, @0,@0,"bu歌門_通常_smile");
	FadeSt("ML",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ze24/000200060kms">
「それは……今日協力して下さった、皆様のおかげです」

{	DeleteAllSt(200,true);
	St("MR",800, @0,@0,"buミヅハノメ_通常_smile");
	GodFadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/ze24/000200070mhn">
「うむ。その通りじゃ……」

{	St("MR",800, @0,@0,"buミヅハノメ_通常_normal");
	PlainFadeSt("MR",200,false,1000);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/ze24/000200080mhn">
「のう、星よ」

{	St("ML",700, @0,@0,"bu歌門_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ze24/000200090kms">
「はい、ミヅハノメ様」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	St("MR",800, @0,@0,"buミヅハノメ_通常_smile");
	DeleteAllSt(200,false);
	GodFadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/ze24/000200100mhn">
「わらわのために尽力してくれて……ありがとう」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ze24/000200110kms">
「いえ……私には、もったいないお言葉でございます」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
