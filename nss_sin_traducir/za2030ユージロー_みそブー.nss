
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene za2030ユージロー_みそブー.nss_MAIN
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

scene za2030ユージロー_みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "za2030ユージロー_みそブー.nss"
//title "バカ三兄弟"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2039);}


//◆演出指示：パンツ被りシーン

//※下倉注：ここの背景バックギャモンで 2010/11/12
//★inc櫻井 背景仮
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	SoundPlay("@xsong01",0,450,true);

//あきゅん「"ブーb_通常_ero"」
{	St("MR",700, @0,@0,"buブーb_通常_ero");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/za20/300200010buu">
「ふふふふ……ふふふふ……」

{	St("C",700, @0,@0,"buユージローb_通常_ero");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/za20/300200020ujr">
（ふふふふ……ふふふふ……）

//あきゅん「"ブーb_通常_normal"」
{	St("MR",700, @0,@0,"buブーb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/za20/300200030buu">
「これで、オレたち――」

{	St("C",700, @0,@0,"buユージローb_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/za20/300200040ujr">
（<RUBY text="きょうだい">義兄弟</RUBY>だっ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//あきゅん「"みそb_通常_normal"」
{	St("ML",700, @0,@0,"buみそb_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/za20/300200050mso">
「……なんで会話が通じてんだよ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
