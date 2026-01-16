
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2110ユージロー.nss_MAIN
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

scene zaa2110ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zaa2050ユージロー.nss"
//title "パンパラ"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2110);}

//◆場所：パンツパラダイス

//inc櫻井　背景返答待ち

	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	SoundPlay("@xsong01",0,450,true);

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa21/100400010ujr">
「なんだ……この、ステキな世界は！」

{	Shake("@StNameC/C*", 500, 0, 20, 0, 0, 500, Dxl3, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa21/100400020ujr">
「アラジンはいたのか！？　オレは、念願叶ってパンツ・パラダイス（略称パンパラ）に！？」

{	St("C",700, @0,@0,"buユージローa_通常_pride");
	St("C",700, @0,@0,"buユージローa_通常_ero");
	Shake("@StNameC/C*", 6000, 300, 0, 0, 0, 100, null, false);
	FadeSt("C",0,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 6000);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa21/100400030ujr">
「右を見てもパンツ！　左を見てもパンツ！
　上も下も真ん中も、パンツだらけだ！　ハレルヤ！」

{	AgainSt("C",700, @0,@0,"buユージローa_通常_ero");
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa21/100400040ujr">
「パンツと共に生き、パンツと共に死す！
　今更何の躊躇いがあろうか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buユージローa_通常_pride");
	St("C",700, @0,@0,"buユージローa_通常_ero");
	Shake("@StNameC/C*", 3000, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("C",0,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 6000);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa21/100400050ujr">
「ふふ……ふはははははははは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	AgainSt("C",700, @0,@0,"buユージローa_通常_ero");
	TextBoxDelete(150);

	EndScene();
}
