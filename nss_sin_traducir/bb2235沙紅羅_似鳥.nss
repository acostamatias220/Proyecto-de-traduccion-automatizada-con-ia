
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bb2235沙紅羅_似鳥.nss_MAIN
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
	$GameName = "bb2400千秋_恵那.nss";//★エンディングへ（bb）
}

scene bb2235沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1030">
////////////header////////////
//file name "bb2235沙紅羅_似鳥.nss"
//title "奇跡の涙！？"
//previous "ba2230沙紅羅_似鳥.nss"

////////////footer////////////
//next "bb2400千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	Request("@SE*", UnLock);

//※下倉注：ファイル名と分数が異なるので注意！

{	ClockPass(2233);}

	SoundPlay("@xbgm23",0,450,true);

	CreateSE("走る", "se動作_走る03_l");
	MusicStart("走る", 0, 700, 0, 1000, null,false);

	OnBG(10,"bg1102200スパコン館_通路_半崩壊");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, null, "slide_01_02_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @-150,@0,"bu似鳥_通常_shout");
	Move("@StNameC/C*", 200, @150, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100010nki">
「沙紅羅！」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100020skr">
「ここか！」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100030nki">
「ああ、行くぞ！！」

//▼シナリオ整合により修正
{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100040skr">
「おうっ！！　覚悟――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1500, 0, null);


	TextBoxDelete(150);

	SceneOut(5000, 500, "blind_01_00_0");

//◆場所：スパコン館_店内_半崩壊

	CreateSE("SE77","se環境_地鳴り02_l");
	MusicStart("SE77",1000,1500,0,1000,null,true);


	OnBG(10,"bg1103200スパコン館_店内_半崩壊");
	DeleteSt("C",0,true);
	FadeBG(0,true);
	CreatePlainSP("揺用", 50);
	SceneIn(500, "blind_01_00_1");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @-100,@0,"bu沙紅羅_通常_shout");
	Move("@StNameC/C*", 200, @100, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100050skr">
「おいコラ！　化けダヌキ！　聞こえるか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE05","se環境_地鳴り03");
	MusicStart("SE05",0,500,0,1000,null,false);

	CreateTextureEX("絵背景１", 2000, Center, @-400, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Move("絵背景１", 0, @0, @400, Dxl2, true);

	Shake("絵背景１", 1000, 5, 2, 0, 0, 500, AxlDxl, false);
	Fade("絵背景１", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100060tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵背景１", 300, null, true);


	CreateSE("破壊", "se戦闘_倒壊01");
	MusicStart("破壊", 0, 700, 0, 1000, null,false);
	Shake("揺用", 300, 30, 45, 0, 0, 1000, Dxl1, false);
//あきゅん「修正指示：震動感弱い、もっと激しく」
//★inc櫻井　修正

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100070skr">
「がッ！　クソッ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100080skr">
「いいから撃っちまうか……？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100090nki">
「駄目だ！」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100100nki">
「今撃ったら――その願いが、街を壊しちまうかも」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100110skr">
「く！　けど――」

{	DeleteSt("C",200,false);}
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100120tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指示：大きく床が揺れる
//あきゅん「修正指示：震動感弱い、もっと激しく、あと音」
//★inc櫻井　修正

	Shake("揺用", 500, 60, 85, 0, 0, 500, Dxl1, false);
	CreateSE("破壊02", "se戦闘_倒壊01");
	MusicStart("破壊02", 0, 700, 0, 1000, null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100130skr">
「がぁっ！　ヤバい……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100140skr">
「このままじゃ、ビルごと――」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100150nki">
「ってか、道路とか壊して――ああ、そっちは駄目！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolume("破壊*", 1000, 0, null);

	CreateWindow("ウィンドウ上", 1500, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 1500, 0, 288, 1024, 576, false);

	CreateTextureSP("ウィンドウ上/絵背景50", 1500, Center, Middle, "cg/bg/bg1103200スパコン館_店内_半崩壊.jpg");
	CreateTextureSP("ウィンドウ下/絵背景50", 1500, Center, Middle, "cg/bg/bg1103200スパコン館_店内_半崩壊.jpg");

	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CreateTextureSP("tanuki", 1300, 0, Middle, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	CreateTextureSP("絵背景", 1200, 0, Middle, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	Request("@tanuki", Smoothing);
	Move("tanuki", 0, @-400, @500, null, true);
	Zoom("tanuki", 0, 1500, 1500, null, true);

	Fade("絵背景枠*", 0, 1000, null, true);
	Move("絵背景枠01", 200, @0, @-150, Dxl1, false);
	Move("絵背景枠02", 200, @0, @+150, Dxl1, false);
	Move("ウィンドウ上", 200, @0, @-150, Dxl1, false);
	Move("ウィンドウ下", 200, @0, @+150, Dxl1, true);
	SetBlur("tanuki", true, 2, 500, 50,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100160tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2234);}

	TextBoxDelete(150);

	Move("ウィンドウ上", 200, @0, @-150, null, false);
	Move("ウィンドウ下", 200, @0, @+150, null, false);
	Move("絵背景枠01", 200, @0, @-150, null, false);
	Move("絵背景枠02", 200, @0, @+150, null, true);
	DeleteSt("ML",0.false);

	Delete("ウィンドウ*");
	Delete("絵背景枠*");
	Wait(500);
	CreateSE("振る", "se戦闘_風切り音10");
	MusicStart("振る", 0, 1200, 0, 1000, null,false);

	Move("tanuki", 300, @0, @-300, Axl1, true);

	SceneOut(5000, 100, "slide_02_01_0");


//◆演出指示：ビルが揺れる

	OnBG(10,"bg1103200スパコン館_店内_半崩壊");
	DeleteSt("C",0,true);
	FadeBG(0,true);


	Delete("絵背景");
	Delete("tanuki");

	SceneIn(100, "slide_02_01_1");

//あきゅん「修正指示：震動感弱い、もっと激しく」
//★inc櫻井　修正

	CreateSE("破壊03", "se戦闘_倒壊04");
	MusicStart("破壊03", 0, 1200, 0, 1000, null,false);
	Shake("揺用", 600, 80, 92, 0, 0, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100170skr">
「あああっ！　クソッ！」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100180skr">
「こうなったら一か八か――」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100190nki">
「木刀？　しかも半分？」

{	DeleteSt("ML",200,false);}
　沙紅羅は真っ二つにされた木刀、喝雄不死の片割れを手に取る。


{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100200skr">
「すまない、タカ！　けど――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100210skr">
「今のアタシには、これしかないんだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("破壊*", 1000, 0, null);
	DeleteSt("C",200,true);


//左ウィンドウ


//タヌキ
	CreateTextureEX("tanuki", 2000, -400, 0, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Request("@tanuki", Smoothing);
	Zoom("tanuki", 0, 1500, 1500, null, true);
	Move("tanuki", 10000, @0, @200, null, false);
	Fade("tanuki", 1000, 1000, null, false);

//あきゅん「修正指示：木刀折れてるので沙紅羅アップ気味で」
//あきゅん「修正指示：カット枠付けてください」
//★inc櫻井

//窓1
	CreateWindow("絵窓", 2550, 25, 0, 350, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓/絵演背景", 2500, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 2600, -677, -337, "cg/fu/fu沙紅羅_木刀_hard.png");
	Zoom("絵窓/絵演立絵", 0, 600, 600, null, true);

	Request("絵窓/絵演立絵", Smoothing);
	CreateTextureEX("ライン03", 3000, @190, @0, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("ライン04", 3000, @190, @0, "cg/mask/ciウィンドウ縦02.png");
	Fade("ライン03", 200, 1000, null, false);
	Fade("ライン04", 200, 1000, null, false);
	Move("ライン03", 200, @-175, @0, Dxl2, false);
	Move("ライン04", 200, @175, @0, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100220skr">
「行くぜ、大狸」

{	CreateTextureEX("絵窓/絵演立絵02", 2600, -677, -337, "cg/fu/fu沙紅羅_木刀_shout.png");
	Zoom("絵窓/絵演立絵02", 0, 600, 600, null, true);
	Request("絵窓/絵演立絵02", Smoothing);
	FadeDelete("絵窓/絵演立絵",300,Axl2,false);
	Fade("絵窓/絵演立絵02", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100230skr">
「うおおおおおおおおおおおお――――」

//あきゅん「修正指示：木刀投げる演出」
//★inc櫻井　修正
{	CreateTextureEX("絵窓/絵演立絵03", 2600, -677, -337, "cg/fu/fu沙紅羅_木刀_rage.png");
	Zoom("絵窓/絵演立絵03", 0, 600, 600, null, true);
	Request("絵窓/絵演立絵03", Smoothing);
	FadeDelete("絵窓/絵演立絵02",300,Axl2,false);
	Fade("絵窓/絵演立絵03", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100240skr">
「でりゃあああああ――――ッ！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE77", 1000, 0, null);

	TextBoxDelete(150);

	CreateSE("ジャンプ", "se動作_足踏み");
	MusicStart("ジャンプ", 0, 1200, 0, 1000, null,false);

	Move("絵窓/絵演立絵03", 500, @150, @96, Axl1, false);
	FadeDelete("絵窓/絵演背景",500,Dxl1,false);
	FadeDelete("ライン*",500,Dxl1,false);
	FadeDelete("絵窓/絵演立絵03",500,Dxl1,true);


	CreateSE("振る", "se戦闘_風切り音10");
	MusicStart("振る", 0, 1200, 0, 1000, null,false);
	SetBlur("tanuki", true, 3, 500, 50,false);
	Move("tanuki", 500, @-200, @600, null, false);
	Zoom("tanuki", 500, 2500, 2500, null, true);




	EffectZoom(10000, 1000, 400, "cg/ef/ef木刀剣閃a.jpg", false);


	SceneOut(5000, 100, "zzex_circle_01_00_0");

	Delete("絵窓*");
	Delete("ライン*");
//	Delete("ライン02", 500, null, true);



	OnBG(10,"bg1103200スパコン館_店内_半崩壊");
	FadeBG(0,true);

	Delete("tanuki");

	SceneIn(100, "zzex_circle_01_00_1");

//◆ＳＥ：コツン
	SetVolume("@xbgm19", 1000, 0, null);

	Wait(300);
	CreateSE("コツン", "se戦闘_木刀_コツン");
	MusicStart("コツン", 0, 1500, 0, 1000, null, false);
	CreateSE("風", "se環境_風_l");
	MusicStart("風", 0, 1000, 0, 1000, null, true);

	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100250tsr">
「…………」

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100260nki">
「あ。反応した……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：枠付けてください」
//★inc櫻井　修正

	DeleteSt("ML",200,false);
//窓1
	CreateWindow("絵窓", 1500, 25, 0, 350, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓/絵演背景", 1500, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1600, @-300, @-100, "cg/bu/bu沙紅羅_通常_smile.png");

//窓2
	CreateWindow("絵窓02", 1500, 650, 0, 350, 600, false);
	SetAlias("絵窓02","絵窓02");
	Zoom("絵窓02", 0, 0, 1000, null, true);

//キャラ準備
	CreateTextureEX("絵窓02/絵演立絵", 1600, @-300, 0, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");


	CreateTextureEX("ライン", 2000, @810, @0, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("ライン02", 2000, @810, @0, "cg/mask/ciウィンドウ縦02.png");


	Fade("ライン", 200, 1000, null, false);
	Fade("ライン02", 200, 1000, null, false);
	Move("ライン", 200, @-175, @0, Dxl2, false);
	Move("ライン02", 200, @175, @0, Dxl2, false);


	Zoom("絵窓02", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓02/絵演立絵", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100270tsr">
「ぐおおお……おおお……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：もっさいので、メリハリつけてください。沙紅羅通常フェードはするなら移動もさせる」
//★inc櫻井　修正

	CreateTextureEX("ライン03", 2000, @190, @0, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("ライン04", 2000, @190, @0, "cg/mask/ciウィンドウ縦02.png");
	Fade("ライン03", 200, 1000, null, false);
	Fade("ライン04", 200, 1000, null, false);
	Move("ライン03", 200, @-175, @0, Dxl2, false);
	Move("ライン04", 200, @175, @0, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100280skr">
「よお、久しぶり」

{	CreateTextureEX("絵窓/絵演立絵02", 1600, @-300, @-100, "cg/bu/bu沙紅羅_通常_normal.png");
	Fade("絵窓/絵演立絵02", 200, 1000,null,false);
	FadeDelete("絵窓/絵演立絵", 300,Axl2,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100290skr">
「ずいぶんでかくなったもんだな」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100300tsr">
「ぐおおお……おおお……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	CreateTextureEX("絵窓/絵演立絵03", 1600, @-300, @-100, "cg/bu/bu沙紅羅_通常_sad.png");
	Fade("絵窓/絵演立絵03", 200, 1000,null,false);
	FadeDelete("絵窓/絵演立絵02", 300,Axl2,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100310skr">
「おいおい、大の大人がみっともねぇなあ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵窓/絵演立絵04", 1600, @-300, @-100, "cg/bu/bu沙紅羅_通常_normal.png");
	Fade("絵窓/絵演立絵04", 200, 1000,null,false);
	FadeDelete("絵窓/絵演立絵03", 300,Axl2,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100320skr">
「泣きたいときは、便所で泣けよ」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100330tsr">
「ぐおおお……おおお……」

{	CreateTextureEX("絵窓/絵演立絵05", 1600, @-300, @-100, "cg/bu/bu沙紅羅_通常_sad.png");
	Fade("絵窓/絵演立絵05", 200, 1000,null,false);
	FadeDelete("絵窓/絵演立絵04", 300,Axl2,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100340skr">
「まあ、その身体で入れる便所もねぇか」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100350skr">
「アタシにも、気持ちはわかるぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2235);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100360skr">
「好きなヤツに先立たれんのは、辛いよな」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100370tsr">
「ぐおおおおおおお…………」

//あきゅん「修正指示：アザナエル出すなら画面全体切り替えて」
//★inc櫻井　修正
{	CreateTextureEX("アザナエル", 5000, @0, @0, "cg/img/imgアザナエル.jpg");
	Fade("アザナエル", 1000, 1000, null, true);
	Delete("絵窓*");
	Delete("ライン*");}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100380skr">
「知ってるか？　こいつはアザナエルっていう」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100390skr">
「ロシアンルーレットに成功すれば、撃たれたヤツの願いが叶うんだ」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100400tsr">
「ぐおおおおおおお…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	FadeDelete("アザナエル",500,null,true);


	Delete("ウィンド*");

	SoundPlay("@xbgm01_noint", 0, 1000, true);


	CreatePlainEX("絵ぼかし背景", 90);
	Request("絵ぼかし背景", Smoothing);
	SetShade("絵ぼかし背景", MIDEUM);
	Zoom("絵ぼかし背景", 0, 2000, 2000, null, true);

	CreateTextureEX("絵背景100", 19010, 100, -757, "cg/bu/l/bu沙紅羅_銃構え_x01_ogm.png");
	Move("絵背景100", 0, @0, @0, null, true);


	Fade("絵背景100", 1000, 1000, null, false);
	Fade("絵ぼかし背景", 1000, 1000, null, false);
	Move("絵ぼかし背景", 3000, -30, 200, AxlDxl, false);
	Move("絵背景100", 3000, 42, -426, AxlDxl, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100410skr">
「ああ、そうだ。安心しろ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100420skr">
「大丈夫。今、楽にしてやるよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100430skr">
「アタシがお前の願い、叶えて――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100440skr">
「フウリを、この世に生き返らせてやるッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：メリハリないのでＳＥに合わせて消すならパッと消す」
//★inc櫻井　修正
	SetVolume("@xbgm*", 0, 0, null);

//◆ＳＥ：カチッ！
	CreateSE("弾切れ", "se銃_弾切れ01");
	MusicStart("弾切れ", 0, 1200, 0, 1000, null, false);

	Move("絵背景100", 50, @0, @10, null, true);
	Move("絵背景100", 50, @0, @-10, null, true);


	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100450skr">
「ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：カチッ！カチッ！カチッ！
	CreateSE("弾切れ02", "se銃_弾切れ02");
	MusicStart("弾切れ02", 0, 700, 0, 1000, null, false);

	Move("絵背景100", 50, @0, @10, null, true);
	Move("絵背景100", 50, @0, @-10, null, true);

	Wait(250);

	Move("絵背景100", 50, @0, @10, null, true);
	Move("絵背景100", 50, @0, @-10, null, true);

	Move("絵背景100", 50, @0, @10, null, true);
	Move("絵背景100", 50, @0, @-10, null, true);

	FadeDelete("絵ぼかし背景", 300, null, false);
	FadeDelete("絵背景100", 300, null, true);


	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100460skr">
「アレ？　なんで？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100470nki">
「あ……そうか！」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100480nki">
「さっきの一発で、弾切れ――？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100490skr">
「なっ！？　ちょっと！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100500skr">
「そういうことは、早く――」

{	DeleteSt("C",200,false);}
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100510tsr">
「ぐおおおおおおおおおっっっっ！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("風", 1000, 0, null);
	SoundPlay("@xbgm19",0,700,true);


	TextBoxDelete(150);
	SceneOut(5000, 300, "slide_02_01_0");

//あきゅん「修正指示：怒りのタヌキなんで揺らすなりしてください」
//★inc櫻井　修正
	CreateTextureEX("tanuki", 1500, @0, @0, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Request("@tanuki", Smoothing);
	Zoom("tanuki", 0, 1500, 1500, null, false);
	Move("tanuki", 0, @-400, @100, null, true);
	Fade("tanuki", 0, 1000, null, true);
	SetBlur("tanuki", true, 1, 500, 200, false);

	MoveFTP3("@tanuki", 6000, 2, 3);

	SceneIn(300, "slide_02_01_1");

	Shake("tanuki", 1000, 20, 20, 0, 0, 1000, null, true);



	CreateSE("破壊", "se戦闘_倒壊01");
	MusicStart("破壊", 0, 1200, 0, 1000, null,false);


//あきゅん「修正指示：破壊された背景を使用してください」
//あきゅん「修正指示：枠つける」
//★inc櫻井　修正　上記二点

	CreateTextureEX("ライン", 5000, @0, @230, "cg/mask/ciウィンドウ横01.png");
	CreateTextureEX("ライン02", 5000, @0, @230, "cg/mask/ciウィンドウ横02.png");
	Move("ライン", 200, @0, @150, Dxl2, false);
	Move("ライン02", 200, @0, @-150, Dxl2, false);

	Fade("ライン", 200, 1000, null, false);
	Fade("ライン02", 200, 1000, null, false);
	CreateWindow("絵窓", 1500, 0, 96, 1024, 300, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1550, @-100, Middle, "cg/bg/l/bg1103200スパコン館_店内_半崩壊_l.jpg");
	CreateTextureSP("絵窓/絵演背景2", 1400, @-100, Middle, "cg/bg/l/bg1103200スパコン館_店内_半崩壊_l.jpg");
//	SetShade("絵窓/絵演背景", HEAVY);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1600, @150, middle, "cg/bu/bu沙紅羅_通常_surprise.png");
	CreateTextureEX("絵窓/絵演立絵2", 1650, -215, -272, "cg/fu/fu似鳥_通常_angry.png");

//動作
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100520skr">
「や……やっべ！　怒らせちまった――ぎゃっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("破壊02", "se戦闘_倒壊02");
	MusicStart("破壊02", 0, 700, 0, 1000, null,false);


//あきゅん「修正指示：沙紅羅立ち位置微妙、似鳥と合わせて調整する」
//★inc櫻井　修正

//◆演出指示：ビルが激しく揺れる
	CreateTextureEX("絵窓/絵演立絵02", 1610, @150, middle, "cg/bu/bu沙紅羅_通常_pain.png");
	FadeDelete("絵窓/絵演立絵",300,Axl2,false);
	Fade("絵窓/絵演立絵02", 200, 1000, null, true);


	TextBoxDelete(150);
	Shake("絵窓/絵演背景", 300, 92, 60, 0, 0, 1000, Dxl1, true);

	DeleteSt("C",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100530tsr">
「ぐおおおおおおおおおっっっっ！！！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100540skr">
「クソッ！　もう……駄目だ！　逃げる――」

{	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100550nki">
「逃げねえ」

{	CreateTextureEX("絵窓/絵演立絵", 1620, @150, middle, "cg/bu/bu沙紅羅_通常_surprise.png");
	FadeDelete("絵窓/絵演立絵02",300,Axl2,false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100560skr">
「は……？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100570nki">
「ここで逃げたら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2236);}

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	CreateTextureEX("絵窓/絵演立絵03", 1650, -215, -272, "cg/fu/fu似鳥_通常_rage.png");
	FadeDelete("絵窓/絵演立絵2",300,Axl2,false);
	Fade("絵窓/絵演立絵03", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100580nki">
「ノーコが命を懸けてオレに伝えたことが、無駄になっちまうじゃねぇか――――ッ！！」

{	CreateTextureEX("絵窓/絵演立絵04", 1620, @150, middle, "cg/bu/bu沙紅羅_通常_sad.png");
	FadeDelete("絵窓/絵演立絵0",300,Axl2,false);
	Fade("絵窓/絵演立絵04", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100590skr">
「いやいやでもお前、なんの手も――」

{
	SetVolume("破壊*", 3000, 0, null);
	SetVolume("@xbgm*", 3000, 0, null);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100600nki">
「ウッセーバカ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：似鳥の手に、カッターナイフ


	CreatePlainSP("絵短刃板写", 6500);

	Delete("ライン*");

	CreateTextureSP("背景カッター下", 2000, -512, Middle, "cg/bg/bg1103200スパコン館_店内_半崩壊.jpg");
	SetShade("背景カッター下", MIDEUM);
	Zoom("背景カッター下", 0, 2000, 2000, null, true);

	CreateTextureSP("絵短刃下", 2100, Center, Middle, "cg/img/imgカッターバラd.png");
	CreateTextureSP("絵短刃上", 2120, Center, Middle, "cg/img/imgカッターバラb.png");

	CreateTextureSP("絵短刃", 2110, 541, -1066, "cg2/img/imgカッターバラc.png");
	SetBlur("絵短刃", true, 2, 500, 60, false);

	Wait(16);
	FadeDelete("絵短刃板写", 300, null, true);


	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	Move("絵短刃", $SETime, 432, -1005, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100610nki">
「勝算とか、そういう問題じゃないんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreatePlainSP("揺用", 7005);

	Delete("絵短刃*");
	Delete("背景カッター下");
	Delete("絵窓");

	Fade("揺用", 500, 0, null, true);
	Delete("揺用");



//窓02準備
	CreateWindow("絵窓02", 15000, 0, 96, 1024, 300, false);
	SetAlias("絵窓02","絵窓02");
	Zoom("絵窓02", 0, 1000, 0, null, true);

//あきゅん「修正指示：枠」
//★inc櫻井　修正

	Fade("カッター", 500, 0, null, true);
	Delete("カッター");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100620tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureSP("絵窓02/絵演背景", 1550, Center, Middle, "cg/bg/l/bg1103200スパコン館_店内_半崩壊_l.jpg");
	CreateTextureSP("絵窓02/絵演背景2", 1400, Center, Middle, "cg/bg/l/bg1103200スパコン館_店内_半崩壊_l.jpg");
//	SetShade("絵窓02/絵演背景", HEAVY);

//キャラ準備
	CreateTextureEX("絵窓02/絵演立絵2", 1590, -215, -272, "cg/fu/fu似鳥_眼鏡上げ_mad.png");

//動作
	CreateTextureEX("ライン", 5000, @0, @230, "cg/mask/ciウィンドウ横01.png");
	CreateTextureEX("ライン02", 5000, @0, @230, "cg/mask/ciウィンドウ横02.png");
	Move("ライン", 200, @0, @150, Dxl2, false);
	Move("ライン02", 200, @0, @-150, Dxl2, false);

	Fade("ライン", 200, 1000, null, false);
	Fade("ライン02", 200, 1000, null, false);
	Zoom("絵窓02", 200, 1000, 1000, Dxl2, true);
	Fade("絵窓02/絵演立絵2", 200, 1000, null, true);

	SoundPlay("@xbgm25", 0, 450, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100630nki">
「オレは逃げねぇぞ！　今度こそ逃げねぇぞ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100640nki">
「ずっと、ずっと逃げてきたんだ！
　逃げてきて、このザマなんだ！」

{	CreateTextureEX("絵窓02/絵演立絵3", 1590, -215, -272, "cg/fu/fu似鳥_通常_rage.png");
	Fade("絵窓02/絵演立絵3", 200, 1000, null, false);
	FadeDelete("絵窓02/絵演立絵2",300,Axl2,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100650nki">
「オレは逃げねぇ！　絶対逃げねぇ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100660nki">
「逃げてたまるか！　もう……もう……」

{	CreateTextureEX("絵窓02/絵演立絵4", 1590, -215, -272, "cg/fu/fu似鳥_通常_sad.png");
	Fade("絵窓02/絵演立絵4", 200, 1000, null, false);
	FadeDelete("絵窓02/絵演立絵3",300,Axl2,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100670nki">
「もう……ノーコに……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100680nki">
「ノーコに、あんな決断させて……たまるかよ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEXadd("回想白", 20000, "WHITE");
	Fade("回想白", 1000, 1000, null, true);

	MoveFTP3stop();

	Delete("絵窓*");
	Delete("@OnBG*");
	Delete("tanuki");

	CreateColorEX("下黒", 500, "BLACK");
	Fade("下黒", 0, 1000, null, true);
	Delete("ライン*");

//★ inc櫻井　全部表示せず、見切れ表示にしています。
	CreateTextureSP("ノーコ", 1000, Center, InBottom, "cg2/fu/fuノーコa_通常_normal.png");
	Move("ノーコ", 0, @500, @0, null, false);
	FadeDelete("回想白",500,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100690nki">
「昔のオレには――アイツが、必要で」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100700nki">
「必要だから、生み出されて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★inc櫻井　修正　表情変更　テンポ調整
	CreateTextureEX("ノーコ02", 1000, Center, InBottom, "cg2/fu/fuノーコa_通常_pain.png");
	Move("ノーコ02", 0, @500, @0, null, false);
	FadeDelete("ノーコ", 300, Axl2,false);
	Fade("ノーコ02", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100710nki">
「でも、もう今は、邪魔になった」

//あきゅん「修正指示：切り替え雑、速度テンポ調整」
//★inc櫻井　修正　表情変更　テンポ調整
{	CreateTextureEX("ノーコ03", 1100, Center, InBottom, "cg2/fu/fuノーコa_通常_fear.png");
	Move("ノーコ03", 0, @500, @0, null, false);
	FadeDelete("ノーコ02", 300, Axl2,false);
	Fade("ノーコ03", 200, 1000, null, true);}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100720nki">
「捨て去らなきゃ、駄目になった」

//あきゅん「修正指示：切り替え雑、速度テンポ調整」
//★inc櫻井　修正　表情変更　テンポ調整
{	CreateTextureEX("ノーコ04", 1200, Center, InBottom, "cg2/fu/fuノーコa_通常_cry.png");
	Move("ノーコ04", 0, @500, @0, null, false);
	FadeDelete("ノーコ03", 300, Axl2,false);
	Fade("ノーコ04", 200, 1000, null, true);}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100730nki">
「まだ、心は惹かれてるのに」

{	FadeDelete("ノーコ04", 1000, null,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100740nki">
「だから、オレは苦しくて」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100750nki">
「苦しくて、苦しくて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("ノーコ05", 2500, @0, @0, "cg/ev/l/ev1800ノーコ雨風に濡れる_l.jpg");
//	Move("ノーコ05", 10000, @00, @0, null, false);

	Fade("ノーコ05", 1000, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100760nki">
「だから、アイツをあんなに悩ませて」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100770nki">
「最後には、アザナエルまで――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100780nki">
「あいつは……ただ……」

//あきゅん「修正指示：描画動作中にの素材定義はガクガクするので生成位置を調整、ここら辺全般」
//★inc櫻井　調整
{	CreateTextureEX("ノーコ06", 2500, @-500, @-800, "cg/ev/l/ev2230カゴメアソビ3_l.jpg");
	Move("ノーコ06", 2000, @0, @200, Dxl1, false);
	Fade("ノーコ06", 1000, 1000, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100790nki">
「ただ、自分を認めて欲しかったんだ」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100800nki">
「オレが、アイツのおかげで、この世界にいる意味が持てたみたいに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：面白いですね、良いと思います、移動終了位置が悪いので少し調整」
//★inc櫻井　修正　似鳥の初期立ち位置を変更
//★inc櫻井　ノーコと似鳥の気持ちのすれ違い的演出です。　演出のため、stとbuを同時表示しています。

	CreateColorEX("白", 5000, WHITE);
	Fade("白", 1000, 1000, null, true);

	Delete("ノーコ*");

	CreateColorEX("下白", 550, WHITE);
	Fade("下白", 0, 1000, null, true);



	St("C",700, @200,@0,"bu似鳥_通常_normal");
	St("L",600, @300,@0,"stノーコa_通常_normal");


	FadeDelete("白",300,null,true);

	Move("@StNameC/C*", 5000, @100, @0, null, false);
	Move("@StNameL/L*", 5000, @-200, @0, null, false);

	FadeSt("C",200,false);
	FadeSt("L",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100810nki">
「アイツも、意味が欲しかっただけで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("白", 5000, WHITE);
	Fade("白", 100, 1000, null, true);

	OnBG(10,"bg1103200スパコン館_店内_半崩壊");
	FadeBG(0,true);

	Delete("下黒");
	DeleteSt("C",0,false);
	DeleteSt("L",0,false);

	FadeDelete("白",1000,null,true);

//あきゅん「修正指示：移動終了位置の調整」
//★inc櫻井　修正　似鳥の初期位置を少し左へずらしました。　ノーコの移動位置も少し右よりに。
	St("MR",600, @50,@0,"st似鳥_通常_normal");
	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	Move("@StNameMR/MR*", 5000, @100, @0, null, false);
	Move("@StNameC/C*", 5000, @-150, @0, null, false);


	FadeSt("C",200,false);
	FadeSt("MR",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100820nki">
「オレから一言、欲しかっただけで……」

//★ inc櫻井　消えていくノーコ
{	DeleteSt("C",1000,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100830nki">
「オレが自分の気持ちを伝えるのが……遅くて、それで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2237);}

	CreateColorEX("白", 5000, WHITE);
	Fade("白", 500, 1000, null, true);

	Delete("下白");
	DeleteSt("MR",0,false);

	FadeDelete("白",500,null,true);

//★ inc遠藤 以下のニトリ特にポーズ変更時、残像現象が気になるので
// 「ポーズを返る時はTrue（前のポーズはデリート）」で。

	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_mad");
	FadeSt("C",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100840nki">
「あああっ！　クソッ！」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100850nki">
「手遅れにさせて……たまるかよ……」

{	SetVolume("@xbgm25", 2000, 0, null);
	St("C",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100860nki">
「ああ、今度こそ――今度こそ、認めてやるッ！！」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100870nki">
「オレは……オレは……オレだって……！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100880nki">
「ノーコが……本当に……」

{	St("C",700, @0,@0,"fu似鳥_通常_rage");
	FadeSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100890nki">
「本当に……好きだったんだあああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se環境_風と葉っぱ_l");
	MusicStart("SE01",2000,700,0,1000,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100900skr">
「似鳥……」

{
	DeleteAllSt(200,true);

	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100910nki">
「みんな……みんな、オレのせいなんだ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100920nki">
「誰のせいでもない……オレが……」

{	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100930nki">
「ずっと、逃げてたオレが……悪かったんだよ……」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100940nki">
「う……う……」

{	CreateSE("ガクリ", "se人体_倒れる04");
	MusicStart("ガクリ", 0, 700, 0, 1000, null,false);
	Move("@StNameC/C*", 500, @0, @300, Axl1, false);
	DeleteSt("C",300,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100950nki">
「うぁぁぁぁああああああああああん…………！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100960tsr">
「ひぐっ、う、う、うう……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350100970skr">
「え？　大狸？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteSt("C",200,true);


	CreateTextureEX("tanuki02", 3000, 0, middle, "cg/ev/l/ev2220太四郎ビル大破壊d_l.jpg");

	Move("tanuki02", 20000, -512, @0, null, false);

	Fade("tanuki02", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350100980tsr">
「うぁぁぁぁああああああああああん…………！！！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350100990nki">
「うぁぁぁぁああああああああああん…………！！！！」

//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350101000tsr">
「うぁぁぁぁああああああああああん…………！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("tanuki03", 3000, Center, InBottom, "cg/ev/ev2220太四郎ビル大破壊d.jpg");
	Fade("tanuki03", 1000, 1000, null, true);

/*
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350101010nki">
「うぁぁぁぁああああああああああん…………！！！！」

//◆音声指示：同時
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/350101020tsr">
「うぁぁぁぁああああああああああん…………！！！！」
*/



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250a]
//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/350101010">
「うぁぁぁぁああああああああああん…………！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/350101030skr">
「なな……なんなんだよ、これ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("風", 1000, 0, null);

	SetVolumeEX("@xbgm*", 2000, 0, null);
	SetVolumeEX("SE*", 2000, 0, null);
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(1000);

	EndScene();
}
