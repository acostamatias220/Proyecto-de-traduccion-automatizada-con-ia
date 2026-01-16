
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1810沙紅羅.nss_MAIN
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
	$GameName = "1840沙紅羅.nss";

}

scene 1810沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="590">
////////////header////////////
//file name "1810沙紅羅.nss"
//title "ストラ○○"
//previous "1800沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "1840沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆時間：ジャンプ
{	ClockPass(1820);}

	CreateTextureEX("絵背景スクロール１", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg.jpg");
	CreateTextureEX("絵背景スクロール２", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg.jpg");

	CreateTextureSP("絵背景ライダー", 102, center, middle, "cg/ev/ex/ev0000沙紅羅原付ライダーa_ex01.png");
	#ev0000沙紅羅原付ライダーa = true;

	Request("絵背景ライダー", Smoothing);
	Move("絵背景ライダー", 0, -442, -800, Dxl1, false);
	Zoom("絵背景ライダー", 0, 1000, 1000, null, true);
	SetBlur("絵背景ライダー", true, 1, 300, 120, false);

	CreateSE("SE02","seメカ_バイク_走行_l");
	MusicStart("SE02",2500,1300,0,1500,null,true);
	SetFrequency("SE02", 10000, 1500, AxlDxl);

	MoveFTP3("@絵背景ライダー", 2000, 6, 5);

//	CloudZoomSet(4000);
//	CloudZoomStart(1000,800,800,1000,1000);
//	CloudZoomVertex(0,@-1000,@0,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,@3500,@0);




	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);


	SetVolumeEX("SE02", 2000, 600, null);


	Wait(1000);


//おがみ：下記演出入れる？
//================================================================

	SetVolumeEX("SE*", 100, 1, null);

	CreateSE("SE01","se環境_ドアチャイム");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreatePlainEX("揺用", 5005);
	SetTone("@揺用", Monochrome);

	Fade("揺用", 0, 1000, null, true);


	CreateColorEX("絵色100", 20000, "BLACK");
	Move("絵色100", 0, @0, 576, null, true);

	Fade("絵色100", 0, 1000, null, true);
	Move("絵色100", 200, @0, 450, Dxl2, true);

	SetFont("ＭＳ ゴシック", 28, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,※原動機付自転車の公道走行において<BR>　ヘルメットの着用は法律で義務付けられています<BR>　良い子のみんなはマネしないでね！);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 450, null, false);
	Fade("voice01", 0, 1000, null, true);

	WaitKey(5000);

	Delete("voice01");
	Move("絵色100", 200, @0, 576, Axl2, true);
	Delete("絵色100");

	Delete("揺用");

	SetVolumeEX("SE02", 2000, 600, null);


//================================================================


//晴海通り


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　愛車暴陀羅のエンジンが、東京の街並みに谺する。

　ノーヘルの髪を風に靡かせ、街中の明かりに金閣寺を反射させながら、沙紅羅はひたすら晴海通りを北上した。

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200010skr">
（確か……こっちだよな）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200020skr">
（えーと、その、どうじんし……だったっけ？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200030skr">
（来るときは道に迷って買い損ねたけど）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200040skr">
（今度こそ、失敗しねーぞ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSPmul("絵色ライト1", 11009, "#FFFFFF");
	CreateColorSPover("絵色ライト2", 11009, "#FF0000");
	DrawTransition("絵色ライト2", 0, 500, 500, 200, null, "cg/data/slide_01_00_1.png", true);

	CreateColorSPover("絵色ライト3", 11009, "#AA0000");
	Fade("絵色ライト1", 0, 0, null, true);
	Fade("絵色ライト2", 0, 0, null, true);
	Fade("絵色ライト3", 0, 0, null, true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトタイム = 100;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoop");
	SetAlias("プロセスライト１","プロセスライト１");

	CreateSE("SE11","seメカ_車_パトカーサイレン_l");

{	ClockPass(1821);}

	MusicStart("SE11",2000,400,0,1000,null,true);


	Request("プロセスライト１", Start);

	Wait(2000);

	SoundPlay("@xbgm03",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：スピーカー越し
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/18/100200050e16">
『そこのノーヘルバイク、止まりなさい』

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200060skr">
「やべー失敗した……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200070skr">
「ノーヘルだと耳が寒ぃ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200080skr">
「でも……やるしかねーよな」

//◆音声指示：スピーカー越し
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/18/100200090e16">
『そこのおかしなバイク、止まりなさい』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//窓準備
	CreateWindow("絵窓", 15000, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色2", 15100, "#000000");
	CreateColorEX("絵窓/絵演色", 15100, "#990000");
	CreateTextureEXadd("絵窓/絵演背景", 15200, Center, Middle, "cg/ef/ef046_炎a.jpg");
	Zoom("絵窓/絵演背景", 0, 1500, 1000, null, true);
	DrawEffect("絵窓/絵演背景", 360, "MiddleWave", 0, 300, null);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 19100, center, middle, "cg/bu/bu沙紅羅_通常_angry.png");
	Move("絵窓/絵演立絵", 0, @0, @200, null, true);
	CreateTextureEX("絵窓/絵演立絵2", 19100, center, middle, "cg/bu/bu沙紅羅_通常_rage.png");
	Move("絵窓/絵演立絵2", 0, @0, @200, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

	CreateTextureEX("絵背景枠01", 19200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 19200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");

	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
//動作
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 200, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演色", 200, 300, null, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200100skr">
「おかしなバイク……だとぉ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200110skr">
「上等じゃねーか！」

{
	CreateSE("SE01","se戦闘_破壊01");
	MusicStart("SE01",0,700,0,1000,null,false);


	Shake("絵窓/絵演立絵*", 500, 15, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵演立絵*", 200, 1500, 1500, Dxl2, false);
	Fade("絵窓/絵演色", 200, 1000, null, false);
	Fade("絵窓/絵演背景", 200, 1000, null, false);
	Fade("絵窓/絵演立絵", 200, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200120skr">
「アタシの金閣寺、好きなだけ見せてやるよォ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");

	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,1500,0,1000,null,false);

	SetFrequency("SE02", 5000, 3000, AxlDxl);
	SetVolumeEX("SE02", 1500, 1000, null);

	Shake("絵背景ライダー", 500, 10, 20, 0, 0, 1000, null, false);
	MoveFTP3stop();

	SetBlur("絵背景ライダー", false, 3, 500, 200, false);
	Move("絵背景ライダー", 700, @-2500, @0, Axl2, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//◆ＳＥ：エンジン音５割増し
//◆音声指示：スピーカー越し
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/18/100200130e16">
『コラ！　待て金閣寺！　コラーッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE11", 1500, 1000, null);
	SetVolumeEX("SE02", 2000, 0, null);

	SetVolumeEX("@xbgm*", 4000, 0, null);


	TextBoxDelete(150);

//◆ＳＥ：パトカーサイレン
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


//	CloudZoomDelete(0,true);
	SCR1stop();
	Delete("絵背景*");
	Request("プロセスライト１", Stop);
	Delete("絵色ライト*");

//	CreateColorEX("フラッシュ白", 15000, "Black");
//	Fade("フラッシュ白",1000,1000,null,true);

//◆時間：ジャンプ
{	ClockPass(1830);}

	Wait(2000);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/img路肩.jpg");
	Fade("絵背景100", 0, 1000, null, true);


//	Fade("フラッシュ白",1000,0,null,true);
//	Delete("フラッシュ白");


	SetVolumeEX("SE11", 4000, 200, null);

	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,700,0,1000,null,true);


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(1500);
	WaitKey(2000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200140skr">
「ふぅ……なんとかまいたか……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200150skr">
「信号が変わって、助かった……」

{	SetVolumeEX("SE11", 4000, 0, null);}
　既に痛いほどに冷たくなった耳を温めるため、沙紅羅は一度愛車を路肩に停めた。

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200160skr">
（しっかし、東京のポリ公は、根性ねーなー）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200170skr">
（階段上っただけでまけるとか、貧弱すぎだろ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200180skr">
（郡山じゃこうはいかねーぞ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200190skr">
（雪道発進とか大変だし）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200200skr">
（で、ここは……そろそろ秋葉原、か？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200210skr">
「んじゃ、みそブーに連絡でも取って……と」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(1831);}

//◆ＳＥ：携帯音
	CreateSE("SE01","seメカ_携帯_メール着信_沙紅羅_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	WaitKey(1500);
//◆演出指定：新着メール：恋愛ＱＰ（ハート）ミリＰの恋愛占い！


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200220skr">
「……お」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200230skr">
「メール、来た！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200240skr">
「ったく、非常におそいよ！
　どんだけ待たせんだ、どんだけ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200250skr">
「おかげで何回サイト見に行ったか――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200260skr">
「ふふーんさてさて、今日の運勢は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolumeEX("SE*", 1000, 0, null);


//◆ＳＥ：携帯ぴこ

//以下、携帯の文面
//ただし、後で「ストラップ」の「ストラ」までしか読めないように文字量調整。
/*
差出人：ミリＰの占い情報局
件名：恋愛ＱＰ（ハート）ミリＰの恋愛占い！
はろぉ～！いつも読んでくれて感謝！毎日ビンビン、ミリオンプロデューサーミリＰの恋愛占いよ！今年最後のあなたの運命は――【大吉】！あなたの目の前に、とうとう待ちに待った運命の人が！こんなチャンスは二度とない！次々に襲う障害を乗り越えて、見事彼のハートをゲットしちゃおう！良いお年を！ばっはは～い！【今日のラッキーアイテム：ストラップ】
*/
//あきゅん「素材：obj沙紅羅携帯液晶部分と占い」

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);


	SoundPlay("@xbgm27",0,550,true);


/*
	CreateTextureEX("絵背景200", 1000, Center, 100, "cg/obj/obj沙紅羅携帯液晶部分と占い.png");

	Move("絵背景200", 300, @0, @-100, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, true);
*/

//窓準備
	CreateWindow("絵窓", 2000, 0, 96, 1024, 222, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1000, Center, 100, "cg/obj/objIF背景_沙紅羅.png");
	CreateTextureSP("絵窓/絵演携帯", 1000, Center, 100, "cg/obj/obj沙紅羅携帯液晶部分と占い.png");

//カット枠準備
	CreateTextureEX("絵背景枠01", 1920, Center, 194, "cg/obj/objIF携帯枠線.jpg");
	CreateTextureEX("絵背景枠02", 1920, Center, 194, "cg/obj/objIF携帯枠線.jpg");

//	CutInLine02("@絵背景枠*");

	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 95, Dxl2, false);
	Move("絵背景枠02", 200, @0, 312, Dxl2, false);

//窓開き動作
	Zoom("絵窓", 200, 1000, 1000, Dxl2, true);


	Wait(500);

	Move("絵窓/絵演携帯", 300, @0, 70, AxlDxl, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200270skr">
「『はろぉ～！いつも読んでくれて感謝！毎日ビンビン、ミリオンプロデューサーミリＰの恋愛占いよ！』」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200280skr">
「うーん、相変わらずステキな挨拶だな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Move("絵窓/絵演携帯", 300, @0, -123, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200290skr">
「『今年最後のあなたの運命は――【大吉】！？』
　マジで！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200300skr">
「『あなたの目の前に、とうとう待ちに待った運命の人が！
　こんなチャンスは二度とない！』」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200310skr">
「『次々に襲う障害を乗り越えて、見事彼のハートをゲットしちゃおう！』」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200320skr">
「ま……マジか！？
　アタシにも……とうとう……とうとう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1832);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200330skr">
「運命のひとが……！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200340skr">
「ううっ、うう……うくぅぅぅぅ……
　イヨッシャ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200350skr">
「やるぞ！　やるぞやるぞ！
　このチャンスはぜってー逃せねぇ！」

{	Move("絵窓/絵演携帯", 200, @0, -198, AxlDxl, true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200360skr">
「『次々に襲う障害を乗り越えて、見事彼のハートをゲットしちゃおう！　良いお年を！　ばっはは～い！』」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200370skr">
「『今日のラッキーアイテム：ストラ――』」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 200, 0, null);
	TextBoxDelete(150);



//◆演出指定：携帯画面消える
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,true);
	CreateColor("絵窓/絵演携帯黒", 1500, 321, middle, 370, 576, "Black");
	SetAlias("絵窓/絵演携帯黒","絵窓/絵演携帯黒");
	Fade("絵窓/絵演携帯黒", 0, 1000, null, true);


	Wait(1500);

	SetVolumeEX("SE01", 100, 0, null);



	Zoom("絵窓", 200, 1000, 0, Dxl2, false);
	Move("絵背景枠01", 200, @0, 194, Dxl2, false);
	Move("絵背景枠02", 200, @0, 194, Dxl2, 100);
	Fade("絵背景枠01", 100, 0, null, false);
	Fade("絵背景枠02", 100, 0, null, true);

	Delete("絵窓*");
	Delete("絵背景枠*");



	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",3000,500,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200380skr">
「ん？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200390skr">
「え？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200400skr">
「は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200410skr">
「はぁああああ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200420skr">
「電池切れ！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200430skr">
「待てよ！　アタシの運命の人はどうなる！？
　ラッキーアイテムってなんだ！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200440skr">
「ええと……確か、ストラなんとか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200450skr">
「ストラ……イク？　ストラ……イダー？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200460skr">
「ストラ、ストライド走法……？　ストラポット？
　ノストラダムス？　ストラス……製薬？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200470skr">
「だ……ダメだ！
　そんなのラッキーアイテムにならねー！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200480skr">
「なんでよりによってこんな時に！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1833);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200490skr">
「今日一日、大凶のまま生活しろってのか？
　厄日か？　厄日なのか？！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：パトカーサイレン
	CreateColorSPmul("絵色ライト1", 11009, "#FFFFFF");
	CreateColorSPadd("絵色ライト2", 11009, "#FF0000");
	DrawTransition("絵色ライト2", 0, 500, 500, 200, null, "cg/data/beam_02_00_0.png", true);

	CreateColorSPadd("絵色ライト3", 11009, "#AA0000");
	DrawTransition("絵色ライト3", 0, 500, 500, 200, null, "cg/data/slide_01_00_1.png", true);
	Fade("絵色ライト1", 0, 0, null, true);
	Fade("絵色ライト2", 0, 0, null, true);
	Fade("絵色ライト3", 0, 0, null, true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトタイム = 1000;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoop");
	SetAlias("プロセスライト１","プロセスライト１");

	CreateSE("SE11","seメカ_車_パトカーサイレン_l");
	MusicStart("SE11",2000,400,0,1000,null,true);


	Request("プロセスライト１", Start);

	Wait(2000);

	SoundPlay("@xbgm03",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//◆音声指示：スピーカー越し
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/18/100200500e16">
『見つけたァッ！』

//◆音声指示：スピーカー越し
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/18/100200510e16">
『阿佐ヶ谷のブラックパンサーから逃げ切れると思うな！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1834);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200520skr">
「阿佐ヶ谷のブラックパンサー――ちょっとカッコイイ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200530skr">
「ハッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200540skr">
（待ちに待った運命の人って、まさか……！？）

//◆音声指示：スピーカー越し
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/18/100200550e16">
『その不格好な金閣寺、メチャクチャにしてやるッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//窓準備
	CreateWindow("絵窓", 15000, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色2", 15100, "#000000");
	CreateColorEX("絵窓/絵演色", 15100, "#990000");
	CreateTextureEXadd("絵窓/絵演背景", 15200, Center, Middle, "cg/ef/ef046_炎a.jpg");
	Zoom("絵窓/絵演背景", 0, 1500, 1000, null, true);
	DrawEffect("絵窓/絵演背景", 360, "MiddleWave", 0, 300, null);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 19100, center, middle, "cg/bu/bu沙紅羅_通常_think.png");
	Move("絵窓/絵演立絵", 0, @0, @200, null, true);
	CreateTextureEX("絵窓/絵演立絵2", 19100, center, middle, "cg/bu/bu沙紅羅_通常_rage.png");
	Move("絵窓/絵演立絵2", 0, @0, @200, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

	CreateTextureEX("絵背景枠01", 19200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 19200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");

	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
//動作
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 200, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演色", 200, 300, null, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200560skr">
「……ぜってーねーな」

{
	CreateSE("SE01","se戦闘_破壊01");
	MusicStart("SE01",0,700,0,1000,null,false);


	Shake("絵窓/絵演立絵*", 500, 15, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵演立絵*", 200, 1500, 1500, Dxl2, false);
	Fade("絵窓/絵演色", 200, 1000, null, false);
	Fade("絵窓/絵演背景", 200, 1000, null, false);
	Fade("絵窓/絵演立絵", 200, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200570skr">
「アタシの相棒『暴蛇羅号』！
　バカにしたヤツには――天誅喰らわしてやる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);




//◆ＳＥ：エンジン音５割増し

//◆ＳＥ：パトカーサイレン
	CreateTextureEX("絵背景スクロール１", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg.jpg");
	CreateTextureEX("絵背景スクロール２", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg.jpg");

	CreateTextureSP("絵背景ライダー", 102, center, middle, "cg/ev/ex/ev0000沙紅羅原付ライダーa_ex01.png");
	Request("絵背景ライダー", Smoothing);
	Move("絵背景ライダー", 0, -442, -800, Dxl1, false);
	Zoom("絵背景ライダー", 0, 1000, 1000, null, true);
	SetBlur("絵背景ライダー", true, 1, 300, 120, false);

	CreateSE("SE02","seメカ_バイク_走行_l");
	MusicStart("SE02",2500,1300,0,1500,null,true);
	SetFrequency("SE02", 10000, 1500, AxlDxl);

	MoveFTP3("@絵背景ライダー", 2000, 6, 5);

//	CloudZoomSet(4000);
//	CloudZoomStart(1000,800,800,1000,1000);
//	CloudZoomVertex(0,@-1000,@0,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,@3500,@0);




	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	SetVolumeEX("SE02", 2000, 600, null);


	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：スピーカー越し
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/18/100200580e16">
『待てえええええ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/100200590skr">
「誰が待つかァッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);

	TextBoxDelete(150);

	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,1500,0,1000,null,false);

	SetFrequency("SE02", 5000, 3000, AxlDxl);
	SetVolumeEX("SE02", 1500, 1000, null);

	Shake("絵背景ライダー", 500, 10, 20, 0, 0, 1000, null, false);
	MoveFTP3stop();

	SetBlur("絵背景ライダー", false, 1, 500, 200, false);
	Move("絵背景ライダー", 700, @-2500, @0, Axl2, true);


	SetVolumeEX("SE11", 1500, 1000, null);
	SetVolumeEX("SE02", 2000, 0, null);

	CreateColorEX("絵色100", 25000, "BLACK");
	Fade("絵色100", 2000, 1000, null, true);

	SetVolumeEX("SE*", 2000, 0, null);
	Wait(2000);


	EndScene();
}
