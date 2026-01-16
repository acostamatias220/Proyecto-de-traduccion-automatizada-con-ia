
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1900沙紅羅.nss_MAIN
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
	$GameName = "1910沙紅羅_千秋.nss";

}

scene 1900沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1300">
////////////header////////////
//file name "1900沙紅羅.nss"
//title "仏恥義理ソトカンダー"
//previous "1850沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "1910沙紅羅_千秋.nss"


////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);


{	ClockPass(1900);}


//◆場所：ショウビル_正面
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

	CreateColorSP("絵色100", 15000, "Black");
//	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/l/ev0000沙紅羅原付ライダーa_l.jpg");
//	Fade("絵背景100", 0, 1000, null, true);

	CreateTextureEX("絵背景200", 110, Center, Middle, "cg/img/imgソトカンダー落下.jpg");
	CreateTextureEX("絵背景300", 110, Center, Middle, "cg/bg/bg1901100ショウビル_正面_通常.jpg");
	Zoom("絵背景300", 0, 2000, 2000, null, true);
	Move("絵背景300", 0, @0, @100, null, true);
	SetShade("絵背景300", HEAVY);

	FadeDelete("上背景", 0, null, true);


	CreateWindow("win01", 1500, 256, 0, 512, 576, false);

	CreateTextureEX("win01/絵背景100", 1200, Center, InBottom, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEX("win01/絵st1000", 1500, center, 66, "cg/bu/bu沙紅羅_通常_angry.png");
	Zoom("win01/絵st1000", 0, 1500, 1500, null, true);
	Request("win01/絵st1000", Smoothing);
	CreateMovie("win01/絵M1000", 1600, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Fade("win01/絵M1000", 0, 0, null, true);
	SetAlias("win01/絵M1000","win01/絵M1000");
	Zoom("win01/絵M1000", 0, 2000, 2500, null, true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　人間の脳は危機に陥ると、飛躍的にその情報処理速度を増すという説がある。

　爆発や落下の瞬間、辺りの光景がスローモーションのように感じられるのも、それで説明できるだろう。

　そして今、交通事故に直面しつつある沙紅羅も、同様の状態にあった。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");
	MoveFFP1("@絵演背景",50000);

	CreateTextureSPadd("道線", 11000, Center, Middle, "cg/data/circle_01_00_0.png");
	DrawTransition("道線", 0, 300, 300, 100, null, "cg/data/circle_01_00_1.png", true);
	SlowBlur("@道線");

	Zoom("絵演背景", 0, 2000, 2000, null, true);


	//FadeDelete("上背景", 0, null, true);
	DrawDelete("黒幕１", 200, 100, Dxl1, "zzex_circle_01_00_1", false);
	Zoom("絵演背景", 200, 1100, 1100, Dxl1, true);
	Wait(1000);

	SoundPlay("@xbgm32",0,450,true);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	FadeDelete("絵色100", 1000, null, true);


	SotokandarFall_Set(500);
	SotokandarFall_Start(800);
	#objソトカンダー落下演出 = true;



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400010skr">
（やばい！　やばいぞ！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400020skr">
（ブレーキ絶対間に合わねー！
　このままじゃぶつかる！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400030skr">
（ぶつかるが……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SotokandarFall_Delete();

	Fade("絵背景200", 500, 1000, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400040skr">
（そもそも今目の前に落下しつつあるアレ、なんだ？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400050skr">
（まあ、ロボットだよな。ロボット）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	St("R",700, @0,@100,"buＡＤ_通常_shock");
	St("L",700, @0,@100,"buミリＰa_ショータイム_angry");
	FadeSt("R",600,false);
	FadeSt("L",600,false);
	Move("絵背景300", 600, @0, @-50, Dxl1, false);
	Move("@StNameL/L*", 600, @50, @-100, Dxl1, false);
	Move("@StNameR/R*", 600, @0, @-100, Dxl1, false);
	Fade("絵背景300", 600, 1000, null, true);

	Delete("絵背景200");
	Wait(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/19/000400060adi">
「きゃああああああ！！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/000400070mrp">
「ソトカンダ――ッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400080skr">
（あのふたりが運んでて――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//背景先読み込み
	CreateTextureEX("絵背景スクロール１", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg02.jpg");

	Move("絵背景300", 600, @-100, @0, AxlDxl, false);
	Move("@StNameL/L*", 600, @-200, @0, AxlDxl, false);
	Move("@StNameR/R*", 600, @-200, @0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400090skr">
（ひとりはカメラも持ち運んでるみたいだ。
　ってなると、テレビで使うんだよな）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400100skr">
（しっかしまあ――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//背景先読み込み
	CreateTextureEX("絵背景スクロール２", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg02.jpg");

	Move("絵背景300", 600, @200, @0, AxlDxl, false);
	Move("@StNameL/L*", 600, @400, @0, AxlDxl, false);
	Move("@StNameR/R*", 600, @400, @0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/000400110mrp">
「ノオオオオオ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400120skr">
（ひでー顔）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreatePlainSP("上背景", 10000);

	SotokandarFall_Set02(500);

	DeleteAllSt(0,true);
	Delete("絵背景300");

	CreateTextureSP("絵背景ライダー", 102, center, middle, "cg/ev/ex/ev0000沙紅羅原付ライダーa_ex01.png");
	Request("絵背景ライダー", Smoothing);
	Move("絵背景ライダー", 0, -442, -800, Dxl1, false);
	Zoom("絵背景ライダー", 0, 1200, 1200, null, true);
	SetBlur("絵背景ライダー", true, 1, 200, 500, false);

	MoveFTP3("@絵背景ライダー", 20000, 12, 15);


	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",6000,@3500,@0);

	CreateSE("SEL01","seメカ_バイク_走行_l");
	MusicStart("SEL01",2000,500,0,300,null,true);


	FadeDelete("上背景", 1000, null, true);

	SotokandarFall_Start02(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400130skr">
（で。どうせブレーキが間に合わねーんなら――）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400140skr">
（アクセルだ！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400150skr">
（うしろの金閣寺、実は発泡スチロール製だからな！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400160skr">
（それがクッションになれば、もしかしたらあのロボットも助かるかもしれねー）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400170skr">
（いや……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SotokandarFall_Delete02();

	SetBlur("絵背景ライダー", false, 1, 300, 600, false);
	Zoom("絵背景ライダー", 200, 1500, 1500, Dxl2, true);
	SetBlur("絵背景ライダー", true, 1, 200, 500, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400180skr">
（でも、本当に助かんのか？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400190skr">
（このスピードでぶつかったら、どっちにしろ――）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400200skr">
（どうする？　どうすればいい？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400210skr">
（いや、ダメだ！　迷ってる暇はねぇ！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400220skr">
（義を見てせざるは聞かざるなり！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵マスク枠", 15000, center, middle, "cg/mask/ci縦ライン_00_00z.png");
	Request("絵マスク枠", Smoothing);
	Zoom("絵マスク枠", 0, 1450, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400230skr">
（ここはアクセル全開で――ッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Shake("win01/絵st*", 10000, 0, 1, 0, 0, 1000, null, false);
	Fade("win01/絵*", 200, 1000, null, false);
	Fade("絵マスク枠", 200, 1000, null, false);
	DrawTransition("win01/絵*", 200, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400240skr">
「うおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵マスク枠", 0, 0, null, true);
	Fade("win01/絵*", 200, 0, null, false);
	DrawTransition("win01/絵*", 200, 1000, 0, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

//◆演出指示：すごい加速
	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,1500,0,1000,null,false);
	SetFrequency("SEL01", 1000, 1500, AxlDxl);

	SetFrequency("SE02", 5000, 3000, AxlDxl);
	SetVolumeEX("SE02", 1500, 1000, null);

	Shake("絵背景ライダー", 500, 10, 20, 0, 0, 1000, null, false);
	MoveFTP3stop();

	SetBlur("絵背景ライダー", false, 3, 500, 200, false);
	Move("絵背景ライダー", 700, @-2500, @0, Axl2, true);



	Wait(100);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SCR1stop();
	MoveFFP1stop();
	Request("ProSlowBlur", Stop);
	Delete("Pro*");
	Delete("絵マスク枠");
	Delete("絵背景*");
	Delete("絵演*");
	Delete("道*");
	DeleteAllSt(0,true);
	Delete("win01/絵*");
	Delete("win01");
	Delete("絵背景*");

	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/img/imgソトカンダー落下.jpg");
	CreateTextureSP("絵背景100", 1001, Center, Middle, "cg/img/imgソトカンダー落下.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetBlur("絵背景50", true, 3, 500, 200, false);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@xbgm*", 1000, 0, null);

//	Shake("絵背景100", 500000, 2, 1, 0, 0, 1000, null, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl1, false);

	DrawDelete("黒幕１", 1000, 100, null, "circle_01_00_1", true);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400250skr">
（ん？　なんだ！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想シーン的に
	CreateTextureEX("絵背景1000", 2000, Center, Middle, "cg/img/img金閣寺イメージ絵.jpg");
	CreateTextureEX("絵背景2000", 3000, Center, Middle, "cg/img/img金閣寺イメージ絵.jpg");
	Zoom("絵背景2000", 0, 1300, 1300, null, true);
	Zoom("絵背景1000", 0, 1500, 1500, null, true);
	DrawEffect("絵背景1000", 500, "LowWave", 0, 200, null);

	Fade("絵背景1000", 1000, 600, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400260skr">
（あれは――金閣寺！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm25",0,450,true);

	TextBoxDelete(150);

	Zoom("絵背景2000", 2000, 1000, 1000, Dxl1, false);
	Fade("絵背景2000", 1000, 1000, null, true);
	Delete("絵背景1000");
	Delete("絵背景100");
	Delete("絵背景10");

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400270skr">
（修学旅行の時見た、本物だ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400280skr">
（あの池に飛び込んで、溺れたんだ！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400290skr">
（いやあ、あの時は死にかけたなぁ……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400300skr">
（アレがあったから、バイクを金閣寺で飾ろうってナイスアイディアが浮かんだんだ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400310skr">
（しっかし、長い道のりだったよなあ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400320skr">
（金閣寺を裏っかわっから見た写真がなくて、取材に行こうとしたら、道に迷って恐山に着いたり……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400330skr">
（ブーに相談したら、ホームページとかいうのがあるのを知って、そこで写真を捜そうとしたり……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400340skr">
（そこで初めて携帯がホームページにつながることを知ったり……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400350skr">
（金閣寺の写真を探していたら、なぜかいかがわしいホームページに繋がっちゃったり……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400360skr">
（気付いたら電池が切れてていつの間にか朝だったり……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400370skr">
（翌月明細を見たら驚きの１０万オーバーだったり……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400380skr">
（なんとか写真をゲットしていざ作ろうと思ったら、発泡スチロールが全然足りなかったり……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400390skr">
（スーパーでもらってきたら、魚臭かったり……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400400skr">
（それでも我慢して作って「あとは色を塗るだけ！」と思ったら、ラッカーで溶けちまったり……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400410skr">
（色々苦労したなぁ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400420skr">
（でも、苦労したからこそ、初めて乗ったあの時の快感は、忘れらんねぇなぁ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400430skr">
（これが供養だって……思って……ああ、クソッ！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400440skr">
（天国のアイツに、見せてやりたかったなぁ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指定：回想終わり

//※北原メモ：→暴陀羅号ソトカンダー破壊ＥＶがほしいなぁ。

	CreateTextureSP("絵背景200", 1500, Center, Middle, "cg/ev/l/ev0000沙紅羅原付ライダーa_l.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	Move("絵背景200", 0, @-600, @-300, null, true);
	SetBlur("絵背景200", true, 2, 500, 300, false);

	MoveFTP3("@絵背景200", 20000, 12, 15);

	Delete("絵背景100");

	FadeDelete("絵背景2000", 500, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400450skr">
（その、金閣寺――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureEX("絵背景300", 1000, -597, 0, "cg/ev/l/ev1900沙紅羅ウィリーアタック_l.jpg");
	Request("絵背景300", Smoothing);
	CreateTextureSP("絵背景350", 1000, center, middle, "cg/ev/ev1900沙紅羅ウィリーアタック_背景.jpg");
	CreateTextureSP("絵背景400", 1000, -597, 0, "cg/ev/l/ev1900沙紅羅ウィリーアタック_沙紅羅_l.png");
	Request("絵背景400", Smoothing);


//◆ＥＶ："ev/ev1900沙紅羅ウィリーアタック.txt"

	SetVolumeEX("@xbgm*", 100, 0, null);
	SetVolumeEX("SE*", 100, 0, null);


	FadeDelete("絵背景200", 300, null, false);
	Move("絵背景400", 300, @25, @-50, Dxl2, true);


	MoveFTP3stop();


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400460skr">
「やっぱり壊せねえエエエエエエエエエ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SoundPlay("@xbgm07_noint",0,450,true);


	TextBoxDelete(150);

//◆演出指定：ソトカンダー破壊
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	CreateSE("SE01","seメカ_バイク_急停止");
	CreateSE("SE02","seメカ_バイク_発進");
	MusicStart("SE01",0,1200,0,1500,null,false);
	MusicStart("SE02",0,1200,0,1500,null,false);


	Zoom("絵背景350", 500, 2000, 2000, Axl2, false);
	Move("絵背景400", 500, @500, @-1000, Axl2, false);

	Wait(400);
	Fade("フラッシュ白",100,1000,null,true);
	Delete("絵背景*");

	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/ev/ev1900沙紅羅ウィリーアタック.jpg");
	CreateTextureEX("絵背景100", 1101, Center, Middle, "cg/ev/ev1900沙紅羅ウィリーアタック.jpg");

	CreateTextureSP("絵背景150", 1001, Center, Middle, "cg/ev/ev1900沙紅羅ウィリーアタック_背景.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 2000, 2000, null, true);
//	SetBlur("絵背景150", true, 1, 500, 80, false);
	CreateTextureSP("絵背景180", 1001, Center, Middle, "cg/ev/ev1900沙紅羅ウィリーアタック_沙紅羅.png");
	Request("絵背景180", Smoothing);
	Zoom("絵背景180", 0, 1200, 1200, null, true);
	SetBlur("絵背景180", true, 2, 500, 80, false);

	CreateTextureSP("絵背景200b", 1001, -152, 215, "cg/ev/ev1900沙紅羅ウィリーアタック_破片b.png");
	CreateTextureSP("絵背景200c", 1001, -260, 142, "cg/ev/ev1900沙紅羅ウィリーアタック_破片c.png");
	CreateTextureSP("絵背景200d", 1001, -342, 015, "cg/ev/ev1900沙紅羅ウィリーアタック_破片d.png");
	CreateTextureSP("絵背景200e", 1001, -226, -75, "cg/ev/ev1900沙紅羅ウィリーアタック_破片e.png");
	CreateTextureSP("絵背景200f", 1001, -241, -151, "cg/ev/ev1900沙紅羅ウィリーアタック_破片f.png");
	CreateTextureSP("絵背景200g", 1001, -83, -218, "cg/ev/ev1900沙紅羅ウィリーアタック_破片g.png");
	CreateTextureSP("絵背景200h", 1001, 9, -173, "cg/ev/ev1900沙紅羅ウィリーアタック_破片h.png");
	CreateTextureSP("絵背景200k", 1001, 412, -108, "cg/ev/ev1900沙紅羅ウィリーアタック_破片k.png");
	CreateTextureSP("絵背景200l", 1001, 385, 95, "cg/ev/ev1900沙紅羅ウィリーアタック_破片l.png");
	CreateTextureSP("絵背景200m", 1001, 246, 170, "cg/ev/ev1900沙紅羅ウィリーアタック_破片m.png");
	CreateTextureSP("絵背景200n", 1001, 31, 68, "cg/ev/ev1900沙紅羅ウィリーアタック_破片n.png");

	CreateTextureSP("絵背景600a", 1001, Center, Middle, "cg/ev/ev1900沙紅羅ウィリーアタック_破片a.png");
	CreateTextureSP("絵背景600i", 1001, Center, Middle, "cg/ev/ev1900沙紅羅ウィリーアタック_破片i.png");
	CreateTextureSP("絵背景600j", 1001, Center, Middle, "cg/ev/ev1900沙紅羅ウィリーアタック_破片j.png");

	Zoom("絵背景600*", 0, 2000, 2000, null, true);


	//Rotate("絵背景200*", 0, @0, @0, -60, null,true);


	Shake("絵背景100", 1000, 5, 10, 0, 0, 1000, null, false);
	Shake("絵背景200*", 1000, 5, 2, 0, 0, 1000, Dxl1, false);
	Shake("絵背景600*", 1000, 5, 5, 0, 0, 1000, Dxl1, false);

	CreateSE("SE05","se戦闘_破壊02");
	CreateSE("SE06","se戦闘_ソトカンダー破壊");
	MusicStart("SE05",0,1500,0,1000,null,false);

	FadeF4("絵背景180", 1000, 1000, 1000, 0, 0, Dxl3, false);
	Zoom("絵背景180", 1000, 1000, 1000, null, false);
	Zoom("絵背景150", 1000, 1000, 1000, Dxl2, false);
	Zoom("絵背景600*", 1000, 1000, 1000, Dxl1, false);
	Move("絵背景200*", 1000, 0, 0, Dxl2, false);
	Rotate("絵背景200*", 1000, @0, @0, 0, Dxl2,false);
	Fade("フラッシュ白",200,0,null,true);

	MusicStart("SE06",0,1500,0,1000,null,false);

	Wait(1100);

	Fade("絵背景100", 200, 1000, null, true);


/*
	St("C",700, @0,@200,"buミリＰa_ショータイム_angry");
	Shake("@StNameC/C*", 200, 30, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-200, Dxl1, false);
	FadeSt("C",200,true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/000400470mrp">
「きゃあああああああああああ！！！！」

　沙紅羅の愛車暴陀羅がウイリー、持ち上げられた前輪が、落下するロボットに命中。

　粉々に砕け散った。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","seメカ_バイク_エンジン加速");
	CreateSE("SE02","se擬音_ライト倒れる");
	MusicStart("SE01",0,700,0,1000,null,false);


	Delete("絵背景100");
	SetBlur("絵背景180", false, 2, 500, 80, false);

	Zoom("絵背景180", 500, 1300, 1300, Axl2, false);
	Zoom("絵背景150", 500, 1200, 1200, Axl2, false);
	Zoom("絵背景200*", 500, 2000, 2000, Axl2, false);
	Zoom("絵背景600*", 500, 2600, 2600, Axl2, false);

	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("フラッシュ白",200,1000,null,true);

	Delete("絵背景*");


//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/l/bg1901100ショウビル_正面_通常_l.jpg");
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);
	Move("絵窓/絵演背景", 0, @0, @576, null, true);
	SetShade("絵窓/絵演背景", HEAVY);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵ミリ", 10100, center, middle, "cg/bu/buミリＰa_通常_shock.png");
	CreateTextureEX("絵窓/絵演立絵バリ", 10090, center, middle, "cg/bu/buＡＤ_通常_sad.png");
	Move("絵窓/絵演立絵ミリ*", 0, @0, @0, null, true);
	Move("絵窓/絵演立絵*", 0, @0, @70, null, true);


	CreateTextureEX("絵背景枠01", 12000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 12000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");

//枠動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	Fade("フラッシュ白",500,0,null,true);

//キャラ動作
	Move("絵窓/絵演立絵バリ", 300, @300, @0, Dxl2, false);
	Move("絵窓/絵演立絵ミリ*", 300, @-300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵ミリ", 300, 1000, null, false);
	Fade("絵窓/絵演立絵バリ", 300, 1000, null, true);




//	Wait(500);
	$SYSTEM_effect_rain_dencity=32;
	$SYSTEM_effect_rain_speed=128;

	CreateEffect("エフェクト１", 1000, 0, 0, 1024, 288, "Rain");
	SetAlias("エフェクト１","エフェクト１");
	Fade("エフェクト１", 0, 0, null, true);
	SetVertex("エフェクト１", 0, 0);
	Zoom("エフェクト１", 0, 1000, 2000, null, true);
	CreateSE("SE01","se環境_雨_l");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/19/000400480mrp">
「あわわ、あわわわわ……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/19/000400490adi">
「そんな、ソトカンダーが……」

{
	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");
	Delete("揺用");

	Fade("絵背景", 300, 0, null, true);
}
　歩道橋の上で、呆然と立ち尽くすふたり。

{	ClockPass(1900);}
{
	MusicStart("SE01",3000,1000,0,1000,null,true);
	Fade("エフェクト１", 1000, 500, null, true);
	St("C",19010, @0,@0,"fu沙紅羅_後ろ向き_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400500skr">
「アタシのせいじゃ、ねーよな……」

{	DeleteAllSt(200,true);}
　呟く沙紅羅。

　無傷の金閣寺に、ぽつぽつと雨が落ち始める。

{	St("C",700, @0,@0,"fu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400510skr">
「……逃げよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1500, 0, null);


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE05","seメカ_バイク_発進");
	MusicStart("SE05",0,700,0,1000,null,false);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



	DeleteAllSt(0,true);

	$SETime = RemainTime("SE05");
	WaitKey($SETime);

//◆時間：ジャンプ
{	ClockPass(1900);}

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);
	DrawDelete("黒幕１", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　沙紅羅は暴陀羅を路地に停め、中央通りへ出る。

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400520skr">
「地震が止んだと思ったら急に雨とか――
　さっきまで全然降る感じじゃなかっただろ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400530skr">
「どうせだったら雪にしろよ。ったく」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400540skr">
「しかし……寒いな。
　どっかで休む場所は――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400550skr">
「お！　土産屋か？！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);


	TextBoxDelete(150);

	DeleteSt("C",200,true);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("エフェクト１");

	Wait(200);



//◆場所：アキバスポット_正面_修復後
	OnBG(10,"bg0401300アキバスポット_正面_修復後");
	FadeBG(0,true);

	Wait(200);

	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

	SoundPlay("@xbgm02",0,450,true);

	Wait(500);

{	St("C",700, @+50,@0,"bu村崎_通常_happy");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}

{	ClockPass(1901);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400560msi">
「はあい、いらっしゃい！
　いかがですか？　東京土産にこのおまんじゅう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400570skr">
「いらね」

{	St("MR",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400580msi">
「いやいや、そう言わずに。
　おいしいんですよ。アキバのクリマン」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400590skr">
「く……くりまん？」

{	St("MR",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400600msi">
「そうです！
　クリクリクリっとク・リ・マ・ン！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1902);}


//	TextBoxDelete(150);



{	St("ML",700, @0,@0,"bu沙紅羅_木刀_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400610skr">
「ななななな、何いやらしいこと――！」

{	St("MR",700, @-50,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);

	Shake("@StNameMR/MR*", 200, 0, 8, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400620msi">
「ちょ！　お客さん！　暴力は――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400630skr">
「……あれ？」

{	St("MR",700, @0,@0,"bu村崎_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400640msi">
「はい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 1500, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵背景100", 0, @0, @100, null, true);
	Move("絵背景100", 500, @0, @-100, Dxl2, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　木刀で殴りかかろうとした沙紅羅の動きは、村崎が身を庇ったエコバッグを見て止まった。

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400650skr">
「そのロボット……？」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400660msi">
「え？　ああ、はい！　このバッグですか！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400670msi">
「いやいや、実はですね。
　今秋葉原ではマスコットキャラクターを作ってまして」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400680msi">
「その名もソトカンダー！　カッコイイでしょう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵背景100", 500, null, true);

{	ClockPass(1903);}


{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400690skr">
「そ……そうか？」

{	St("MR",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400700msi">
「いや、ホントはね、コイツは年を越してから半田明神で限定販売！　――の、はずだったんです」

{	St("MR",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400710msi">
「けどね、なんだか私が一桁多く発注しちゃったみたいで」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400720skr">
「マヌケだな」

{	St("MR",700, @0,@0,"bu村崎_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400730msi">
「私は絶対そんなことはしてないって言ったんですけど。
　絶対誰かが、書き換えたに決まってる――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400740skr">
「あー？　どーせてめーが寝ぼけでもしたんだろ？」

{	St("MR",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400750msi">
「いやそんなわけない――ってまあそういう話は置いといて。ソレはともかくクリマン！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400760msi">
「今回はキャンペーン中特別プレゼントとして、クリマンをこのバッグに入れ替えて販売中！」

{	St("MR",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400770msi">
「お値段据え置き！　お嬢さんもいかがですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1904);}


{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400780skr">
（まあ仕方なかったとはいえ、あのロボット壊しちまったわけだし……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400790skr">
（罪滅ぼしの意味も込めて、１個くらい買って――）

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400800skr">
「あ、しまった」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400810skr">
「金がない」

{	St("MR",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400820msi">
「な……なんですって？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400830skr">
「みそブーに連絡取れりゃいいんだろうけど……
　ケータイの電池も切れてるし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1905);}

//	TextBoxDelete(150);

//◆ＳＥ：腹の音

	SetVolumeEX("@xbgm02", 400, 100, null);
	Wait(300);
	CreateSE("SE01","se人体_空腹");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1500);

	SetVolumeEX("@xbgm02", 5000, 450, null);

	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400840skr">
「ぁ……」

{	St("MR",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400850msi">
「…………」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400860skr">
「う、うっせーな！
　減ったら鳴るだろ！　腹！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400870msi">
「失礼ですが、ご実家は？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400880skr">
「福島」

{	St("MR",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400890msi">
「福島……？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400900skr">
「田舎もので悪かったな！
　わかったよ！　出て行きます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1906);}


{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400910skr">
「その代わり、いっこだけ教えてくれ」

{	St("MR",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400920msi">
「は、はあ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400930skr">
「とーじんぼーって、どこだ？」

{	SetVolumeEX("@xbgm*", 500, 0, null);
	Wait(200);
	CreateSE("SE01","se環境_波");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@50,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400940msi">
「ととととと――とーじんぼー！？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400950skr">
「アンタも知ってるんだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm26",0,450,true);

{	St("MR",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400960msi">
「知ってはいます。
　行こうと思ったこともまあ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//※北原メモ：ＳＥで波の音をザッパーンと入れると楽しいかも。
//ここではなく、村崎の台詞に合わせて入れます。


{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400970skr">
「じゃあほら！　サクッと教えて――」

{	St("MR",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000400980msi">
「ダメです！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000400990skr">
「そう堅いこと言わねーでさ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401000msi">
「絶対に、ダメです！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401010skr">
「チェッ！　ケチ！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401020skr">
「あークソ！　寒いし無一文だし腹減ったし！
　オマケに雨も――」

{	St("MR",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401030msi">
「雨は止みました！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	ClockPass(1907);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401040msi">
「止まない雨はない！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401050skr">
「…………は？」

{	St("MR",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401060msi">
「どうぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//あきゅん「演出：千秋ルートの渡された物と同じなので」
//	CreateTextureEX("絵背景100", 1500, Center, Middle, "cg/obj/objクリマン.png");
//	Zoom("絵背景100", 0, 1000, 0, null, true);
//	Move("絵背景100", 0, @50, @0, null, true);
//	Zoom("絵背景100", 0, 1000, 1000, null, false);
//	Move("絵背景100", 0, @-50, @0, Dxl1, false);
//	Fade("絵背景100", 500, 1000, null, true);

	CreateTextureEX("絵背景100", 1500, Center, Middle, "cg/obj/objエコバッグ_千秋_フウリ1850.png");
	Zoom("絵背景100", 0, 0, 1000, null, true);
	CreateSE("SE01","se動作_バッグ渡す");
	#objエコバッグ_千秋_フウリ18 = true;

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 300, 1000, 1000, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]
　村崎が差し出したのは、エコバッグに入ったクリマン。

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401070msi">
「これ、食べてください」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	FadeDelete("絵背景100", 200, null, true);
	Zoom("絵背景100", 300, 0, 1000, AxlDxl, true);
	Delete("絵背景100");

	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401080skr">
「いや、だからアタシ金なんて持ってねーって」

{	St("MR",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401090msi">
「オゴリです」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401100skr">
「オゴリ？」

{	St("MR",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401110msi">
「そのかわり、諦めないでください！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401120msi">
「どんなに苦しくても！　格好悪くても！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401130msi">
「最後まで足掻いて、足掻いて、生き延びてください！」

{	St("MR",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401140msi">
「それだけ……お願いします！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401150skr">
「お……おう」

{	St("MR",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401160msi">
「お互い！」

{	St("MR",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/000401170msi">
「がんばりましょう！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401180skr">
「あ、うん、わかったわかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,true);


{	ClockPass(1908);}
	Wait(500);

	CreateSE("SE10","seガヤ_街中_l");
	MusicStart("SE10",2000,700,0,1000,null,true);


//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("黒幕１", 1000, 100, null, "blind_01_00_1", true);

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401190skr">
「な……なんだったんだ、今の？」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401200skr">
「なんかヤケに後半、力入ってた気が――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401210skr">
「……まあいいか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1909);}

//	TextBoxDelete(150);
	CreateSE("SE01","se人体_空腹");

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401220skr">
「しかし都会の人は冷てーもんだとばっかり思ってたけど、案外そうでもねーみてーだなあ……」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401230skr">
「うん……いいなあ……人の温かさ……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401240skr">
「くぅぅぅ……っ！
　東京ってのも、捨てたもんじゃねぇんだなあ……」

//◆ＳＥ：腹が鳴る
{	MusicStart("SE01",0,1000,0,1000,null,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401250skr">
「と、こんなことしてる場合じゃねーや」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401260skr">
「せっかくもらったんだし。
　サクッとまんじゅう食って――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401270skr">
「さてさて、どこで食おうかな……」

{	SetVolumeEX("SE*", 1000, 0, null);
	Wait(200);}
//◆音声指示：遠くから
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000401280kit">
「見つけたあああああ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/000401290skr">
「ん？」

{	DeleteAllSt(200,true);}
//◆音声指示：遠くから
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/000401300kit">
「その袋、開けちゃだめえええええええええ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	EndScene();

}
