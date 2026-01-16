
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2050沙紅羅_似鳥_フウリ.nss_MAIN
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
	if($CharaName=="沙紅羅"){
		$GameName = "2100沙紅羅_フウリ.nss";
	}else if($CharaName=="フウリ"){
		$GameName = "2100沙紅羅_フウリ.nss";
	}else{
		$GameName = "2100似鳥.nss";
	}
//	$GameCircle=false;

}

scene 2050沙紅羅_似鳥_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="790">
////////////header////////////
//file name "2050沙紅羅_似鳥_フウリ.nss"
//title "ユージロー、変身！"
//previous "2047沙紅羅_フウリ.nss"
//previous "2040似鳥.nss"

////////////footer////////////
//next "沙紅羅" "2100沙紅羅_フウリ.nss"
//next "フウリ" "2100沙紅羅_フウリ.nss"
//next "似鳥" "2100似鳥.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：ＵＰ＋_セット上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	if($LFlag_NowFile=="2040似鳥.nss"){
	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);
	}else if($LFlag_NowFile=="2047沙紅羅_フウリ.nss"){
	FadeDelete("上背景", 0, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

{	ClockPass(2050);}

//おがみ：演出：ここ、似鳥からくると、沙紅羅とフウリが居るのが唐突すぎる。最初はキャラクター出さないでおくか
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/500400010ujr">
「ワウワウワウワウっ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400020skr">
「ん？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/500400030wfu">
「あれ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400040nki">
「なんだ？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/500400050mzh">
「この鳴き声はまさか――！」

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400060mrp">
『犬――！？』

//◆音声指示：インカム越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400070adi">
『みたいです！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400080mrp">
『「みたいです！」じゃなくてさっさと追い出し――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm03",0,450,true);


	TextBoxDelete(150);

//◆演出指示：ブルマーユージロー出動！
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	CreateSE("SE70","se動物_イヌ_走る_l");
	MusicStart("SE70",0,1000,0,1000,null,true);


	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	St("C",700, @0,@200,"buユージローb_通常_ero");
	Move("@StNameC/C*", 300, @0, @-200, Dxl2, false);
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/500400090ujr">
「ワウ――――――――ン！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE70", 1000, 0, null);

	DeleteAllSt(200,true);

//表に居るのでマスク処理
//	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("ML",200,true);

//マスク準備
	CreateTextureEX("絵マスク枠", 1610, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
//	CreateTextureEX("絵マスク枠", 1610, center, Middle, "cg/mask/ciライン_00_01z_ogm.png");
//	Rotate("絵マスク枠", 0, @0, @0, 71, null,true);

	CreateMask("絵マスク左", 1000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1520, 0, Middle, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 1530, center, middle, "cg/bu/bu沙紅羅_頭かき_sigh.png");
	Request("絵マスク左/絵演立絵", Smoothing);


//動作準備
	Move("絵マスク枠", 0, -1024, 0, null, true);
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -531, -60, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);

//	Shake_Loop_OGM("@絵マスク枠","プロセスシェイク");
//イン動作
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -231, -60, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400100skr">
「は？」

{
//	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400110nki">
「なんでブルマー！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//アウト動作
	DeleteAllSt(200,false);
	Move("絵マスク枠", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, false);
	DeleteAllSt(200,true);
	Request("プロセスシェイク", Stop);
	Delete("プロセスシェイク");

//デリート
	Delete("絵マスク*");
	Delete("絵マスク左/*");

//◆ＥＶ："ev/ev1830ミヅハ獣姦.txt"
//	CreateTextureEX("絵背景", 100, Center, Middle, "cg/ev/ev1830ミヅハ獣姦.jpg");
//	Fade("絵背景", 500, 1000, null, true);
	yurukakuPrepare("yurIF背景03","yurユージローbカクカクミヅハa","yurユージローbカクカクミヅハb");
	yurukakuStart();


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/500400120ujr">
「はっはっはっは！」

//◆ＳＥ：腰かくかく。擬音。
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/500400130mzh">
「だずげでええええ！！　だべられるうううう！！」

//◆音声指示：インカム越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400140adi">
『キャッ！　だめ！　放送できない！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2051);}

	yurukakuDelete();

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,1500,0,1500,null,true);

	TextBoxDelete(150);

//	Fade("絵背景", 300, 0, null, true);

	Wait(800);
	SetVolumeEX("SE*", 1000, 0, null);


	St("C",700, @-100,@0,"bu沙紅羅_木刀_rage");
	Move("@StNameC/C*", 200, @100, @0, Dxl2, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400150skr">
「とりゃああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @50, @100, Axl2, false);
	DeleteAllSt(200,true);

//◆演出指示：木刀で殴る
	CreateSE("SE00b","se戦闘_風切り音05");
	CreateSE("SE00","se戦闘_打撃音03");
	CreateSE("SE00c","se戦闘_打撃音04");

	MusicStart("SE00b",0,1500,0,1000,null,false);


	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");


//おがみ：β要演出箇所：優先度Ａ　ユージロー吹っ飛び
	MusicStart("SE00",0,1500,0,1000,null,false);

	St("MR",750, @0,@0,"buユージローb_通常_angry");
	Shake("@StNameMR/MR*", 300, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 300, @-100, @0, Dxl1, false);
	FadeSt("MR",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/500400160ujr">
「きゃう――――ん！」

{
	MusicStart("SE00c",0,700,0,1000,null,false);

	St("C",700, @0,@0,"bu似鳥_通常_shock");
	Shake("@StNameC/C*", 300, 15, 5, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 300, @-130, @50, Dxl1, false);
	FadeSt("C",300,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400170nki">
「うおっ！　ぐはっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Shake("@StNameC/C*", 300, 3, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameMR/MR*", 300, 3, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 300, @-80, @50, Axl1, false);
	Move("@StNameC/C*", 300, @-80, @50, Axl1, false);
	DeleteAllSt(300,true);

	CreateSE("SE00b","se人体_倒れる03");
	MusicStart("SE00b",0,700,0,1000,null,false);

	CreatePlainSP("揺用", 15000);
	Shake("揺用", 500, 15, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");

//おがみ：ＳＥたおれる音
	CreateSE("SE01","se人体_倒れる03");
	MusicStart("SE01",0,1200,0,1000,null,false);

{	ClockPass(2052);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400180adi">
「似鳥さんにぶつかった！？」

{	DeleteAllSt(200,false);
	St("ML",700, @50,@0,"buフウリ_胸手_smile");
	St("MR",700, @0,@70,"buミヅハ_ダウナー_cry");
	Shake("@StNameMR/MR*", 1000, 2, 0, 0, 0, 1000, null, false);
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl1, false);
	FadeSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/500400190mzh">
「ごわがっだあああああ！！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/500400200wfu">
「あー、はいはいよしよし。泣かない泣かない」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400210adi">
「ど、どう収拾をつければ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	DeleteAllSt(200,true);

//マスク準備
//	CreateTextureEX("絵マスク枠", 1610, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateTextureEX("絵マスク枠", 1610, center, Middle, "cg/mask/ciライン_00_01z_ogm.png");
	Rotate("絵マスク枠", 0, @0, @0, 71, null,true);
	CreateMask("絵マスク左", 1000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1520, 0, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_happy.png");
	Request("絵マスク左/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク左/絵演立絵2", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");
	Request("絵マスク左/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク左/絵演立絵3", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_angry.png");
	Request("絵マスク左/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Move("絵マスク枠", 0, -1024, 200, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);

	Shake_Loop_OGM_CUT("@絵マスク枠","プロセスシェイク");

//イン動作
	Move("絵マスク枠", 200, -20, 200, Dxl3, false);
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -100, middle, Dxl1, true);


//おがみ：β要演出箇所：優先度Ａ　ここからミリPをカットイン演出予定
//◆音声指示：スピーカー越し

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400220mrp">
『なんとユニーク！
　まさか似鳥君がこんな新マスコットを考えているとは！』

{	St("R",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("R",200,true);}
//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400230nki">
『いや、あの別にコレオレが考えたわけじゃ――』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400240mrp">
『すごいですね！　どこからこんな発想が！？』

//◆音声指示：スピーカー越し
{	St("R",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400250nki">
『え？　いや、だから――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//窓準備
	CreateWindow("絵窓", 2000, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 2550, Center, Middle, "cg/bg/bg1203100ＵＰ＋_セット裏_通常.jpg");
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵窓/絵演背景", HEAVY);

//左キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 2910, center, middle, "cg/bu/buミヅハ_手構え_hard.png");
	Move("絵窓/絵演立絵", 0, @0, @100, null, true);
//右キャラ準備
	CreateTextureEX("絵窓/絵演立絵2", 2900, center, middle, "cg/bu/buフウリ_通常_hard.png");
	Move("絵窓/絵演立絵2", 0, @0, @0, null, true);
//中キャラ準備
	CreateTextureEX("絵窓/絵演立絵3", 2920, center, middle, "cg/bu/bu沙紅羅_通常_hard.png");
	Move("絵窓/絵演立絵3", 0, @50, @100, null, true);

//カット枠準備
	CreateTextureEX("絵背景枠01", 19200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 19200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");

	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);

//窓開き動作
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);

//中キャラ動作
	Move("絵窓/絵演立絵3", 200, @-50, @-100, Dxl2, false);
	Fade("絵窓/絵演立絵3", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400260skr">
「おい似鳥！」

{	Move("絵窓/絵演立絵2", 200, @300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//右キャラ動作
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/500400270wfu">
「似鳥さんッ！！」

{	Move("絵窓/絵演立絵", 200, @-300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);}
//左キャラ動作
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/500400280mzh">
「合わせるのじゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Zoom("絵窓", 200, 1000, 0, Dxl2, false);

//カット枠消去
	Move("絵背景枠01", 200, @0, 262, null, false);
	Move("絵背景枠02", 200, @0, 262, null, false);
	Fade("絵背景枠*", 200, 0, null, true);
	CutInLineStop02();
	Delete("絵窓");
	Delete("絵窓/*");
	St("R",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("R",200,true);

//◆音声指示：スピーカー越し

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400290nki">
『………………ちぇっ』

//◆音声指示：スピーカー越し
{	St("R",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400300nki">
『えー、あー、そうですね』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2053);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("R",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("R",200,true);}
//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400310nki">
『とりあえず……あの、秋葉原という街を表現しました』

{
//	Move("絵マスク左", 0, -1024, 0, null, true);
//	Move("絵マスク左/絵演立絵2", 0, -512, 200, null, true);

//イン動作
	Move("絵マスク左", 0, 0, 0, null, true);
	Move("絵マスク左/絵演立絵2", 0, -100, middle, null, true);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, false);
	Fade("絵マスク左/絵演立絵", 300, 0, Axl2, false);
}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400320mrp">
『はあ、秋葉原……？』

//◆音声指示：スピーカー越し
{	St("R",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400330nki">
『犬っていうのはね、つまり、秋葉原に飼い慣らされ、服従した獣の象徴なんですよ』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400340mrp">
『服従……？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("R",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("R",200,true);}
//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400350nki">
『見てください、このツラを。
　ブルマーを頭から被ってなんて間抜けなんだ……』

//◆音声指示：スピーカー越し
{	St("R",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400360nki">
『しかもさっきこいつは、子供に襲いかかろうとしてます。
　わかります？　もう成熟した身体は不要――』

{
	Fade("絵マスク左/絵演立絵2", 300, 0, Axl2, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, true);
}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400370mrp">
『それは素晴らしい反骨精神！　アグレッシブだわ！
　でも、それをマスコットキャラにするのは――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2054);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("R",700, @0,@0,"bu似鳥_眼鏡上げ_mad");
	FadeSt("R",200,true);}
//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400380nki">
『外見の美しさに惑わされると真の美しさを見逃す――』

{
	Fade("絵マスク左/絵演立絵", 300, 0, Axl2, false);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, true);
}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400390mrp">
『ええそうね、偏見で捉えては――』

{	St("R",700, @0,@0,"bu似鳥_ラッパー_pride");
	FadeSt("R",200,true);}
//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400400nki">
『更にいうなら犬はＤＯＧ！　それはＧＯＤの逆さ読み！
　価値観を転倒させることにより犬は神の化身と化す！』

//◆音声指示：スピーカー越し
{
	Fade("絵マスク左/絵演立絵2", 300, 0, Axl2, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400410mrp">
『まあ、なんてウイットに富んでるの！？　でも――』

{	St("R",700, @0,@0,"bu似鳥_ラッパー_rage");
	FadeSt("R",200,true);}
//◆音声指示：スピーカー越し
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400420nki">
『<RUBY text="ＢＬＯＯＭ－ＥＲ">大地に這いつくばって花開く者</RUBY>！
　その開花を目にした者は余りの美しさに眼が潰れ――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――





//◆ＳＥ：ジングル
	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵3", 0, -512, 200, null, true);

//イン動作
	Move("絵マスク左", 0, 0, 0, null, true);
	Move("絵マスク左/絵演立絵3", 0, -100, middle, null, true);
	Shake("絵マスク左/絵演立絵3", 500, 10, 5, 0, 0, 1000, Dxl2, false);
	Fade("絵マスク左/絵演立絵3", 200, 1000, null, false);
	Fade("絵マスク左/絵演立絵", 300, 0, Axl2, false);

//◆音声指示：スピーカー越し

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400430mrp">
『はい、ＣＭ！　ＣＭ入っちゃうわよ――――ッ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2055);}


	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);

//アウト動作
	DeleteAllSt(200,false);
	Move("絵マスク枠", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵3", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵3", 200, 0, null, true);
	Request("プロセスシェイク", Stop);
	Delete("プロセスシェイク");

//デリート
	Delete("絵マスク*");
	Delete("絵マスク左/*");

	Wait(1500);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
{	St("ML",700, @-50,@0,"buミリＰa_通常_sad");
	Move("@StNameML/ML*", 400, @50, @0, Dxl1, false);
	FadeSt("ML",400,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400440mrp">
「はぁ……ふぅ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@50,"bu似鳥_眼鏡上げ_shock");
	Move("@StNameMR/MR*", 400, @0, @-50, Dxl1, false);
	FadeSt("MR",400,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400450nki">
「はぁ……っ、はぁ……っ、はぁ……っ！
　……はっ！　オレはなにを！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_mad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400460nki">
「また……また、昔の設定厨のクセが……！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400470mrp">
「ちょっとちょっと！　似鳥君！
　もうちょっと、テレビ向けのコメントにしてくれる？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400480nki">
「な……なに人のせいにしてるんだよ！
　そういうフリをしたのそっちだろ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400490mrp">
「それはそうだけど、限度ってものがあるでしょ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2056);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400500nki">
「そんなの知るかよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_ショータイム_angry");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400510mrp">
「アリバイ、欲しくないの？
　欲しかったら言うこと聞きなさい」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_ラッパー_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400520nki">
「だからって、突然オレに振るとは聞いてねーぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：ブオン！　木刀振って
	CreateColorEXadd("絵色100", 1500, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	CreateSE("SE00","se戦闘_打撃音03");

	MusicStart("SE00",0,700,0,1000,null,false);
	Fade("絵色100", 100, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	Fade("絵色100", 200, 0, null, false);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");
	Delete("絵色100");

	SoundPlay("@xbgm07",0,450,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
{	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400530skr">
「そこまでだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2057);}




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400540skr">
「さっきから聞いてりゃ、ふたりともぴーちくぱーちく自分の都合ばっかり言いやがって」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400550skr">
「おいオカマ！
　てめぇの仕事はそいつのやる気なくすことか？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400560skr">
「おいオタク！
　この番組をみんな一生懸命つくってんのわかんだろ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400570skr">
「だったらケンカしてる場合か？　違ぇだろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
{	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400580mrp">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400590nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2058);}




	DeleteAllSt(200,true);

	St("C",700, @0,@50,"buユージローb_通常_normal");
	Move("@StNameC/C*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/500400600ujr">
「わう？」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/500400610nki">
「『わう？』じゃねーよ」

{	DeleteAllSt(200,true);}
　似鳥は溜息と共に、ブルマーを顔から外す。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――






//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400620skr">
「ふたりとも、納得いくまで話し合ってこい！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400630adi">
「ちょっと！　なに仕切ってるんですか！？」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400640adi">
「あとＣＭ明けまで３０秒――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400650skr">
「てめーがやれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2059);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400660adi">
「え、私……？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400670skr">
「さっきの司会、悪くなかったからさ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400680adi">
「え、やだ……そんな！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400690mrp">
「よろしく頼むわ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400700adi">
「ミリＰさん！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/500400710mrp">
「大丈夫。あなたになら、できるから――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/500400720wfu">
「権堂さん、ファイトー！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/500400730mzh">
「がんばるのじゃー！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400740adi">
「えええええ……！？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/500400750skr">
「はい、１０秒前！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400760adi">
「お……おほん！」

{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400770adi">
「え……ええと、みなさん！
　大食い再開の準備はいいですね！？」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400780adi">
「では……」

{	St("C",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/500400790adi">
「後半戦、スタートッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 10, null, "cg/data/circle_02_00_1.png", true);
	Wait(2000);

	EndScene();
}
