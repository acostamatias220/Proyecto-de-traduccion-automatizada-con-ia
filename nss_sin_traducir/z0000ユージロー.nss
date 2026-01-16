
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z0000ユージロー.nss_MAIN
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

scene z0000ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z0000ユージロー.nss"
//title "自己紹介"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//▼べー：背景指定がありませんので適当にいれました
//cono：背景変更
	OnBG(10,"bg1601100小碓家_正面_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",0,true);

	CreateSE("SE01","seガヤ_交通少_l");
	MusicStart("SE01",500,300,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z00/000400010ujr">
「オレの名はユージロー。
　富士見家で飼われている警察犬見習いだ」

{	St("C",700, @0,@40,"buユージローa_通常_pride");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z00/000400020ujr">
「好きな言葉は『発情』」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	St("C",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 6000);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z00/000400030ujr">
「座右の銘は――
　『弱きを助け、強きを挫き、エロきをエロス』だ」

{	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"buユージローa_通常_ero");
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z00/000400040ujr">
「みんな、よろしく！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
