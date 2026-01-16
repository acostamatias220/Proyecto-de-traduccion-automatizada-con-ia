
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1830ユージロー.nss_MAIN
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

scene z1830ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z1830ユージロー.nss"
//title "ロリ獣姦"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

{	ClockPass(1833);}

	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);

	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/300300010ujr">
「大条件：
　犬は人間に換算すると１年でおよそ６歳分年を取る」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/300300020ujr">
「小条件：
　犬は早くて６ヶ月、遅くても１歳過ぎで成熟する」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/300300030ujr">
「結論：犬は人間に換算すると早くて３歳――
　遅くても６歳過ぎで成熟する」

{	St("C",700, @0,@40,"buユージローa_通常_pride");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/300300040ujr">
「よって！
　オレがミヅハを襲うことに、何の倫理的問題も――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buユージローa_通常_sad");
	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 4300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/300300050ujr">
「あ？　ジューカン？
　それはちょっと、マズいですかね……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
