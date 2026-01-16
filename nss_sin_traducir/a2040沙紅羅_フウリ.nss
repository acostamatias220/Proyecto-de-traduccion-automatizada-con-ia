
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene a2040沙紅羅_フウリ.nss_MAIN
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
	$GameName = "2045沙紅羅_フウリ.nss";
//	$GameCircle=false;


}

scene a2040沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="890">
////////////header////////////
//file name "a2040沙紅羅_フウリ.nss"
//title "決着には早すぎる"
//previous "2030沙紅羅_フウリ.nss"


////////////footer////////////
//next "沙紅羅" "2045沙紅羅_フウリ.nss"
//next "フウリ" "2045沙紅羅_フウリ.nss"



////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

//あきゅん「演出：SE引き継ぎ」
	Request("@SE*", UnLock);
	SetVolumeEX("@SE*", 2000, 0, null);
	CreateSE("SE20","seガヤ_歓声_l");
	MusicStart("SE20",2000,250,0,1000,null,true);

	FadeDelete("上背景", 0, null, true);

{	ClockPass(2040);}

	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);


// 2040沙紅羅_フウリ.nss に合わせる

//あきゅん「修正指示：全体的にもっと歓声などの音を使用して盛り上がっている感を」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100010ktt">
「なんか、色々大変そうですね」

{	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100020ktt">
「後手後手なのは知ってたけど、このタイミングで出演者が見つからないなんて」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100030wfu">
「…………」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100040ktt">
「フウリさん？　どうしました？」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100050wfu">
「え……いや、その……」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100060wfu">
「もしかしたら、少しくらいペースを緩めた方がいいのかなって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

// ここまで

//◆ＳＥ：ジングル
	DeleteAllSt(200,false);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("MR",0,true);

	OnBG(100,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	DrawDelete("黒幕１", 300, 100, null, "blind_01_00_1", true);


	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	SoundPlay("@xbgm16",0,450,true);

	SetVolumeEX("SE20", 4000, 0, null);
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);


{	ClockPass(2041);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100070mrp">
『秋葉原からネットとテレビ同時中継でお送りしている全国ゆるキャラバン決定戦！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100080mrp">
『４８都道府県のゆるキャラバトルを勝ち抜いた精鋭たちが、今、秋葉原で激突するわ！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100090mrp">
『引き続き、現在圧倒的トップを走っているのは――』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100100mrp">
『秋葉原チーム代表、沙紅羅選手！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100110mrp">
『ペースは落ち、後方に差を詰められてはいるけど――』

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	DeleteSt("C",200,false);
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100120skr">
「ちゅる……ちゅる……」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100130skr">
「ちゅるるるるる……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100140skr">
「ご、ご……ごちそうさま……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100150skr">
「んげっぷ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「修正指示：マスクの縁に飾り枠の追加をお願いします。」

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEX("スラッシュ", 1620, 600, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEXadd("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);


{	ClockPass(2042);}


	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100160mrp">
『沙紅羅選手！　見事、３品完食――――ッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, false);
	Fade("スラッシュ", 200, 0, Axl3, false);
	Move("スラッシュ", 200, 600, 0, Axl3, true);

	//DeleteSt("C",200,true);
	Delete("絵マスク/絵*");
	Delete("絵マスク");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
{
	//DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100170skr">
「あうあ……あうあ……あう……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100180skr">
「も……もう……アタシはダメだ」


{
	SetVolumeEX("@SE01*", 1500, 0, null);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100190skr">
「あとは……頼む……」

{
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100200wfu">
「は……はい」

{
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100210ktt">
「フウリ……？」

{
	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100220ktt">
「なんか、様子が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆音声指示：スピーカー越し
{
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100230mrp">
『さて、続いて４品目は！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100240mrp">
『ラーメン鬼武者！
　ブタブタ油ニンニクヤサイマシマシの、登場よッ！！』

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100250skr">
「うげっぷ……見ただけで、満腹感が……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100260skr">
「今までのタイプと……明らかに量が違わね？」

{
	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100270ktt">
「いえ、大丈夫です！　フウリならきっと――」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100280skr">
「おい弟子！
　いきなり呼び捨てかよ」

{
	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100290ktt">
「え、いや、あは、あはははははは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100300wfu">
「いただきます……」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100310wfu">
「あむ……あむ……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100320wfu">
「ちゅるる……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEX("スラッシュ", 1620, 600, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEXadd("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_通常_shock.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, 450, middle, "cg/bu/buミリＰb_通常_shout.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵2", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵3", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);

	CreateSE("SE01","seガヤ_ざわざわ02_l");
	MusicStart("SE01",300,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100330mrp">
『おっと、どうしちゃったのかしら！？』

//◆音声指示：スピーカー越し
{	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100340mrp">
『フウリ選手、あまりに消極的！
　まるでお嬢様のようにお上品に箸を口に運ぶ――』

//◆音声指示：スピーカー越し
{	Fade("絵マスク/絵演立絵2", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 1000, Dxl1, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100350mrp">
『顔色も悪そうですし、なにかトラブルッ！？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, false);
	Fade("スラッシュ", 200, 0, Axl3, false);
	Move("スラッシュ", 200, 600, 0, Axl3, true);

	DeleteSt("C",200,true);
	Delete("絵マスク/絵*");
	Delete("絵マスク");
	SetVolumeEX("@SE01*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100360skr">
「アイツ――あんな食欲でこの勝負に？」

{
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100370ktt">
「おかしいな……
　フウリさんの食べっぷりはあんなものじゃないです」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100380skr">
「それじゃなんなんだよ！？
　まさか猫舌とか！？」

{
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100390ktt">
「もしかしたら……遠慮してるのかも」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);


{	ClockPass(2043);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆音声指示：スピーカー越し
{
	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100400mrp">
『さあ、鬼武者ラーメンで足踏みするトップフウリ選手！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100410mrp">
『塩っ気のある太麺が、スープを吸って伸びる！
　今にも丼からはみ出しちゃうわ！』

//◆音声指示：スピーカー越し
{
	SetVolumeEX("@SE01*", 1500, 0, null);
	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100420mrp">
『それまでのリードが嘘のよう！
　後続の各ゆるキャラチームが追いかける！』

//◆音声指示：スピーカー越し
{
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100430mrp">
『２位のパンダヤンチーム、丼飯なら任せろと言わんばかりにタミドンを食い尽くし、カレーパスタに襲いかかる！』

//◆音声指示：スピーカー越し
{
	SetVolumeEX("@SE01*", 1500, 0, null);
	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100440mrp">
『いかにもパクリ遊園地ランドっぽい安物着ぐるみ塗装が、全身から染み出す汗で溶け出しているわ！　大丈夫！？』

//◆音声指示：スピーカー越し
{
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100450mrp">
『３位の、おっ、パイうなぎチームがそれを追う！
　その早食いスタイル、まさになんとも掴み所がない！』

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	St("C",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("C",200,true);}
//↓ムー：タグ付けミス修正しました。
//◆音声指示：スピーカー越し
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100451mrp">
『おっと、苦しいのかしら？　尻尾が！　尻尾が！
　なんかちょっと夜の感じに変形し始めたわ！　大変！』

//◆音声指示：スピーカー越し
{
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100460mrp">
『４位は意外！　ちんす子ちゃんチーム！
　ちんす子ちゃんのめんそーれパワー炸裂か！？』

//◆音声指示：スピーカー越し
{
	SetVolumeEX("@SE01*", 1500, 250, null);
	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100470mrp">
『少し気になるのは大食いちんす子ちゃんの短いスカートがめんそーれして向こうになんかちんすこうが！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100480mrp">
『５位はドン・ブーたんチーム！
　頑張って！　このままだとあなたがブービーよ！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100490mrp">
『食えないブタはただのブタ！
　コレが本当の「食えないの豚」になってしまう……』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100500mrp">
『ビリはリバース・サンダースチーム！
　今にもリバースしそうだが、大丈夫ッ！？』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100510mrp">
『万年最下位は過去の話！
　食い倒れの街の根性を見せて頂戴！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100520mrp">
『さあ、秋葉原チームは、相変わらずのスローペース』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100530mrp">
『先行逃げ切りに暗雲が立ちこめてきたわよッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@SE01*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100540skr">
「オラ、フウリッ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100550skr">
「せっかくアタシが根性見せたんだ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】

<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100560skr">
「てめーもちっとは気張りやがれ！」

{
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100570wfu">
「は……はい。
　頑張ってるんですけど……はむはむ……」

{
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100580ktt">
「やっぱり遠慮してますね」

//2040沙紅羅_フウリ.nssと音声整合
{
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100590skr">
//「遠慮？」
「何に遠慮する必要があるんだよ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100600ktt">
「さっき、スタッフが話してたんです。
　このまま圧勝すると番組が成立しないって」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/a20/400100610ktt">
「だからきっと、盛り上げようとして……」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100620skr">
「な……ななな……ッ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	Shake("@StNameML/ML*", 300, 0, 6, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100630skr">
「小賢しい――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100640wfu">
「え？　沙紅羅ちゃん……？」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100650skr">
「おい、フウリ！
　向こうの都合なんて知るか！　いいから食っちまえ！」

{
	St("R",700, @-50,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,false);

	Move("@StNameR/R*", 300, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/400100660adi">
「ちょ、ちょっとなんてこと言うんですか！」

{
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("R",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100670wfu">
「わ、ＡＤさん！？」

{
	St("R",700, @0,@0,"buＡＤ_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/400100680adi">
「フウリさんが自分で、ああしてくれてるんだから、彼女の気持ちを大切にするのも必要――」


{	ClockPass(2044);}

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteSt("R",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100690skr">
「バッキャロ――――ッ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100700skr">
「別に、アタシが必死こいて食ったから言うんじゃねぇぞ」

{	SetVolumeEX("@xbgm*", 3000, 0, null);
	CreateSE("SEL01","se環境_燃える_l");
	MusicStart("SEL01",3000,700,0,1000,null,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100710skr">
「でも……でもよ！
　テレビってのはこういうもんなのかッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{
	St("R",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/a20/400100720adi">
「え――」

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("R",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100730skr">
「アタシはな、テレビがスゲエと思ってた！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100740skr">
「本気と本気が火花を散らして、夢がピカピカっと光って、それが画面を越えてこっちに伝わる！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100750skr">
「だから心に訴えるんだって思ってた！　違ぇのか！？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100760skr">
「こっちが全力でやらねぇのに、見てる人間の心を本気で揺さぶれるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100770skr">
「アタシはそんなテレビ、これっぽっちも信じねぇぞッ！」

{
	St("R",700, @0,@0,"buミリＰb_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100780mrp">
「…………」

{
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("R",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100790wfu">
「……沙紅羅ちゃん」

{	SetVolumeEX("SEL*", 3000, 0, null);
	SoundPlay("@xbgm23",0,450,true);
	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100800wfu">
「私――間違ってたかもしれないです」


{
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100810skr">
「おうよ！　フウリ！
　周りに遠慮なんかするんじゃねぇ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/a20/400100820skr">
「おまえが正しいと思ったことをやり遂げて――
　本当のエンターメインテントをみせてやれッ！！」

{
	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100830wfu">
「はいっ！！　私、がんばりますっ！」


{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100840wfu">
「目標のためには、躊躇している余裕なんてありません！」

{	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100850wfu">
「残さず全部、全力で食べることこそ、食べ物への供養！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEX("スラッシュ", 1620, 600, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEXadd("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, 450, middle, "cg/bu/buミリＰa_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);

//動作準備
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 450, InBottom, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100860mrp">
『おおっと、突然どうしたフウリ選手！？』

//◆音声指示：スピーカー越し

{	Fade("絵マスク/絵演立絵", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/a20/400100870mrp">
『居住まいを正して丼の前に向き合うと――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, false);
	Fade("スラッシュ", 200, 0, Axl3, false);
	Move("スラッシュ", 200, 600, 0, Axl3, true);

	Delete("絵マスク/絵*");
	Delete("絵マスク");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"buフウリ_前のめり_other");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100880wfu">
「ならば、この美味しそうなラーメン！」

{	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/a20/400100890wfu">
「全力で――いただきます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);


	EndScene();
}
//next "沙紅羅" "2045沙紅羅_フウリ.nss"
//next "フウリ" "2045沙紅羅_フウリ.nss"
