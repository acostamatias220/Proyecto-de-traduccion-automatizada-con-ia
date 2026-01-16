
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2240似鳥_ノーコ.nss_MAIN
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

	if($CharaName=="似鳥"){
		$GameName = "ba2248沙紅羅_似鳥_ノーコ.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "ba2248沙紅羅_似鳥_ノーコ.nss";
	}else{
		$GameName = "ba2248沙紅羅_似鳥_ノーコ.nss";

}

}

scene ba2240似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="930">
////////////header////////////
//file name "ba2240似鳥_ノーコ.nss"
//title "ほんとうののぞみ"
//previous "ba2239似鳥_ノーコ.nss"


////////////footer////////////
//next "似鳥" "ba2248沙紅羅_似鳥_ノーコ.nss"
//next "ノーコ" "ba2248沙紅羅_似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	OnBG(10,"bg2401100空_上空_通常");
	FadeBG(0,true);


//◆演出指示：秋葉原上空でのバトル
//◆演出指示：避難があったので街を結構破壊してもＯＫ

//◆ＥＶ："ev/ev2230似鳥堕皇降臨.txt"

	CreateTextureEX("絵背景１", 1600, center, -570, "cg/ev/l/ev2230似鳥堕皇降臨a_l.jpg");
	CreateTextureEX("絵背景２", 1500, 0, 0, "cg/ev/ev2230似鳥堕皇降臨a.jpg");
//	Fade("絵背景２", 0, 1000, null, true);
	Request("絵背景１", Smoothing);

/*

//窓準備
	CreateAXLWindowEX("絵窓", "Y", 2600, 100, 300, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 2520, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	SetShade("絵窓/絵演背景", MEDIUM);
	Move("絵窓/絵演背景", 0, @0, @0, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 2530, center, middle, "cg/fu/fu似鳥堕皇_通常_rage.png");
	CreateTextureEX("絵窓/絵演立絵2", 2530, center, middle, "cg/fu/fu似鳥堕皇_通常_pride.png");
	Move("絵窓/絵演立*", 0, @0, @-300, null, true);

//動作
	Fade("絵窓/絵演立絵", 0, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 0, 1000, Dxl2, true);
*/

	St("C",700, @0,@0,"fu似鳥堕皇_通常_rage");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);
	SetVolumeEX("@x*", 4000, 0, NULL);

{	ClockPass(2240);}

/*
//タチ絵スイッチ
	Fade("絵窓/絵演立絵", 300, 0, null, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, false);
*/


	St("C",700, @0,@0,"fu似鳥堕皇_通常_pride");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200010nki">
「ふはは、ふはははははは！
　<RUBY text="カイザー・オブ・ダークネス">堕皇</RUBY>ルシフェルの前に、ひれ伏せタヌキッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);

/*
//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);

	Delete("@絵窓*");
*/


//左窓準備EX
	CreateAXLWindowEX("絵窓", "X", 1600, 100, 300, false);
	WindowAXLZoom("絵窓", "X", 0, 0, null, false);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Zoom("絵窓/絵演背景", 0, 1500, 1500, Dxl2, true);
	SetShade("絵窓/絵演背景", heavy);


//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg2/fu/fuノーコa_通常_fear.png");
	Move("絵窓/絵演立*", 0, @-182, @-150, null, true);

	Wait(16);
	Delete("絵板写");

//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "X", 200, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200020nko">
「にとり……おもいだしたの？　ぜんせのきおく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//収納
	WindowAXLZoom("絵窓", "X",200, 0, Axl2, true);
	Delete("@絵窓*");

	SoundPlay("@xbgm19",0,450,true);
//	Zoom("絵背景１", 0, 3000, 3000, null, true);
//	Move("絵背景１", 0, -482, 356, Dxl2, false);
//	Move("絵背景１", 3000, @0, @20, Dxl2, false);
//	Fade("絵背景１", 500, 1000, null, true);


	St("C",700, @0,@0,"fu似鳥堕皇_通常_sigh");

	CreateSE("SE01","se擬音_ギャグ_キラーン01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,true);
	WaitPlay("SE01", 4000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200030nki">
「ああ。待たせたな」

{
	St("C",700, @0,@0,"fu似鳥堕皇_通常_angry");
	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200040nki">
「もうおまえを泣かせたりはしない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreatePlainSP("絵板写", 5000);
	Wait(16);

	FadeDelete("絵板写", 300, null, true);

	CreateColorEXadd("絵額100", 1500, "WHITE");
	CreateColorEXadd("絵額200", 1500, "WHITE");
	Zoom("絵額100", 0, 20, 3000, null, true);
	Zoom("絵額200", 0, 3000, 20, null, true);
	Move("絵額*", 0, @-20, @-100, null, true);


	CreateMovieEX("絵オムービー１", 1000, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Request("絵オムービー１", AddRender);

	Zoom("絵オムービー１", 0, 3250, 2500, null, true);
	Fade("絵オムービー１", 0, 300, null, false);

	CreateTextureEXadd("絵背景EF", 1000, 39, 256, "cg/ef/bu宮本G_変化_風呂_目光.png");
	Zoom("絵背景EF", 0, 2000, 2000, null, true);

	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE01a","se戦闘_弓矢_光の矢");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,2000,null,false);

	St("C",700, @0,@0,"fu似鳥堕皇_通常_rage");
	Rotate("絵額*", 700, @0, @0, @1800, Axl2,false);

	Fade("絵額*", 100, 1000, null, false);
	Fade("絵背景EF", 100, 1000, null, false);
	FadeSt("C",200,true);

	FadeDelete("絵額*", 500, null, false);

	FadeDelete("絵背景EF", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200050nki">
「行くぞっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//収納
/*
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");
*/
	CreateSE("SE01","se戦闘_鎖02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("白フラ", 15000, "WHITE");


	Zoom("@StNameC/C*", 150, 1100, 1100, Dxl2, false);
	Fade("白フラ", 150, 1000, null, true);


	Delete("絵オムービー１");

	CreateTextureEX("絵背景１", 1600, -521,-180, "cg/ev/l/ev2230似鳥堕皇降臨b_l.jpg");
	Request("絵背景１", Smoothing);
	SetBlur("絵背景１", false, 3, 500, 100, false);
	Zoom("絵背景１", 0, 1500, 1500, null, false);
	Fade("絵背景１", 0, 1000, null, true);
	#ev2230似鳥堕皇降臨b = true;

	Zoom("絵背景１", 1000, 1000, 1000, Dxl2, false);

	Fade("白フラ", 500, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200060nki">
「シュヴァルツシルト・チェイン！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：ネビュラチェーン

	CreateColorEX("黒幕１", 25000, "BLACK");

	CreateSE("SE06","se戦闘_鎖03");
	MusicStart("SE06",0,700,0,1000,null,false);

	BezierMove("絵背景１", 1000, (-521,-180){-932,-18}{-1220, -720}{-80, -600}(-50, -20), AxlAuto, 800);

	Fade("黒幕１", 0, 1000, null, true);
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/circle_11_00_0.png", true);

	DeleteAllSt(0,false);
	Fade("絵背景*", 0, 0, null, true);

	CreateTextureEXadd("絵色100", 2100, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateTextureEX("絵背景100", 2050, Center, Middle, "cg/ef/ef鎖飛来b.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ef/ef鎖飛来c.jpg");
	Zoom("絵背景*", 0, 2500, 2500, Dxl2, false);
	CreateTextureEX("タヌ", 1500, -500, -60, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");

	CreateColorEXadd("白フラ", 15000, "WHITE");

	CreateSE("SE01","se戦闘_金属弾く02");
	CreateSE("SE02","se戦闘_切断02");
	MusicStart("SE01",0,700,0,1000,null,false);
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
	Fade("タヌ", 100, 1000, null, true);
	Fade("絵色100", 1000, 0, null, false);

	CreateSE("SE03","se戦闘_金属弾く05");
	CreateSE("SE07","se戦闘_倒壊02");
	MusicStart("SE03",0,700,0,1000,null,false);
	MusicStart("SE07",0,700,0,1000,null,false);

	Move("タヌ", 3000, @200, @40, Dxl2, false);

	Shake("タヌ", 3000, 15, 8, 0, 0, 500, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/400200070tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Fade("タヌ", 0, 0, null, false);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	SetVolumeEX("@S*", 2000, 0, NULL);


{	ClockPass(2241);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St2("ML",19010, @-50,@0,"fuノーコa_通常_shock","cg2/",".png");
	Move("@StNameML/ML*", 1000, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200080nko">
「にとり……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200090nko">
「これが、にとりのほんとうのちから……」

{
	Move("@StNameML/ML*", 1000, @50, @0, Axl2, false);
	DeleteAllSt(500,false);
	St("MR",700, @50,@0,"bu似鳥堕皇_通常_normal");
	Move("@StNameMR/MR*", 1000, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200100nki">
「おまえが、くれたんだろ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200110nko">
「え？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200120nki">
「あの同人誌を、現実にする」

{
//	St("MR",700, @0,@0,"bu似鳥堕皇_通常_normal");
//	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200130nki">
「これが、おまえの本当の望み――」

{	DeleteAllSt(200,true);
	St("MR",19010, @50,@0,"fu似鳥堕皇_通常_sigh");
	Move("@StNameMR/MR*", 1000, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200140nki">
「そしてそれが、オレの本当の望み」

{	St("MR",19010, @0,@0,"fu似鳥堕皇_通常_smile");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200150nki">
「アザナエルの力、本物だな」

{	DeleteAllSt(200,false);
	St2("ML",19010, @0,@0,"fuノーコa_通常_cry","cg2/",".png");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200160nko">
「……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE02","se戦闘_風切り音10");


//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 60, 360, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, -100, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");
	CreateTextureSP("絵窓/絵演立1", 1530, 300, 0, "cg/bu/l/buノーコa_通常_normal_x01.png");
	CreateTextureSP("絵窓/絵演立2", 1520, 30, -240, "cg/st/l/st似鳥堕皇_通常_normal_s全身.png");
	Request("絵窓/絵演立*", Smoothing);
	Zoom("絵窓/絵演立1", 0, 50,50, null, true);
	Zoom("絵窓/絵演立2", 0, 50, 50, null, true);
	SetBlur("絵窓/絵演立1", true, 2, 500, 200, false);
	SetBlur("絵窓/絵演立2", true, 2, 500, 200, false);


	Move("絵窓/絵演立2", 10000, @-40, @-50, Dxl3, false);
	Move("絵窓/絵演立1", 10000, @-20, @-50, Dxl3, false);
	Move("絵窓/絵演背景", 10000, @0, @+100, Dxl3, false);


	MusicStart("SE01",0,700,0,1000,null,false);

//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

	MusicStart("SE02",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆音声指示：遠くから
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/ba22/400200170e05">
「なんだアレ！？　コスプレ？　空飛んでるし！」

//◆音声指示：遠くから
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/ba22/400200180e06">
「あれ？　オレの記憶が確かなら、あれはこの同人誌に載ってた――」

//◆音声指示：遠くから
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/ba22/400200190e05">
「どれどれ、写真写真……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",19010, @50,@0,"fu似鳥堕皇_通常_rage");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200200nki">
「おまえら、いいから逃げろッ！！」

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200210nki">
「ったく！　こっちはただでさえ恥ずかしいってのに」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200220nko">
「こういうの、いや？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_pain");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200230nki">
「正直、逃げ出したいくらい恥ずかしい」

{	St("MR",700, @0,@0,"bu似鳥堕皇_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200240nki">
「でも――思い出した」

{	St("MR",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200250nki">
「コイツは、オレが逃げちゃいけない運命だったんだ」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200260nko">
「ひらきなおった？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200270nki">
「ひらきなおって世界が救えて！」

{	St("MR",700, @0,@0,"bu似鳥堕皇_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200280nki">
「おまえの思いも受け取れるなら！」

//★ wam井野 似鳥fu立ち絵をつかうと少し重くなってテンポが悪くなるかもしれません。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 100, 1000, null, true);
	Zoom("@OnBG*", 0, 2000, 2000, null, true);
	St("MR",700, @0,@0,"fu似鳥堕皇_通常_pride");
	FadeSt("MR",0,true);
	FadeDelete("黒幕１", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200290nki">
「後悔する理由なんてないね！！」

{
	DeleteAllSt(300,false);
	Wait(200);
	St2("ML",19010, @-100,@0,"fuノーコa_通常_shy","cg2/",".png");
	Move("@StNameML/ML*", 800, @100, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200300nko">
「にとり……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2242);}

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 19020, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Zoom("@OnBG*", 0, 1000, 1000, null, true);

	Request("タヌ", Smoothing);

	Fade("タヌ", 0, 1000, null, false);
	DeleteAllSt(0,false);

	Move("タヌ", 0, -60, -500, null, false);

	Shake("タヌ", 2000, 0, 2, 0, 0, 500, null, false);

	CreateSE("SE01","se戦闘_倒壊02");
	MusicStart("SE01",0,700,0,1000,null,false);


	DrawDelete("絵黒幕", 300, 100, null, "slide_02_01_1", true);


	Move("タヌ", 1500, @-200, @-20, AxlDxl, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/400200310tsr">
「ぐおおおおおおおおお！！」

　大狸が、大地に大きく脚を広げる。

{
	Move("タヌ", 1000, @0, @50, Axl1, true);

	CreateSE("SE05","se環境_地鳴り03");
	MusicStart("SE05",0,500,0,1000,null,false);

	Shake("タヌ", 2000, 0, 20, 0, 0, 500, null, false);
}
　反動に備え腰を落として両手を目一杯広げると、鼓となるだろう腹が風船のように膨らんだ。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Move("タヌ", 0, -600, 0, Axl1, true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	CreateSE("SE04","se擬音_ギャグ_ぷにょぷにょ");
	MusicStart("SE04",0,700,0,1000,null,false);
	Move("タヌ", 1500, @180, @-170, Axl1, false);
	Zoom("タヌ", 2000, 1200, 1200, Dxl1, 1700);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Fade("タヌ", 0, 0, null, false);
	CloudZoomSmokeSubSet01EX("スモークプロセスA",2500,"cg/ef/天使の羽big.png");

	DrawDelete("絵黒幕", 300, 100, null, "slide_02_01_1", true);

	St("MR",700, @-100,@0,"bu似鳥堕皇_通常_pinch");
	Move("@StNameMR/MR*", 500, @100, @0, Dxl2, false);

	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200320nki">
「あんまり、時間かけてもいられないな」

{
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200330nki">
「一気に決着つけるか！」

{
	DeleteAllSt(200,false);
	St("ML",700, @-100,@0,"buノーコa_通常_normal");
	Move("@StNameML/ML*", 500, @100, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200340nko">
「はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@x*", 2000, 0, NULL);
	TextBoxDelete(150);

	CloudZoomSmokeSet02("スモークプロセスB",500,"cg/ef/天使の羽big.png");


	SoundPlay("@xbgm01_noint",0,450,true);

	SceneOut(5000, 200, "slide_01_01_0");

	CreateMovie("ムービー１", 500, 0, 0, true, true, "dx/mvk100.ngs");
	Zoom("ムービー１", 0, 20000, 5000, Dxl1, false);


	DeleteAllSt(0,false);
	Zoom("@OnBG*", 0, 2000, 2000, null, true);
	SceneIn(200, "slide_01_01_1");

	CreateColorEXadd("白フラ", 15000, "WHITE");


	CloudZoomSmokeSubStart01EX(1800,100,1000,1000,2500,1900,1200,300,-1024,876,Dxl1);
	CreateSE("SE06","se戦闘_金属弾く04");
	MusicStart("SE06",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_rage");
	Fade("白フラ", 0, 1000, null, true);
	Fade("白フラ", 700, 0, null, false);
	Move("@StNameMR/MR*", 500, @-400, @0, Dxl2, false);
	FadeSt("MR",200,true);


//★ wam井野 デッド・ノー・アンジェラス、ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nssの最後に使うときよりも演出軽めにしてあります。10/11/17

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200350nki">
「シュヴァルツシルト・チェイン――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE07","se戦闘_刃物構える");
	CreateSE("SE08","se戦闘_カッター_刃出す02早いa");

	CloudZoomSmokeStart02(1500,100,1000,2500,1900,-1044,200,1224,-600,Dxl1);
	MusicStart("SE07",0,700,0,1000,null,false);
	MusicStart("SE08",0,700,0,1000,null,false);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	Fade("白フラ", 0, 1000, null, true);
	Fade("白フラ", 700, 0, null, false);
	Move("@StNameML/ML*", 500, @400, @0, Dxl2, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200360nko">
「イシュタムのみちびき――」

{	DeleteAllSt(200,false);
	St("MR",19010, @-300,@0,"fu似鳥堕皇_通常_rage");
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200370nki">
「繋ぐ鎖に――」

{	DeleteAllSt(200,false);
	St("ML",19010, @300,@0,"fuノーコa_幽霊_normal");
	Zoom("@StNameML/ML*", 0, 700, 700, null, true);
	Move("@StNameML/ML*", 0, @0, @80, Dxl1, false);
	Request("@StNameML/ML*", Smoothing);
	Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200380nko">
「たつやいば――」

{	DeleteAllSt(200,false);
	St("MR",700, @-100,@0,"bu似鳥堕皇_通常_angry");
	Move("@StNameMR/MR*", 300, @200, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200390nki">
「ふたつが合わさり――」

{	St("ML",700, @100,@0,"buノーコa_通常_normal");
	Move("@StNameML/ML*", 300, @-200, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200400nko">
「ひとつになる――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2243);}



	St("MR",700, @100,@0,"bu似鳥堕皇_通常_rage");
	St("ML",700, @-100,@0,"buノーコa_カッター_angry");
	FadeSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200410nki">
「行け――」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ノーコ】
//<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200420nko">
//「ゆけ――」

</PRE>
	SetText();
	AddText(1,"「行け――」","似鳥戴斗","ba22/400200410nki",false,false,1000);
	AddText(2,"「ゆけ――」","ノーコ","ba22/400200420nko",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――

	CreateSE("SE11","se動作_ジャンプ");
	CreateSE("SE11a","se戦闘_風切り音10");

	CreateColorEX("絵黒EF", 15000, "BLACK");
	CreateColorEX("絵白EF", 15000, "WHITE");
	Zoom("絵黒EF", 0, 400, 2000, null, true);
	Zoom("絵白EF", 0, 400, 2000, null, true);
	Move("絵黒EF", 0, @200, @0, null, true);
	Move("絵白EF", 0, @-200, @0, null, true);

	Fade("絵黒EF", 0, 1000, null, true);
	Fade("絵白EF", 0, 1000, null, true);


	MusicStart("SE11",0,700,0,1000,null,false);
	MusicStart("SE11a",0,700,0,1000,null,false);
	Zoom("@StNameML/ML*", 300, 0, 2000, Dxl2, false);
	Zoom("@StNameMR/MR*", 300, 0, 2000, Dxl2, false);
	Move("絵黒EF", 300, 242, @0, Dxl2, false);
	Move("絵白EF", 300, -253, @0, Dxl2, false);
	Zoom("絵黒EF", 300, 0, 2000, Dxl2, false);
	Zoom("絵白EF", 300, 0, 2000, Dxl2, false);
	DeleteAllSt(300,true);


	CreateColorEX("絵黒幕", 25000, "BLACK");

	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 100, 0, 1000, 0, null, "cg/data/slide_02_01_1.png", true);

	CloudZoomSmokeSubDelete01EX(0);
	CloudZoomSmokeDelete02(0);
	Delete("絵黒EF");
	Delete("絵白EF");

	CreateTextureSP("スラッシュ", 4000, Center, Middle, "cg/mask/ciスラッシュ_05_01z.png");

	Shake("空２", 1, 5, 2, 0, 0, 500, AxlDxl, false);

	Delete("空２");
	CreateMovieEX("絵オムービー１", 17000, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Request("絵オムービー１", SubRender);

	Zoom("絵オムービー１", 0, 3250, 2500, null, true);
	Fade("絵オムービー１", 0, 300, null, false);


	CreateStencil("マスク右",16100,center,Middle,128,"cg/mask/ciスラッシュ_05_01.png",false);

	CreateColorSP("マスク右/絵演色右", 1450, "#550055");
	CreateColorSP("絵演色左", 1300, "#550055");

	CreateTextureSPmul("マスク右/絵演背景", 1460, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSPmul("絵背景100", 1350, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	CreateTextureEX("マスク右/キャラ似鳥", 1470, Center, Middle, "cg/fu/fu似鳥堕皇_通常_rage.png");
	CreateTextureEX("キャラノーコ", 1370, Center, Middle, "cg/fu/fuノーコa_カッター_angry.png");

	Zoom("キャラノーコ", 0, 700, 700, null, true);

	Move("マスク右/キャラ似鳥", 0, @200, @-150, Dxl1, false);
	Move("キャラノーコ", 0, @-300, @0, Dxl1, false);

	Request("キャラノーコ", Smoothing);

	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Move("絵背景100", 0, @-400, @0, null, true);


	Fade("マスク右/絵背景右", 300, 1000, null, false);
	Fade("絵背景100", 0, 1000, null, true);

	DrawDelete("絵黒幕", 100, 0, null, "slide_01_01_1", true);

	Move("マスク右/キャラ似鳥", 300, @50, @-100, Dxl1, false);
	Move("キャラノーコ", 300, @-50, @-100, Dxl1, false);

	Fade("マスク右/キャラ似鳥", 300, 1000, null, false);

	Fade("キャラノーコ", 300, 1000, null, true);

	CreateSE("SE09","se戦闘_氷砕ける");
	MusicStart("SE09",0,700,0,1000,null,false);


	Fade("白フラ", 100, 1000, null, true);
	Fade("白フラ", 700, 0, null, false);


{
//	St("C",700, @0,@0,"bu似鳥堕皇_通常_rage");
//	FadeSt("C",200,true);}
//	St("C",700, @0,@0,"buノーコa_カッター_rage");
//	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200430nki">
「デッド・ノー・アンジェラスッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ノーコ】
//<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200440nko">
//「デッド・ノー・アンジェラスッ！！」

</PRE>
	SetText();
	AddText(1,"「デッド・ノー・アンジェラスッ！！」","似鳥戴斗","ba22/400200430nki",false,false,1000);
	AddText(2,"「デッド・ノー・アンジェラスッ！！」","ノーコ","ba22/400200440nko",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE12","se戦闘_爆発01");
	MusicStart("SE12",0,700,0,1000,null,false);

	Fade("絵オムービー１", 200, 0, null, false);
	Fade("白フラ", 200, 1000, null, true);
	Delete("絵オムービー１");


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 400, 0, 1000, 100, Axl2, "cg/data/circle_01_00_0.png", true);

	Fade("白フラ", 0, 0, null, false);
	Zoom("タヌ", 0, 2000, 2000, null, true);
	Move("タヌ", 0, -600, 0, Axl1, true);
	Fade("タヌ", 0, 1000, null, true);
	DeleteAllSt(0,false);
	Fade("絵背景1000", 0, 0, null, true);
	Fade("マスク右/絵背景右", 0, 0, null, false);
	Fade("マスク右/キャラ恵那*", 0, 0, null, false);
	Fade("絵背景100", 0, 0, null, true);
	Fade("キャラ千秋*", 0, 0, null, true);
	Fade("絵演色*", 0, 0, null, true);


	Shake("タヌ", 5000, 5, 15, 0, 0, 1000, Dxl1, false);

	Delete("スラ*");
	Delete("マスク*");
	Delete("キャラ*");
	Delete("絵背景*");
	Delete("絵演色*");

	Move("タヌ", 1500, -600, -20, Dxl1, false);
	Zoom("タヌ", 1500, 1000, 1000, Dxl1, false);

	DrawDelete("絵黒幕", 300, 100, Axl2, "circle_02_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/400200450tsr">
「ぐおおおおおおおおお――――ッ！！」

//◆ＳＥ：腹鼓

{

	Shake("タヌ", 4000, 20, 10, 0, 0, 500, null, false);
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	CreateSE("SE02","se戦闘_風切り音複数_L");
	CreateSE("SE03","se戦闘_爆発01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateTextureEXadd("タヌ２", 1500, -500, -60, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Zoom("タヌ２", 0, 1000, 1000, null, true);
	Move("タヌ２", 0, -600, 0, Axl1, true);

	Shake("タヌ２", 4000, 30, 40, 0, 0, 500, Dxl1, false);

	Fade("タヌ２", 0, 700, null, true);
	Zoom("タヌ２", 300, 1500, 1500, null, false);
	Fade("タヌ２", 300, 0, null, true);

	Fade("タヌ２", 0, 700, null, true);
	Zoom("タヌ２", 0, 1000, 1000, null, true);
	Zoom("タヌ２", 300, 1500, 1500, null, false);
	Fade("タヌ２", 300, 0, null, true);

	Fade("タヌ２", 0, 700, null, true);
	Zoom("タヌ２", 0, 1000, 1000, null, true);
	Zoom("タヌ２", 300, 1500, 1500, null, false);
	Fade("タヌ２", 300, 0, null, true);

	Fade("タヌ２", 0, 700, null, true);
	Zoom("タヌ２", 0, 1000, 1000, null, true);
	Zoom("タヌ２", 3000, 1500, 1500, null, false);
	Fade("タヌ２", 3000, 0, null, true);


	CreateSE("SE13","se戦闘_倒壊03");
	MusicStart("SE13",0,700,0,1000,null,false);

	Fade("白フラ", 800, 1000, null, true);

}

　それまでになく強力な衝撃波が迎え撃った。


{
	CreateSE("SEL01","se戦闘_銀星号_精神汚染波_L");
	MusicStart("SEL01",0,700,0,750,null,true);

	CreateMovieEX("ムービー１", 1000, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Zoom("ムービー１", 0, 4000, 2500, null, true);
	Fade("ムービー１", 0, 1000, null, false);

	CreateTextureEX("空２", 1100, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Zoom("空２", 0, 1100, 1100, null, true);
	Fade("空２", 0, 400, null, false);
	Shake("空２", 900000, 5, 2, 0, 0, 1000, AxlDxl, false);

	Fade("タヌ*", 0, 0, null, true);

	Fade("白フラ", 2000, 0, null, false);

	St("C",700, @0,@0,"buノーコa_カッター_pinch");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 3000, 10, 0, 0, 0, 500, null, false);
}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200460nko">
（くっ――）

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_pinch");
	Shake("@StNameC/C*", 3000, 10, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200470nki">
（ノーコ……堪えろ！）

{	St("C",700, @0,@0,"buノーコa_カッター_pinch");
	Shake("@StNameC/C*", 3000, 10, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200480nko">
（はい！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2244);}

//	TextBoxDelete(150);

	DeleteAllSt(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　互いに重なり合った身体の中で、意思が疎通する。

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200490nki">
（一瞬でも気を許すな！　油断すると――）

{
	SetVolumeEX("@x*", 3000, 0, NULL);

	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200500nko">
（あれ？）

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200510nki">
（ノーコ！）

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200520nko">
（かれのこえ……しってる）


{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200530nko">
（わたしも、このこえでないた）


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200540nko">
（このこえで、ずっと、ずっと――）

{	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200550nko">
（にとりをよんでた）

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200560nki">
（耳を傾けるなッ！）

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200570nki">
（同情したところで、過去はもう――）


{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200580nko">
（そういうつもりじゃない）

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200590nki">
（いいから！）

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200600nki">
（オレの鎖に、力を重ねるんだ！）

{	SetVolumeEX("SE*", 4000, 0, null);
	St("C",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200610nko">
（……うん）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{
	St("MR",700, @40,@0,"bu似鳥堕皇_通常_rage");
	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("MR",200,false);
	FadeSt("ML",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200620nki">
「行け――」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ノーコ】
//<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200630nko">
//「ゆけ――」

</PRE>
	SetText();

	AddText(1,"「行け――」","似鳥戴斗","ba22/400200620nki",false,false,1000);
	AddText(2,"「ゆけ――」","ノーコ","ba22/400200630nko",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_金属弾く02");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreatePlainEX("揺用", 2005);
	SetBlur("揺用", true, 2, 500, 50, false);
	CreateColorEX("絵黒幕", 25000, "BLACK");

	Fade("揺用", 0, 1000, null, true);
	Zoom("揺用", 200, 5000, 5000, Axl1, 100);

	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 100, 0, 1000, 0, null, "cg/data/circle_01_00_0.png", true);

	Delete("揺用");
	CreateTextureSP("スラッシュ", 4000, Center, Middle, "cg/mask/ciスラッシュ_05_01z.png");

	Shake("空２", 1, 5, 2, 0, 0, 500, AxlDxl, false);

	Delete("空２");
//	Delete("ムービー１");

	CreateStencil("マスク右",16100,center,Middle,128,"cg/mask/ciスラッシュ_05_01.png",false);

	CreateColorSP("マスク右/絵演色右", 1450, "#550055");
	CreateColorSP("絵演色左", 1300, "#550055");

	CreateTextureSPmul("マスク右/絵演背景", 1460, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSPmul("絵背景100", 1350, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	CreateTextureEX("マスク右/キャラ似鳥", 1470, Center, Middle, "cg/fu/fu似鳥堕皇_通常_rage.png");
	CreateTextureEX("キャラノーコ", 1370, Center, Middle, "cg/fu/fuノーコa_カッター_angry.png");

	Zoom("キャラノーコ", 0, 700, 700, null, true);

	Move("マスク右/キャラ似鳥", 0, @200, @-150, Dxl1, false);
	Move("キャラノーコ", 0, @-300, @0, Dxl1, false);

	Request("キャラノーコ", Smoothing);

	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Move("絵背景100", 0, @-400, @0, null, true);


	Fade("マスク右/絵背景右", 300, 1000, null, false);
	Fade("絵背景100", 0, 1000, null, true);

	DrawDelete("絵黒幕", 100, 0, null, "circle_01_00_1", true);

	Move("マスク右/キャラ似鳥", 300, @50, @-100, Dxl1, false);
	Move("キャラノーコ", 300, @-50, @-100, Dxl1, false);

	Fade("マスク右/キャラ似鳥", 300, 1000, null, false);

	Fade("キャラノーコ", 300, 1000, null, true);

	Fade("白フラ", 0, 1000, null, true);
	Fade("白フラ", 700, 0, null, false);



{
//	St("C",700, @0,@0,"bu似鳥堕皇_通常_rage");
//	St("C",700, @0,@0,"buノーコa_カッター_angry");
//	FadeSt("C",200,true);
//	FadeSt("C",200,true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155a]
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200640nki">
「デッド・ノー・アンジェラスッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ノーコ】
//<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200650nko">
//「デッド・ノー・アンジェラスッ！！」

</PRE>
	SetText();
	AddText(1,"「デッド・ノー・アンジェラスッ！！」","似鳥戴斗","ba22/400200640nki",false,false,1000);
	AddText(2,"「デッド・ノー・アンジェラスッ！！」","ノーコ","ba22/400200650nko",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――

{	ClockPass(2245);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155b]
　ふたりの武器は重なり合い、１本の巨大な意思に――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：轟音

	TextBoxDelete(150);

	Fade("ムービー１", 0, 1000, null, false);

	Fade("白フラ", 2000, 0, null, false);

	CreateSE("SE09","se戦闘_爆破水しぶき");
	CreateSE("SE09a","se戦闘_弓矢_乱射01");
	CreateSE("SE09b","se戦闘_風切り音10");
	MusicStart("SE09",0,1200,0,1000,null,false);


	CreateColorSP("絵白幕", 25000, "WHITE");
	DrawTransition("絵白幕", 400, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("白フラ", 0, 0, null, false);

	Move("タヌ", 0, @180, @-170, Axl1, false);
	Zoom("タヌ", 0, 700, 700, Dxl1, true);
	Fade("タヌ", 0, 1000, null, true);
	DeleteAllSt(0,false);
	Fade("絵背景1000", 0, 0, null, true);
	Fade("マスク右/絵背景右", 0, 0, null, false);
	Fade("マスク右/キャラ似鳥*", 0, 0, null, false);
	Fade("絵背景100", 0, 0, null, true);
	Fade("キャラ*", 0, 0, null, true);
	Fade("絵演色*", 0, 0, null, true);

	CreatePlainSP("揺用", 15000);

	Delete("スラ*");
	Delete("マスク*");
	Delete("キャラ*");
	Delete("絵背景*");
	Delete("絵演色*");
	Fade("揺用", 0, 0, null, true);
	Delete("揺用");

	Shake("タヌ", 30000, 20, 30, 0, 0, 500, null, false);
	Zoom("タヌ", 0, 1100, 1100, Axl1, true);
	Fade("タヌ", 0, 0, null, true);
	MoveFTP3("@タヌ", 2000, 6, 5);


	CreateColorEX("絵黒EF", 15000, "BLACK");
	CreateColorEXadd("絵白EF", 15000, "WHITE");
	Zoom("絵黒EF", 0, 400, 2000, null, true);
	Zoom("絵白EF", 0, 400, 2000, null, true);
	Move("絵黒EF", 0, @200, @0, null, true);
	Move("絵白EF", 0, @-200, @0, null, true);

	Fade("絵黒EF", 0, 1000, null, true);
	Fade("絵白EF", 0, 1000, null, true);



	MusicStart("SE09b",0,1000,0,1000,null,false);
	DrawDelete("絵白幕", 300, 100, Dxl1, "circle_01_00_1", false);

	Move("絵黒EF", 500, @-200, @0, Dxl2, false);
	Move("絵白EF", 500, @200, @0, Dxl2, false);
	Zoom("絵黒EF", 500, 40, 5000, Dxl2, false);
	Zoom("絵白EF", 500, 20, 5000, Dxl2, true);

	MusicStart("SE09a",0,1000,0,1000,null,false);
	Zoom("絵黒EF", 300, 600, 5000, Axl2, false);
	Zoom("絵白EF", 300, 500, 5000, Axl2, false);
	Rotate("絵黒EF", 800, @0, @0, @3600, Axl2,false);
	Rotate("絵白EF", 800, @0, @0, @3600, Axl2,600);

	SetVolumeEX("SE09a", 500, 0, null);

	FadeDelete("絵黒EF", 200, null, false);
	FadeDelete("絵白EF", 200, null, false);


	Fade("タヌ", 200, 1000, null, false);
	Zoom("タヌ", 1000, 1500, 1500, Dxl1, true);

	Fade("白フラ", 3000, 1000, null, false);
	Shake("タヌ", 3000, 20, 30, 0, 0, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　大狸の突き出した腹に、突き刺さる。

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/400200660tsr">
「ぎゃぉぉぉぉおおおお……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("白フラ", 1000, 0, null, false);

	CreateSE("SE01","se戦闘_血しぶき02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵赤幕", 2000, "YELLOW");
	DrawTransition("絵赤幕", 400, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 400, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	MoveFTP3stop();

	Delete("ムービー１");
	Delete("タヌ");
	Delete("絵赤幕");

	CreateSE("SE02","se戦闘_倒壊01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160a]
　大狸の腹に巨大な穴が空いた。

　頭から大地に転がる巨体。

　崩壊しかけた秋葉原に、黄金の光が漏れ出す。

{
	CreateSE("SE00","se擬音_光り輝く01");
	MusicStart("SE00",2000,300,0,1000,null,true);


	CreateMovie("ムービー１", 900, Center, 0, true, true, "dx/mvk100.ngs");
	Zoom("ムービー１", 0, 3000, 8000, Dxl1, false);

	CreateColorEXadd("絵色", 1500, "#FFFF00");
	Fade("絵色", 0,200, null, true);

	FadeDelete("絵黒幕", 2000, null, true);

	St("MR",700, @50,@0,"bu似鳥堕皇_通常_pride");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200670nki">
「やった……」

{	SetVolumeEX("SE02", 2000, 0, NULL);
	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"buノーコa_通常_pain");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200680nko">
「ちがう。まだ」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200690nki">
「まだ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("*", 2000, 0, NULL);

	DeleteAllSt(200,false);

	TextBoxDelete(150);


//窓準備
	CreateAXLWindowEX("絵窓", "Y", 2600, 160, 256, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Zoom("絵窓/絵演背景", 0, 1500, 1500, null, true);
	Move("絵窓/絵演背景", 0, @-120, @600, null, true);
	Request("絵窓/絵演背景", Smoothing);

{	ClockPass(2246);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/400200700tsr">
「ぐ、ぐ、ぐ、ぐ……」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/400200710tsr">
「フウリ……フウリ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

	CreatePlainSP("揺用", 2000);
	Shake("揺用", 3000, 5, 15, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ba22/400200720tsr">
「フウリ――――――ッ！！！！」

{	CreateSE("SE00","se環境_水流_l");
	MusicStart("SE00",1000,600,0,1000,null,true);

	Fade("揺用", 500, 0, null, true);
	Delete("揺用");}
　慟哭と共に身体から漏れ出す、金色の液体――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("絵窓*");
	Delete("絵窓/*");

	St("MR",700, @0,@0,"bu似鳥堕皇_通常_hard");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200730nki">
「涙……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);
	SetVolumeEX("@S*", 2000, 0, NULL);
}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200740nko">
「あふれでるこうかいのねん。それを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「素材：ev2220太四郎ビル大破壊b」

	TextBoxDelete(150);

//	SceneOut(5000, 1000, "circle_02_00_1");


	CreateSE("SE01","se戦闘_倒壊04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 1500, "WHITE");
	Fade("絵色100", 300, 1000, null, true);

	CreateTextureEX("タヌ", 2000, Center, Middle, "cg/ev/l/ev2220太四郎ビル大破壊b_l.jpg");
	Zoom("タヌ", 0, 1000, 1000, null, true);
	SetBlur("タヌ", true, 1, 500, 100, false);
	DeleteAllSt(0,false);
	Delete("絵色");
	Delete("ムービー１");
	#ev2220太四郎ビル大破壊b = true;

	Wait(2000);

	Fade("タヌ", 3000, 1000, null, false);
	Zoom("タヌ", 5000, 550, 550, Dxl1, true);

//	SceneIn(1000, "circle_02_00_0");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200750nki">
「自分の袋で、内側に包み込んだ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200760nki">
「つぼみ――か？」


{	ClockPass(2247);}

//◆ＳＥ：めきめき、バコーン！

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE03","se戦闘_倒壊02");
	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("タヌ", 2000, 3, 2, 0, 0, 500, null, false);
	Zoom("タヌ", 4000, 600, 600, Dxl1, true);


//窓準備
	CreateAXLWindowEX("絵窓", "Y", 2600, 160, 256, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 2520, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Move("絵窓/絵演背景", 0, @0, @0, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 2530, center, middle, "cg/fu/fu似鳥堕皇_通常_pinch.png");
	CreateTextureEX("絵窓/絵演立絵2", 2530, center, middle, "cg2/fu/fuノーコa_通常_sad.png");
	Move("絵窓/絵演立絵", 0, @0, @-250, null, true);
	Move("絵窓/絵演立絵2", 0, @0, @-80, Dxl1, true);
	Zoom("絵窓/絵演立絵2", 0, 700, 700, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

	SoundPlay("@xbgm22_onint",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200770nki">
「ビルが倒れていく？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200780nki">
「少しずつ、大きくなってるのか？」

{
//タチ絵スイッチ
	Fade("絵窓/絵演立絵", 300, 0, null, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, false);
}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200790nko">
「あいするひとをおもうねがい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200800nko">
「いくらきっても、かなしみのいずみはつきない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200810nko">
「どんどん――おおきくなっていく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("絵窓*");
	Delete("絵窓/*");


	CreateSE("SE03","se戦闘_倒壊02");
	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("タヌ", 2000, 3, 2, 0, 0, 500, null, false);
	Zoom("タヌ", 2000, 700, 700, Dxl1, true);
	Wait(1000);

	SceneOut(5000, 300, "slide_01_01_0");
	Fade("タヌ", 0, 0, null, false);
	Delete("絵色100");

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu似鳥堕皇_通常_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200820nki">
「そんなもの、このシュヴァルツシルト・チェインで――」

{	St("C",700, @0,@0,"bu似鳥堕皇_通常_rage");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200830nki">
「でりゃああああああッ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEXadd("絵色100", 2000, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef鎖飛来a.jpg");

	CreateSE("SE01","se戦闘_金属弾く04");
	CreateSE("SE02","se戦闘_切断02");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);


	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 0, null, true);


	DeleteAllSt(0,true);
	OnBG(10,"bg2401100空_上空_通常");
	FadeBG(0,true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	CreateTextureEX("絵似鳥", 100, Center, Middle, "cg/st/l/st似鳥堕皇_通常_normal_s全身.png");
	Move("絵似鳥", 0, @0, @150, null, true);
	Fade("絵色100", 1000, 0, null, true);


//◆ＳＥ：ぷにょ――――ん


	CreateSE("SE03","se擬音_ギャグ_ぷにょーん");
	MusicStart("SE03",0,700,0,1000,null,false);

//	St("C",700, @0,@0,"st似鳥堕皇_通常_pain");

	Shake("絵似鳥*", 300, 10, 0, 0, 0, 500, null, false);
	Fade("絵似鳥", 200, 1000, null, true);
	Move("絵似鳥", 400, @0, @-100, Dxl2, false);
	Rotate("絵似鳥", 500, @0, @0, -500, Dxl2, false);
	FadeDelete("絵似鳥", 400, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200a]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200840nki">
「ぎゃっ！」


　弾性のある袋に弾き飛ばされ、似鳥の身体が宙を舞う。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @-50,@0,"buノーコa_通常_sad");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200850nko">
「そのつつみ、なんぴとたりともおかせない」

{	DeleteAllSt(200,false);
	St("C",700, @100,@0,"bu似鳥堕皇_通常_pinch");
	Move("@StNameC/C*", 2000, @-100, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200860nki">
「そんな……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200870nko">
「しつれんのつきぬかなしみ」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200880nko">
「やいばできっても、そのいたみがますだけ」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200890nko">
「あまくみてはだめ」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200900nki">
「オレが……アイツを、甘く見てた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	TextBoxDelete(150);



//	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
//	FadeSt("C",200,true);}

//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 160, 256, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	SetShade("絵窓/絵演背景", MEDIUM)
	Zoom("絵窓/絵演背景", 0, 1500, 1500, null, true);
	Move("絵窓/絵演背景", 0, @0, @0, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/bu沙紅羅_通常_shout.png");
	Move("絵窓/絵演立*", 0, @0, @100, null, true);


//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220a]
//◆音声指示：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/400200910skr">
「いや、でも――おい、ノーコッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//収納
	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220b]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/400200920nko">
「――さくらと、すごろく？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/400200930nki">
「おまえ、生きてたのか？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Request("SE01", Lock);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Wait(500);


	EndScene();
}


