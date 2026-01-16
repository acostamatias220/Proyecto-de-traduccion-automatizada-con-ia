
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2000沙紅羅.nss_MAIN
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
	$GameName = "2010沙紅羅_フウリ.nss";

}

scene 2000沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="890">
////////////header////////////
//file name "2000沙紅羅.nss"
//title "ビリビリ"
//previous "1950沙紅羅_似鳥.nss"

////////////footer////////////
//next "沙紅羅" "2010沙紅羅_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//◆場所：あにのあな_正面
	OnBG(10,"bg0301111あにのあな_正面_通常");
	FadeBG(0,true);

{	ClockPass(2000);}

	Wait(200);

	CreateTextureSP("絵背景50", 50, Center, middle, "cg/bg/bg0301111あにのあな_正面_通常.jpg");

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

	Move("絵背景50", 2000, @0, -1150, AxlDxl, true);
	Wait(500);



	SoundPlay("@xbgm27",0,450,true);

//あきゅん「素材：imgノーコントロール11」
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/imgノーコントロール11.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200010skr">
「ああ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200020skr">
「とうとう手に入れたぞ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200030skr">
「念願の……念願の……どーじんしだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	Fade("絵背景100", 500, 0, null, true);
	Delete("絵背景100");

	St("C",700, @0,@0,"bu沙紅羅_泣き_cry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200040skr">
「オーイ、オイオイ……オーイ、オイオイ……！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_cry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200050skr">
「世の中……捨てたモンじゃねぇんだなあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200060skr">
「ありがとう！　みんなありがとう！」

{	DeleteSt("C",200,true);}
　周囲をゆく人々が、視線を合わさずに一歩遠ざかる。

　が、沙紅羅は全く気にしていない。

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200070skr">
「しかし……いい人だったなあ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200080skr">
「こっちが困ってるの見通して、どーじんしくれるなんて」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200090skr">
「ハッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200100skr">
（待ちに待った運命の人って、まさか……！？）

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200110skr">
「あ、あり得る！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200120skr">
「クソッ！！　連絡先でも聞いてくるべきだったか！！」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200130skr">
「いや……本当に運命の人なら、きっとまた出会うはず」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200140skr">
「ま、用事も終わったことだし、みそブーに連絡を……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200150skr">
「ん？　あれ？　アレレレ？」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200160skr">
「あー！　そっかそっか！
　そういやケータイ電池切れてんだよな」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200170skr">
「ま、いっか。みそブーとの合流は後回し！
　先にサクッとどーじんし、届けてやっか！」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200180skr">
「ええと……なんだっけ？　鳳凰堂病院……？
　だれか、場所を知ってそうな人は……」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200190skr">
「ん……アレなんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@xbgm*", 2000, 0, null);


	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-100, @0, Axl1, false);
	DeleteSt("C",200,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景50");
//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201111ＵＰ＋_屋外セット_通常");
	FadeBG(0,true);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1202100ＵＰ＋_セット上_通常.jpg");

	Wait(1000);

	SoundPlay("@xbgm16",0,450,true);


	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

	Wait(500);
	St("ML",700, @-100,@0,"bu沙紅羅_前のめり_happy");
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200200skr">
「お！　すげえ！　テレビ！　テレビじゃん！」

//◆音声指示：スピーカー越し
{
	Fade("絵背景100", 200, 1000, null, false);
	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"buミリＰb_通常_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200210mrp">
『朝でも昼でも夕でも言うわよ！　はろぉ～！！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200220mrp">
『本日は皆さんお待ちかね！
　全国ゆるキャラバンの開★催――――！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200230mrp">
『司会は、お茶の間にスーパー快適ソングをお届け！
　ミリＰで、お送りするわよ！！』

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	Fade("絵背景100", 200, 0, null, false);
	DeleteSt("C",200,true);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200240skr">
「みりぴー？　どっかで聞いたことあるような……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200250skr">
「ミリピー、ミリＰ……あ！　そっか！
　確か、あのケータイ占いの人ッ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200260skr">
「スゲー！　マジ東京スゲー！！」


//◆音声指示：スピーカー越し
{	ClockPass(2001);
	St("C",700, @0,@0,"buミリＰb_通常_normal");
	DeleteSt("ML",200,true);
	Fade("絵背景100", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200270mrp">
『それでは、ゆるキャラバン最終決戦！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_smile");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200280mrp">
『過去のＶＴＲから、振り返ってみま――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	DeleteSt("C",200,true);

//◆ＳＥ：ファンファーレ
	CreateSE("SE01","se環境_雷01");
	CreateSE("SE02","se擬音_ゆるキャラジングル");
	CreateSE("SE20","se環境_燃える_l");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SetVolumeEX("@xbgm*", 2000, 0, null);
	Wait(2000);


//◆演出指定：最大音量で
//◆ＳＥ：雷

	CreateTextureEXadd("絵背景雷01", 100, Center, Middle, "cg/ef/ライトニング.png");
	CreateTextureEXadd("絵背景雷02", 100, Center, Middle, "cg/ef/ef044_火花c.png");
	Zoom("絵背景雷01", 0, 300, 1000, null, true);
	Zoom("絵背景雷02", 0, 300, 300, null, true);
	Move("絵背景雷01", 0, @0, @-200, null, true);
	Rotate("絵背景雷01", 0, @0, @0, @90, null,true);

	CreateColorEXadd("炎上", 5000, "RED");
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("フラッシュ白",0,1000,null,true);

	Rotate("絵背景雷01", 3000, @0, @180000, @0, null,false);
	Rotate("絵背景雷02", 3000, @0, @0, @7200, null,false);

	Fade("絵背景雷01", 0, 1000, null, true);
	Fade("絵背景雷02", 0, 1000, null, true);
	Fade("フラッシュ白",100,0,null,true);

	Wait(100);

	Fade("フラッシュ白",0,1000,null,true);

	MusicStart("SE20",0,1500,0,1000,null,true);

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");

//	CreateTextureSPover("絵背景燃え", 100, Center, Middle, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");

	LastfireOGMIX("@炎上","プロセス炎");
//	LastfireOGMIXStop();

	Delete("絵背景雷*");
//	FadeF4("絵背景燃え", 1000, 1000, 2500, 0, 0, Dxl1, false);
//	FadeDelete("絵背景燃え", 1000, null, false);
	Fade("フラッシュ白",3000,0,null,true);
	Delete("フラッシュ白");


	Wait(1000);
	Fade("絵背景100", 500, 0, null, true);



	St("ML",700, @0,@0,"bu沙紅羅_頭かき_shock");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200290skr">
「へ？」

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_shock");
	DeleteSt("ML",200,true);
	Fade("絵背景100", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200300mrp">
『か……雷？』

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200310adi">
「っていうか火まで！」

{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200320adi">
「ど……どうしましょうか！？
　このままじゃ、セットが燃えて――」

{	DeleteSt("MR",200,true);
	SetVolumeEX("SE20", 2000, 500, null);
	SoundPlay("@xbgm16_noint",0,450,true);

	St("C",700, @0,@+100,"buミリＰb_ショータイム_angry");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200330mrp">
「ふは――――――ッはッはッはッ！！」

{	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200340adi">
「ミリＰさん？　気を確かに――！」

{	St("C",700, @0,@0,"buミリＰb_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200350mrp">
「神は死んでいない！」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200360adi">
「へ……？」

{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200370mrp">
『なんというトラブルでしょうッ！！
　突然、大空から雷が舞い落ちました！！』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_pinch");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200380mrp">
『燃えています！　セットがメラメラと燃えています！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockPass(2002);

	TextBoxDelete(150);

//◆ＳＥ：雨
//◆ＳＥ：消防車サイレン

	CreateSE("SE11","seメカ_車_消防車サイレン_l");
	CreateSE("SE77","se環境_雨_l");
	CreateSE("SE77a","se環境_水流_l");
	MusicStart("SE11",2000,700,0,1000,null,true);
	MusicStart("SE77",2000,1500,0,1000,null,true);

	CreateEffect("エフェクト１", 8000, 0, 0, 1024, 288, "Rain");
	SetAlias("エフェクト１","エフェクト１");
	Request("エフェクト１", AddRender);
	SetVertex("エフェクト１", 0, 0);
	MusicStart("SE77a",1000,700,0,1000,null,true);
	Zoom("エフェクト１", 0, 2000, 2000, null, true);
	Fade("エフェクト１", 2000, 500, null, true);


	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200390mrp">
『雨が降り、そしてサイレンの音もし始めたッ！？』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_pinch");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200400mrp">
『全国ゆるキャラバン、波乱の幕開け！
　これからいったい、どうなってしまうのか――！？』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/000200410mrp">
『というところで、とりあえず前回までのゆるキャラバン、まとめたＶＴＲをどうぞッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("SE11", 3000, 0, null);
	SetVolumeEX("SE77", 3000, 800, null);
	SetVolumeEX("SE77a", 3000, 0, null);
	Fade("エフェクト１", 2000, 300, null, false);

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("C",200,false);
	Fade("絵背景100", 200, 0, null, true);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200420adi">
「さすがミリＰさんッ！
　この逆境を、したたかに利用している……？」

{	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200430adi">
「私たちも、負けてられない――
　ピンチこそ、チャンス！　犯られる前に、犯れ！」

{	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200440adi">
「いくぞおおおお――」

{	Move("@StNameMR/MR*", 200, @100, @0, Axl1, false);
	DeleteSt("MR",200,true);
	St("ML",700, @-50,@0,"bu沙紅羅_通常_normal");
	Move("@StNameML/ML*", 200, @+50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200450skr">
「あ、ちょっと」

{	DeleteSt("ML",200,true);
	St("MR",700, @50,@0,"buＡＤ_通常_angry");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200460adi">
「なんですか？　忙しいから、邪魔――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：木刀構えて

	DeleteSt("MR",200,true);

	CreateSE("SE01","se戦闘_木刀_構える");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"bu沙紅羅_木刀_hard");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200470skr">
「邪魔する気はねぇんだけさ」

//◆音声指示：おびえて
{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200480adi">
「え、あ、はい……」

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200490skr">
「鳳凰堂病院、ってどこだ？」

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_pinch");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200500skr">
「いや、ちょっとちげーかもしんねーな。
　ナントカドー、ナントカドー……」

{	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200510adi">
「泰然堂？」

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200520skr">
「お！　それそれ！！」

{	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200530adi">
「だったら、この隣をまっすぐあっちに行くと、左手に大きな建物が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200540skr">
「この道を……真っ直ぐに？
　――来るとき通ったあそこ……か？」

{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/000200550adi">
「あの、私もういいでしょうか？
　色々仕事があるんで――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200560skr">
「おう、サンキュー！　助かったぜ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200570skr">
「んじゃ早速、暴蛇羅号で――」

{
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200580skr">
「…………」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200590skr">
「流石に雨の中、走るのはつれぇか」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200600skr">
「ちょっと雨宿り――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




	SetVolumeEX("@xbgm*", 2000, 0, null);
	SetVolumeEX("SE*", 2000, 0, null);

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @+50, @0, Dxl1, false);
	DeleteSt("C",200,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	LastfireOGMIXStop();
	Fade("エフェクト１", 0, 200, null, true);

//◆場所：ショウビル_正面
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);
	Wait(500);
	DrawDelete("黒幕１", 300, 100, null, "blind_01_00_1", true);

	CreateSE("SE11","se環境_雨_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

	Wait(500);

	St("C",700, @-50,@0,"bu沙紅羅_通常_hard");
	Move("@StNameC/C*", 200, @+50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200610skr">
「……ったく、変な天気だな。降ったりやんだり」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200620skr">
「まあ、またすぐ止みそうな感じだけど……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200630skr">
「…………」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200640skr">
（こっちの方は、雪じゃなく雨なんだな）

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200650skr">
（雨と雪……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200660skr">
（あの日も……こんな天気だったのかな、タカ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想開始

//◆演出指定：雪降る空のイメージ的な背景

	CreateColorEX("フラッシュ白", 20000, "WHITE");

	SetVolumeEX("SE*", 200, 0, null);

	Fade("フラッシュ白",200,1000,null,true);
	DeleteAllSt(0,true);
	Delete("エフェクト１");

	ClockDelete(0,true);
	ClockTime(2002);

	SoundPlay("@xbgm25",0,450,true);


	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg2502100信号機_見上げ_青標識無.jpg");
	#bg2501100信号機_見上げ_青 = true;

	$SYSTEM_effect_drop_image = "cg/ef/efDro_雪001.png";
	CreateEffect("エフェクト１", 1000, 0, 0, 1024, 576, "Drop");

	Fade("フラッシュ白",1000,200,null,true);

	Wait(500);

{	ClockTime(2003);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200670skr">
（あれは新車暴陀羅号お披露目の日で、アタシはいいって言ったのに、アイツはわざわざバイクで駆けつけた）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200680skr">
（修学旅行の京都で出会ったアタシたちは、完璧な遠距離恋愛で、面と向かって話したのはまだ一度だけ）

{	ClockTime(2004);}

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200690skr">
（こんな寒い季節なのに、わざわざ三重から駆けつけるって言うタカの気持ちは、嬉しかった）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200700skr">
（アタシも会う口実が欲しくて、バイクの免許とったようなモンだったし――）

{	ClockTime(2005);}

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200710skr">
（たぶんアタシの頭がもう少し良くて、試験に一発で合格できていたら、結果は違っていたんだろう）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200720skr">
（その日、関東では雨が降っていた）

{	ClockTime(2006);}

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200730skr">
（白河の関で、雨は雪に変わっていた）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200740skr">
（連絡が来て、アタシは新車の暴陀羅号をかっ飛ばして、タカを迎えに行ったんだ）

{	ClockTime(2007);}

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200750skr">
（とても、とても寒くて、静かな、雪道だった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1000, 0, null);

	Fade("フラッシュ白",500,1000,null,true);

	Delete("絵背景100");
	Delete("エフェクト１");

	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);

//◆時間：ジャンプ
{	ClockPass(2008);}

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");



//◆演出指定：終了
	CreateSE("SE10","seガヤ_交通少_l");
	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE10",2000,500,0,1000,null,true);
	MusicStart("SE11",2000,500,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200760skr">
「ん……やんでる」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200770skr">
「どれ！　んじゃそろそろ、病院に――ん？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200780skr">
「やべ！　どーじんし、濡れてる？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200790skr">
「まさか、中も――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2009);}


	TextBoxDelete(150);

	DeleteSt("C",200,true);

//◆演出指定：初めて本の中味を見る沙紅羅
//あきゅん「素材：imgノーコントロール11中身」
//あきゅん「演出：エコバックは既に持っていないので」
	CreateSE("SE01","se動作_ビニール漁る02");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/img/imgノーコントロール11.jpg");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200800skr">
「…………あれ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200810skr">
「この本……なんか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
{	FadeDelete("絵背景100", 200, null, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("C",200,true);}
*/

	CreateSE("SEF01","se擬音_ギャグ_キラーン01");
	CreateAXLWindowEX("絵演窓", "Y", 2000, 192, 192, false);
	WindowAXLZoom("絵演窓", "Y", 0, 0, null, true);

	CreateTextureEXadd("絵演窓/絵演稲妻", 1910, Center, Middle, "cg/ef/ライトニング.png");

	CreateColorSP("絵演窓/絵色黒", 1900, "#000000");
	CreateTextureSP("絵演窓/絵立絵", 1920, Center, 70, "cg/bu/bu沙紅羅_通常_rage.png");
	Zoom("絵演窓/絵立絵", 0, 2000, 2000, null, true);
	Request("絵演窓/絵立絵", Smoothing);

	MusicStart("SEF01",0,700,0,1000,null,false);
	WindowAXLZoom("絵演窓", "Y", 200, 1000, Dxl3, true);

	Fade("絵演窓/絵演稲妻", 0, 1000, null, true);
	Rotate("絵演窓/絵演稲妻", 3000, 360000000000000, @0, @0, null,false);
	DrawTransition("絵演窓/絵演稲妻", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Wait(16);
	FadeDelete("絵演窓/絵演稲妻", 1000, null, false);
	DrawTransition("絵演窓/絵演稲妻", 400, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", false);

	Shake("絵演窓/絵立絵", 300, 0, 8, 0, 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200820skr">
「もしかして……いかがわしい……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：消防車サイレン
//◆ＳＥ：ページペ捲る
	CreateSE("SE20","se動作_紙めくる");
	CreateSE("SE21","seメカ_車_消防車サイレン_l");
	MusicStart("SE21",2000,400,0,1000,null,true);

	Wait(500);

	CreateTextureEX("絵背景200", 1000, Center, 0, "cg/img/imgノーコントロール11中身.jpg");
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");

	MusicStart("SE20",0,2000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);

	Wait(16);
	Delete("@絵演窓*");

	Fade("絵背景200", 0, 1000, null, true);
	FadeDelete("絵色白", 1000, null, true);

	Wait(1000);

	Move("絵背景200", 1000, @0, -132, AxlDxl, true);
	Wait(1000);
	Move("絵背景200", 1000, @0, -66, AxlDxl, true);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200830skr">
「う……うう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE31","se戦闘_爆発02");
	MusicStart("SE31",0,700,0,1000,null,false);

//◆ＥＶ："ev/ev2000沙紅羅同人誌ビリビリ.txt"
	CreateTextureEX("絵背景100", 1000, -214, -57, "cg/ev/l/ev2000沙紅羅同人誌ビリビリ_l.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	Shake("絵背景100", 1000, 5, 3, 0, 0, 1000, null, false);
	Zoom("絵背景100", 300, 1000, 1000, null, false);
	Fade("絵背景100", 100, 1000, null, true);
	DeleteSt("C",0,true);
	Delete("絵背景200");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200840skr">
「うぎゃああああああああ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200850skr">
「エッチい本じゃねえかあああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ビリビリ破る
//◆演出指定： "1800沙紅羅.nss"を踏襲

	CreateTextureEX("絵背景1", 1000, Center, Middle, "cg/ev/ev2000沙紅羅同人誌ビリビリ.jpg");
	CreateTextureEX("絵背景1000", 1001, Center, Middle, "cg/ev/ev2000沙紅羅同人誌ビリビリ.jpg");
	SetBlur("絵背景1000", true, 3, 500, 50, false);

	CreateSE("SE01","se動作_紙破る");
	CreateSE("SE02","se動作_紙破る");
	CreateSE("SE03","se動作_紙破る");
	CreateSE("SE04","se動作_紙破る");

	MusicStart("SE01",0,1000,0,1200,null,false);
	Shake("絵背景1000", 1000, 34, 10, 0, 0, 1000, Dxl1, false);
	Fade("絵背景1000", 300, 1000, null, true);

	MusicStart("SE02",0,1200,0,800,null,false);
	Wait(100);

	MusicStart("SE03",0,700,0,1300,null,false);
	MusicStart("SE04",0,1300,0,900,null,false);

	Wait(1000);

	SetVolumeEX("SE21", 4000, 0, Axl2);

	Wait(1000);

	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("C",0,true);

	FadeDelete("絵背景*", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200860skr">
「はぁ……ッ、はぁ……ッ、はぁ……」

{	St("C",700, @0,@0,"fu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200870skr">
「はぁ……ん？」

{	St("C",700, @0,@0,"fu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200880skr">
「あ……あ、あ、ああああああ！！」

{	St("C",700, @0,@0,"fu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/000200890skr">
「なんてこったああ…………！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Request("SE10", Lock);
	Request("SE11", Lock);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	EndScene();

}
