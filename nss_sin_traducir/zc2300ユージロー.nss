
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2300ユージロー.nss_MAIN
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

scene zc2300ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zc2300ユージロー.nss"
//title "平次、出陣"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2300);}

//※下倉注：平次の走りカットでユージローのモノローグシーンに

//◆場所：泰然堂大学病院_正面
	OnBG(10,"bg1401100泰然堂大学病院_正面_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,200,0,1000,null,true);

/*
	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,0,null,false);
	St("C",700, @-800,@0,"bu平次_御用だ_pain");
	FadeSt("C",0,true);

	Move("@StNameC/C*", 500, @800, @0, Dxl1, true);
	DeleteAllSt(200,true);

	MusicStart("SE01",0,0,0,1000,null,false);

	St("C",700, @0,@0,"bu平次_通常_pain");
	FadeSt("C",200,true);

	Wait(500);
	DeleteAllSt(200,true);

	St("C",700, @0,@0,"bu平次_御用だ_pain");
	FadeSt("C",200,true);
	Wait(500);
	Move("@StNameC/C*", 500, @800, @0, Dxl1, false);
	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,0,null,false);
	DeleteSt("C", 500,true);
	Wait(500);
	MusicStart("SE01",0,0,0,1000,null,false);
*/

{	St("MR",700, @50,@50,"buユージローa_通常_hard");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

	Move("@StNameMR/MR*", 200, @-50, @-50, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zc23/000400010ujr">
「え？　平次のオヤジさん！？」

{	St("MR",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("MR",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zc23/000400020ujr">
「ちょっと、足は？
　まだ引きずって、治療もしてない――」

{	St("MR",700, @0,@0,"buユージローa_通常_hard");
	Shake("@StNameMR/MR*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zc23/000400030ujr">
「……え？」

{	St("MR",700, @0,@0,"buユージローa_通常_angry");
	Move("@StNameMR/MR*", 200, @-200, @0, Dxl3, false);
	FadeSt("MR",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zc23/000400040ujr">
「恵那が……さらわれた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
