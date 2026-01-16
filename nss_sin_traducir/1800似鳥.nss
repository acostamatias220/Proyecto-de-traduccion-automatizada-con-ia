
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1800似鳥.nss_MAIN
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
	$GameName = "1810似鳥.nss";
	//$GameCircle=false;

}

scene 1800似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1020">
////////////header////////////
//file name "1800似鳥.nss"
//title "泣きっ面にヤンキー"
//previous "y1730似鳥.nss"

////////////footer////////////

//next "似鳥" "1810似鳥.nss"


////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
	FadeDelete("上背景", 0, null, true);

//◆場所：パチンコ屋_店内

//◆ＥＶ："ev1800似鳥パチンコ廃人.txt"

//◆演出指定：液晶画面に映る、「スマガ」のパチンコ

//◆音声指示：小声

{	ClockPass(1800);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500010nki">
「いけっ！」

//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500020nki">
「こい！」

//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500030nki">
「こいこいこいこいこ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	ClockDelete(300,true);

//	Wait(500);


//おがみ：パチンコ液晶演出======＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝


	PrintBG("背景０", 300000);
	CreateColorEXadd("フラッシュ", 10000, "WHITE");
	Delete("背景０");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ef/ev_dr1500温泉壁見上げる_b.jpg");
	SetVertex("絵背景100", 512, 0);
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetBlur("絵背景100", true, 1, 500, 500, false);
//	Move("絵背景100", 0, @0, 130, null, true);

	CreateTextureEX("絵背景宮本", 100, Center, Middle, "cg/ef/bu宮本G_変化_風呂_angry.png");
	CreateTextureEX("絵背景200", 10, Center, Middle, "cg/ef/ef029_物理限界速度域.jpg");
	CreateTextureEXadd("絵背景宮本2", 100, Center, Middle, "cg/ef/bu宮本G_変化_風呂_目だけ.png");
	CreateTextureEXadd("絵背景宮本3", 100, Center, Middle, "cg/ef/bu宮本G_変化_風呂_目光.png");
	Zoom("絵背景宮本*", 0, 2000, 2000, null, true);
	Move("絵背景宮本", 0, @30, @250, null, true);
	Move("絵背景宮本2", 0, @30, @120, null, true);
	Move("絵背景宮本3", 0, @30, @120, null, true);
	DrawTransition("絵背景宮本2", 0, 0, 0, 100, null, "cg/data/slide_05_00_1.png", true);

/*
	CreateSound("宮本声０", VOICE, "sound/se/1500740my.ogg");
	CreateSound("宮本声１", VOICE, "sound/se/1500750my.ogg");
	CreateSound("宮本声２", VOICE, "sound/se/1500760my.ogg");
	CreateSound("宮本声３", VOICE, "sound/se/1500770my.ogg");
	CreateSound("宮本声４", VOICE, "sound/se/1500780my.ogg");
	CreateSound("宮本声５", VOICE, "sound/se/1500790my.ogg");
	CreateSound("宮本声６", VOICE, "sound/se/1500950my.ogg");
*/
	CreateSound("宮本声０", SE, "sound/se/0000010pm.ogg");
	SetAlias("宮本声０","宮本声０");

	CreateSound("宮本声１", SE, "sound/se/0000020pm.ogg");
	SetAlias("宮本声１","宮本声１");

	CreateSound("宮本声２", SE, "sound/se/0000030pm.ogg");
	SetAlias("宮本声２","宮本声２");

	CreateSound("宮本声３", SE, "sound/se/0000040pm.ogg");
	SetAlias("宮本声３","宮本声３");

	CreateSound("宮本声４", SE, "sound/se/0000050pm.ogg");
	SetAlias("宮本声４","宮本声４");

	CreateSound("宮本声５", SE, "sound/se/0000060pm.ogg");
	SetAlias("宮本声５","宮本声５");

	CreateSound("宮本声６", SE, "sound/se/0000090pm.ogg");
	SetAlias("宮本声６","宮本声６");

	CreateSound("宮本声カットイン", SE, "sound/se/0000070pm.ogg");
	SetAlias("宮本声カットイン","宮本声カットイン");

	CreateSound("日下部声", SE, "sound/se/0000080ka.ogg");
	SetAlias("日下部声","日下部声");


	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	CreateSE("SE02","se戦闘_木刀_激突");
	CreateSE("SE03","se擬音_光り輝く02");
	CreateSE("SE04","se環境_雷01");
	CreateSE("SE05","se環境_電撃");
	CreateSE("SE06","se戦闘_風切り音10");
	CreateSE("SE07","se戦闘_風切り音複数_l");
	CreateSE("SE08","se擬音_ギャグ_あっけない死");
	CreateSE("SE09","se戦闘_攻撃_リネア放出");
	CreateSE("SE10","se擬音_ギャグ_ひょいひょい");
	CreateSE("SE11","se戦闘_爆破水しぶき");
	CreateSE("SE12","se日常_家電_レコーダースイッチon");

	CreateSound("宮本ソング", BGM, "sound/bgm/xbgm92.ogg");
	SetAlias("宮本ソング","宮本ソング");



	MusicStart("宮本声０",0,1000,0,1000,null,false);

	SetFont("ＭＳ ゴシック", 48, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,…………);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);
	Fade("voice01", 0, 1000, null, true);

	Wait(2000);

	Delete("voice01");
	Wait(600);

	MusicStart("宮本声０",0,0,0,1000,null,false);
	MusicStart("宮本声１",0,1000,0,1000,null,false);
	SetFont("ＭＳ ゴシック", 48, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,……オレは誰だ？);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);
	Fade("voice01", 0, 1000, null, true);

	Wait(1500);

	Delete("voice01");
	Wait(600);

	MusicStart("宮本声１",0,0,0,1000,null,false);
	MusicStart("宮本声２",0,1000,0,1000,null,false);
	SetFont("ＭＳ ゴシック", 48, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,オレは……);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);
	Fade("voice01", 0, 1000, null, true);

	Wait(1000);

	Delete("voice01");

	Wait(100);


	MusicStart("SE03",0,1000,0,1000,null,false);



//	Zoom("絵背景宮本*", 1300, 2000, 2000, Axl2, false);
	SetVertex("絵背景宮本2", 485, 181);
	SetVertex("絵背景宮本3", 485, 181);
	Zoom("絵背景宮本2", 2500, 2500, 2500, null, false);
	Fade("絵背景宮本2", 1000, 1000, null, false);
	DrawTransition("絵背景宮本2", 1500, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	Fade("絵背景宮本3", 1300, 1000, Axl1, false);
	Zoom("絵背景宮本3", 1300, 3500, 3500, Axl1, false);
	Wait(1000);

	Fade("フラッシュ", 300, 1000, null, true);
	Fade("絵背景宮本", 0, 1000, null, true);
	Fade("絵背景200", 0, 1000, null, true);
	Fade("絵背景宮本2", 500, 0, null, false);
	Fade("絵背景宮本3", 500, 0, null, false);


	CreateMovieEX("ムービー１", 100, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Zoom("ムービー１", 0, 4000, 2500, null, true);
	Fade("ムービー１", 0, 1000, null, false);

	FadeF4("絵背景宮本", 1500, 1000, 3000, 0, 0, Dxl3, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("フラッシュ", 1000, 0, null, true);


	MusicStart("宮本声２",0,0,0,1000,null,false);
	MusicStart("宮本声３",0,1000,0,1000,null,false);
	SetFont("ＭＳ ゴシック", 48, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,オレは、パイオツニア！);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);
	Fade("voice01", 0, 1000, null, true);

	Wait(3500);

	Delete("voice01");
	MusicStart("宮本ソング",0,1000,0,1000,null,false);

	CreatePlainSP("仮上背景", 1500);
	SetBlur("仮上背景", true, 10, 50, 500, false);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Zoom("仮上背景", 500, 20000, 20000, Axl3, false);
	Fade("フラッシュ", 500, 1000, null, true);

	Delete("仮上背景");
	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵背景宮本*", 0, 0, null, true);
	MoveFTP1("@絵背景100",1000,15,5);

	CreateProcess("群ズームプロセス１", 150, 0, 0, "panda_ZoomLoop1");
	CreateProcess("群ズームプロセス２", 150, 0, 0, "panda_GO");

	MusicStart("SE07",500,500,0,1000,null,true);
	Fade("フラッシュ", 1200, 0, null, true);

	MusicStart("宮本声３",0,0,0,1000,null,false);
	MusicStart("宮本声４",0,1000,0,1000,null,false);
	SetFont("ＭＳ ゴシック", 48, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,<RUBY text="ブラジャー">未来</RUBY>を切り拓き);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);
	Fade("voice01", 0, 1000, null, true);

	Wait(1500);
	Delete("voice01");
	Wait(300);

	Request("群ズームプロセス１", Start);
	Request("群ズームプロセス２", Start);
	MusicStart("SE10",1000,500,0,1000,null,true);

	SetFont("ＭＳ ゴシック", 48, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,<RUBY text="ちぶさ">夢</RUBY>を掴み取り);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);
	Fade("voice01", 0, 1000, null, true);

	Wait(1500);
	Delete("voice01");
	Wait(300);

	SetFont("ＭＳ ゴシック", 48, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,<RUBY text="にゅうとう">栄光</RUBY>を食らう！);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);
	Fade("voice01", 0, 1000, null, true);

	Zoom("絵背景100", 1500, 1800, 1800, AxlDxl, false);

	Wait(1500);
	Delete("voice01");
	Wait(300);
	MusicStart("SE10",1000,0,0,1000,null,false);

	MusicStart("宮本声４",0,0,0,1000,null,false);
	MusicStart("宮本声５",0,1000,0,1000,null,false);
	SetFont("ＭＳ ゴシック", 48, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,それが、男　宮本武の);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);
	Fade("voice01", 0, 1000, null, true);

	Wait(3500);
	Delete("voice01");
	Wait(100);

	SetFont("ＭＳ ゴシック", 48, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,生き様だああああああああッ！！);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);
	Fade("voice01", 0, 1000, null, true);

	Zoom("絵背景100", 1500, 2000, 2000, AxlDxl, false);

	Wait(2500);
	Delete("voice01");
	Wait(300);

	MusicStart("SE04",0,400,0,1000,null,false);
	MusicStart("SE05",0,400,0,1000,null,false);


	MusicStart("宮本声カットイン",0,1000,0,1000,null,false);
	cutin();

	SetVertex("絵背景100", 450, 0);
	Zoom("絵背景100", 5500, 4000, 4000, AxlDxl, false);
	Wait(2000);

	MusicStart("SE05",500,0,0,1000,null,false);
	cutout();

	MusicStart("SE09",0,800,0,1000,null,false);
	Wait(500);
	Fade("フラッシュ", 3000, 1000, null, true);

	MusicStart("SE07",1000,0,0,1000,null,false);
	MusicStart("宮本ソング",500,0,0,1000,null,false);

	MoveFTP1stop();
	Delete("絵背景*");
	Delete("ムービー１");
	Request("群ズームプロセス*", Stop);



	MusicStart("SE09",1000,0,0,1000,null,false);
	Wait(1000);

/*
//２３４５６７８９０１２３４５６７８９０１２３４５６７８９０１２
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//暗転
//【宮本武】
「…………」

//【宮本武】
「……オレは誰だ？」

//【宮本武】
「オレは……」

//【宮本武】
「オレは、パイオツニア！」

	PlayBGM("@smgm56",0,1000,true);
//空を見上げる
//【宮本武】
「<RUBY text="ブラジャー">未来</RUBY>を切り拓き、<RUBY text="ちぶさ">夢</RUBY>を掴み取り、<RUBY text="にゅうとう">栄光</RUBY>を食らう！」

//【宮本武】
「それが、男宮本武の生き様だああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(1,1);//―――――――――――――――――――――――――――――
*/


//ボタン演出
//宮本カットイン：ハンドオブグローリー


/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　泣いている暇なんてない！

　涙を拭い、オレは登る！

　登る登る登る登る登る！！

　セカイの天辺に向かって！

　オレが掴むべき、未来へと向かって！

//ボタン演出カットイン用台詞
//【宮本武】
「パイオツニアは永久に不滅ッッ！！」

</PRE>
	SetText();
	TypeBegin(1,1);//―――――――――――――――――――――――――――――
*/
//白で飛ばす
//結果はタメてから出す
	PlaySE("se戦闘_動作_超突進01",1000);
	PlaySE("se戦闘_攻撃_ハンドオブグローリー02",1000);
	PlaySE("se戦闘_攻撃_ハンドオブグローリー03",1000);
	PlaySE("se戦闘_攻撃_ハンドオブグローリー04",1000);


	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ev_z2_04_宮本車田飛び_d.jpg");
	SetVertex("絵背景100", 512, -1224);
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Move("絵背景100", 0, @40, @0, null, true);
//	SetBlur("絵背景100", true, 1, 200, 500, false);

	Move("絵背景100", 600, @0, @-400, Dxl1, false);
	Fade("フラッシュ", 300, 0, null, true);


	SetFont("ＭＳ ゴシック", 52, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,はい、残念);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);
	Fade("voice01", 0, 1000, null, true);



	MusicStart("日下部声",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE12",0,1000,0,1000,null,false);
	Wait(1200);
	Delete("voice01");
	Wait(100);

	MusicStart("SE11",0,1000,0,1000,null,false);

	CreateTextureEXadd("絵背景爆発", 100, Center, Middle, "cg/ef/ef_ep_悪魔爆発_z5.jpg");
	Zoom("絵背景爆発", 0, 1500, 1500, null, true);

	MusicStart("宮本声５",0,0,0,1000,null,false);
	MusicStart("宮本声６",0,1000,0,1000,null,false);
	SetFont("ＭＳ ゴシック", 35, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("voice01",1030411,Center,Middle,auto,auto,ぎゃあああああああああーーーー！！！);
	Fade("voice01", 0, 0, null, true);
	Request("voice01",PushText);
	Request("voice01",NoLog);
	Move("voice01", 0, @0, 401, null, false);

	Fade("絵背景爆発", 0, 1000, null, true);
	Zoom("絵背景爆発", 2000, 2000, 2000, Dxl1, false);

	SetVertex("絵背景100", 512, 0);
	Shake("絵背景100", 2000, 10, 0, 0, 0, 1000, null, false);
	Move("絵背景100", 1000, @0, 0, Dxl1, false);

	Fade("絵背景爆発", 2000, 0, Axl2, false);
	Wait(500);
	MusicStart("SE11",3000,0,0,1000,null,false);
	Fade("voice01", 0, 1000, null, true);

	Wait(1000);
	MusicStart("SE08",0,1000,0,1000,null,false);
	Wait(1000);
	Delete("voice01");
	Wait(1000);





//――――――――――――――――――――――――――――――――――――――
//はずれ演出
//――――――――――――――――――――――――――――――――――――――
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【日下部雨火】
「はい、残念」

//SE：かちっ
//ev宮本車田飛び
//どかーん
//【宮本武】
「ぎゃあああああああああーーーー！！！」

</PRE>
	SetText();
	TypeBegin(1,1);//―――――――――――――――――――――――――――――

*/
/*
	PlaySE("se擬音_ギャグ_放り投げ",1000);

//墜落死
	PlaySE("se人体_動作_人体落下激突01",1000);
	PlaySE("se擬音_ギャグ_あっけない死",1000);


//図柄が７８７でユラユラ
//ここでパチンコの液晶だと分かる
//本編演出へ
*/
	CreatePlainSP("仮上背景", 15000);

	CreateTextureEX("絵結果100", 100, Center, Middle, "cg/ef/bg16100_2_温泉男湯.jpg");
	CreateTextureEXadd("絵結果200", 10010, Center, Middle, "cg/ef/ef_fi_テレビ走査線big.png");
	CreateTextureEX("絵結果300", 10100, Center, Middle, "cg/ef/bg05615_3_伊都夏大学園新聞部室現実.png");
	Zoom("絵結果300", 0, 1800, 1300, null, true);
	Zoom("絵結果100", 0, 1500, 1500, null, true);
	Zoom("絵結果200", 0, 1500, 1500, null, true);

	CreateMovieEX("ムービー１", 100, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);

	Delete("voice01");
	CreateColorEX("絵色演出明度", 9000, "BLACK");
	Fade("絵色演出明度", 0, 600, null, true);
	SetShade("絵背景100", HEAVY);

	zugara_go01();
	zugara_zoom01ABC();
	zugara_play01(800);

	Fade("仮上背景", 1500, 0, null, true);
	Delete("仮上背景");
	Delete("フラッシュ");
	Delete("群ズームプロセス*");

	Wait(1100);

	SetVolumeEX("SE*", 3000, 0, null);
	Zoom("@絵図柄*", 1000, 1000, 1000, Axl1, false);
	Fade("絵色演出明度", 800, 1000, null, true);

	Delete("絵背景*");
	Fade("絵結果100", 0, 1000, null, true);
	Fade("ムービー１", 0, 1000, null, false);


	Wait(500);

	zugara_fade02ABC(1000,500);
	Fade("絵色演出明度", 500, 0, null, true);
	Delete("絵色演出明度");

	SetFont("ＭＳゴシック", 28, #FFFFFF, #222222, 500, AROUND);

	Wait(1500);

	zugara_stop01();
	zugara_haichi01C();


	SetFont("ＭＳゴシック", 28, #FFFFFF, #222222, 500, AROUND);

	Wait(1500);

	SetFont("ＭＳゴシック", 28, #FFFFFF, #222222, 500, AROUND);


/*
//――――――――――――――――――――――――――――――――――――――
//あたり演出
//使わないと思いますが念のため
//――――――――――――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

//【宮本武】
「うおおおおおおおーーーー！！！」

//エトワール入浴EV表示
//SE：バシーーン
//SE：一発告知音キュイン


//【宮本武】
「パイオツニア、リベンジ完了！！」

//図柄が９で揃っている
//【日下部雨火】
「ふっ、なかなかやりますね」

</PRE>
	SetText();
	TypeBegin(1,1);//―――――――――――――――――――――――――――――

*/




//おがみ：パチンコ液晶演出ここまで======＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

	CreateSE("SE01","seガヤ_パチンコ屋店内_l");
	MusicStart("SE01",3500,700,0,1000,null,true);


	CreateTextureEX("絵背景200", 10100, Center, Middle, "cg/ef/efパチンコ似鳥戴斗.png");
	Zoom("絵背景200", 0, 1080, 1080, null, true);

	Fade("絵結果200", 1000, 500, null, false);
	Fade("絵結果300", 1000, 1000, null, true);

//	Wait(500);

	CreatePlainEX("仮上背景", 10090);
	SetShade("仮上背景", HEAVY);


	Zoom("絵背景200", 1500, 1000, 1000, Dxl1, false);
	Move("絵背景200", 1500, @0, @50, Dxl1, false);
	Fade("仮上背景", 1500, 1000, null, false);
	Fade("絵背景200", 1500, 500, Axl1, true);

{	ClockPass(1800);}

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500040nki">
「あぁあぁあぁあぁ……」

{	ClockPass(1801);}


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500050nki">
（オレは……全てを失った……）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500060nki">
（手元に残ったのは借金だけ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);




	Delete("絵色*");
	Request("ムービー１", Stop);
	Delete("ムービー１");
	Delete("絵結果100");
	Delete("絵結果200");
	zugara_delete01();


	CreateTextureEX("絵背景100", 10100, Center, Middle, "cg2/bg/bg2302111パチンコ屋_店内_通常.jpg");
	Zoom("絵結果300", 1000, 1500, 1083, null, false);
	Zoom("仮上背景", 1000, 900, 900, null, false);
	Zoom("絵背景200", 1000, 950, 950, null, false);
	Fade("絵背景100", 1000, 1000, Axl1, true);

	Delete("絵背景200");
	Delete("仮上背景");
	Delete("絵結果300");

	OnBG(10,"bg2302111パチンコ屋_店内_通常", "path");
	FadeBG(0,true);

	FadeDelete("絵背景100", 200, null, true);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　似鳥の手が、力なく垂れ――

　ポケットに、入る。

{	SoundPlay("@xbgm22",0,450,true);
	SetVolumeEX("SE*", 7000, 0, null);
	St("C",700, @-30,@50,"fu似鳥_通常_lost");
	Move("@StNameC/C*", 400, @30, @-50, Dxl1, false);
	FadeSt("C",400,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500070nki">
（そう考えていた時も、確かにあった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500080nki">
（オレの記憶が確かなら――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500090nki">
（米はまだ半袋あったはず）

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500100nki">
（塩ご飯でしのげば――）

{	St("C",700, @0,@0,"fu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500110nki">
（いやいや！　しのがずとも！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500120nki">
（ここでガツンと一山当てれば！）

{	DeleteSt("C", 200,true);}
　似鳥のポケットから現れる、最後の１０００円札。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500130nki">
（奇跡を信じて、ハンドルを回すッ！！）

{	St("C",700, @0,@0,"fu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500140nki">
（オレはまだ、夢を諦めないッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Move("@StNameC/C*", 300, @-30, @50, Axl1, false);
	DeleteSt("C", 300,true);


//◆演出指定：時間経過
	CreateColorEX("絵色100", 20000, "BLACK");
	Fade("絵色100", 1000, 1000, null, true);

//◆時間：ジャンプ
{	ClockPass(1804);}
	Wait(2000);

	CreateTextureEX("絵結果100", 150, Center, Middle, "cg/ef/bg16100_2_温泉男湯.jpg");
	CreateTextureEXadd("絵結果200", 10010, Center, Middle, "cg/ef/ef_fi_テレビ走査線big.png");
	CreateTextureEX("絵結果300", 10100, Center, Middle, "cg/ef/bg05615_3_伊都夏大学園新聞部室現実.png");
	Zoom("絵結果300", 0, 1800, 1300, null, true);
	Zoom("絵結果100", 0, 1500, 1500, null, true);
	Zoom("絵結果200", 0, 1500, 1500, null, true);

	CreateMovieEX("ムービー１", 150, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);

	Delete("voice01");
	CreateColorEX("絵色演出明度", 9000, "BLACK");
	Fade("絵色演出明度", 0, 600, null, true);

	zugara_go01();
	zugara_zoom01ABC();
	zugara_play01(1000);


	Zoom("@絵図柄*", 0, 1000, 1000, null, false);
	Fade("絵色演出明度", 0, 1000, null, true);

	Delete("絵背景*");
	Fade("絵結果100", 0, 1000, null, true);
	Fade("ムービー１", 0, 1000, null, false);

	zugara_fade02ABC(1000,500);
	Fade("絵色演出明度", 500, 0, null, true);
	Delete("絵色演出明度");


	Fade("絵結果200", 0, 500, null, false);
	Fade("絵結果300", 0, 1000, null, true);

	Fade("絵色100", 1000, 0, null, true);
	Delete("絵色100");

	zugara_stop01();
	zugara_haichi01C();



	Wait(1500);
//◆ＳＥ：ゴンッ！
	CreateSE("SE01","se戦闘_打撃音01");
	CreateSE("SE02","se戦闘_打撃音01");
	CreateSE("SE03","se戦闘_打撃音01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("揺用", 15000);
	Shake("揺用", 500, 5, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500150nki">
「…………」

{	Fade("揺用", 0, 1000, null, true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("揺用", 500, 5, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, false);}
//◆ＳＥ：ゴンッ！
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500160nki">
「……死にたい」

{	Fade("揺用", 0, 1000, null, true);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Shake("揺用", 500, 5, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, false);}
//◆ＳＥ：ゴンッ！
//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500170nki">
「死にたい死にたい死にたい死にたい死にたい……」



{	ClockPass(1805);}

//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500180mso">
「いやー！　危なく死ぬかと思ったぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE10","seガヤ_パチンコ屋店内_l");
	MusicStart("SE10",3500,700,0,1000,null,true);

	SetVolumeEX("@xbgm*", 1000, 0, null);
	CreatePlainSP("仮上背景", 10090);

	Delete("絵色*");
	Request("ムービー１", Stop);
	Delete("ムービー１");
	Delete("絵結果100");
	Delete("絵結果200");
	zugara_delete01();

	CreateTextureEX("絵背景100", 10100, Center, Middle, "cg2/bg/bg2302111パチンコ屋_店内_通常.jpg");
	Fade("絵背景100", 300, 1000, Axl1, true);

	Delete("絵背景200");
	Delete("仮上背景");
	Delete("絵結果300");

	OnBG(10,"bg2302111パチンコ屋_店内_通常", "path");
	FadeBG(0,true);

	FadeDelete("絵背景100", 200, null, true);

	Wait(100);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg2/bg/bg2302111パチンコ屋_店内_通常.jpg");
	SetShade("絵背景100", HEAVY);

	St("MR",700, @0,@50,"buブーa_通常_sad");
	Move("@StNameMR/MR*", 400, @0, @-50, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, false);
	FadeSt("MR",400,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500190buu">
「結局、なんだったんだ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@50,"buみそa_通常_normal");
	Move("@StNameML/ML*", 400, @0, @-50, Dxl1, false);
	FadeSt("ML",400,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500200mso">
「刺されたんだよ、背中」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500210buu">
「え？　なにに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500220mso">
「だ、だからお化けだよお化け！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500230buu">
「ハァ……またそれかよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_オラオラ_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500240mso">
「な、信じねぇのかッ！？」

//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500250mso">
「ウチは代々霊感が強くて、看護師のかーちゃんも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(300,false);
	Fade("絵背景100", 300, 0, null, false);
	Wait(500);

	St("C",700, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500260nki">
（なんだあいつら！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500270nki">
（あのカッコ……昭和の時代？）

{	St("C",700, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500280nki">
（……いやいや、さすがにコスプレ……だよな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	TextBoxDelete(150);

	Wait(200);

	St("MR",700, @0,@0,"buブーa_通常_hard");
	Fade("絵背景100", 300, 1000, null, false);
	FadeSt("MR",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500290buu">
「おめーの霊感話はよーくわかった！
　わかったから、ほら！　仕事だぞ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500300mso">
「お……おう！　そうだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500310buu">
「カラオケ行くには金が要る。
　ってことで――ドル箱パクるぞ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_smile");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500320mso">
「おう！　『燃えろいい男』作戦だな！
　準備は――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pride");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500330buu">
「ジャキーン！　ニトロタバコ！」

{	DeleteAllSt(200,true);
	St("L",700, @50,@0,"buみそa_通常_pride");
	Move("@StNameL/L*", 200, @-50, @0, Dxl1, false);
	Move("@StNameR/R*", 300, @50, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500340mso">
「よし、行くぞブー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("R",700, @-50,@0,"buブーa_通常_smile");
	Move("@StNameR/R*", 200, @50, @0, Dxl1, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500350buu">
「ああ、任せろみそ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameL/L*", 300, @-100, @0, Axl1, false);
	Move("@StNameR/R*", 300, @100, @0, Axl1, false);
	DeleteAllSt(300,false);

	Fade("絵背景100", 300, 0, null, false);
	TextBoxDelete(150);

	Wait(300);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　みそとブーは互いの名を呼び、二手に分かれる。

　目指すは、島の反対側。

　ひとりの男が、足元にドル箱の山を築いている。

　店内はそこそこ席が空いているにもかかわらず、巨漢のブーは迷わず隣に腰を下ろした。

　長身のもうひとりは、それと反対側から何食わぬ顔で近づいていく。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：最初、ブーしか映さず双六だとわからないようにする
	SetVolumeEX("SE*", 4000, 0, null);

	SoundPlay("@xbgm04",0,450,true);


	St("MR",700, @70,@0,"buブーa_通常_normal");
	Fade("絵背景100", 300, 1000, null, false);
	Move("@StNameMR/MR*", 200, @-70, @0, Dxl1, false);
	FadeSt("MR",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500360buu">
「にーちゃん」

{	DeleteAllSt(200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500370ksr">
「…………ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("MR",700, @0,@0,"buブーa_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500380buu">
「火、貸してくれねーか？」

{	DeleteAllSt(200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500390ksr">
「ああ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：ジッポ蓋開け
	CreateSE("SE01","se動作_ジッポ開ける");
	MusicStart("SE01",0,1000,0,1000,null,false);
	TextBoxDelete(150);

	Wait(300);

	St("C",700, @0,@0,"fu似鳥_通常_normal");
	Fade("絵背景100", 300, 0, null, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500400nki">
（え……？　ニトロ煙草ってことは――！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	TextBoxDelete(150);

	CreateSE("SE01","se環境_点火");

	Wait(300);

//◆ＳＥ：火がつく

//◆ＳＥ：炎燃え上がる

//◆演出指定：画面真っ赤になる感じで

	St("C",700, @0,@100,"buブーa_通常_shock");
	CreateTextureEXmul("絵背景200", 100, Center, Middle, "cg/ef/ef_ep_悪魔爆発_z5.jpg");

	MusicStart("SE01",0,2000,0,1000,null,false);
	Fade("絵背景200", 200, 1000, null, false);
	Shake("絵背景200", 300, 5, 5, 0, 0, 1000, AxlDxl, false);
	Zoom("絵背景200", 500, 1500, 1500, Dxl2, 300);
	Fade("絵背景200", 200, 0, null, true);
	Delete("絵背景200");


	Fade("絵背景100", 300, 1000, null, false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	Shake("@StNameC/*", 500, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);

{	ClockPass(1806);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500410buu">
「ぎゃあああああああああああ！！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500420buu">
「焼けるッ！　顔が火傷するッ！」

{	St("C",700, @0,@0,"buブーa_通常_angry");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500430buu">
「おいコラてめー！　何してくれんだコラ！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500440buu">
「このライター、何か仕掛けしてあんだろッ！？」

{	DeleteAllSt(200,false);
	Fade("絵背景100", 300, 0, null, false);
	Wait(300);
	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500450nki">
（なるほどね）

{	St("C",700, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500460nki">
（あれならライター持ってる方が悪いように見える、か）

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500470nki">
（で、注意を惹きつけてる間に――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	DeleteAllSt(200,false);
	TextBoxDelete(150);

	Fade("絵背景100", 300, 1000, null, false);
	Wait(300);


	St("ML",700, @-150,@0,"buみそa_オラオラ_pride");
	Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500480mso">
「――――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameML/ML*", 200, @-100, @50, Axl1, false);
	DeleteAllSt(200,false);
	TextBoxDelete(150);

	Wait(300);

	Fade("絵背景100", 300, 0, null, false);
	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500490nki">
（反対側から相棒がドル箱をパクる、って寸法か）

{	St("C",700, @0,@0,"fu似鳥_眼鏡上げ_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500500nki">
（ま、あれだけ当たってんなら、少しくらいは――）

{	St("C",700, @0,@0,"fu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500510nki">
「……あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	TextBoxDelete(150);

	Fade("絵背景100", 300, 1000, null, false);
	Wait(200);

	St("ML",700, @-50,@50,"bu双六a_通常_normal");
	Move("@StNameML/ML*", 500, @50, @-50, Dxl1, false);
	FadeSt("ML",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500520ksr">
「仕掛けだと？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_angry");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500530buu">
「あぁん？　なんだ文句あっか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500540ksr">
「デブは、黙って、カレーでも食っとけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景100", 300, 0, null, false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500550nki">
「ゲ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　男の顔を見た途端、似鳥は思わず声を漏らす。

{	St("C",700, @0,@0,"fu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500560nki">
（河原屋双六ッ！！　なんでこんな所にッ！？）

{	St("C",700, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500570nki">
（やべ！　見つからないうちに――）

//◆音声指示：小声
{	St("C",700, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500580nki">
「逃げよ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 300, 0, null);
	Move("@StNameC/C*", 300, @100, @50, Axl1, false);
	DeleteAllSt(300,true);

	Wait(100);

//◆ＳＥ：ぶつかる音。ドン！
	SetVolumeEX("@xbgm*", 300, 0, null);
	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("ML",700, @100,@50,"bu似鳥_通常_shock");

	Fade("絵背景100", 300, 1000, null, false);
	Move("@StNameML/ML*", 300, @-100, @-50, Dxl1, false);
	Shake("@StNameML/*", 500, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500590nki">
「うおっ！」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500600nki">
「あ……」

//◆ＳＥ：パチンコ玉が転がる
{	CreateSE("SE01","se擬音_パチンコ玉転がる");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);
	Wait(500);
}
　床に、パチンコ玉が転がる。

{	ClockPass(1807);}

{	St("MR",700, @0,@50,"buみそa_オラオラ_pinch");
	Move("@StNameMR/MR*", 300, @0, @-50, Dxl1, false);
	FadeSt("MR",300,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500610mso">
「……おい」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500620nki">
「ヒッ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("MR",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500630mso">
「なんで急に立つ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500640nki">
「え……ええと……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buみそa_オラオラ_angry");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500650mso">
「オレのドル箱になにしやがんだよぉぉおおッ！！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@50,"bu双六a_通常_angry");
	Move("@StNameC/*", 200, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500660ksr">
「誰のドル箱だって？」

{	DeleteAllSt(200,false);
	St("ML",700, @-100,@0,"buブーa_通常_angry");
	Move("@StNameML/ML*", 200, @100, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500670buu">
「おいコラ！　こっち無視すんじゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("C",700, @50,@0,"bu双六a_通常_angry");
	FadeSt("C",200,true);

	SoundPlay("@xbgm31",4000,450,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500680ksr">
「うるせ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_風切り音06");
	CreateSE("SE02","se戦闘_打撃音06");


//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/buブーa_通常_shock.png");
	Request("絵窓/絵演立絵", Smoothing);
	Move("絵窓/絵演立絵", 0, @-50, @80, null, true);
	CreateTextureEX("絵窓/絵演立絵2", 1905, center, middle, "cg/bu/bu双六a_横向き_sigh.png");
	Move("絵窓/絵演立絵2", 0, @500, @50, null, true);
	Request("絵窓/絵演立絵2", Smoothing);
	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//動作

	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/*", 200, @-50, @50, Axl2, false);
	DeleteAllSt(200,true);

	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);

	Zoom("絵窓/絵演立絵*", 500, 1500, 1500, Dxl1, false);
	Move("絵窓/絵演立絵", 200, @-100, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, false);

	Move("絵窓/絵演立絵2", 200, @-200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

	Shake("絵窓/絵演立絵*", 300, 10, 0, 0, 0, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 300, @-50, @100, Axl2, false);

	Wait(100);


	Fade("絵背景枠01", 100, 0, null, false);
	Fade("絵背景枠02", 100, 0, null, false);
	Move("絵背景枠01", 100, @0, 250, null, false);
	Move("絵背景枠02", 100, @0, 250, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);

	MusicStart("SE02",0,700,0,1000,null,false);
	EffectZoomadd(10000, 1000, 800, "cg/ef/ef003_汎用移動.jpg", false);

	Delete("絵窓*");
	Delete("絵背景枠*");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000500690buu">
「ブガッ！」

　双六の回し蹴りが一閃。

　ブーの巨体が、軽々と宙を舞う。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se人体_倒れる01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("揺用", 2005);
	Shake("揺用", 1000, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1000, 0, null, true);
	Delete("揺用");
	DeleteAllSt(200,false);

	St("MR",700, @50,@0,"buみそa_通常_pinch");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500700mso">
「ブー！」

{	DeleteAllSt(200,false);
	St("ML",700, @-20,@50,"bu双六a_通常_hard");
	Move("@StNameML/ML*", 200, @20, @-50, Dxl2, false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500710ksr">
「テメーら、グルだな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500720mso">
「な、なんでオレたちがグルだってわかんだよ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500730ksr">
「外見から」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buみそa_通常_fear");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500740mso">
「し、しまった！」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500750ksr">
「さっさと田舎に帰れカッペ野郎」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buみそa_通常_shout");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500760mso">
「郡山は田舎じゃねぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500770ksr">
「どこ、そこ？」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500780ksr">
「まあ、バカは自分の生まれたド田舎が世界の中心――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500790mso">
「オレを、オレを――」

{	St("MR",700, @0,@0,"buみそa_通常_angry");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500800mso">
「バカにしたなあああああああああああッ！！」

{	St("MR",700, @0,@0,"buみそa_オラオラ_angry");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500810mso">
「埋める！　あぶくま洞に埋め殺すッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1808);}


	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500820ksr">
「ん？　やる気か？　……メンドクセーな」

{	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500830ksr">
「ってオイ似鳥！」

{	DeleteAllSt(200,false);
	St("MR",19010, @-50,@100,"fu似鳥_通常_shock");
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @50, @-100, Dxl2, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500840nki">
「ひえっ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500850ksr">
「コソコソ逃げんな！
　借金の期限は今日まで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,false);
	TextBoxDelete(150);


//◆演出指示：頭突きで攻撃
	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 1050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 1610, -100, -344, "cg2/bg/bg2302100パチンコ屋_店内_通常.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

	CreateTextureEX("絵演窓上/絵立絵", 1620, 312, -187, "cg/bu/buみそa_オラオラ_angry.png");
	SetBlur("絵演窓上/絵立絵", true, 1, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	CreateTextureEX("絵背景枠01", 6200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 6200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");
	Move("絵背景枠01", 0, @0, 63, null, true);
	Move("絵背景枠02", 0, @0, 451, null, true);




	Move("絵演窓上/絵演背景", 300, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 300, @-200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵背景枠01", 300, 1000, null, false);
	Fade("絵背景枠02", 300, 1000, null, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500860mso">
「どりゃあああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_風切り音06");
	CreateSE("SE03","se戦闘_風切り音08");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵演窓上/絵立絵", 300, @-50, @300, Dxl2, false);
	Zoom("絵演窓上/絵立絵", 300, 2000, 2000, Axl1, false);
	Fade("絵背景枠01", 300, 0, null, false);
	Fade("絵背景枠02", 300, 0, null, false);
	Fade("絵色100", 300, 0, null, false);
	Fade("絵演窓上*", 300, 0, null, true);

	Delete("絵色100");
	Delete("絵演窓上*");
	Delete("絵背景枠*");


	St("ML",700, @50,@0,"bu双六a_横向き_sigh");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("@StNameML/*", 200, @-50, @0, Dxl2, false);
	FadeSt("ML",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500870ksr">
「ぅおっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(100,false);
	TextBoxDelete(100);

	CreateSE("SE02","se戦闘_破壊02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 600, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 600, 0, null, true);


	St("ML",700, @0,@50,"bu双六a_通常_pinch");
	Move("@StNameML/*", 200, @0, @-50, Dxl2, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500880ksr">
「なななな！　なんだその攻撃！」

{	St("ML",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500890ksr">
「ってか――リーゼントで床凹んだ！？」

{	DeleteAllSt(200,false);
	St("C",19010, @0,@100,"fu似鳥_眼鏡上げ_angry");
	Move("@StNameC/*", 200, @0, @-100, Dxl2, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500900nki">
「今だッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE10","se動作_走る01_l");

	TextBoxDelete(150);

	MusicStart("SE10",0,700,0,1000,null,true);
	Move("@StNameC/*", 200, @100, @0, Axl2, false);
	DeleteAllSt(200,true);


	St("ML",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500910ksr">
「お……おいコラ待て、金返せッ！」

{	DeleteAllSt(150,false);
	St("R",19010, @-100,@0,"fu似鳥_通常_rage");
	Move("@StNameR/*", 150, @100, @0, Dxl2, false);
	FadeSt("R",150,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500920nki">
「誰が待つかッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 1000, 0, null);
	Move("@StNameR/*", 150, @100, @0, Axl2, false);
	DeleteAllSt(150,false);
	TextBoxDelete(150);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 1600, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 1610, -100, -344, "cg2/bg/bg2302100パチンコ屋_店内_通常.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

	CreateTextureEX("絵演窓上/絵立絵", 1620, -112, -187, "cg/bu/buみそa_オラオラ_angry.png");
	SetBlur("絵演窓上/絵立絵", true, 1, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");
	Move("絵背景枠01", 0, @0, 63, null, true);
	Move("絵背景枠02", 0, @0, 451, null, true);

	Move("絵演窓上/絵演背景", 300, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 300, 112, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵背景枠01", 300, 1000, null, false);
	Fade("絵背景枠02", 300, 1000, null, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	Fade("", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000500930mso">
「せいやッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_風切り音06");
	CreateSE("SE02","se戦闘_破壊02");
	CreateSE("SE03","se戦闘_風切り音08");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景枠01", 300, 0, null, false);
	Fade("絵背景枠02", 300, 0, null, false);
	Move("絵演窓上/絵立絵", 300, @150, @300, Dxl1, false);
	Zoom("絵演窓上/絵立絵", 300, 2000, 2000, Axl1, false);
	Fade("絵色100", 300, 0, null, false);
	Fade("絵演窓上*", 300, 0, null, true);


	Delete("絵色100");
	Delete("絵背景枠*");
	Delete("絵演窓上*");
	St("C",700, @50,@50,"bu双六a_横向き_sigh");
	Move("@StNameC/C*", 200, @-100, @-50, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0223]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/18/000500940ksr">
「だ！　だからやめろってその非常識な――うぉっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("@StNameC/C*", 100, @-100, @0, Axl2, false);
	DeleteAllSt(100,false);
	TextBoxDelete(100);

	MusicStart("SE02",0,1000,0,1000,null,false);

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 600, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 600, 0, null, true);
	Delete("揺用");



	CreateSE("SE10","se動作_走る01_l");
	MusicStart("SE10",500,1000,0,800,null,true);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	Delete("絵背景100");
	OnBG(10,"bg1101111スパコン館_裏面_通常");
	FadeBG(0,true);
	#bg1101100スパコン館_裏面_通常 = true;
	CreateSE("SE00","se環境_雨_l");

	$SYSTEM_effect_rain_dencity=32;
	$SYSTEM_effect_rain_speed=128;

	CreateEffect("エフェクト１", 1100, 0, 0, 1024, 288, "Rain");
	SetAlias("エフェクト１","エフェクト１");
	SetVertex("エフェクト１", 0, 0);
	Zoom("エフェクト１", 0, 1000, 2000, null, true);
	Fade("エフェクト１", 0, 500, null, true);

	Wait(2000);

	SetFrequency("SE10", 2000, 300, null);
	MusicStart("SE00",3000,1000,0,1000,null,true);

	Wait(1000);

	DrawDelete("絵黒幕", 500, 100, null, "slide_01_01_1", true);

	Wait(500);
	SetVolumeEX("SE10", 1000, 0, null);

//◆場所：スパコン館_裏面
	St("C",700, @-100,@0,"bu似鳥_通常_sigh");
	Move("@StNameC/*", 200, @100, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500950nki">
「はぁッ、はぁッ、はぁッ……」

{	ClockPass(1809);}

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500960nki">
（雨……？）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500970nki">
（クソッ！　今日はホントについてないな……）

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500980nki">
（双六はなんとか振り切ったみたいだけど）

{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000500990nki">
（身体中、びしょびしょだし）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
//【似鳥戴斗】
[text0240]
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000501000nki">
（金はないし）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000501010nki">
「…………」

{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/000501020nki">
「ハァ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("SE*", 2000, 0, null);


	Delete("エフェクト１");

	EndScene();
}


