
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2220ユージロー_みそブー.nss_MAIN
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

scene zba2220ユージロー_みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zba2220ユージロー_みそブー.nss"
//title "悲しみの暴走"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2228);}

//◆場所：スパコン館_店内
	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);

	CreateSE("SE01","se環境_地鳴り02_l");
	MusicStart("SE01",300,700,0,500,null,true);


{	St("MR",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zba22/200300010mso">
「そんな……ウソ、だろ……」

{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zba22/200300020buu">
「アイツが――巨大な、タヌキに？」

{	DeleteSt("ML", 200,true);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zba22/200300030ujr">
（ああ、そうか……！）

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameC/C*", 300, 0, 8, 0, 0, 500, null, false);
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zba22/200300040ujr">
（アイツは、今日オレを轢いた、あの車だ――！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	MusicStart("SE01",1000,0,0,1000,null,false);

	EndScene();
}
