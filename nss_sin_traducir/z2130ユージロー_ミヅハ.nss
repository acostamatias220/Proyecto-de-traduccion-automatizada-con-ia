
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2130ユージロー_ミヅハ.nss_MAIN
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

scene z2130ユージロー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "z2130ユージロー_ミヅハ.nss"
//title "平次から逃げ切れ！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2135);}


//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_街中_l");
	MusicStart("SEL01",0,700,0,1000,null,true);

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",0,700,0,1000,null,true);

	CreateSE("SE03","se動作_走る05_l");
	MusicStart("SE03",0,700,0,1000,null,true);

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z21/300200010mzh">
「逃げろー！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/z21/300200020fjh">
「てめぇっ！　逃げるんじゃねぇ！」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/z21/300200030fjh">
「大人しく、家に――」

{	DeleteAllSt(200,false);
	St("C",700, @50,@0,"buユージローa_通常_hard");
	Move("@StNameC/C*", 200, @-50, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z21/300200040ujr">
（いたっ！）

{	CreateSE("SE05","se動物_イヌ_走る_l");
	MusicStart("SE05",0,700,0,1000,null,true);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z21/300200050mzh">
「おお、ユージロー！　おぬし、わらわを助けに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/z21/300200060fjh">
「よーし！　捕まえるんだ、ユージロー」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z21/300200070ujr">
（悪いミヅハ！　とうっ！）

{	SetVolume("SE0*", 1000, 0, null);}
{	CreateSE("SE06","se動作_ジャンプ");
	MusicStart("SE06",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	Shake("@StNameML/ML*", 200, 50, 50, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,false);
	CreateSE("SE02","se戦闘_打撃音06");
	MusicStart("SE02",0,700,0,1000,null,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z21/300200080mzh">
「ぎゃっ！」

{	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z21/300200090mzh">
「き、貴様ら！　グルだったのじゃな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
