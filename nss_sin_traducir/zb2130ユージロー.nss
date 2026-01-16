
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2130ユージロー.nss_MAIN
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

scene zb2130ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zb2130ユージロー.nss"
//title "苦渋の決断"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2136);}

//◆場所：スーパーノヴァ_正面 → ＵＰ＋屋外セットに変更
	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	CreateSE("SE01","se環境_燃える_l");
	MusicStart("SE01",1000,400,0,1000,null,true);

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

	Shake("@StNameC/C*", 500, 0, 15, 0, 0, 500, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb21/300200010ujr">
「あ、あのクリマンを食べきっただと……？」

{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb21/300200020ujr">
「まあそりゃ、倒れて当然だよな……」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb21/300200030ujr">
「あのカッター女のせいで、みんな千秋を忘れちゃってるみたいだし……仕方ねぇ！」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb21/300200040ujr">
「オレたちが、なんとかしてやんねーと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
