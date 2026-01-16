
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2210沙紅羅_似鳥_ノーコ.nss_MAIN
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

//あきゅん「演出：飛び先別演出入れてあります」
	if($CharaName=="沙紅羅"){
		$GameName = "b2213沙紅羅.nss";
	}else if($CharaName=="似鳥"){
		TextBoxDelete(150);
		CreateColorSP("絵色黒", 19990, "#000000");
		DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
		$GameName = "b2213似鳥_ノーコ.nss";
	}else if($CharaName=="ノーコ"){
		TextBoxDelete(150);
		CreateColorSP("絵色黒", 19990, "#000000");
		DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
		$GameName = "b2213似鳥_ノーコ.nss";
	}else{
		$GameName = "b2213沙紅羅.nss";
	}

}

scene b2210沙紅羅_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="640">
////////////header////////////
//file name "b2210沙紅羅_似鳥_ノーコ.nss"
//title ""
//previous "2200沙紅羅_似鳥.nss"
//previous "b2209ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "b2213沙紅羅.nss"
//next "似鳥" "b2213似鳥_ノーコ.nss"
//next "ノーコ" "b2213似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

{	ClockPass(2210);}

//◆場所：パチンコ屋_正面
	OnBG(10,"bg2301100パチンコ屋_正面_通常");
	FadeBG(0,true);


	SoundPlay("@xbgm03",0,450,true);

	if($PreGameName=="2200沙紅羅_似鳥.nss"||$PreGameName=="b2209ノーコ.nss"){
	CreateColorSP("黒幕１", 20000, "BLACK");
	FadeDelete("上背景", 0, null, true);
	DrawDelete("黒幕１", 500, 5, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

//	CreateTextureEX("絵背景100", 100, Center, middle, "cg/bg/bg2301100パチンコ屋_正面_通常.jpg");
//	Fade("絵背景100", 0, 1000, null, true);
//	DrawTransition("黒幕１", 300, 0, 0, 100, null, "cg/data/blind_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]


{	St("MR",700, @50,@0,"bu平次_御用だ_angry");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/100100010fjh">
「コラ！　なんで逃げるッ！？」

{	DeleteAllSt(200,false);
	St("ML",700, @50,@0,"bu沙紅羅_後ろ向き_shout");
	Move("@StNameML/ML*", 300, @-50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100020skr">
「テメーが追いかけるからだろッ！」

{	DeleteAllSt(200,false);
	St("C",700, @50,@0,"bu似鳥_通常_pinch");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100030nki">
「沙紅羅！　今どっちに逃げてる？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100040skr">
「知るか！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100050nki">
「知るかって――」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu平次_御用だ_shout");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 500, null, false);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/100100060fjh">
「でぇいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateSE("SE10","se戦闘_風切り音04");
	MusicStart("SE10",0,700,0,1000,null,false);
	Wait(16);
	CreateSE("SE11","se戦闘_風切り音08");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateTextureEX("絵背景1", 10000, Center, @0, "cg/img/img古銭飛来.jpg");
	CreateTextureEXmul("絵背景2", 10010, Center, @0, "cg/ef/ef003_汎用移動.jpg");
	Zoom("絵背景1", 0, 1000, 1000, null, true);

//	Fade("絵背景2", 200, 300, null, false);
	Zoom("絵背景1", 200, 1500,1500, Dxl1, false);
	Fade("絵背景1", 300, 1000, null, true);

	CreateSE("SE12","se戦闘_打撃音01");
	CreateSE("SE13","se戦闘_金属衝突03");
	MusicStart("SE12",0,700,0,1000,null,false);
	MusicStart("SE13",0,700,0,1000,null,false);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("@絵背景*");
	DeleteAllSt(0,false);
	FadeDelete("フラッシュ白", 300, null, false);

	St("C",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100070nki">
「いでぇッ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_御用だ_happy");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/100100080fjh">
「見たかオレの投げ銭ッ！！」

{
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100090nki">
「いででで……
　クソっ！　なんでオレがこんな目に――」

{	DeleteAllSt(200,false);
	St("C",700, @50,@0,"buユージローa_通常_angry");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	Shake($C_次, 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b22/100100100ujr">
「わうわうわうっ！！」


{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100110nki">
「ぎゃあああっ！　離せ！　このバカ犬！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_御用だ_happy");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/100100120fjh">
「よっしゃ！　待ち伏せ作戦成功ッ！！」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100130skr">
「とんだとばっちりだな」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 0, 15, 0, 0, 500, Axl3, false);}


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100140nki">
「おまえが言うなッ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 300, 0, null);

//あきゅん「修正指示：ノーコの登場、もっと派手に一度上空に視線上げて浮いているノーコゆるさない、で着地突進してくる感じに」


//	SceneOut(5000, 300, "slide_02_01_1");
	DeleteAllSt(200,false);
	CreateTextureEX("絵背景11", 11, Center, @-400, "cg/bg/bg2401100空_上空_通常.jpg");

//	OnBG(10,"bg2401100空_上空_通常");
//	FadeBG(0,true);

	SoundPlay("@xbgm09",0,450,true);

	Move("@絵背景11*", 400, @0, @400, Dxl2, false);
	Fade("絵背景11", 400, 1000, null, false);

	MoveFTP1("@StNameC/C*", 8300, 4, 3);

	St("C",700, @0,@100,"buノーコa_通常_normal");
	Move("@StNameC/C*", 400, @0, @-100, Axl2, false);
	FadeSt("C",400,false);
//	SceneIn(300, "slide_02_01_0");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100150nko">
「にとりに……けがさせた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景", 12, Center, @0, "cg/ef/ef003_汎用移動.jpg");


	St("C",700, @0,@0,"buノーコa_通常_rage");
	FadeSt("C",200,false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景", 300, 500, null, false);
	Zoom("@StNameC/*", 300, 1800, 1800, Dxl2, false);
//	Move("@StNameC/C*", 300, @00, @-200, Dxl2, false);
	Request("@StNameC/C*", Smoothing);
//	Rotate("@StNameC/*", 300, @0, @0, -180, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100160nko">
「ゆるさない」

{
//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
//	FadeSt("C",200,true);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100170nki">
「え？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：しゃきーん！　刃が伸びる
{
//	DeleteAllSt(200,false);
//	St("C",700, @-50,@0,"buノーコa_カッター_angry");
//	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
//	FadeSt("C",200,true);

	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/img/imgカッター刃元a.jpg");
	CreateTextureEX("絵背景２", 2000, 0, 0, "cg/img/imgカッター刃元b.jpg");
	CreateColorEX("フラッシュ白", 15000, "WHITE");

	Fade("絵背景１", 300, 1000, null, true);

	CreateSE("SE01","se戦闘_刃物01");
	MusicStart("SE01",0,700,0,1000,null,false);
//	ノーコカッターSE未着のため仮に上の(ino
//	CreateSE("SE02","se戦闘_カッター_刃出す04");
//	MusicStart("SE02",0,1500,0,1000,null,false);
	Fade("フラッシュ白",0,1000,null,true);
	DeleteAllSt(0,false);
	Fade("絵背景２", 0, 1000, null, true);
	Fade("フラッシュ白",500,0,null,true);

	MoveFTP1stop();

	Wait(300);
	CreateSE("SE03","se動作_空飛ぶ02");
	MusicStart("SE03",0,700,0,1000,null,false);
	SceneOut(5000, 300, "slide_02_01_0");

//	CreateColorEX("絵色１", 10000, "#000000");
//	Fade("絵色１", 200, 1000, null, true);
//	Delete("絵背景１");
//	Delete("絵背景２");
	Delete("@絵背景*");
	Wait(300);
	Fade("絵色１", 500, 0, null, true);

//	Wait(500);



	OnBG(10,"bg2301100パチンコ屋_正面_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);

//	St("C",700, @0,@100,"buノーコa_通常_normal");
//	St("MR",700, @0,@0,"bu平次_御用だ_pain");
//	FadeSt("MR",200,true);



	SceneIn(300, "slide_02_01_1");



	St("ML",700, @0,@-50,"buノーコa_カッター_angry");
	Move("@StNameML/ML*", 200, @0, @50, Dxl2, false);
	FadeSt("ML",200,true);

	CreateSE("SE02","se動作_着地");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(500);

//	DeleteAllSt(200,false);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu平次_御用だ_pain");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 500, null, false);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/100100180fjh">
「のわああああッ！！」

{
//	DeleteSt("C",200,false);
	St("R",700, @-50,@0,"bu平次_通常_shock");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @50, @0, Axl2, false);
	FadeSt("R",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/100100190fjh">
「ひぇっ、な……ちょ……」

{
	DeleteAllSt(200,false);
		St("MR",700, @-50,@0,"buノーコa_カッター_angry");
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100200nko">
「そのつみ――」

{	St("MR",700, @0,@0,"buノーコa_カッター_rage");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100210nko">
「いのちでつぐなえ」

{
	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu平次_通常_shock");
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 300, 10, 0, 0, 0, 500, null, false);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/b22/100100220fjh">
「ぎゃああああっ！」


{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 500, Axl3, false);}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100230nki">
「待てッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2211);}

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100240nko">
「にとり……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100250nki">
「ノーコ、オレは大丈夫だ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_pinch");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100260nko">
「でも、あいつはにとりを――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100270nki">
「いいから！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_pinch");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100280nko">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100290nki">
「…………」

{	DeleteAllSt(200,false);
	SoundPlay("@xbgm26",0,450,true);
	St("MR",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100300nko">
「わたし……じゃま？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100310nki">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100320nko">
「わたし……めいわく？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100330nki">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100340nko">
「わたし……きらい？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100350nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);

	CreateAXLWindowEX("絵窓", "X",1500, 256,512, false);
	WindowAXLZoom("絵窓", "X",0, 0, null, true);
	CreateTextureSP("絵窓/絵背景", 1400, 0, Middle, "cg/bg/bg2301100パチンコ屋_正面_通常.jpg");
	SetShade("絵窓/絵背景", HEAVY);
	Zoom("絵窓/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("絵窓/キャラ", 1410, Center, InBottom, "cg/bu/bu沙紅羅_通常_angry.png");
	SetAlias("絵窓/キャラ","絵窓/キャラ");
	Move("絵窓/キャラ", 0, @0, @96, null, true);
	WindowAXLZoom("絵窓", "X",300, 1000, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_angry");

//	FadeSt("C",200,true);
	Shake("@絵窓/キャラ*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100360skr">
「おい、似鳥ッ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
{
	WindowAXLZoom("絵窓", "X",300, 0, Dxl2, true);
	Delete("@絵窓*");
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100370skr">
「あいつは、おまえが創ったんだろ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100380skr">
「それなのに、今更そいつを裏切るのか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100390nki">
「でも、それって……だって、こいつは……」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100400nki">
「やっぱり、普通の人間じゃなくて……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100410skr">
「でも、信じたんだろ！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100420nki">
「昔のことだし」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100430skr">
「なんでそう簡単に、昔の自分を否定できんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100440skr">
「その昔のてめぇが、今のてめぇをつくったんだろ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100450skr">
「世間がなんだ！　常識がなんだ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100460skr">
「周りがいくらあざ笑っても、自分だけは、認めろよ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100470skr">
「てめぇの信念！　てめぇのついた大ボラ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100480skr">
「最後まで、貫いてみせろよ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100490nki">
「…………！！」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100500nki">
「オレ……オレ、どうしたらいいのか――！」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100510nko">
「――――」

{	St("MR",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100520nko">
「――ごめん。にとり」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100530nko">
「そんなにつらいおもいをさせて――ごめん」


{	St("MR",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100540nko">
「いま――」

{	St("MR",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/b22/100100550nko">
「いま、らくにしてあげるからね」



//◆演出指示：ノーコ空を飛ぶ

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	CreateSE("SE02","se戦闘_風切り音03");
//	MusicStart("SE02",0,700,0,1000,null,false);
//	Move("@StNameMR/MR*", 300, @0, @-50, Axl1, false);
//	DeleteAllSt(200,true);

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @0, @-50, Dxl2, false);
	DeleteAllSt(200,true);

	CreateTextureEX("空", 10, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");

	CreateSE("SE11","se戦闘_風切り音03");
	MusicStart("SE11",0,700,0,1000,null,false);
	Move("@StNameC/*", 200, @0, @-50, Axl2, false);
	DeleteAllSt(200,true);


	SceneOut(5000, 300, "slide_02_01_0");

	CreateSE("SE12","se動作_空飛ぶ02");
	MusicStart("SE12",0,700,0,1000,null,false);

	Move("絵背景100", 0, @0, @-100, null, false);

	Zoom("空", 1000, 1500, 1500, Dxl2, false);
	Fade("空", 0, 1000, null, true);

	SceneIn(300, "slide_02_01_1");
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{
//	St("ML",700, @0,@0,"bu似鳥_通常_worry");
//	FadeSt("ML",200,true);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100560nki">
「ノーコ……」

{
//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
//	FadeSt("C",200,true);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100570skr">
「おい似鳥！　なにボーッとしてんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2212);}

	TextBoxDelete(150);

	Fade("空", 300, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100580skr">
「早く追いかけるぞ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100590nki">
「追いかけるって――？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100600skr">
「アレだけ思い詰めてるんだ！　自殺でもしかねねぇ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100610nki">
「自殺――？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/b22/100100620skr">
「ほら！　あっちだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
//	DeleteSt("C",200,true);


	SetVolumeEX("@xbgm*", 1500, 0, null);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/b22/100100630mrp">
「似鳥君、行きましょう！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/b22/100100640nki">
「あ……ああ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//あきゅん「演出：冒頭の飛び先分岐内で結合処理しています」

	EndScene();
}
