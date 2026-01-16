
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2200ユージロー.nss_MAIN
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

scene zb2200ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zb2200ユージロー.nss"
//title "探求心"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2200);}

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb22/000200010ujr">
「このタヌキ……匂いを、嗅いだことがある……」

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb22/000200020ujr">
「彼女は、確か……」

{	CreateSE("SE01","se擬音_ニュータイプ");
	MusicStart("SE01",0,700,0,0,null,false);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	Shake("@StNameC/C*", 100, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",100,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb22/000200030ujr">
「パンツをはいてるんだかはいてないんだか、よくわからなかったあのお姉さん……！！」

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb22/000200040ujr">
「だ、駄目だ！
　彼女は助けて、人間に戻ってもらわないと！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb22/000200050ujr">
「オレの探求心が、収まらないッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
