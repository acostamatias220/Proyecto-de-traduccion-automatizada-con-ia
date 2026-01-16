
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2230ノーコ.nss_MAIN
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
	$GameName = "ba2235千秋_恵那_ノーコ.nss";
}

scene ba2230ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="740">
////////////header////////////
//file name "ba2230ノーコ.nss"
//title "あいするひとが……"
//previous "ba2220沙紅羅_似鳥_ノーコ.nss"

////////////footer////////////
//next "ノーコ" "ba2235千秋_恵那_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2230);}


//◆場所：空_上空

//前ファイル状態つなぎ未処理


	CreateTextureEX("空", 10, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("空", 0, 1000, null, true);
//	FadeDelete("上背景", 0, null, true);
	FadeDelete("上背景", 500, null, true);

	St("C",700, @0,@200,"buノーコa_通常_sad");
	Move("@StNameC/C*", 500, @0, @-200, Dxl2, false);
	FadeSt("C",500,true);

	MusicStart("@xbgm19",1000,300,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100010nko">
「おおだぬき」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100020nko">
「あなたのあいては、わたし」

{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100030nko">
「あなたを――きる！」

{	Move("@StNameC/C*", 200, @100, @100, Axl1, false);
	DeleteAllSt(200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100040nko">
「――――ッ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);

//◆ＥＶ："ev/ev0000ノーコカッター.txt"

// 2130沙紅羅_似鳥_ノーコ.nss からコピー

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 100, -824, -576, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);


	Fade("絵背景200", 300, 1000, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1300);
	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE02","se戦闘_刃物02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);


	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE02",0,700,0,1000,null,false);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");


	Fade("絵色100", 500, 0, null, true);

	CreateTextureEX("絵背景ev1", 10000, Center, -200, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");

	Fade("絵背景ev1", 300, 1000, null, false);
	Move("@絵背景ev1*", 300, @0, -100, Dxl2, true);

	MoveFTP3("@絵背景ev1*", 2000, 4, 5);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100050tsr">
「ぐ……？」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100060tsr">
「ぐ、ぐ、ぐ、ぐ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：地響き




	CreateSE("SE05","se環境_地鳴り03");
//	CreateSE("SE05","se戦闘_倒壊04");
	MusicStart("SE05",0,500,0,1000,null,false);
//	CreateTextureEX("空２", 1000, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
//	Fade("空２", 0, 500, null, false);
//	Shake("空２", 3000, 5, 2, 0, 0, 500, AxlDxl, false);
	Shake("絵背景ev1", 3000, 5, 2, 0, 0, 500, AxlDxl, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100070tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_衝撃_衝突01");
	CreateSE("SE02","se戦闘_風切り音10");
	CreateSE("SE03","se戦闘_爆発01");

	CreateSE("SE06","se戦闘_ガラス割れる01");
	CreateSE("SE07","se戦闘_ガラス割れる02");


//◆ＳＥ：腹鼓
	SetBlur("絵背景ev1", true, 2, 500, 100, false);
	Zoom("絵背景ev1", 200, 2000, 2000, Axl2, true);
	Fade("絵背景ev1", 300, 0, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);

	Fade("空２", 0, 300, null, false);
	Zoom("空２", 1000, 1500, 1500, null, false);
	Shake("空２", 1500, 10, 5, 0, 0, 500, AxlDxl, false);
	Fade("空２", 3000, 0, null, false);

	Wait(300);


	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);


	MusicStart("SE06",0,700,0,1000,null,false);
	MusicStart("SE07",0,700,0,1000,null,false);

	St("C",700, @0,@0,"buノーコa_発狂_normal");
	FadeSt("C",200,true);


	Shake("@StNameC/C*", 1000, 5, 0, 0, 0, 1000, Dxl1, false);


{	ClockPass(2231);}


//◆ＳＥ：窓ガラス割れる
// 上に設置

// ここ地上戦でしょうか？(ino

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100080nko">
「きゃ――！」

//　超強力な音波が暴力となって、ノーコを襲う。
{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100090nko">
（いまの……はらつづみ？）

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100100nko">
（そんな――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	Zoom("@絵背景ev1*", 0, 1000, 1000, null, true);
	SetBlur("絵背景ev1", true, 2, 500, 100, false);


// ev2220太四郎ビル大破壊_l.jpg
	Move("@絵背景ev1*", 0, @0, @-100, Dxl2, true);
	Move("@絵背景ev1*", 200, @0, @100, Dxl2, false);
	Shake("@絵背景ev1*", 200, 10, 5, 0, 0, 500, AxlDxl, false);
	Fade("絵背景ev1", 200, 1000, null, true);

//◆ＳＥ：腹鼓
	Shake("@絵背景ev1*", 1000, 10, 5, 0, 0, 500, AxlDxl, false);
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	CreateSE("SE02","se戦闘_風切り音10");
	CreateSE("SE03","se戦闘_爆発01");



	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);
	Wait(200);

	Fade("絵背景ev1", 200, 0, null, false);
	Fade("空２", 0, 300, null, false);
	Zoom("空２", 1000, 1500, 1500, null, false);
	Shake("空２", 2000, 10, 5, 0, 0, 500, AxlDxl, false);
	Fade("空２", 3000, 0, null, false);

	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	Move("@StNameC/*", 300, @150, @0, Dxl2, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100110nko">
「く――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateTextureSP("絵背景キャラ", 400, Center, 1100, "cg/bu/l/buノーコa_通常_normal_x02.png");
	Request("絵背景キャラ", Smoothing);
	Zoom("絵背景キャラ", 0, 2000, 2000, null, true);

	CreateSE("SE11a","se動作_空飛ぶ02");
	CreateSE("SE12a","se戦闘_風切り音10");

//◆演出指示：空へ

	CreateSE("SE11","se戦闘_風切り音03");
	MusicStart("SE11",0,700,0,1000,null,false);
	Move("@StNameC/*", 200, @-50, @200, AxlDxl, false);
	DeleteAllSt(200,true);

//	SceneOut(5000, 300, "slide_02_01_0");

	CreateSE("SE12","se動作_空飛ぶ02");
	MusicStart("SE12",0,700,0,1000,null,false);

	MusicStart("SE11a",0,700,0,1000,null,false);
	MusicStart("SE12a",0,700,0,1000,null,false);

	Move("絵背景100", 0, @0, @-100, null, false);
	Zoom("空", 1000, 1500, 1500, Dxl2, false);

	Move("絵背景キャラ", 700, @0, -1000, Dxl2, false);
	Zoom("絵背景キャラ", 700, 500, 500, Dxl2, false);
	Zoom("絵背景BG", 700, 1000, 1000, Dxl2, false);
	Move("絵背景BG", 700, @0, 0, Dxl2, false);

//	SceneIn(300, "slide_02_01_1");


//	Move("絵背景100", 500, @0, @100, Dxl1, false);
//	Fade("絵背景100", 500, 1000, null, true);

	Wait(800);

	SetVolumeEX("@SE*", 1000, 0, NULL);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　ノーコは腹鼓を避け、星空に。

{	St("C",700, @0,@-50,"buノーコa_通常_sad");
	Move("@StNameC/*", 300, @0, @50, Dxl2, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100120nko">
（これで、まわりにひがいはない）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100130nko">
（にとりたちはもうにげ――）

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100140nko">
「――にげてない！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：マスクか窓内で切れよく移動演出をお願いします」

	CreateAXLWindowEX("絵窓", "Y", 1600, 96, 400, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);

	CreateTextureSP("絵窓/絵背景", 1500, Center, Middle, "cg/bg/bg1101400スパコン館_裏面_半廃墟.jpg");

	CreateTextureEX("絵窓/絵演立絵", 1510, center, middle, "cg/bu/bu似鳥_通常_pinch.png");
	CreateTextureEX("絵窓/絵演立絵2", 1520, center, middle, "cg/bu/bu沙紅羅_通常_pinch.png");
	Move("絵窓/絵演立絵", 0, @-400, @150, null, true);
	Move("絵窓/絵演立絵2", 0, @0, @150, null, true);

	Fade("絵窓/絵演立絵", 100, 1000, Axl2, false);
	Fade("絵窓/絵演立絵2", 100, 1000, Axl2, false);
	Move("絵窓/絵演立絵", 400, @500, @0, null, false);
	Move("絵窓/絵演立絵2", 400, @500, @0, null, false);
	WindowAXLZoom("絵窓", "Y",300, 1000, Dxl2, true);
	Fade("絵窓/絵演立絵", 300, 0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 300, 0, Dxl2, true);

	Wait(100);
	WindowAXLZoom("絵窓", "Y", 300, 0, Axl2, true);


/*
	SceneOut(5000, 300, "slide_03_01_1");
	DeleteAllSt(0,false);

	St("ML",2100, @-300,@0,"st似鳥_通常_rage");
	St("C",2100, @-250,@0,"st沙紅羅_通常_pinch");
	FadeSt("ML",0,true);
	FadeSt("C",0,true);
	Fade("スパ", 0, 1000, null, true);
	Move("@StNameC/C*", 1000, @500, @0, null, false);
	Move("@StNameML/ML*", 1000, @500, @0, null, false);
	SceneIn(300, "slide_03_01_0");

	Wait(500);

	SceneOut(5000, 300, "slide_03_01_1");
	Delete("@StNameC/C*");
	Delete("@StNameML/ML*");
	Delete("スパ");
	SceneIn(300, "slide_03_01_0");
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　見下ろすと、戦闘地帯から逃げ出すどころか、崩れかけのスパコン館へと入っていく沙紅羅と似鳥がいた。


{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100150nko">
（まさか……アザナエルを、うつき？）

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100160nko">
（…………）

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100170nko">
（それなら、わたしがひきつける――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @0, @100, Axl1, false);
	DeleteAllSt(200,true);

	Wait(500);

	Move("@絵背景ev1*", 0, @0, @-100, Dxl2, true);
	Move("@絵背景ev1*", 200, @0, @100, Dxl2, false);
	Fade("絵背景ev1", 200, 1000, null, true);

/*
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100180tsr">
「ぐ、ぐ、ぐ、ぐ……」
*/


	CreateVOICE("その他男声","ba22/300100180tsr");
	MusicStart("その他男声",0,1400,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{
//	St("C",700, @0,@0,"buノーコa_通常_sad");
//	FadeSt("C",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100190nko">
「どうしたのタヌキ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100200nko">
「フウリがしんだのが、そんなにつらい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100210tsr">
「ぐおお……ぐおおおお……」
*/
	CreateVOICE("その他男声","ba22/300100210tsr");
	MusicStart("その他男声",0,1400,0,1000,null,false);


	TextBoxDelete(150);

//◆ＳＥ：腹鼓

//◆ＳＥ：腹鼓

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);
	Shake("@絵背景ev1*", 500, 10, 5, 0, 0, 500, AxlDxl, false);
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	CreateSE("SE02","se戦闘_風切り音10");
	CreateSE("SE03","se戦闘_爆発01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);

//	Shake("@絵背景ev1*", 200, 10, 5, 0, 0, 500, AxlDxl, false);
	Fade("絵背景ev1", 200, 0, null, false);


	Fade("空２", 0, 300, null, false);
	Zoom("空２", 1000, 1500, 1500, null, false);
	Shake("空２", 2000, 10, 5, 0, 0, 500, AxlDxl, false);
	Fade("空２", 3000, 0, null, false);

	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	Move("@StNameC/*", 300, @200, @0, Dxl2, false);
	FadeSt("C",200,true);

	CreateSE("SE11","se戦闘_衝撃_衝突01");
	CreateSE("SE12","se戦闘_風切り音08");
	CreateSE("SE33","se戦闘_爆発02");



	MusicStart("SE11",0,700,0,800,null,false);
	Wait(1000);
	MusicStart("SE12",0,700,0,1000,null,false);
	MusicStart("SE13",0,700,0,1000,null,false);

	Fade("空２", 0, 300, null, false);
	Zoom("空２", 1000, 1500, 1500, null, false);
	Shake("空２", 2000, 10, 5, 0, 0, 500, AxlDxl, false);
	Fade("空２", 3000, 0, null, false);


	St("C",19010, @0,@-50,"fuノーコa_発狂_normal");
	Move("@StNameC/*", 300, @0, @50, Dxl2, false);
	FadeSt("C",300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100220nko">
（く――――！）

{	St2("C",19010, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100230nko">
（ここで、まけたら、だめ）

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100240nko">
（なんとかきょうみをひきつけて、じかんを――！）

{
	SetVolumeEX("@xbgm19", 1000, 100, null);
	Move("@StNameC/*", 300, @0, @100, Axl1, false);
	DeleteAllSt(300,true);

	St("C",700, @0,@100,"buノーコa_通常_normal");
	Move("@StNameC/*", 300, @0, @-100, Dxl1, false);
	FadeSt("C",300,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100250nko">
「おしえてあげる」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100260nko">
「フウリをころしたのは」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100270tsr">
「ぐぐ…………？」

{	St("C",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100280nko">
「わたし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm19", 1000, 450, null);

	TextBoxDelete(150);

	DeleteAllSt(200,false);
	CreateSE("SE05","se戦闘_倒壊03");
	MusicStart("SE05",0,500,0,1000,null,false);
	Zoom("空２", 0, 1200, 1200, null, false);
	Fade("空２", 0, 500, null, false);
	Shake("空２", 3000, 15, 10, 0, 0, 500, AxlDxl, false);
	Fade("空２", 3000, 0, null, true);

	Move("@絵背景ev1*", 0, @0, @-100, Dxl2, true);
	Move("@絵背景ev1*", 200, @0, @100, Dxl2, false);
	Fade("絵背景ev1", 200, 1000, null, true);
	Shake("@絵背景ev1*", 1000, 10, 5, 0, 0, 500, AxlDxl, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100290tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_破壊01");
	CreateSE("SE02","se戦闘_破壊02");
	CreateSE("SE03","se戦闘_金属弾く04");
//◆ＳＥ：腹鼓

	MusicStart("SE01",0,700,0,1000,null,false);
	EffectZoomadd(10000, 300, 300, "cg/ef/ef034_精神汚染.jpg", true);

//◆ＳＥ：腹鼓
	MusicStart("SE02",0,700,0,1000,null,false);

	EffectZoomadd(10000, 300, 300, "cg/ef/ef034_精神汚染.jpg", true);

//◆ＳＥ：腹鼓
	MusicStart("SE03",0,700,0,1000,null,false);

	EffectZoomadd(10000, 500, 500, "cg/ef/ef034_精神汚染.jpg", true);


	Shake("@絵背景ev1*", 1000, 10, 5, 0, 0, 500, AxlDxl, false);
	CreateSE("SE01a","se戦闘_衝撃_衝突01");
	CreateSE("SE02a","se戦闘_風切り音複数_L");
	CreateSE("SE03a","se戦闘_爆発01");
	MusicStart("SE01a",0,700,0,1200,null,false);
	Wait(1000);
	MusicStart("SE02a",0,700,0,1000,null,false);
	MusicStart("SE03a",0,700,0,1000,null,false);

//	$SETime = RemainTime("SE03");
//	WaitKey($SETime);
	Wait(500);

	Fade("絵背景ev1", 200, 0, null, false);


	Fade("空２", 0, 700, null, false);
	Zoom("空２", 1500, 1500, 1500, null, false);
	Shake("空２", 2000, 10, 5, 0, 0, 500, AxlDxl, false);
	Fade("空２", 3000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"buノーコa_発狂_normal");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 1000, 15, 0, 0, 0, 1000, Dxl1, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100300nko">
「くっ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	MoveFTP3stop();

	CreateColorEXadd("絵色100", 150, "WHITE");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	SetBlur("絵背景100", true, 2, 500, 120, false);
	Request("絵背景100", Smoothing);


	Wait(200);


	SetVolumeEX("@x*", 1000, 0, NULL);

//◆演出指示：ばさっ！　玉袋が膨らむ
	SetVolumeEX("@SE*", 1000, 0, NULL);

	CreateSE("SE11","se戦闘_玉袋膨張");
	MusicStart("SE11",0,700,0,1000,null,false);

	Fade("絵背景100", 200, 1000, null, false);
	Move("絵背景100", 500, -288, -841, Dxl1, false);
	Zoom("絵背景100", 500, 1500, 1500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100310nko">
「え？　な！」

{
	Zoom("絵背景100", 200, 3000, 3000, Axl2, false);
	Fade("絵色100", 200, 1000, null, true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100320nko">
「きゃああああああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE12","se戦闘_玉袋アタック");
	MusicStart("SE12",0,700,0,1000,null,false);

	SceneOut(5000, 1000, "zzex_circle_01_00_0");

	DeleteAllSt(0,false);
	Fade("空", 0, 0, null, false);
	Delete("絵色100");
	Delete("絵背景100");

	Wait(3000);

	CreateColorSP("黒幕１", 3000, "BLACK");
	Fade("黒幕１", 0, 1000, null, false);

	SceneIn(1000, "zoom_01_00_0");

{	ClockPass(2232);}

	SoundPlay("@xbgm24",0,450,true);


//◆演出指示：玉袋の中。暗転

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	Fade("黒幕１", 3000, 700, null, false);
	St2("C",1910, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	FadeSt("C",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100330nko">
（ここは……どこ？）

{	St2("C",1910, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100340nko">
（からだ、ぶよぶよしてるのに、つつまれてる）

{
	CreateSE("SE11","se擬音_ギャグ_ぷにょぷにょ");
	MusicStart("SE11",0,700,0,1000,null,false);
	St("C",1910, @0,@0,"fuノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100350nko">
（のびるし……すこしくさい）

{	St2("C",1910, @0,@0,"fuノーコa_通常_shock","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100360nko">
（まさか……！）

{	St2("C",1910, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100370nko">
（あそこのふくろ？）

{	St2("C",1910, @0,@0,"fuノーコa_通常_sad","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100380nko">
（…………）


{	St("C",1910, @0,@0,"fuノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100390nko">
（だっしゅつしないと）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	DeleteAllSt(200,false);

//	CreateSE("SE04","se戦闘_カッター_刃出す03遅いa");
//	MusicStart("SE04",0,700,0,1000,null,false);

//	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	CreateSE("SE01","se戦闘_カッター_刃出す02早いa");

	CreatePlainSP("絵短刃板写", 5000);
	Wait(16);

	CreateColorSP("絵短刃色黒", 2000, "#000000");
	CreateTextureSP("絵短刃下", 2100, Center, Middle, "cg/img/imgカッターバラd.png");
	CreateTextureSP("絵短刃上", 2120, Center, Middle, "cg/img/imgカッターバラb.png");

	CreateTextureSP("絵短刃", 2110, 541, -1066, "cg2/img/imgカッターバラc.png");
	SetBlur("絵短刃", true, 2, 500, 60, false);

	Wait(16);
	FadeDelete("絵短刃板写", 500, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	Move("絵短刃", $SETime, 432, -1005, DxlAuto, true);

//	Delete("絵短刃下");




	CreatePlainSP("絵板写", 5000);
	Wait(16);

//	FadeDelete("@絵色黒*", 200, null, false);
	FadeDelete("@絵短刃*", 0, null, true);
//	CreateSE("SE13","se戦闘_カッター_刃出す02早い");
//	MusicStart("SE13",0,700,0,1000,null,false);

	FadeDelete("絵板写", 500, null, true);

//▼べー：台詞変更に伴い、タグ追加しました。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　ノーコは暗闇の中で、カッターナイフの刃を伸ばし――

{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100400nko_a">
「きる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @100, @100, Axl1, false);
	DeleteAllSt(200,true);


//◆ＳＥ：ざくっ！

	CreateSE("SE11","se戦闘_切断01");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);

	Wait(1000);


//◆ＳＥ：再生：じゅわじゅわじゅわ……みたいな？

	CreateSE("SE12","se擬音_再生");
	MusicStart("SE12",0,700,0,1000,null,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100410nko">
「きる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @-100, @100, Axl1, false);
	DeleteAllSt(200,true);

//◆ＳＥ：ざくっ！


//◆ＳＥ：再生


	CreateSE("SE11","se戦闘_切断01");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);

	Wait(1000);

	CreateSE("SE12","se擬音_再生");
	MusicStart("SE12",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]


{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100420nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_カッター_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100430nko">
「きりきざむ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ざくっ！

//◆ＳＥ：再生

	CreateSE("SE11","se戦闘_切断01");
	CreateSE("SE12","se戦闘_切断02");
	CreateSE("SE13","se戦闘_切断03");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 300, 0, null, false);
	Wait(300);

	MusicStart("SE12",0,700,0,1000,null,false);
	Fade("絵色100", 0, 1000, null, true);
	Rotate("絵背景100", 0, @0, @180, @0, null,true);
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 300, 0, null, false);
	Wait(300);

	MusicStart("SE13",0,700,0,1000,null,false);
	Fade("絵色100", 0, 1000, null, true);
	Rotate("絵背景100", 0, @0, @180, @0, null,true);
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);

	Wait(1000);

	CreateSE("SE17","se擬音_再生");
	MusicStart("SE17",0,700,0,1000,null,false);

	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100440nko">
「どうして……？」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100450nko">
「きれない？」

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100460nko">
「いや、ちがう」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100470nko">
「『イシュタムのみちびき』に、きれないものはない」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100480nko">
「ということは……」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100490nko">
「きっても、きっても、さいせいする……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

/*
//◆音声指示：遠くから
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100500tsr">
「ぐおおおおおおおおお！！」
*/

	CreateVOICE("その他男声","ba22/300100500tsr");
	MusicStart("その他男声",0,700,0,1000,null,false);

//	TextBoxDelete(150);

	CreateSE("SE14","se戦闘_絞める");
	MusicStart("SE14",0,700,0,1000,null,false);

	Fade("黒幕１", 3000, 800, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{
	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 5, 0, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100510nko">
「まずい……すこしずつ、せばまって――」


{	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100520nko">
「はやくでないと――」

{	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100530nko">
「きってでられないなら――」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100540nko">
「……そうか」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100550nko">
「きってだめなら、つぎめをもぐる――」

{	St("C",700, @0,@0,"buノーコa_カッター_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100560nko">
「そこ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateSE("SE11","se戦闘_風切り音04");
	CreateSE("SE11a","se戦闘_切断02");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");

	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	DeleteAllSt(0,true);
	Delete("絵背景100");
	Fade("絵色100", 500, 0, null, false);

	MusicStart("SE11a",0,700,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　ノーコの指先から伸びた刃は、皮を切り裂くのではなく、皮と皮のわずかな隙間をすり抜けて――

{	St("C",700, @0,@0,"buノーコa_カッター_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100570nko">
「こじあける！」

{
	Fade("黒幕１", 3000, 900, null, false);
	CreateSE("SE14","se戦闘_絞める");
	MusicStart("SE14",0,700,0,1000,null,false);
	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100580nko">
「ん――く、くるしい――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100590nko">
「すごい……ちから……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE14","se戦闘_絞める");
	MusicStart("SE14",0,700,0,1000,null,false);
	


{	ClockPass(2233);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	Fade("黒幕１", 3000, 900, null, false);
	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100600nko">
「もうすこし……もうすこしなのに……」

{	CreateSE("SE14","se戦闘_絞める");
	MusicStart("SE14",0,700,0,1000,null,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100610nko">
「んく……ん……ん、んんんん…………っ！！」

{	Fade("黒幕１", 1000, 950, null, false);
	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100620nko">
「あと……すこし……」

{	DeleteAllSt(1000,false);
	SetVolumeEX("@x*", 2000, 0, NULL);}
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100630tsr">
「ぐ、ぐ、ぐ、ぐ……」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100640tsr">
「ぐぅぅぅぅ…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：暗闇から現れ、夜空へ
//	MusicStart("@xbgm09_noint",1000,300,0,1000,null,true);



	Fade("黒幕１", 1000, 1000, null, true);
	Wait(2000);

	CreateColorSP("絵色100", 1500, "BLACK");

	CreateSE("SE14","se戦闘_絞める");
	MusicStart("SE14",0,700,0,1000,null,false);

	Wait(2000);

	Delete("黒幕１");

	Fade("空", 0, 1000, null, true);

	CreateSE("SE01","se戦闘_切断04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵色200", 1500, "WHITE");
	CreateTextureEXadd("絵背景カッター1", 3000, Center, Middle, "cg/ef/efカッター剣閃a_ogm01.jpg");
	CreateTextureSP("絵背景カッター2", 2000, Center, Middle, "cg/ef/efカッター剣閃a_ogm02.png");
	CreateTextureSP("絵背景カッター3", 2000, Center, Middle, "cg/ef/efカッター剣閃a_ogm03.png");
	Request("絵背景カッター", Smoothing);


	Delete("絵背景100");
	Delete("絵色100");

	CreateSE("SE01a","se戦闘_ゾディアック触手01");
	CreateSE("SE77","se環境_風_l");

	Wait(500);

	MusicStart("SE01a",0,700,0,1000,null,false);
	Zoom("絵背景カッター1", 1000, 3000, 3000, AxlDxl, false);
	Move("絵背景カッター1", 1000, @220, @-220, AxlDxl, false);
	Zoom("絵背景カッター2", 1000, 1400, 1400, AxlDxl, false);
	Zoom("絵背景カッター3", 1000, 1400, 1400, AxlDxl, false);
	Fade("絵背景カッター1", 1000, 1000, AxlDxl, false);
	Move("絵背景カッター2", 1000, @-80, @40, AxlDxl, false);
	Move("絵背景カッター3", 1000, @300, @-100, AxlDxl, true);

	FadeDelete("絵背景カッター1", 500, null, true);
	MusicStart("SE77",2000,700,0,1000,null,false);
	Fade("絵色200", 500, 500, null, true);

	WaitKey(500);


	FadeDelete("絵色200", 500, null, false);
	Move("絵背景カッター2", 500, @-500, @500, Axl2, false);
	Move("絵背景カッター3", 500, @800, @-500, Axl2, true);

	DeleteAllSt(200,true);

	Wait(500);


	Delete("絵背景*");
	CreateSE("SE12","se動作_空飛ぶ02");
	CreateSE("SE12a","se戦闘_風切り音10");
	MusicStart("SE12",0,700,0,1000,null,false);
	MusicStart("SE12a",0,700,0,1000,null,false);




//	SoundPlay("@xbgm09_noint",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @0,@50,"buノーコa_通常_sad");
	Move("@StNameC/*", 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100650nko">
「だっしゅつ――」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100660nko">
「きゅうにちからがよわまった？　なぜ？」


{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100670nko">
「……いや、かんがえてるひまはない」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100680nko">
「いのち」

{
	Move("@StNameC/C*", 200, @0, @100, Axl1, false);
	DeleteAllSt(200,true);

	St2("C",700, @0,@100,"fuノーコa_通常_mad","cg2/",".png");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100690nko">
「もらう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


//◆ＥＶ："ev/ev0000ノーコカッター.txt"


// 2130沙紅羅_似鳥_ノーコ.nss からコピー

//あきゅん「修正指示：効果音を入れてください」



	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateTextureEX("絵背景200", 100, -824, -576, "cg/ev/l/ev0000ノーコカッターd_l.jpg");
	CreateTextureEX("絵背景300", 100, Center, Middle, "cg/ev/ev0000ノーコカッターd.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	SetBlur("絵背景300", true, 2, 500, 50, false);
	SetBlur("絵背景200", true, 1, 500, 20, false);


	CreateSE("SE01","se戦闘_風切り音03");
	CreateSE("SE02","se戦闘_風切り音05");
	CreateSE("SE03","se戦闘_風切り音10");

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景200", 300, 1000, null, false);
	BezierMove("絵背景200", 1500, (-824,-576){-1000,-100}{-1000,-100}(-1024,0){0,0}{0,0}(0,-288), Axl2, false);

	Wait(1300);
	MusicStart("SE03",0,700,0,1000,null,false);
	Wait(300);
	MusicStart("SE02",0,1200,0,1000,null,false);
	Fade("絵背景300", 200, 1000, null, false);
	Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);


//	Fade("絵背景100", 0, 1000, null, true);

//	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
//	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);


//	MusicStart("SE04",0,1200,0,1000,null,false);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100700nko">
「これで、おわり――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100710nko">
「くらえ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateSE("SE05","se環境_地鳴り03");
	MusicStart("SE05",0,500,0,1000,null,false);
	Move("@絵背景ev1*", 0, @0, @-100, Dxl2, true);
	Move("@絵背景ev1*", 200, @0, @100, Dxl2, false);
	Fade("絵背景ev1", 200, 1000, null, true);
	Shake("@絵背景ev1*", 1000, 10, 5, 0, 0, 500, AxlDxl, false);
//	Shake("絵背景300", 3000, 5, 2, 0, 0, 500, AxlDxl, false);

/*
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/300100720tsr">
「ぐおおおおおおおおお！！」
*/

	CreateVOICE("その他男声","ba22/300100720tsr");
	MusicStart("その他男声",0,1000,0,1000,null,false);

//▼べー：演出変更に伴う音声変更でタグ重複してました。調整します

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
{
//	St("C",700, @0,@0,"buノーコa_カッター_rage");
//	FadeSt("C",200,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100730nko_a">
「はんげきは、まにあわな――」

{
//	St("C",700, @0,@0,"buノーコa_カッター_shock");
//	FadeSt("C",200,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/300100740nko_a">
「え？　あれは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@x*", 2000, 0, NULL);
	TextBoxDelete(150);

	Request("その他男声", Lock);

	EndScene();
}
//next "ノーコ" "ba2235千秋_恵那_ノーコ.nss"
