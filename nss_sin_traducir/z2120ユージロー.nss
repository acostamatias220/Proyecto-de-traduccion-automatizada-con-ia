
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2120ユージロー.nss_MAIN
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

scene z2120ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z2120ユージロー.nss"
//title "ノーコさんのぱんつ"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2120);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1203200ＵＰ＋_セット裏_暗闇");
	FadeBG(0,true);

	CreateSE("SE01","se環境_燃える_l");
	MusicStart("SE01",1000,400,0,1000,null,true);
{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z21/200400010ujr">
「だ……だめだ……」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z21/200400020ujr">
「さすがにオレも……」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z21/200400030ujr">
「あの下のパンツを覗く気にはなれない……！」

{	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z21/200400040ujr">
「あー、ないかなー」

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 6200);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z21/200400050ujr">
「こう、パンツが弱点だ！　なんとかしてパンツを見なければ！　パンツでクライマックス！　みたいな展開」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
