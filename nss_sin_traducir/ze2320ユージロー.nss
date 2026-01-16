
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ze2320ユージロー.nss_MAIN
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

scene ze2320ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "ze2320ユージロー.nss"
//title "神への誓い"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2324);}

//◆場所：地下_通路_バックギャモン
	OnBG(10,"bg0701600地下_通路_バックギャモン");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",1000,700,0,1000,null,true);

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ze23/200100010ujr">
「そんな……ウソだろ……？」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ze23/200100020ujr">
「千秋だけじゃなく……恵那まで……！？」

{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ze23/200100030ujr">
「そんな……神様、お願いします！」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ze23/200100040ujr">
「もう二度と、悪さはしません！」

{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ze23/200100050ujr">
「パンツに鼻を突っ込んでクンカクンカしたり、押し倒して腰をカクカクしたりしません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buユージローa_通常_sad");
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 3400);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ze23/200100060ujr">
「だから――どうか――恵那を――恵那を――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	AgainSt("C",700, @0,@0,"buユージローa_通常_hard");
	TextBoxDelete(150);

	EndScene();
}
