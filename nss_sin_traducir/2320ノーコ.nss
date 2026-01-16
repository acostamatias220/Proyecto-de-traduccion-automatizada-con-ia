
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2320ノーコ.nss_MAIN
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
	$GameName = "2330ノーコ.nss";
}

scene 2320ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1450">
////////////header////////////
//file name "2320ノーコ.nss"
//title "うしなってはならないかこ"
//previous "2311ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2330ノーコ.nss"

////////////body////////////

//■再定義定型文

	PrintBG("上背景", 30000);

//◆場所：秋葉原_万世橋
{	ClockPass(2320);}

	OnBG(10,"bg0104200秋葉原_万世橋_閉店");
	FadeBG(0,true);

	SnowDrop(0);

	SnowDropDelete(50000);

	SoundPlay("@xbgm24",1000,450,true);


	FadeDelete("上背景", 0, null, true);

	CreateTextureEX("絵背景立絵1", 1000, -400, -600, "cg/fu/fu似鳥堕皇_通常_rage.png");
	CreateTextureEX("絵背景立絵2", 1000, -400, -600, "cg/fu/fu似鳥堕皇_通常_normal.png");
	CreateTextureEX("絵背景立絵3", 1000, -400, -600, "cg/fu/fu似鳥堕皇_通常_hard.png");


	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("C",200,true);

//◆演出指定：ここ、既にノーコは太四郎の幻術に捕らわれている。それを表現するために、「雪」が徐々に止んでいき、ラストでは普通の街並みになっている

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100010ntn">
「忘れた……とはいわせないぞ」


//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100020ntn">
「憶えてるだろ？
　オレと共に戦った、前世の記憶を」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100030nko">
「カイザー・オブ・ダークネス・ルシフェルさまのてんせいたい」

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100040ntn">
「待たせたな」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100050nko">
「とうとう……かくせいしたの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	TextBoxDelete(150);
{
//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu似鳥堕皇_通常_rage");
//	FadeSt("C",200,true);
}

	CreateTextureEX("絵背景100", 100, 512, Middle, "cg/bg/bg0104200秋葉原_万世橋_閉店.jpg");
	SetShade("絵背景100", MIDEUM);
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	Move("絵背景100", 1000, 400, @0, Dxl2, false);
	Move("絵背景立絵*", 1000, -1150, @0, Dxl2, false);
	Fade("絵背景100", 1000, 1000, null, false);
	Fade("絵背景立絵1", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100060ntn">
「『<RUBY text="せいいん">聖陰</RUBY>大戦』から二万年の時を経て――<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェルの魂は、煉獄から蘇った」

{
//	St("C",700, @0,@0,"bu似鳥堕皇_通常_normal");
//	FadeSt("C",200,true);
}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100070ntn">
「<RUBY text="スラッシャー・ワン">切裂闇使</RUBY>ノーコに会うために」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景立ノーコ1", 1000, 4024, -345, "cg/fu/fuノーコb_通常_normal.png");
	CreateTextureEX("絵背景立ノーコ2", 1000, 4024, -345, "cg/fu/fuノーコb_通常_sad.png");
	Fade("絵背景立ノーコ1", 0, 1000, null, true);
	CreateTextureEX("絵黒幕", 100, 4120, Middle, "cg/bg/bg0104200秋葉原_万世橋_閉店.jpg");
	Zoom("絵黒幕", 0, 10000, 1000, null, true);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);


	Move("絵背景100", 500, -512, @0, AxlDxl, false);
	Move("絵背景立絵*", 500, -4065, @0, AxlDxl, false);
	Move("絵背景立ノーコ*", 500, -215, @0, AxlDxl, false);

	Move("絵黒幕", 500, -4120, @0, AxlDxl, false);
	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Wait(200);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_0", true);


{
//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"buノーコb_通常_normal");
//	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100080nko">
「にとり……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100090nko">
「ほんとうに……めざめた……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu似鳥堕皇_通常_normal");
//	FadeSt("C",200,true);

	CreateTextureEX("絵黒幕", 100, -4120, Middle, "cg/bg/bg0104200秋葉原_万世橋_閉店.jpg");
	Zoom("絵黒幕", 0, 10000, 1000, null, true);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景立絵2", 0, 1000, null, true);
	Fade("絵背景立絵1", 0, 0, null, true);
	Move("絵背景100", 500, 512, @0, AxlDxl, false);
	Move("絵背景立絵*", 500, -1150, @0, AxlDxl, false);
	Move("絵背景立ノーコ*", 500, 4024, @0, AxlDxl, false);

	Move("絵黒幕", 500, 4120, @0, AxlDxl, false);
	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Wait(200);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100100ntn">
「行こう、ノーコ」

{
//	St("C",700, @0,@0,"bu似鳥堕皇_通常_normal");
//	FadeSt("C",200,true);
}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100110ntn">
「オレたちをあざ笑った全ての物を破壊に――」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100120ntn">
「今度こそ、ふたりきりの世界を創りに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2321);}

	CreateTextureEX("絵黒幕", 100, 4120, Middle, "cg/bg/bg0104200秋葉原_万世橋_閉店.jpg");
	Zoom("絵黒幕", 0, 10000, 1000, null, true);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景100", 500, -512, @0, AxlDxl, false);
	Move("絵背景立絵*", 500, -4065, @0, AxlDxl, false);
	Move("絵背景立ノーコ*", 500, -215, @0, AxlDxl, false);

	Move("絵黒幕", 500, -4120, @0, AxlDxl, false);
	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Wait(200);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_0", true);

//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"buノーコb_通常_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100130nko">
「ふたりきりの……せかい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("C",700, @0,@0,"bu似鳥堕皇_通常_hard");
//	DeleteAllSt(200,false);
//	FadeSt("C",200,true);

/*
	CreateTextureEX("絵黒幕", 100, -4120, Middle, "cg/bg/bg0104200秋葉原_万世橋_閉店.jpg");
	Zoom("絵黒幕", 0, 10000, 1000, null, true);

	Fade("絵背景立絵3", 0, 1000, null, true);
	Fade("絵背景立絵2", 0, 0, null, true);
	Move("絵背景100", 500, 512, @0, AxlDxl, false);
	Move("絵背景立絵*", 500, -1150, @0, AxlDxl, false);
	Move("絵背景立ノーコ*", 500, 4024, @0, AxlDxl, false);

	Move("絵黒幕", 500, 4120, @0, AxlDxl, false);
	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Wait(200);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0037]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100140ntn">
「どうした？　なにか不満でも？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	CreateTextureEX("絵黒幕", 100, 4120, Middle, "cg/bg/bg0104200秋葉原_万世橋_閉店.jpg");
	Zoom("絵黒幕", 0, 10000, 1000, null, true);

	Move("絵背景100", 500, -512, @0, AxlDxl, false);
	Move("絵背景立絵*", 500, -4065, @0, AxlDxl, false);
	Move("絵背景立ノーコ*", 500, -215, @0, AxlDxl, false);

	Move("絵黒幕", 500, -4120, @0, AxlDxl, false);
	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Wait(200);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_0", true);

*/

	Fade("絵背景立ノーコ1", 300, 0, Axl2, false);
	Fade("絵背景立ノーコ2", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100150nko">
「い、いえ！　わたしは……わたしは……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100160nko">
「しあわせ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreatePlainSP("揺用", 2005);

	OnBG(10,"bg0104200秋葉原_万世橋_閉店");
	FadeBG(0,true);

	Delete("絵背景*");
	CreateTextureSP("絵背景立堕皇", 500, Center, -207, "cg/st/l/st似鳥戴斗_堕皇_pride_ex01ogm.png");
	CreateTextureEXsub("絵背景立堕皇影", 501, Center, -207, "cg/st/l/st似鳥戴斗_堕皇_pride_ex01ogm.png");

//先んじて定義
	CreateSE("SE01","se動作_空飛ぶ02");
	CreateSE("SE02","se戦闘_破壊01");

	CreateTextureEX("絵黒幕", 100, center, -4000, "cg/bg/bg0104200秋葉原_万世橋_閉店.jpg");
	Request("絵黒幕", Smoothing);
	Zoom("絵黒幕", 0, 1000, 20000, null, true);

	CreateTextureEXsub("絵背景EF01", 100, center, middle, "cg/ef/花火01.jpg");
	Zoom("絵背景EF01", 0, 2000, 1000, null, true);

	Move("絵背景立堕皇*", 500, @0, -237, Dxl1, false);

	Fade("揺用", 500, 0, null, true);

	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100170ntn">
「さあ、行くぞ！　夜の空は、オレたちのものだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2322);}

	SnowDropDelete(1000);
	TextBoxDelete(150);



//定義
	SetBlur("絵背景立堕皇影", true, 2, 600, 50, false);

	CreateMovieEX("ムービー１", 1000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", SubRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);


	ClockDelete(200,false);


//◆場所：秋葉原_上空
	CreateTextureEX("秋葉原空", 20, 0, -448, "cg/bg/bg2401100空_上空_通常.jpg");
	Zoom("秋葉原空", 0, 1100, 1100, null, true);


	CloudZoomSmokeSubSet01("スモークプロセスA",200,"cg/ef/efスモーク.png");

//動作
	CloudZoomSmokeSubStart01(400,25,800,2500,900,460,-100,460,500,Dxl1);

	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景立堕皇影", 300, 1000, null, false);

	Fade("絵背景EF01", 0, 1000, null, true);
	Zoom("絵背景EF*", 1000, 3500, 4000, Dxl2, false);
	Rotate("絵背景EF*", 1500, @0, @6000, @0, null,false);
	Move("@絵背景立堕皇*", 300, @0, @-3000, Axl3, false);

	WaitKey(400);


	Move("絵黒幕", 800, @0, 4000, AxlDxl, false);
	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 500, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵背景EF01");
	Fade("秋葉原空", 0, 1000, null, false);
	CloudZoomSmokeSubDelete01(300);
	Wait(500);

	Move("秋葉原空", 1700, @0, 0, DxlAuto, false);

	Fade("ムービー１", 0, 1000, null, true);

	Fade("絵黒幕", 200, 0, null, false);
	DrawDelete("絵黒幕", 200, 300, null, "slide_02_01_1", true);
	Move("@絵背景立堕皇*", 0, @-200, 2000, null, true);
	SetBlur("絵背景立堕皇影", true, 2, 500, 50, false);



	CloudZoomSmokeSubDelete01(500);
	Fade("絵背景立堕皇影", 1000, 0, null, false);
	Move("@絵背景立堕皇*", 1000, @0, -227, Dxl2, true);
	Move("@絵背景立堕皇*", 600, @0, -207, AxlDxl, true);
	SetBlur("絵背景立堕皇", true, 1, 500, 100, false);
//	SetBlur("絵背景立堕皇影", true, 2, 500, 500, false);
	Delete("絵背景立堕皇影");
	MoveFTP3("@絵背景立堕皇*", 12000, 6, 5);
//	MoveFTP3stop();

	WaitKey(1000);






//	DrawDelete("絵黒幕", 300, 100, null, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100180ntn">
「では、手始めに――この街を破壊しよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵背景立ノーコ", 200, 500, 576, "cg/st/l/stノーコb_通常_sad_ex01ogm.png");
	Move("絵背景立ノーコ", 800, @0, 65, Dxl2, true);
	Move("絵背景立ノーコ", 300, @0, 70, AxlDxl, true);
	SetBlur("絵背景立ノーコ", true, 1, 500, 100, false);
	MoveFTP2("@絵背景立ノーコ", 13000, 4, 4);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100190nko">
「はかい……」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100200ntn">
「なにか不満が？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	DeleteAllSt(200,true);

	CreateTextureEX("秋葉原俯瞰", 2500, Center, Middle, "cg/bg/l/bg0108200秋葉原_俯瞰_閉店_l.jpg");
	Move("秋葉原俯瞰", 0, @-512, @0, null, true);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1000,@-500,null,false);

	Move("秋葉原俯瞰", 30000, @512, @0, null, false);
	Fade("秋葉原俯瞰", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100210ntn">
「この街は、オレを認めなかった。
　才能に気づきもせず、ただ搾取するばかり」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100220ntn">
「こんなゴミ溜めは、潰れてしまった方がいい」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100230ntn">
「違うか、ノーコ――<RUBY text="スラッシャー・ワン">切裂闇使</RUBY>」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100240nko">
「いいえ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("秋葉原俯瞰", 300, 0, null, false);
	CloudZoomDelete(300,true);
	Delete("秋葉原俯瞰");

/*
	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
*/
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100250ntn">
「なんだ？　どうした？
　具合でも悪いのか？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100260nko">
「ちがう」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100270ntn">
「……まあ、いいさ」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100280ntn">
「オレの<RUBY text="エクステンド">絶対武器</RUBY>――シュヴァルツシルト・チェインで、この街を、破壊してやるッ！！」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100290ntn">
「行くぞ！
　<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェルの力、とくと見よ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2323);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEXsub("絵背景EG01", 100, -160, -100, "cg/ef/ef似鳥光弾01.png");
	CreateTextureEXsub("絵背景EG02", 100, -46, 50, "cg/ef/ef似鳥光弾01.png");
	CreateTextureEXsub("絵背景EG03", 100, 92, -200, "cg/ef/ef似鳥光弾01.png");
	CreateTextureEXsub("絵背景EG04", 100, 238, 100, "cg/ef/ef似鳥光弾01.png");
	CreateTextureEXsub("絵背景EG05", 100, 384, -30, "cg/ef/ef似鳥光弾01.png");
	CreateTextureEXsub("絵背景EG06", 100, 530, -150, "cg/ef/ef似鳥光弾01.png");
	CreateTextureEXsub("絵背景EG07", 100, 676, 100, "cg/ef/ef似鳥光弾01.png");



	CreateSE("SE01","se戦闘_鎖02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("白フラ", 15000, "WHITE");
	Fade("白フラ", 200, 1000, null, true);

	MoveFTP2stop();
	MoveFTP3stop();

	Delete("絵背景立*");

	CloudZoomSmokeSubSet01("スモークプロセスA",200,"cg/ef/天使の羽big.png");
	CloudZoomSmokeSubStart01(2000,25,800,2500,900,-500,100,1460,700,Dxl1);

	CreateTextureEX("絵背景１", 1600, -521,-180, "cg/ev/l/ev2230似鳥堕皇降臨c_l.jpg");
	Request("絵背景１", Smoothing);
	SetBlur("絵背景１", true, 1, 500, 50, false);
	Zoom("絵背景１", 0, 1500, 1500, null, false);
	Fade("絵背景１", 0, 1000, null, true);

	#ev2230似鳥堕皇降臨c = true;

	Zoom("絵背景１", 1000, 1000, 1000, Dxl2, false);

	CreateColorEX("黒幕１", 25000, "BLACK");

	Fade("白フラ", 500, 0, null, true);

//◆演出指定：チェーンを振りかぶってネビラチェーンで町を破壊
	CreateSE("SE06","se戦闘_鎖03");
	MusicStart("SE06",0,700,0,1000,null,false);

	BezierMove("絵背景１", 1000, (-521,-180){-932,-18}{-1220, -720}{-80, -600}(-50, -20), AxlAuto, 800);


	Fade("黒幕１", 0, 1000, null, true);
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/circle_11_00_0.png", true);

	Fade("絵背景*", 0, 0, null, true);

	CreateTextureEXadd("絵色100", 2100, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateTextureEX("絵背景100", 2050, Center, Middle, "cg/ef/ef鎖飛来b.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ef/ef鎖飛来c.jpg");
	Zoom("絵背景*", 0, 2500, 2500, Dxl2, false);
	CreateTextureEX("秋葉原俯瞰大", 50, -1022, Middle, "cg/bg/l/bg0108200秋葉原_俯瞰_閉店_l.jpg");

	CreateColorEXadd("白フラ", 15000, "WHITE");

	CreateSE("SE03b","se戦闘_金属弾く02");
	CreateSE("SE02","se戦闘_切断02");
	MusicStart("SE03b",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	Zoom("絵背景100", 300, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 0, 1000, null, true);

	DrawDelete("黒幕１", 200, 100, null, "circle_11_00_1", true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Move("絵背景100", 300, @-220, @120, Dxl2, false);
	SetBlur("絵背景100", false, 3, 800, 100, false);

	Zoom("絵背景100", 300, 1500, 1500, Dxl2, false);

	CreateSE("SE01a","se戦闘_金属弾く04");
	CreateSE("SE02a","se戦闘_切断02");
	MusicStart("SE01a",0,700,0,1000,null,false);
	MusicStart("SE02a",0,700,0,1000,null,false);

	Fade("絵色100", 200, 1000, null, true);
	Fade("絵背景200", 0, 1000, null, true);
	Zoom("絵背景200", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵背景100",100,null,false);
	Fade("絵色100", 300, 0, null, true);

	Shake("絵背景200", 300, 5, 8, 0, 0, 1000, Axl1, false);
	SetBlur("絵背景200", false, 3, 800, 100, false);
	Zoom("絵背景200", 300, 1500, 1500, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);
	FadeDelete("絵背景200",100,null,false);
	Fade("秋葉原俯瞰大", 100, 1000, null, true);

	Shake_Loop_shima("@秋葉原俯瞰大","shake02");

	Fade("絵色100", 1000, 0, null, false);

	CreateSE("SE03","se環境_地鳴り02_l");
	CreateSE("SE04","se戦闘_破壊01");
	MusicStart("SE03",0,700,0,1000,null,true);
	MusicStart("SE04",0,700,0,1000,null,false);

	Move("秋葉原俯瞰大", 30000, -50, @40, Dxl2, false);


	Shake("秋葉原俯瞰大", 3000, 15, 8, 0, 0, 500, AxlDxl, false);
	Zoom("絵背景EG*", 1500, 1300, 1300, Dxl1, false);
	Rotate("絵背景EG*", 1500, @0, @0, @15000, null,false);
	Fade("絵背景EG01", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG01", 300, 0, null, false);
	Fade("絵背景EG02", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG02", 300, 0, null, false);
	Fade("絵背景EG03", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG03", 300, 0, null, false);
	Fade("絵背景EG04", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG04", 300, 0, null, false);
	Fade("絵背景EG05", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG05", 300, 0, null, false);
	Fade("絵背景EG06", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG06", 300, 0, null, false);
	Fade("絵背景EG07", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG07", 300, 0, null, false);

//	Wait(2500);
//	Fade("秋葉原俯瞰大", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{
//	St("R",700, @50,@0,"fu似鳥堕皇_通常_pride");
//	DeleteAllSt(200,false);
//	Move("@StNameR/R*", 200, @-50, @0, Dxl1, false);
//	FadeSt("R",200,true);
}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100300ntn">
「はっはっは！　はっはっはっは！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE11","se戦闘_破壊01");
	MusicStart("SE11",0,700,0,1000,null,false);
	Shake("秋葉原俯瞰大", 5000, 5, 18, 0, 0, 700, AxlDxl, false);
	Zoom("絵背景EG*", 1500, 1300, 1300, Dxl1, false);
	Rotate("絵背景EG*", 1500, @0, @0, @15000, null,false);
	Fade("絵背景EG01", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG01", 300, 0, null, false);
	Fade("絵背景EG02", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG02", 300, 0, null, false);
	Fade("絵背景EG03", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG03", 300, 0, null, false);
	Fade("絵背景EG04", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG04", 300, 0, null, false);
	Fade("絵背景EG05", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG05", 300, 0, null, false);
	Fade("絵背景EG06", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG06", 300, 0, null, false);
	Fade("絵背景EG07", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG07", 300, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100310ntn">
「どうだ？　壊れろ！　壊れてしまえ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE12","se戦闘_切断破壊");
	MusicStart("SE12",0,700,0,1000,null,false);
	CreateSE("SE13","se戦闘_破壊01");
	MusicStart("SE13",0,700,0,1000,null,false);
	Shake("秋葉原俯瞰大", 3000, 20, 10, 0, 0, 500, AxlDxl, false);
	Zoom("絵背景EG*", 1500, 1300, 1300, Dxl1, false);
	Rotate("絵背景EG*", 1500, @0, @0, @15000, null,false);
	Fade("絵背景EG01", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG01", 300, 0, null, false);
	Fade("絵背景EG02", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG02", 300, 0, null, false);
	Fade("絵背景EG03", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG03", 300, 0, null, false);
	Fade("絵背景EG04", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG04", 300, 0, null, false);
	Fade("絵背景EG05", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG05", 300, 0, null, false);
	Fade("絵背景EG06", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG06", 300, 0, null, false);
	Fade("絵背景EG07", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG07", 300, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100320ntn">
「オレを、さんざんバカにしやがって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	Move("@StNameR/R*", 200, @50, @0, Dxl1, false);
//	DeleteAllSt(200,true);

	MoveFTP3("@秋葉原空", 12000, 6, 5);

	CloudZoomSmokeSubDelete01(300);
	Fade("秋葉原俯瞰大", 300, 0, null, true);

	St("C",700, @0,@100,"bu似鳥堕皇_通常_rage");

	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100330ntn">
「なにが株だ！？　なにが借金だ！？
　なにが同人誌だ！？」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100340ntn">
「オレを苦しめるものは、全部――
　全部、破壊してやるッ！！」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100350ntn">
「ここから世界を、オレ好みに革命してやるんだッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2324);}

	DeleteAllSt(200,true);

	CreateColorEX("絵黒幕", 15000, "BLACK");


	SetVolume("SE*", 1000, 0, null);

//	TextBoxDelete(150);

	Delete("秋葉原俯瞰大");
	Delete("白フラ");
	Delete("絵背景１");
	Delete("絵色100");
	Delete("絵背景E*");

	CreateSE("SE01","se戦闘_弓矢_乱射01");
	MusicStart("SE01",400,700,0,1000,null,false);


	CloudZoomSmokeSubSet01("スモークプロセスA",200,"cg/ef/天使の羽big.png");
	CloudZoomSmokeSubStart01(500,30,500,2500,900,-400,0,1460,400,Dxl1);

	Wait(1500);

	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	CreateSE("SE01a","se戦闘_爆発03");
	MusicStart("SE01a",0,700,0,1000,null,false);

	CloudZoomSmokeSubDelete01(0);

//◆演出指定：破壊された秋葉原の全景
	CreateTextureEX("秋葉原崩壊", 50, Center, Middle, "cg/bg/bg0108400秋葉原_俯瞰_崩壊.jpg");
	Fade("秋葉原崩壊", 1500, 1000, null, true);

	Wait(3000);

	SetVolumeEX("SE*", 3000, 0, null);

	FadeDelete("絵黒幕", 2000, null,true);


	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100360ntn">
「ははは、はははははは！　ほら、見ろよ！
　街がメチャクチャだ！　跡形もない！」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100370ntn">
「これが、<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>の力だッ！」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100380ntn">
「なあ、ノーコ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Fade("秋葉原崩壊", 300, 0, null, true);

	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100390ntn">
「おい、どうした。
　おまえはやらないのか？」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100400ntn">
「かつてはオレの右腕だっただろう？
　さあ、好きなように街を破壊して――」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100410nko">
「…………」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100420ntn">
「おまえ……『イシュタムの導き』が錆びついたか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100430ntn">
「それとももしかして、<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェルに不満が？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100440nko">
「そんなことは――！」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥堕皇_通常_rage");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100450ntn">
「ならばやれ！
　さあ、やるんだノーコ！」

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_hard");
	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 3800);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100460ntn">
「次の目標は――そうだ！　あそこだな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2325);}


	TextBoxDelete(150);

	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 10000, Center, 0, "cg/bg/l/bg0603100半田明神_境内_通常_l.jpg");

	Move("絵背景100", 4000, @0, -200, null, false);
	Fade("絵背景100", 600, 1000, null, true);
	Wait(2000);
	Fade("絵背景100", 600, 0, null, true);
	Delete("絵背景100");

	CreateTextureEX("絵背景BG似鳥", 100, 200, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	SetShade("絵背景BG似鳥", MIDEUM);
	Zoom("絵背景BG似鳥", 0, 2000, 2000, null, true);

	CreateTextureEX("絵背景BGノーコ", 100, -200, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	SetShade("絵背景BGノーコ", MIDEUM);
	Zoom("絵背景BGノーコ", 0, 2000, 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100470nko">
「え……はんだみょうじん？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100480ntn">
「オレを救えない神なんて、滅んでしまえばいい！」

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_rage");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100490ntn">
「さあ、早く！
　おまえの<RUBY text="エクステンド">絶対武器</RUBY>で、屋根を真っ二つに！」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100500ntn">
「早く！　真っ二つ！　さあ、真っ二つだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100510nko">
「う…………うう……う……」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100520ntn">
「……なんだ、できないのか？」

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100530ntn">
「<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>の命令が、聞けないのか？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100540nko">
「す……すみま……せん」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100550ntn">
「ふん。後でお仕置きが必要なようだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100560ntn">
「まあ、いいさ。
　ここはオレが――」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコb_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100570nko">
「え――！？」

//あきゅん「素材：ef鎖飛来a」
{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100580ntn">
「さあ、奔れ！
　シュヴァルツシルト・チェイン！！」

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_rage");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100590ntn">
「世界の全てを、薙ぎ倒すんだッ！」

{	St("C",700, @50,@0,"buノーコa_カッター_pinch");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100600nko">
「だめっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolumeEX("@xbgm*", 1000, 0, null);


	CreateSE("SE05","se戦闘_風切り音10");
	MusicStart("SE05",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100a", 3000, Center, Middle, "cg/ef/ef鎖飛来a.jpg");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ev/ev0000ノーコカッターa.jpg");

	Fade("絵背景100a", 0, 1000, null, true);
	Shake("絵背景100a", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);

	FadeDelete("絵背景100", 100, null, false);
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Delete("絵背景100a");

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	DeleteAllSt(0,false);
	Fade("絵色100", 200, 0, null, true);

	CreateTextureEXadd("絵色100", 2000, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");

	CreateSE("SE01","se戦闘_金属弾く04");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se戦闘_金属弾く05");
	MusicStart("SE02",0,700,0,1000,null,false);



	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);


	Fade("絵色100", 200, 600, null, true);
	Fade("絵色100", 500, 0, null, true);


	MoveFTP2("@絵背景BG*", 12000, 12, 10);

	St("ML",700, @0,@0,"bu似鳥堕皇_通常_hard");
	Shake("@StNameML/ML*", 200, 10, 40, 0, 0, 500, Dxl3, false);
	Fade("絵背景BG似鳥", 200, 1000, null, false);
	FadeSt("ML",200,true);

	MoveFTP3stop();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100610ntn">
「ん……？」

{	DeleteAllSt(200,true);}
　似鳥が半田明神に向かって放ったチェーンを、ノーコのカッターナイフが止めた。

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100620ntn">
「……なんだと？」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100630ntn">
「ノーコ。なぜ、止めた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2326);}

//	TextBoxDelete(150);

	SoundPlay("@xbgm26",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	Fade("絵背景BGノーコ", 200, 1000, null, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100640nko">
「あそこには……ともだちがいる」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_hard");
	Fade("絵背景BGノーコ", 200, 0, null, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100650ntn">
「ともだち……？」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100660ntn">
「はは……ははは、ははははははは……！！」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100670ntn">
「友達？　オレ以外に、友達だって？」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	Fade("絵背景BGノーコ", 200, 1000, null, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100680nko">
「へん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_sigh");
	Fade("絵背景BGノーコ", 200, 0, null, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100690ntn">
「ああ、変だ」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100700ntn">
「<RUBY text="スラッシャー・ワン">切裂闇使</RUBY>ノーコ。
　その指は、他者を傷つけるばかり。違うか？」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100710ntn">
「おまえの孤独を知るのはオレだけ。
　おまえの刃を受け止めてやれるのは、オレだけだ」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	Fade("絵背景BGノーコ", 200, 1000, null, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100720nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_normal");
	Fade("絵背景BGノーコ", 200, 0, null, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100730ntn">
「さあ、友達なんて馬鹿なことは言わないで――」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	Fade("絵背景BGノーコ", 200, 1000, null, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100740nko">
「ちがう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100750nko">
「こんなの、まちがってる」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_normal");
	Fade("絵背景BGノーコ", 200, 0, null, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100760ntn">
「間違ってるのは、世の中だ」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	Fade("絵背景BGノーコ", 200, 1000, null, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100770nko">
「まえは、そうおもってた。でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100780nko">
「にとりも、わたしも、かわった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100790nko">
「あなたは、にせもの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100800nko">
「あなたは、だれ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100810nko">
「なぜ、こんなことを？」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_normal");
	Fade("絵背景BGノーコ", 200, 0, null, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100820ntn">
「混乱しているんだな……」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	Fade("絵背景BGノーコ", 200, 1000, null, false);
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100830nko">
「わたしはしょうき」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_sigh");
	Fade("絵背景BGノーコ", 200, 0, null, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100840ntn">
「そうか……あくまで邪魔するというのなら」

{	St("ML",700, @0,@0,"bu似鳥堕皇_通常_angry");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100850ntn">
「オレがこの手で、引導を渡してやろうッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2327);}

//	TextBoxDelete(150);

//◆ＳＥ：チェーン飛ぶヨー
	CreateTextureEXadd("絵色100", 2000, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef鎖飛来a.jpg");

	CreateSE("SE02","se戦闘_風切り音10");
	MusicStart("SE02",0,700,0,1000,null,false);



	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵背景BGノーコ", 0, 1000, null, true);


	DeleteAllSt(0,true);

	Shake("絵背景100", 200, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 200, 1200, 1200, Dxl2, false);
	Fade("絵背景100", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("MR",700, @0,@0,"buノーコa_カッター_pinch");
	Move("@StNameMR/MR*", 200, @-40, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100860nko">
「く――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆演出指定：チェーンと鎖ぶつかるヨー

	CreateSE("SE01","se戦闘_金属弾く04");
	CreateSE("SE02","se戦闘_金属衝突02");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
//	Fade("絵色100", 300, 0, null, false);
	FadeDelete("絵色100", 300, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("MR",700, @-40,@0,"buノーコa_カッター_pinch");
	Move("@StNameMR/MR*", 200, @40, @0, Dxl3, false);
	Shake("@StNameMR/MR*", 300, 0, 20, 0, 0, 500, Dxl1, false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100870nko">
「きゃっ――」

{	St("ML",700, @0,@0,"st似鳥堕皇_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100880ntn">
「全てのものを切り裂くことができるという、おまえのカッター『イシュタムの導き』」

{	St("ML",700, @0,@0,"st似鳥堕皇_通常_hard");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100890ntn">
「だがこの世界にひとつだけ、その刃が切れない物がある」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100900ntn">
「それが主人であるオレの鎖――」

{	St("ML",700, @0,@0,"st似鳥堕皇_通常_pride");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100910ntn">
「シュヴァルツシルト・チェイン」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateSE("SE01","se戦闘_風切り音05");
	MusicStart("SE01",0,700,0,1000,null,false);

//◆ＳＥ：ドガシャーン！　必死にいなして見せようとするノーコと、それを追いかける似鳥の戦い
//cono：以降の演出軽めです
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @100, @200, Axl1, false);
	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_金属弾く02");
	MusicStart("SE01",0,700,0,1000,null,false);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef045_スパーク.jpg", false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("MR",700, @-40,@100,"buノーコa_カッター_pinch");
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @40, @-100, Dxl1, false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100920nko">
「ぐ――」

{
	DeleteAllSt(200,true);
	St("MR",700, @0,@100,"st似鳥堕皇_通常_rage");
//	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-100, Dxl1, false);
	FadeSt("MR",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100930ntn">
「逃げるな！　思い出すんだ！」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100940ntn">
「オレたちは誓ったはずだ！」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100950ntn">
「気に入らない全てのものを、切り裂く！
　オレたちをあざ笑った全てのものへ、復讐を果たす！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100960ntn">
「それが、オレたちに課せられた使命」

{	St("ML",700, @-40,@0,"buノーコa_カッター_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200100970nko">
「それは、かこのこと」

{	St("MR",700, @0,@0,"st似鳥堕皇_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100980ntn">
「――へぇ」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200100990ntn">
「けど、おまえはカゴメアソビをしただろ？」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101000ntn">
「望みは叶ったのか？」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101010ntn">
「おれがこの格好になることこそ、おまえの願いだったんじゃないのか？」

{
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @-40, @100, Axl1, false);
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101020nko">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2328);}

//	TextBoxDelete(150);

//◆ＳＥ：隙が出来たところに、似鳥のチェーンが直撃する
	DeleteAllSt(200,true);


	CreateSE("SE01","se戦闘_金属弾く04");
	MusicStart("SE01",0,700,0,1000,null,false);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef鎖飛来c.jpg", false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("C",700, @-100,@0,"buノーコa_カッター_pinch");
	Shake("@StNameC/C*", 400, 0, 12, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 400, @100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101030nko">
「きゃっ！」

{	St("ML",700, @0,@0,"st似鳥堕皇_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101040ntn">
「チェックメイトだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("ML",700, @0,@0,"st似鳥堕皇_通常_normal");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101050ntn">
「オレの言うことを、聞いてくれるな？」

{	St("MR",19100, @0,@0,"fuノーコb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101060nko">
「これが……ほんとうに、わたしのねがい？」

{	St("ML",700, @0,@0,"st似鳥堕皇_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101070ntn">
「そうだ。そうに決まってる」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101080ntn">
「変わらないことこそ、おまえの本当の望みだった！」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101090ntn">
「昔のままのふたりでいたい――
　心の奥底から、それを願ってる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("MR",19100, @0,@0,"fuノーコb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101100nko">
「こころのそこから……」

{	St("ML",700, @0,@0,"st似鳥堕皇_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101110ntn">
「ああ。その願いが、叶ったんだ」

{	St("MR",19100, @0,@0,"fuノーコb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101120nko">
「…………ほんとうに？」

{	St("ML",700, @0,@0,"st似鳥堕皇_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101130ntn">
「本当だ」

{	St("MR",19100, @0,@0,"fuノーコb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101140nko">
「それじゃあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101150nko">
「あなたは、いえる？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101160nko">
「わたしを、あいしてるって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101170nko">
「こころのそこから、ちかえる？」

{
	SetVolumeEX("@xbgm*", 5000, 0, null);

	St("ML",700, @0,@0,"st似鳥堕皇_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101180ntn">
「…………」

{	St("MR",19100, @0,@0,"fuノーコb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101190nko">
「どうしたの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101200nko">
「わたしのねがいがかなったなら……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101210nko">
「わたしをあいしているって、いって」

{	St("ML",700, @0,@0,"st似鳥堕皇_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101220ntn">
「…………」

{	DeleteAllSt(200,true);
	Wait(200);
	St("C",19100, @0,@0,"fuノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101230nko">
「うそつき」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101240nko">
「わたしのねがいは、もうかなってる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2329);}

//	TextBoxDelete(150);
	SoundPlay("@xbgm09",0,450,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("C",700, @0,@0,"st似鳥堕皇_通常_pinch");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101250ntn">
「叶ってる……？」

{	St("C",19100, @0,@0,"fuノーコb_通常_normal");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101260nko">
「そう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101270nko">
「あなたのすがたをみて、わかった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101280nko">
「にとりがわたしのためにかいた、どうじんし」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101290nko">
「わたしと、にとりの、おもいで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101300nko">
「それをとりもどしたいというのが、わたしのねがい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101310nko">
「それは、うしなってはならないかこ」

{	St("C",700, @0,@0,"st似鳥堕皇_通常_pinch");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101320ntn">
「なら、なんでオレの言葉をきかない――？」

{	St("C",19100, @0,@0,"fuノーコb_通常_normal");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101330nko">
「それは、かこだから」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101340nko">
「いまは、かわるから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101350nko">
「わたしは、かわり――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101360nko">
「にとりも、かわった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101370nko">
「だから――わたしは、かこのゆめにわかれをつげる」

{
//	SetVolume("@xbgm*", 1500, 0, null);
	Fade("ムービー１", 1000, 0, null, 300);
	St("C",19100, @0,@0,"fuノーコb_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101380nko">
「さようなら」

{	St("C",700, @0,@0,"st似鳥堕皇_通常_pain");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101390ntn">
「チェッ！　なんてこった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101400ntn">
「オレの術が見破られるなんてな。
　こんなのはじめてだ」

{	St("C",700, @0,@0,"st似鳥堕皇_通常_pride");
	FadeSt("C",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/200101410ntn">
「けどな、これが幻だってわかったところで、ここから逃げ出す方法はないぞ」

{	St("C",19100, @0,@0,"fuノーコb_幽霊_normal");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101420nko">
「それはまちがい」

{	St("C",19100, @0,@0,"fuノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101430nko">
「『イシュタムのみちびき』はすべてをきりさく」

{	St("C",19100, @0,@0,"fuノーコb_通常_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101440nko">
「たとえそれが――かたちをもたない、まぼろしでも」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm*", 1000, 0, null);
	TextBoxDelete(150);


//◆ＳＥ：切断
	CreateSE("SE01","se戦闘_切断01");
	CreateSE("SE02","se戦闘_切断04");
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);


	Move("@StNameC/C*", 200, @100, @500, Axl1, false);
	DeleteAllSt(50,true);
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
//	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
//	Delete("絵背景100");
	Fade("絵色100", 200, 0, null, true);

	MoveFTP2stop();

	Delete("ムービー１");
	Delete("絵背景BG*");
	Delete("秋葉原空");
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/200101450nko">
「きる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSPadd("絵色200", 1500, "WHITE");
	CreateTextureEXadd("絵背景カッター1", 3000, Center, Middle, "cg/ef/efカッター剣閃a_ogm01.jpg");
	CreateTextureSP("絵背景カッター2", 2000, Center, Middle, "cg/ef/efカッター剣閃a_ogm02.png");
	CreateTextureSP("絵背景カッター3", 2000, Center, Middle, "cg/ef/efカッター剣閃a_ogm03.png");
	Request("絵背景カッター", Smoothing);


	Delete("絵背景100");

	CreateSE("SE01","se擬音_光迸る");
	CreateSE("SE02","se擬音_フラッシュバック");
	MusicStart("SE01",0,700,0,1000,null,false);


	OnBG(10,"bg0104300秋葉原_万世橋_雪");
	FadeBG(0,true);

	Zoom("絵背景カッター1", 3000, 3000, 3000, AxlDxl, false);
	Move("絵背景カッター1", 3000, @220, @-220, AxlDxl, false);
	Zoom("絵背景カッター2", 3000, 1400, 1400, AxlDxl, false);
	Zoom("絵背景カッター3", 3000, 1400, 1400, AxlDxl, false);
	Fade("絵背景カッター1", 3000, 1000, AxlDxl, false);
	Move("絵背景カッター2", 3000, @-80, @40, AxlDxl, false);
	Move("絵背景カッター3", 3000, @300, @-100, AxlDxl, true);

	FadeDelete("絵背景カッター1", 1000, null, true);
	Fade("絵色200", 1000, 500, null, true);

	WaitKey(500);

	MusicStart("SE02",0,700,0,1000,null,false);
	FadeDelete("絵色200", 500, null, false);
	Move("絵背景カッター2", 500, @-500, @500, Axl2, false);
	Move("絵背景カッター3", 500, @800, @-500, Axl2, true);

//	WaitAction("SE02", null);


	Wait(1000);
	Delete("絵背景*");

	SetVolumeEX("SE*", 2000, 0, Axl2);

	Wait(2000);

	EndScene();
}
