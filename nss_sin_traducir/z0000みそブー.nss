
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z0000みそブー.nss_MAIN
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

scene z0000みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "z0000みそブー.nss"
//title "自己紹介"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@100,"buみそa_オラオラ_shout");
	Move("@StNameML/ML*", 200, @0, @-100, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z00/000200010mso">
「百野殺駆特攻隊長・頑丈のみそ！！」

{	St("ML",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z00/000200020mso">
「特技は頑丈！」

{	St("ML",700, @0,@0,"buみそa_オラオラ_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z00/000200030mso">
「座右の銘は――
　『侠は容易に折れず曲がらず』！！」

{	Move("@StNameML/ML*", 200, @-50, @0, Dxl3, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@100,"buブーa_オラオラ_shout");
	Move("@StNameMR/MR*", 200, @0, @-100, Dxl3, false);
	Shake("@StNameMR/MR*", 200, 15, 0, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z00/000200040buu">
「百野殺駆参謀役・クラッシャー・ブー！！」

{	St("MR",700, @0,@0,"buブーa_オラオラ_normal");
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z00/000200050buu">
「特技は発明！」

{	St("MR",700, @0,@0,"buブーa_オラオラ_pride");
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z00/000200060buu">
「座右の銘は――
　『早ければ早いほどイイ』！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Move("@StNameMR/MR*", 200, @50, @0, Dxl3, false);
	DeleteSt("MR", 200,true);

	St("L",700, @-50,@0,"buみそa_オラオラ_shout");
	St("R",700, @50,@0,"buブーa_オラオラ_shout");
	Move("@StNameL/L*", 200, @50, @0, Dxl3, false);
	Move("@StNameR/R*", 200, @-50, @0, Dxl3, false);
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//▼べー：同時でしょうか？
//cono：同時追加
//【みそ】
<voice name="みそ" class="みそ" src="voice/z00/000200070mso">
「夜露死苦ゥ！！」
{WaitAddText();}<BR>

//▼べー：音声系スクリプトをブーへ修正
//【ブー】
//<voice name="ブー" class="ブー" src="voice/z00/000200080buu">
//「夜露死苦ゥ！！」

</PRE>
	SetText();
	AddText(1,"「夜露死苦ゥ！！」","みそ","z00/000200070mso",false,false,1000);
	AddText(2,"「夜露死苦ゥ！！」","ブー","z00/000200080buu",true,true,1500);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
