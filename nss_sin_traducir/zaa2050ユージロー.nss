
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2050ユージロー.nss_MAIN
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

scene zaa2050ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zaa2050ユージロー.nss"
//title "裏切り"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2050);}

//◆場所：スーパーノヴァ_正面
	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);}

	MusicStart("@xbgm20",1000,250,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa20/500400010ujr">
「まさか……
　恵那に、<RUBY text="きょうだい">義兄弟</RUBY>を追うように命令されるなんて……」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa20/500400020ujr">
「理不尽……理不尽！」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",0,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 5200);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa20/500400030ujr">
「まるでスカートの中を覗いたら、ブルマーをはいていたような……理不尽だッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	AgainSt("C",700, @0,@0,"buユージローa_通常_angry");
	TextBoxDelete(150);

	EndScene();
}
