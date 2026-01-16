
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2350ユージロー.nss_MAIN
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

scene z2350ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "z2350ユージロー.nss"
//title "パンパラ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2350);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

//	SoundPlay("@xsong01",0,450,true);

{	St("C",700, @0,@0,"buユージローb_通常_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/500400010ujr">
「よく考えてみたら……」

{	St("C",700, @0,@0,"buユージローb_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/500400020ujr">
「従業員のいなくなったバックギャモンは……」

{	Shake("@StNameC/C*", 500, 0, 10, 0, 0, 500, Dxl3, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/500400030ujr">
「売り物のパンツ、嗅ぎ放題じゃね？」

{	St("C",700, @0,@0,"buユージローb_通常_pride");
	Shake("@StNameC/C*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/500400040ujr">
「舐め放題じゃね？」

{	St("C",700, @0,@0,"buユージローb_通常_angry");
	Shake("@StNameC/C*", 500, 20, 0, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/500400050ujr">
「しゃぶり放題じゃね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buユージローb_通常_ero");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 500, @-800, @50, AxlDxl, false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/500400060ujr">
「パンツ・パラダイス！」

{	St("C",700, @-800,@50,"buユージローb_通常_normal");
	Move("@StNameC/C*", 200, @800, @-50, Dxl3, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Dxl3, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/500400070ujr">
「略してパンパラ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
