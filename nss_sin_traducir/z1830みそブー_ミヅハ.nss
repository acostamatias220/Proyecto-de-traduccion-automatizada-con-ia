
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1830みそブー_ミヅハ.nss_MAIN
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

scene z1830みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="150">
////////////header////////////
//file name "z1830みそブー_ミヅハ.nss"
//title "幼女誘拐大作戦"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1839);}

//◆場所：半田明神_境内
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm13",0,450,true);

	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",0,true);



//	CreateSE("SEL01", "seガヤ_交通少_l");
//	MusicStart("SEL01", 500, 350, 0, 1000, null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/300200010mzh">
「沙悟浄！　九千坊！」

{	St("ML",700, @-80,@0,"st沙悟浄_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @80, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙悟浄】
<voice name="沙悟浄" class="その他男声" src="voice/z18/300200020e01">
「ヒョーヒョー！」

{	St("MR",700, @80,@0,"st九千坊_通常_normal");
	Move("@StNameMR/MR*", 200, @-80, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【九千坊】
<voice name="九千坊" class="その他男声" src="voice/z18/300200030e02">
「ガワッガワッ！」

{	Move("@StNameMR/MR*", 200, @80, @0, Dxl3, false);
	Move("@StNameML/ML*", 200, @-80, @0, Dxl3, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	CreateSE("SE01","se戦闘_殴打連続02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 300, @100, @0, Dxl3, false);
	Shake("@StNameMR/MR*", 300, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/300200040buu">
「ちょ！　こいつら！　ちっちゃいのに！　強い！」

{	St("ML",700, @0,@60,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @0, @-60, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/300200050mso">
「ってか、何者！？
　妖怪！？　妖怪なのか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @-50,@80,"st沙悟浄_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @50, @-80, Dxl3, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙悟浄】
<voice name="沙悟浄" class="その他男声" src="voice/z18/300200060e01">
「ヒョーヒョー！」

{	St("MR",700, @50,@80,"st九千坊_通常_normal");
	Move("@StNameMR/MR*", 200, @-50, @-80, Dxl3, false);
	FadeSt("MR",200,true);}
//【九千坊】
<voice name="九千坊" class="その他男声" src="voice/z18/300200070e02">
「ガワッガワッ！」

{	Move("@StNameMR/MR*", 200, @80, @0, Dxl3, false);
	Move("@StNameML/ML*", 200, @-80, @0, Dxl3, false);
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buみそa_通常_sad");
	CreateSE("SE01","se戦闘_殴打連続02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameML/ML*", 300, @-100, @0, Dxl3, false);
	Shake("@StNameML/ML*", 300, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 300, @-100, @0, Dxl3, false);
	DeleteAllSt(200,false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/300200080mso">
「ぎゃ――――！」

{	St("MR",700, @100,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	CreateSE("SE02","se戦闘_殴打連続02");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 200, @50, @50, Dxl3, false);
	FadeSt("MR",200,true);
	Move("@StNameMR/MR*", 400, @50, @50, Dxl1, false);
	DeleteAllSt(300,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/300200090buu">
「イデッ！　イデデデデ！！」

{	St("L",700, @0,@0,"buみそa_通常_cry");
	DeleteAllSt(200,false);
	Shake("@StNameL/L*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/300200100mso">
「ごめっ！　ごめんなさい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("R",700, @0,@0,"buブーa_通常_cry");
	DeleteAllSt(200,false);
	Shake("@StNameR/R*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/300200110buu">
「ゆ、許してー！」

{	St("C",700, @0,@0,"buミヅハ_手構え_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/300200120mzh">
「ふふふ……許して欲しいのなら……
　わらわからひとつ、条件がある！」

{	St("C",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/300200130mzh">
「今すぐ、この場から、わらわを誘拐するのじゃ！」

{	St("L",700, @0,@0,"buみそa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/300200140mso">
「へ？　誘拐？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("R",700, @0,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/300200150buu">
「自分から？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
