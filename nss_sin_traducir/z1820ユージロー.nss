
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1820ユージロー.nss_MAIN
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

scene z1820ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z1820ユージロー.nss"
//title "クリマン"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	OnBG(10,"bg0401100アキバスポット_正面_通常");
	FadeBG(0,true);

{	ClockPass(1822);}

	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/200400010ujr">
「クリマン……」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/200400020ujr">
「クリマン……クリマン……」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 5000);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/200400030ujr">
「クリクリ……マンマン……クリマンマン」

{	St("C",700, @0,@0,"buユージローa_通常_pride");
	St("C",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameC/C*", 1000, 0, 3, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 10500);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/200400040ujr">
「マンマン……クリクリ……
　クリをマンマン……マンのクリクリ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buユージローa_通常_pride");
	St("C",700, @0,@0,"buユージローa_通常_ero");
	Shake("@StNameC/C*", 3000, 0, 5, 0, 0, 300, Dxl3, false);
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 7000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/200400050ujr">
「ふふ、ふふふふふふ……
　なんか楽しくなってきたあッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
