
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2240みそブー_ミヅハ.nss_MAIN
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

scene z2240みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "z2240みそブー_ミヅハ.nss"
//title "沙紅羅への信頼"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2240);}

//◆場所：半田明神_鳥居_ペンキ
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z22/400200010buu">
「うう……こまった……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z22/400200020mso">
「こんなのが姐さんにバレたら……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z22/400200030mzh">
「おしり、ペンペンか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_オラオラ_pinch");
	Shake("@StNameMR/MR*", 500, 0, 40, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z22/400200040buu">
「おしり、ドガッドガッだ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_オラオラ_pinch");
	Shake("@StNameML/ML*", 500, 0, 40, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z22/400200050mso">
「おしり、ガスッガスッだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	Shake("@StNameC/C*", 500, 15, 0, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z22/400200060mzh">
「ひええええええ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z22/400200070mso">
「けど……姐さんなら、きっとなんとかしてくれる……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
