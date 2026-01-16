//★ inc遠藤 途中のカットインは良いんだけど、立ち位置とかその他の部分とかを調整して。

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2310沙紅羅_フウリ.nss_MAIN
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
	$GameName = "c2340恵那.nss";//★エンディングへ（c）
}

scene c2310沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="840">
////////////header////////////
//file name "c2310沙紅羅_フウリ.nss"
//title "ろくろーちゃんのはだかあそび"
//previous "c2300沙紅羅_似鳥.nss"
//previous "c2300フウリ.nss"

////////////footer////////////
//next "c2340恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

{	ClockPass(2310);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	if($PreGameName=="c2300沙紅羅_似鳥.nss"){
	Wait(2000);
	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);
	}else if($PreGameName=="c2300フウリ.nss"){
	FadeDelete("上背景", 500, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

	St("C",700, @+100,@0,"bu沙紅羅_後ろ向き_normal");

	CreateSE("SE01","se動作_一歩");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);


//※下倉注：以下の台詞変更につき調整お願いいたします 2010/10/31
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100010skr">
「名探偵……どこに行っちまったんだ？」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100020skr">
「男坂で待ってるって言ってたのに――」

{	DeleteSt("C",200,true);}
//◆音声指示：遠くから
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100030fjr">
「いやあああああああああああああああ！！」


{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100040skr">
「悲鳴！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：遠くから
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100050wfu">
「おばけええええええええええええええ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100060skr">
「お――オバケだとッ！？」

{	SoundPlay("@xbgm07_noint", 0, 450, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100070skr">
「へっ！　となれば――」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_hard");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100080skr">
「あのカレーで魔法の力を得たこの相棒――」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_pride");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100090skr">
「喝雄不死の、出番だぜッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 300, @200, @0, Axl2, false);
	DeleteSt("C",300,true);

	CreateSE("SE01","se動作_走る05_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	ClockPass(2311);

//◆場所：銭形公園_トイレ正面
	SceneOut(20000, 1000, "blind_01_00_0");
	DeleteSt("C",0,false);
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);

	CreatePlainSP("揺用", 50);

	SceneIn(1000, "blind_01_00_1");

	St("C",700, @-150,@0,"bu沙紅羅_木刀_rage");
	SetVolume("SE01", 300, 0, null);
	CreateSE("SE02","se動作_足踏み");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameC/C*", 200, @150, @0, Axl2, false);
	FadeSt("C",200,true);

//あきゅん「β演出：音声同期表情変化：」
//★inc櫻井　専用コマンド適用箇所
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100100skr">
「覚悟！　でやあああああ――――あ？」

//あきゅん「修正指示：ロクロー登場ムーブで画面イン、音も付ける」
//★inc櫻井　修正
{	DeleteSt("C",200,false);
	CreateSE("SE", "se擬音_ギャグ_ドーン");
	MusicStart("SE", 0, 700, 0, 1000, null);
	St("MR",700, @350,@0,"buロクローb_通常_cry");
	Move("@StNameMR/MR*", 300, @-350, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100110rkr">
「ＮＯッ！！　ＮＯッ！！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100120skr">
「え？　な――た、ただの――」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100130skr">
「ただの変質者じゃねえかアアアアアアアアッ！！」


{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100140wfu">
「沙紅羅ちゃんッ？　助けに――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100150fjr">
「っていうか、え！？
　変質者って――みーちゃんのオバケじゃない！？」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100160skr">
「おうよ！　
　ただのすっぽんぽん露出狂のヘンタイだッ！」

{	CreateSE("SE01","se戦闘_打撃音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buロクローb_通常_cry");
	Shake("@StNameMR/MR*", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100170rkr">
「ぎゃうんっ！　やめてっ！　木刀は！
　死ぬよ！　マジでっ！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100180skr">
「うるさいっ！
　このヘンタイッ！　ヘンタイッ！　ヘンタイッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE02","se戦闘_打撃音04");
	MusicStart("SE02",0,700,0,1000,null,false);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buロクローb_通常_cry");
	Shake("@StNameMR/MR*", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100190rkr">
「いやんっ！　あはんっ！　そこは――
　うおっ！　ちょ！　潰れ――」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100200skr">
「潰して、二度と使えないようにしてやるッ！！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buロクローb_通常_cry");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100210rkr">
「勘弁してくださいッ！　オレにも養う家族が――」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100220skr">
「成敗――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	ClockPass(2312);

//	TextBoxDelete(150);

	DeleteSt("C",0,false);


	CreateTextureEX("EF100", 20000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);

//	CreateTextureEX("ライン", 2500, @0, Middle, "cg/mask/ciウィンドウ横01.png");
//	CreateTextureEX("ライン02", 2500, @0, Middle, "cg/mask/ciウィンドウ横02.png");
//	CreateWindow("ウィンドウ", 1500, 0, 166, 1024, 288, false);
//	CreateTextureEX("ウィンドウ/絵背景50", 1400, Center, Middle, "cg/ev/l/ev1830鈴ドロップキック_l.jpg");
//	Zoom("ウィンドウ", 0, 1000, 0, null, false);
//	Fade("ライン", 200, 1000, null, false);
//	Fade("ライン02", 200, 1000, null, false);
//	Fade("ウィンドウ/絵背景50", 200, 1000, null, false);
//	Zoom("ウィンドウ", 200, 1000, 1000, null, false);
//	Move("ライン", 200, @0, @160, null, false);
//	Move("ライン02", 200, @0, @-120, null, false);
//	Move("ウィンドウ/絵背景50", 500, @-150, @300, Axl2, true);


//あきゅん「修正指示：キックは全画面使ってもっと派手に」
//★inc櫻井　修正
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100230fjr">
「でいやあっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//◆ＳＥ：鈴ドロップキック！
	SetVolume("@xbgm*", 1000, 0, null);
	Zoom("EF100", 250, 20000, 20000, Axl2, false);
	FadeF4("EF100", 250, 1000, 3000, 0, 0, Axl3, false);
	Wait(150);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);
	CreateSE("SE01","se戦闘_打撃_ドロップキック01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("揺用", 2005);
	Shake("揺用", 500, 25, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");

//	FadeDelete("ウィンドウ/絵背景50",200,null,false);
//	FadeDelete("ライン",200,null,false);
//	FadeDelete("ライン02",200,null,false);
//	CreateSE("SE03","se戦闘_打撃音06");
//	MusicStart("SE03",0,700,0,1000,null,false);
	DeleteSt("C",200,false);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	Shake("@StNameC/C*", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 300, @-150, @0, null, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100240skr">
「うおっ！」

{	St("C",700, @-150,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100250skr">
「な――なんだよおまえッ！！」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100260fjr">
「ごめんなさいっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100270fjr">
「オバケなんて……
　アタシは大変な見間違いをしてしまったわ！」

{	St("C",700, @0,@0,"bu鈴_もじゃ_cry");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100280fjr">
「すみませんでしたっ！
　本当に――すみませんでしたっ！！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100290fjr">
「ロクロー様ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：同時
	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"buフウリ_通常_angry");
	St("MR",600, @0,@0,"bu沙紅羅_通常_sad");
	FadeAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100300wfu">
「ロクローさま……？」
{WaitAddText();}<BR>

//◆音声指示：同時
//【沙紅羅】
//<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100310skr">
//「ロクローさま……？」

</PRE>
	SetText();
	AddText(1,"「ロクローさま……？」","綿抜フウリ","c23/100100300wfu",false,false,1000);
	AddText(2,"「ロクローさま……？」","沙紅羅","c23/100100310skr",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

{	DeleteAllSt(200,true);
	St("C",600, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100320skr">
「って誰だっけ？　あれ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 500, 0, 1000, 5, null, "cg/data/turn_01_00_0.png", true);

//◆時間：ジャンプ
{	ClockPass(2315);}

//◆演出指示：時間経過
	Wait(2000);

	DeleteAllSt(0,false);
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);

	DrawDelete("絵色黒", 500, 5, null, "turn_01_00_1", true);


	SoundPlay("@xbgm20_noeff", 0, 450, true);

{	St("MR",700, @0,@0,"buロクローa_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100330rkr">
「いやあ、どうもありがとうございます」

{	St("MR",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100340rkr">
「しかも服まで持ってきてもらっちゃって……
　このままじゃ僕、トイレで凍死でしたよはっはっはー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"buロクローa_通常_shout");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100350rkr">
「ぜひ、このお礼をさせていただきたい！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100360fjr">
「いえ、そんな！　とんでもないっ！！
　ロクロー様の服に触れるなんて、光栄ですッ！！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buロクローa_通常_normal");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100370rkr">
「え？　あ、そうですか？」

{	DeleteSt("MR",200,false);
	St("L",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100380skr">
「あー、そかそか！　やっと思い出した！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100390skr">
「てめーアレだな！　パンツ持ってたヤツ！」

{	DeleteSt("L",200,false);
	St("MR",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100400rkr">
「そうですそうです！
　いやー、思い出してくれましたか！」

{	St("MR",700, @0,@0,"buロクローa_通常_normal");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100410rkr">
「ささ、それでは準備できてますんで、早速撮影に――」

{	DeleteSt("MR",200,false);
	St("L",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100420skr">
「だっ！　誰が行くかアアアアアアアッ！！」

{	Move("@StNameL/L*", 200, @+150, @0, Dxl1, false);
	DeleteSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100430fjr">
「だめええええええッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateColorEX("フラッシュ白", 20000, "WHITE");
	CreateSE("SE01","se戦闘_金属衝突01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("フラッシュ白",100,1000,null,true);
	St("MR",700, @0,@0,"bu鈴_シリアス_angry");
	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",0,false);
	FadeSt("MR",0,true);
	FadeDelete("フラッシュ白", 200, null, false);
	Shake("@StNameC/C*", 300, 12, 12, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @-150, @0, Dxl2, false);
	Move("@StNameMR/MR*", 200, @150, @0, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100440skr">
「ぬぅっ！」

{	DeleteSt("C",200,false);
	St("MR",700, @150,@0,"bu鈴_シリアス_hard");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100450fjr">
「ロクロー様にはっ！　触らせないっ！！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100460skr">
「おまえ……なかなかやるな！」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100470wfu">
「でも、鈴ちゃん、良く知ってましたねー」

{	DeleteSt("L",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100480fjr">
「もちろんよ！」

{
//	SetVolume("@xbgm*", 1000, 0, null);
	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("MR",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100490fjr">
「パロディＡＶ界の若き帝王！　ロクロー様！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★inc櫻井　アザナエル背景がNGでしたら、別のものに差し替えます。
//あきゅん「修正指示：まま使うのはさすがになんで、少しスクリプトで色を乗せたりして変な感じに」
//★inc櫻井　修正　色のせ＋拡大＋ウェーブといった形にしました。
{	CreateSE("歓声", "seガヤ_歓声_l");
	MusicStart("歓声", 350, 1000, 0, 1000, null,true);
	CreateColorEXadd("色のせ", 19100, RED);
	CreateColorEXadd("色のせ02", 19000, BLUE);

	CreateTextureEX("イメージ", 19000, @0, @0, "cg/img/imgアザナエルb.jpg");
	CreateTextureEX("ロクロー様", 19600, @-100, @150, "cg/bu/buロクローa_通常_smile.png");
	Request("@ロクロー様", Smoothing);
	Zoom("イメージ", 0, 1500, 1500, null, false);
	Zoom("ロクロー様", 0, 1500, 1500, null, false);
	DrawEffect("イメージ", 36000, "LowWave", 30, 30, null);

	Fade("色のせ", 1000, 500, null, false);
	Fade("色のせ02", 1000, 500, null, false);

	Fade("イメージ", 1000, 1000, null, false);
	Fade("ロクロー様", 1000, 1000, null, false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100500fjr">
「画面から溢れ出んばかりの才能と原作理解能力と二次元から三次元への異次元ワープでオタク界は話題騒然ッ！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100510fjr">
「一部のファンからはもはやアダルトな部分は不要！
　とさえ言われる伝説の男よ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2316);}

	DeleteSt("MR",0,false);
	SetVolume("歓声", 1000, 0, null);

	TextBoxDelete(150);
	
	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",2000,700,0,1000,null,true);
	FadeDelete("色のせ*",1000,null,false);
	FadeDelete("イメージ",1000,null,false);
	FadeDelete("ロクロー様",1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("ML",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100520fjr">
「かくいうアタシも――ロクロー様っ！！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buロクローa_通常_normal");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100530rkr">
「はい」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100540fjr">
「エキストラでいいんで、是非、ビデオに出させていただけると――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100550rkr">
「――本当に、エキストラでいいのかい？」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100560rkr">
「僕なら、君にステキな夢を見せてあげられるんだけどナ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100570fjr">
「す、す、すすす――ステキな夢！？」

//あきゅん「β演出：音声同期表情変化」
//★inc櫻井　専用コマンド適用箇所
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buロクローa_通常_pride");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100580rkr">
「夢の国まで――ベッド・イン」

//あきゅん「修正指示：ドロップキック演出入れる」
//★inc櫻井　修正　こちらの台詞の真下にいれました。
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@150,"bu鈴_もじゃ_angry");
	Move("@StNameML/ML*", 500, @0, @-150, null, false);
	Shake("@StNameML/ML*", 500, 5, 0, 0, 0, 300, null, false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100590fjr">
「キャ――――――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("EF100", 20000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("EF100", 0, 2000, 2000, Dxl2, true);
	SetBlur("EF100", true, 2, 500, 50, false);
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("EF100", 200, 1000, null, false);
	Zoom("EF100", 200, 1000, 1000, Dxl2, true);
	DeleteSt("ML",0,true);
	Zoom("EF100", 250, 20000, 20000, Axl2, false);
	FadeF4("EF100", 250, 1000, 3000, 0, 0, Axl3, false);
	Wait(150);
	Fade("EF100", 100, 0, null, true);
	Delete("EF100");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", false);
	CreateSE("SE01","se戦闘_打撃_ドロップキック01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("揺用", 2005);
	Shake("揺用", 500, 25, 15, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100600rkr">
「ふんげっ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100610skr">
「ちょドロップキック！　今なんで蹴ったの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteSt("ML",200,false);
	St("L",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100620wfu">
「興奮したときのクセなんですよー」

{	DeleteSt("L",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100630skr">
「クセ？　完璧に入ってたけど……」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100640fjr">
「あ！　ロクロー様っ！　ごめんなさい！」

{	DeleteSt("C",200,false);

	CreateSE("服はたく", "se動作_服叩く");
	MusicStart("服はたく", 0, 700, 0, 1000, null,false);
	St("MR",700, @0,@80,"buロクローa_通常_smile");
	Move("@StNameMR/MR*", 1000, @0, @-80, Dxl1, false);
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100650rkr">
「いや、気にしなくていいヨ！
　最近は、こういう快感にも目覚めてきたからネッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("服はたく", 1000, 0, null);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteSt("MR",200,false);
	St("L",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100660wfu">
「こういう快感……？」

{	DeleteSt("L",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100670skr">
「なんか、破れかぶれにも見えるけど……
　ってか、このヘンタイがホントにそんな人気あるのか？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100680fjr">
「なに言ってるの！？
　今日だって、大晦日特別イベントがあったばっかり――」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100690wfu">
「ああっ！！　そうだっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2317);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("L",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("L",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100700wfu">
「あの、鈴ちゃん？
　スーパーノヴァに、お客さん集まってますよね？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100710wfu">
「このままだとライブができなくて、その人たちは帰らなきゃいけないんですよね？」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100720fjr">
「え……ええ、そうだけど……」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100730wfu">
「トークライブくらいならできませんか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100740fjr">
「あ……そうか！」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100750wfu">
「あの、ロクローさん、お願いしますっ！！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100760wfu">
「とても急な話なんですが、今晩これから、私たちのイベントに参加してくれませんか？」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buロクローa_通常_normal");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100770rkr">
「僕が？」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/100100780wfu">
「はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100790fjr">
「お願いします！　アタシたちバンドをやってるんですけど、急に演奏できないことになって……」

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/100100800fjr">
「でも、せっかく来てくれたお客さんには、是非楽しんでもらいたいんです」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("MR",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100810rkr">
「もちろん――ＯＫだよっ！」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/100100820rkr">
「その程度でいいなら、いくらでも――」


{	SetVolume("@xbgm*", 4000, 0, null);
	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100830skr">
「ちょ、ちょっと待った！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/100100840skr">
「それじゃあの、アタシからも提案があるんだけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵黒", 30000, "Black");

	SetVolume("SE*", 2000, 0, null);
	Fade("絵黒",2000,1000,null,true);

	DeleteAllSt(0,true);

	Wait(1000);





	EndScene();
}
