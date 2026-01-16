
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2100ミヅハ_ＡＤ.nss_MAIN
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

scene zab2100ミヅハ_ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="200">
////////////header////////////
//file name "zaa2100ミヅハ_ＡＤ.nss"
//title "星の帰還"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2100);}


//◆場所：半田明神_鳥居
	OnBG(10,"bg0602111半田明神_鳥居_通常");
	FadeBG(0,true);
	Move("@OnBG*", 0, @0, @-390, null, true);

{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("C",0,true);}

	CreateSE("SEL1","seガヤ_交通少_l");
	CreateSE("SEL2","seガヤ_ざわざわ02_l");
	MusicStart("SEL1",2000,500,0,800,null,true);
	MusicStart("SEL2",2000,200,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/000200010mzh">
「むむ……なにやらテレビゆるキャラバンは大詰め！」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/000200020mzh">
「あのもじゃもじゃはどこかにいなくなったようじゃし」

{	St("C",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/000200030mzh">
「ここはズバリ！
　抜け出してあやつらの所へと――」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/000200040mzh">
「いや、しかしやっぱりひとりで抜け出すのは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab21/000200050adi">
「はいっ！　いそ――急いでくださいっ！！」

{	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab21/000200060adi">
「あ、はい！　そうです！
　『全国ゆるキャラバン』で納豆を食べさせて――」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/000200070mzh">
「な――なんとッ！？」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/000200080mzh">
「おぬし今、なんと言った」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab21/000200090adi">
「え……いや、だから全国ゆるキャラバン――」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/000200100mzh">
「関係者か！？」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab21/000200110adi">
「一応ＡＤを――」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/000200120mzh">
「よし！　わらわを連れて行け！　行くぞ！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab21/000200130adi">
「行くって、でも納豆がまだ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buミヅハ_通常_angry");
	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 2400);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/000200140mzh">
「急げ！　急がぬと――沙悟浄、九千坊！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	AgainSt("C",700, @0,@0,"buミヅハ_手構え_hard");

	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);

	CreateSE("SE01","se動作_煙幕");
	CreateSE("SE02","se動作_煙幕");

	St("L",710, @-30,@60,"st沙悟浄_通常_normal");
	St("R",710, @30,@60,"st九千坊_通常_normal");

	MusicStart("SE01",0,500,0,1000,null,false);
	Move("@StNameL/L*", 600, @30, @-180, DxlAuto, false);
	FadeSt("L",200,true);

	MusicStart("SE02",0,500,0,1000,null,false);
	Move("@StNameR/R*", 600, @-30, @-180, DxlAuto, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab21/000200150adi">
「きゃっ！　な、なにこのカッパ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameL/L*", 2000, @-240, @0, DxlAuto, true);

	Wait(300);

	CreateSE("SE04","se戦闘_打撃音01");
	MusicStart("SE04",0,700,0,1000,null,false);
	
	Move("@StNameL/L*", 100, @300, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameL/L*", 300, @-120, @0, Dxl1, true);

	CreateSE("SE05","se戦闘_打撃音01");
	MusicStart("SE05",0,700,0,1000,null,false);

	Move("@StNameL/L*", 100, @130, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameL/L*", 200, @-130, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【沙悟浄】
<voice name="沙悟浄" class="その他男声" src="voice/zab21/000200160e01">
「ヒョーヒョー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameR/R*", 2000, @240, @0, DxlAuto, true);

	Wait(300);

	CreateSE("SE06","se戦闘_打撃音01");
	MusicStart("SE06",0,700,0,1000,null,false);
	
	Move("@StNameR/R*", 100, @-300, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameR/R*", 300, @120, @0, Dxl1, true);

	CreateSE("SE07","se戦闘_打撃音01");
	MusicStart("SE07",0,700,0,1000,null,false);

	Move("@StNameR/R*", 100, @-130, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameR/R*", 200, @130, @0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【九千坊】
<voice name="九千坊" class="その他男声" src="voice/ab21/100200230e02">
「ガワッガワッ！」

{	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab21/000200180adi">
「いたたっ！　ちょ！　ホントに痛いッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreatePlainSP("絵板写", 5000);
	Wait(16);
	DeleteAllSt(0,true);
	FadeDelete("絵板写", 200, null, true);

	St("MR",700, @-60,@0,"buミヅハ_通常_normal");
	Move("@StNameMR/MR*", 200, @60, @0, Dxl1, false);
	FadeSt("MR",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zab21/000200190mzh">
「ほら！　早く来るのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameMR/MR*", 300, @60, @0, AxlAuto, false);
	DeleteSt("MR",200,false);
	St("ML",700, @-60,@0,"buＡＤ_通常_sad");
	Move("@StNameML/ML*", 200, @60, @0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/zab21/000200200adi">
「わ、わかったわよ！
　じゃあせめて、帰りにおでん缶を――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameML/ML*", 200, @60, @0, AxlAuto, false);
	DeleteSt("ML",200,true);


	EndScene();
}
