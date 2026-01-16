
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2310みそブー.nss_MAIN
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

scene z2310みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z2310みそブー.nss"
//title "いったいなにが始まるんです？"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_鳥居_ペンキ
	OnBG(10,"bg0602211半田明神_鳥居_ペンキ");
	FadeBG(0,true);

{	ClockPass(2310);}

	CreateSE("SEL01", "seガヤ_交通少_l");
	MusicStart("SEL01", 500, 350, 0, 1000, null,true);

//◆ＳＥ：銃乱射
	CreateSE("SE01","se戦闘_ペイント弾直撃複数_16発");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 500, null, true);

{	St("MR",700, @100,@50,"buブーa_オラオラ_shout");
	Move("@StNameMR/MR*", 200, @-100, @-50, Dxl1, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/100100010buu">
「ドドドドドドドドドドド！！」

//◆ＳＥ：銃乱射
{	CreateSE("SE02","se戦闘_ペイント弾直撃複数_16発");
	MusicStart("SE02",0,700,0,1000,null,false);}
{	DeleteAllSt(200,false);
	St("ML",700, @-100,@50,"buみそa_オラオラ_shout");
	Move("@StNameML/ML*", 200, @100, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/100100020mso">
「ダダダダダダダダダダダ！！」

{	CreateSE("SEL02","se戦闘_ペイント弾直撃複数_16発");
	MusicStart("SEL02",0,300,0,1000,null,true);}
//◆ＳＥ：銃乱射
{	DeleteAllSt(200,false);
	CreateSE("SE03","se戦闘_ペイント弾直撃複数_12発");
	MusicStart("SE03",0,700,0,1000,null,false);}
{	St("R",700, @0,@0,"buブーa_オラオラ_shout");
	Move("@StNameR/R*", 3000, @-1500, @0, Dxl3, false);
	FadeSt("R",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/100100030buu">
「ドドドドドドドドドドド！！」

//◆ＳＥ：銃乱射
{	DeleteAllSt(200,false);
	CreateSE("SE04","se戦闘_ペイント弾直撃複数_12発");
	MusicStart("SE04",0,700,0,1000,null,false);}
{	St("L",700, @0,@0,"buみそa_オラオラ_shout");
	Move("@StNameL/L*", 3000, @1500, @0, Dxl3, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/100100040mso">
「ダダダダダダダダダダダ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
