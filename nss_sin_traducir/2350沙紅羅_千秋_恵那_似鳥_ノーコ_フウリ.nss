
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss_MAIN
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
	$GameName = "2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss";//★エンディングへ
}

scene 2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="5810">
////////////header////////////
//file name "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//title "カウントダウン"
//previous "2340沙紅羅.nss"
//previous "2340千秋_恵那.nss"
//previous "2345似鳥.nss"
//previous "2349ノーコ_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "千秋" "2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "恵那" "2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "似鳥" "2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "ノーコ" "2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "フウリ" "2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////


//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2350);}

//◆場所：半田明神_男坂_雪
	OnBG(10,"bg0601211半田明神_男坂_雪");
	FadeBG(0,true);
	#bg0601200半田明神_男坂_雪 = true;

	CreateSE("SE10","se動作_集団走る");
	MusicStart("SE10",0,700,0,1000,null,false);

	if($PreGameName=="2345似鳥.nss"||$PreGameName=="2349ノーコ_フウリ.nss"){

		FadeDelete("上背景", 1000, null, true);
		Wait(300);

	}else if($PreGameName=="2340千秋_恵那.nss"){

		DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);
	
		Wait(300);

	}else{

		FadeDelete("上背景", 100, null, true);

	}


	SetVolumeEX("SE10", 4000, 0, Axl2);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @50,@0,"bu千秋_朗らか_sigh");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100010kit">
「はぁっ……はぁっ……はぁっ……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100020kit">
「ちょっと……なんで、そんなに急ぐんだよ……？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100030kit">
「大体オレ、スーパーノヴァでバイトしないと――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100040fje">
「それのために、走ってるの！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100050kit">
「そのためにって、でも、こっちは半田明神――ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//おがみ：ＳＥ：歓声
	CreateSE("SE11","seガヤ_xsong02live_l");
	MusicStart("SE11",1400,500,0,1000,null,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100060kit">
「あれ？　なんか、歓声が――」

{	DeleteAllSt(200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100070mrp">
『レディ――――ス＆ジェントルメン！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指定：場所、切り替わる

//◆場所：半田明神_境内_雪ライブ
	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE11", 2000, 1600, null);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);
	#bg0603300半田明神_境内_雪ライブ = true;

//ライト準備===========================================================
	CreateColorSPover("絵色ライト1", 1109, "#FF6699");
	CreateColorSPover("絵色ライト2", 1109, "#99FF00");
	CreateColorSPover("絵色ライト3", 1109, "#0055CC");
	DrawTransition("絵色ライト1", 0, 500, 500, 200, null, "cg/data/circle_12_00_1.png", true);
	DrawTransition("絵色ライト2", 0, 500, 500, 200, null, "cg/data/circle_13_00_1.png", true);
	DrawTransition("絵色ライト3", 0, 500, 500, 200, null, "cg/data/circle_13_00_1.png", true);


	Fade("絵色ライト1", 0, 0, null, true);
	Fade("絵色ライト2", 0, 0, null, true);
	Fade("絵色ライト3", 0, 0, null, true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトタイム = 300;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("プロセスライト１","プロセスライト１");

//ライト準備===========================================================

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);



//マスク準備
	CreateTextureEX("絵マスク枠", 7010, 300, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 6520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 6530, center, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 6530, center, middle, "cg/bu/buミリＰb_ショータイム_happy.png");
	Request("絵マスク/絵演立絵2", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵*", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

//イン動作
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵*", 200, 450, middle, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100080mrp">
『それでは皆さんお待ちかねッ！！』

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100090mrp">
『第一宇宙速度、年越しライブ――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵マスク/絵演立絵", 300, 0, Axl2, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, null, true);


//生成まとめ１=================================================================
	CreateTextureEX("絵背景BG01", 90, -30, -550, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	CreateTextureEX("絵背景BG02", 90, -512, -550, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");

	CreateTextureEXadd("絵背景EF01", 100, 0, 100, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景EF02", 100, 146, 150, "cg/ef/花火02.jpg");
	CreateTextureEXadd("絵背景EF03", 100, 292, 230, "cg/ef/花火03.jpg");
	CreateTextureEXadd("絵背景EF04", 100, 438, 400, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景EF05", 100, 584, 230, "cg/ef/花火02.jpg");
	CreateTextureEXadd("絵背景EF06", 100, 730, 150, "cg/ef/花火03.jpg");
	CreateTextureEXadd("絵背景EF07", 100, 876, 100, "cg/ef/花火01.jpg");

	CreateTextureEXadd("絵背景EG01", 100, -160, -100, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG02", 100, -46, 50, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG03", 100, 92, -200, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG04", 100, 238, 100, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG05", 100, 384, -30, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG06", 100, 530, -150, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG07", 100, 676, 100, "cg/ef/花火04.jpg");

	CreateTextureEXadd("絵背景煙幕用EF01", 200, 40, 0, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景煙幕用EF02", 200, 720, 0, "cg/ef/花火02.jpg");
	Rotate("絵背景煙幕用EF01", 0, @0, @0, 20, null,true);
	Rotate("絵背景煙幕用EF02", 0, @0, @0, -20, null,true);

//生成まとめ１=================================================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100100mrp">
『スーパー・スーパー・ノヴァの、始まりよォッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：大歓声
//アウト動作
	CreateSE("SE21","seガヤ_大歓声_l");
	SetVolumeEX("SE11", 2000, 1000, null);
	MusicStart("SE21",1500,1000,0,1000,null,true);


	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵*", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵*", 200, 0, null, true);

	Delete("絵マスク*");

//生成まとめ２=================================================================


	CreateColorEXadd("絵色100", 1500, "WHITE");

	CreateTextureEX("絵背景100BG01", 120, -512, -530, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");//120

	CreateTextureEX("絵背景100", 100, -30, -30, "cg/ev/l/ev2350第一宇宙速度年越しライブ_l.jpg");//100
	Request("絵背景100", Smoothing);

	CreateTextureEX("絵背景200", 99, center, middle, "cg/ev/ex/ev2350第一宇宙速度年越しライブ_ex_ogm.jpg");//99
	Request("絵背景200", Smoothing);
//	Zoom("絵背景200", 0, 1200, 1200, null, true);
	SetBlur("絵背景200", true, 1, 300, 120, false);

//生成まとめ=================================================================

	CloudZoomSmokeSet01("スモークプロセスA",200,"cg/ef/efスモーク.jpg");
	CloudZoomSmokeSet02("スモークプロセスB",200,"cg/ef/efスモーク.jpg");




	CreateSE("SE01","se環境_花火連打01");
	CreateSE("SE煙a","se動作_煙幕");
	CreateSE("SE煙b","se擬音_煙抜ける");

	CreateColorEXadd("絵色200", 1500, "WHITE");


	Move("絵背景BG01", 1000, -1024, @0, AxlDxl, false);
	Fade("絵背景BG01", 500, 1000, null, true);
	Wait(200);


	MusicStart("SE01",0,1200,0,1000,null,false);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵背景BG02", 0, 1000, null, true);

	Move("絵背景BG02", 500, @0, 0, Dxl2, false);

	FadeDelete("絵色100", 200, null,false);

	Fade("絵背景EF*", 0, 1000, null, true);
	Shake("絵背景EF*", 1500, 5, 3, 0, 0, 1000, null, false);
	Zoom("絵背景EF*", 1000, 1500, 2300, Dxl2, false);
	Rotate("絵背景EF*", 1500, @0, @15000, @0, null,false);

	FadeDelete("絵背景EF*", 1200, Axl1,400);

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


	SetVolumeEX("SE01", 1500, 0, null);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
　ステージ上に輝く目映い花火。

　大歓声に包まれて――

//【富士見鈴】
//<voice name="富士見鈴" class="富士見鈴" src="voice/23/500100110fjr">
//「行っくよおおおおお――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
*/


	DAIICHI_Live(1200,800);
	SetVolumeEX("SE21", 1500, 500, null);


	Fade("絵色200", 250, 1000, null, true);

	Delete("絵背景EF*");
	Delete("絵背景EG*");

//◆ＥＶ："ev/ev2350第一宇宙速度年越しライブ.txt"

//位置調整
	Move("絵背景100", 0, -563, -888, null, true);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 1, 500, 80, false);

	MoveFTP1("@絵背景100*",1500,18,13);
	MoveFTP2("@絵背景200",2000,8,3);

	Request("プロセスライト１", Start);



	SetVolumeEX("SE21", 3000, 800, AxlDxl);
	Wait(650);
//◆演出指定：演奏始まる
	Fade("絵背景100", 0, 1000, null, true);

	Fade("絵色200", 100, 0, null, true);

	Wait(1000);

	Fade("絵色200", 200, 1000, null, true);

	MoveFTP1stop();
	SetBlur("絵背景100", false, 1, 500, 80, false);
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, -600, -30, null, true);
	MoveFTP1("@絵背景100*",2000,8,3);
	SetBlur("絵背景100", true, 1, 500, 80, false);

	Fade("絵色200", 400, 0, null, true);

	Wait(1300);

	Fade("絵色200", 200, 1000, null, true);

	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, -510, -40, null, true);
	MoveFTP1("@絵背景100*",2000,8,3);
	SetBlur("絵背景100", true, 1, 500, 80, false);

	Fade("絵色200", 400, 0, null, true);

	Wait(1300);

	Fade("絵色200", 200, 1000, null, true);

	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, -30, -550, null, true);
	MoveFTP1("@絵背景100*",2000,8,3);
	SetBlur("絵背景100", true, 1, 500, 80, false);

	Fade("絵色200", 200, 0, null, true);

	Wait(300);

	Fade("絵色200", 200, 1000, null, true);

	Move("絵背景100", 0, -964, -550, null, true);
	MoveFTP1("@絵背景100*",2000,8,3);
	SetBlur("絵背景100", true, 1, 500, 80, false);

	Fade("絵色200", 200, 0, null, true);

	Wait(300);

	Fade("絵色200", 200, 1000, null, true);

	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, -512, -500, null, true);
	MoveFTP1("@絵背景100*",2000,8,3);
	SetBlur("絵背景100", true, 1, 500, 80, false);

	Fade("絵色200", 200, 0, null, true);

	Wait(300);

	Fade("絵色200", 200, 1000, null, true);

	Move("絵背景100", 0, -964, -100, null, true);
	SetBlur("絵背景100", true, 1, 500, 80, false);
	MoveFTP1("@絵背景100*",2000,8,3);

	Fade("絵色200", 200, 0, null, true);

	Wait(300);

	Fade("絵色200", 200, 1000, null, true);

	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, -30, -30, null, true);
	SetBlur("絵背景100", true, 1, 500, 80, false);
	MoveFTP1("@絵背景100*",2000,8,3);

	Fade("絵色200", 200, 0, null, true);

	Wait(300);

	Fade("絵色200", 200, 1000, null, true);

	Fade("絵背景100BG01", 0, 1000, null, true);
	Zoom("絵背景100BG01", 600, 1100, 1100, null, false);

	Fade("絵色200", 200, 0, null, true);

	Wait(400);

	Zoom("絵背景100BG01", 200, 3000, 3000, Axl1, false);
	Fade("絵色200", 200, 1000, null, true);

	Delete("絵背景100BG01");
	Move("絵背景100", 0, -513, -288, null, true);
	SetBlur("絵背景100", true, 1, 500, 80, false);
	MoveFTP1("@絵背景100*",2000,8,3);
	Fade("絵背景200", 0, 1000, null, true);

	MusicStart("SE煙a",0,1500,0,1000,null,false);

	Fade("絵背景煙幕用*", 0, 1000, null, true);
	Zoom("絵背景煙幕用EF01", 1000, 1000, 3000, Dxl2, false);
	Zoom("絵背景煙幕用EF02", 1000, 1000, 3000, Dxl2, false);
	FadeDelete("絵背景煙幕用*", 1000, Axl2, false);

//	CloudZoomSmokeStart01(2200,110,700,2500,900,60,576,240,150,Dxl1);
//	CloudZoomSmokeStart02(2200,110,700,2500,900,884,576,684,150,Dxl1);
	CloudZoomSmokeStart01(3000,200,700,2500,900,60,576,240,150,Dxl1);
	CloudZoomSmokeStart02(3000,200,700,2500,900,884,576,684,150,Dxl1);

	MusicStart("SE煙b",0,1000,0,400,null,false);

	FadeDelete("絵色200", 200, null, false);
//	Fade("絵色200", 200, 0, null, false);
	Zoom("絵背景100", 300, 600, 600, AxlDxl, true);
	FadeDelete("絵背景100", 200, Axl1,false);

	SetVolumeEX("SE21", 3000, 550, AxlDxl);
	SetVolumeEX("SE11", 2000, 0, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0037]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/23/500100120e07">
「うおおおおおおおおおおお！！」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/23/500100130e08">
「第一宇宙速度、きた――――っ！！」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/23/500100140e09">
「おい、あれホントにゆるキャラバンの――」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/23/500100150e10">
「ホントだ！　あの大食いの――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DAIICHI_Live_VolumeSet(4000, 500);
	SetVolumeEX("SE21", 4000, 400, null);

	CreateTextureEX("絵背景上BG", 1000, -512, -530, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	Fade("絵背景上BG", 1000, 1000, null, true);

	CloudZoomSmokeDelete01(0);
	CloudZoomSmokeDelete02(0);

	CreateTextureSP("絵背景BG", 110, -512, -530, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");

	MoveFTP1stop();
	MoveFTP2stop();

	Delete("絵背景上BG");
	Delete("絵背景100");
	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100160kit">
「なに、これ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100170fje">
「スーパーノヴァがつかえないから、急遽ここでライブをすることになったの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100180kit">
「ってか、境内こんなにしちゃっていいのか？
　鳥居もなんか黄色いし……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100190fje">
「背に腹は代えられないでしょ」

{	St("ML",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100200fje">
「雪はバッチリ音を吸ってるみたいだし、ノーコさんとフウリさんも間に合ったみたいね」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100210kit">
「ノーコさん？　あ……ホントだ」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100220kit">
「あそこで……売り子してる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(150,true);

//◆演出指定：参道で行列
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵背景BG*");

	DrawTransition("絵色ライト1", 0, 300, 300, 200, null, "cg/data/circle_11_00_1.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 200, null, "cg/data/circle_11_00_1.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 200, null, "cg/data/circle_11_00_1.png", true);

	OnBG(10,"bg0604212半田明神_社務所_雪");
	FadeBG(0,true);
	SetVolumeEX("SE21", 2000, 300, null);
	DAIICHI_Live_VolumeSet(2000, 300);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500100230msi">
「はい、いらっしゃい！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500100240nko">
「…………」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/23/500100250e06">
「すすすすす、すごい……
　本物の、ノーコさんキタコレ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
<voice name="オタクＢ" class="その他男声" src="voice/23/500100260e06">
「<RUBY text="ほふ">屠</RUBY>れ！！」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500100270nko">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500100280msi">
「なんですかそれ？」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/23/500100290e06">
「あ。ええと、これがいわゆるファンの挨拶で――」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500100300msi">
「あの、ご注文の方は――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/23/500100310e06">
「あ、あああ、あの……あのですね！
　『ノーコントロール』の、全巻セットを――」

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500100320msi">
「はい、全巻セットですね！
　お会計１万円になります！」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500100330msi">
「オマケにですね、はい、こちらクリマンもセットで！」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/23/500100340e06">
「え？　コレは別にＮＯ　ＴＨＡＮＫ　ＹＯＵ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500100350msi">
「はい、この特製エコバッグもつけちゃいますよー！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500100360nko">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500100370msi">
「毎度ありがとうございまーす」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/23/500100380e06">
「あ、あの……ひとつお願いなんですけど……」

{	St("ML",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500100390msi">
「はいはい、後ろがつかえてるから、ご遠慮願い――」

{	DeleteAllSt(200,true);}
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/23/500100400e06">
「お願いしますッ！！
　僕を！　ぼくを切って下さいッッ！！」

{	St("ML",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500100410msi">
「いや、さすがにそれは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(150,true);


//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#CC3322");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/l/buノーコa_カッター_smile_x01.png");
	Zoom("絵窓/絵演立絵", 0, 500, 500, null, true);
	Move("絵窓/絵演立絵",0, @500, @150, null, true);
	SetBlur("絵窓/絵演立絵", true, 2, 500, 50, false);

//動作
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 500, @-500, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

	Wait(500);

	CreateSE("SE01","se戦闘_切断04");
	MusicStart("SE01",0,1000,0,1000,null,false);



	DAIICHI_Live_VolumeSet(100, 2);
	SetVolumeEX("SE21", 100, 1, null);

	Move("絵窓/絵演立絵", 150, @0, @150, Dxl1, false);
	Zoom("絵窓/絵演立絵", 150, 1000, 1000, Dxl1, true);
	CreatePlainSP("揺用", 2005);

	CreateEffect("ネガポジ", 5500, 0, 0, 1024, 576, "NegaPosi");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500100420nko">
「……きる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorEXadd("絵色100", 5500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);
	Delete("揺用");

//	Zoom("絵窓", 200, 1000, 0, null, true);
	Delete("絵窓*");
	Delete("ネガポジ");
	SetVolumeEX("SE21", 2000, 100, null);
	DAIICHI_Live_VolumeSet(1500, 300);
	FadeDelete("絵色100", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/23/500100430e06">
「ｑあｗせｄｒｆｔｇｙふじこｌｐ；＠――！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/23/500100440e06">
「ああああ、ありがとうございますッ！！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100450kit">
「どういうプレイ……？
　っていうか、なんであそこに同人誌の出店が？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100460fje">
「さっぱりわかんない。なんで？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2351);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//マスク準備
	CreateTextureEX("絵マスク左枠", 7010, 300, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1520, center, Middle, "cg/bg/bg0604212半田明神_社務所_雪.jpg");
	SetShade("絵マスク左/絵演背景", MIDEUM);
	Zoom("絵マスク左/絵演背景", 0, 2000, 2000, null, true);

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buミヅハ_手構え_other.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Move("絵マスク左枠", 0, -1024, 0, null, true);
	Fade("絵マスク左枠", 0, 1000, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);

//イン動作
	Move("絵マスク左枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, 0, middle, Dxl1, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100470mzh">
「お……おーい、恵那ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//アウト動作
	Move("絵マスク左枠", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -412, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, true);
	St("C",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100480fje">
「あ、ミヅハちゃん！」

{	St("C",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100490fje">
「良くやったわ！
　雪、バッチリ積もってるわね！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_手構え_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100500mzh">
「ふふん、わらわの力を見くびるでない！
　この程度のこと、ちょちょいのちょいじゃ！」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100510mzh">
「それよりも――アザナエルはどうなった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100520fje">
「ああ、アレはきっと沙紅羅さんが――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100530mzh">
「沙紅羅が……？」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100540mzh">
「ふうむ……すると……
　もしや沙紅羅は、カゴメアソビを――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100550fje">
「カゴメアソビ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100560kit">
「んなわけねーだろ！
　師匠は自分の夢は自分で叶えてやるってタイプだぜ」

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100570kit">
「絶対、アザナエルを持ってくるって！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100580mzh">
「わらわも、そう信じたい。
　信じたくは……あるのじゃが……」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100590mzh">
「沙紅羅の弟が、死んだのじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100600kit">
「え……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100610fje">
「死んだ……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100620mzh">
「うむ。あやつは入院した弟の頼みを叶えるため、秋葉原で同人誌を探しておったのじゃ」

{	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100630mzh">
「じゃが……アザナエルの騒動に巻き込まれるうち、とうとう弟の死に目にも会えぬまま……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100640kit">
「そんな素振り、全然見えなかったけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100650fje">
「……そうか。沙紅羅さんは一度病院に行った。
　だから、父さんも一緒だったのね」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100660mzh">
「弟を蘇らせるためには、アザナエルしかない」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500100670kit">
「撃たせてやるのか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100680mzh">
「あやつが撃って失敗すれば、元も子もない。
　悲劇を悲劇で上塗りするわけにはいかんじゃろう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100690fje">
「でも、どうすれば――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100700mzh">
「そこでおぬしの知恵を借りたいのじゃ、名探偵！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500100710fje">
「私の知恵を――？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500100720mzh">
「うむ。先ほど、似鳥とも相談をしたのじゃがな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Request("プロセスライト１", Stop);
	Delete("プロセスライト１");
	Fade("絵色ライト*", 0, 0, null, true);
	Delete("絵色ライト*");




//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);
	SetVolumeEX("SE21", 1000, 100, null);
	DAIICHI_Live_VolumeSet(1000, 150);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500100730adi">
「うわ、なに、これ……？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100740mrp">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500100750nki">
「どう……ですか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100760mrp">
「――似鳥君」

{	St("ML",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100770mrp">
「いいデキじゃない！
　コレならきっと、会場のハートを鷲掴みよっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500100780nki">
「あ……ありがとうございます！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100790mrp">
「でも――」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100800mrp">
「ホントにコレで、いいの？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500100810nki">
「はい、大丈夫です！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100820mrp">
「他人に横取りされちゃうかもしれないわよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2352);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500100830nki">
「それはないです！」

{	St("MR",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500100840nki">
「オレ――誰よりも、愛してますから」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100850mrp">
「やれやれ……誰も手、つけらんないわね！」

{	St("ML",700, @0,@0,"buミリＰa_ショータイム_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100860mrp">
「ねえ、ゴンちゃん！
　悪いけどコレ、屋根に行って設置してきて！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500100870adi">
「や……屋根にですか！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500100880nki">
「オレも行きます！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰa_ショータイム_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100890mrp">
「それじゃ、よろしくっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_集団走る");
	MusicStart("SE01",0,700,0,1000,null,false);


	TextBoxDelete(150);
	DeleteAllSt(200,true);
	Wait(1000);
	SetVolumeEX("SE01", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0215]
{	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100900mrp">
「さて……と。あっちの方は、あれでいいとして……」

{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100910mrp">
「……やれやれ」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100920mrp">
「フウリちゃんのドラム、ただのコピーじゃなくなってる。
　今回の騒動で、一皮剥けたわね」

{	St("C",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500100930mrp">
「コレだけ心のこもった音聞かせられたら……
　アタシももう少し、気合い入れていかないと駄目ね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreatePlainSP("揺用", 2005);


	SetVolumeEX("SE21", 1000, 400, null);
	DAIICHI_Live_VolumeSet(1000, 600);

//ライト準備===========================================================
	CreateColorSPover("絵色ライト1", 1109, "#FF6699");
	CreateColorSPover("絵色ライト2", 1109, "#99FF00");
	CreateColorSPover("絵色ライト3", 1109, "#0055CC");
	DrawTransition("絵色ライト1", 0, 500, 500, 200, null, "cg/data/circle_12_00_1.png", true);
	DrawTransition("絵色ライト2", 0, 500, 500, 200, null, "cg/data/circle_13_00_1.png", true);
	DrawTransition("絵色ライト3", 0, 500, 500, 200, null, "cg/data/circle_13_00_1.png", true);


	Fade("絵色ライト1", 0, 0, null, true);
	Fade("絵色ライト2", 0, 0, null, true);
	Fade("絵色ライト3", 0, 0, null, true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトタイム = 300;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("プロセスライト１","プロセスライト１");
	Request("プロセスライト１", Start);

//ライト準備===========================================================


//◆演出指定：ライブevに
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/ev/ev2350第一宇宙速度年越しライブ.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	SetShade("絵背景100", MIDEUM);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	FadeDelete("揺用", 500, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//◆音声指示：小声
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500100940fjr">
「フウリちゃん、良い感じよ」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500100950wfu">
「はいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	OnBG(10,"l/bg0603311半田明神_境内_雪ライブ_l");
	FadeBG(0,true);

	Fade("絵背景100", 500, 1000, null, true);
	Delete("絵背景200");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"fuフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500100960wfu">
（私は今日……この街で、色んな人に会いました）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500100970wfu">
（ミヅハちゃんに会って、一緒に肉まんを食べました！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500100980wfu">
（沙紅羅ちゃんと、ゆるキャラバンをがんばりました！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500100990wfu">
（恵那ちゃんに、一生懸命、看病してもらったし……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("C",700, @0,@0,"fuフウリ_通常_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500101000wfu">
（それに、ノーコちゃん）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500101010wfu">
（色々あったけれども、ノーコちゃんがいなければ、きっと私は貫太さんに会えなかった）

{	St("C",700, @0,@0,"fuフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500101020wfu">
（そしてもちろん、太四郎さんがいなければ――）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500101030wfu">
（このライブもできなかった）

{	St("C",700, @0,@0,"fuフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500101040wfu">
（そういう、ことなのです）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500101050wfu">
（誰かが誰かと出会って）

{	St("C",700, @0,@0,"fuフウリ_通常_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500101060wfu">
（出会うことで、運命が巡るのです！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Request("プロセスライト１", Stop);
	Delete("プロセスライト１");
	Fade("絵色ライト*", 0, 0, null, true);
	Delete("絵色ライト*");
	Delete("絵背景100");
	SetVolumeEX("SE21", 2000, 200, null);
	DAIICHI_Live_VolumeSet(2000, 200);



//◆場所：半田明神_鳥居_雪
	OnBG(10,"bg0602311半田明神_鳥居_雪");
	FadeBG(0,true);
	#bg0602300半田明神_鳥居_雪 = true;

	CreateTextureSP("絵背景調整BG", 100, Center, Middle, "cg/bg/bg0602311半田明神_鳥居_雪.jpg");
	Move("絵背景調整BG", 0, @0, @-300, null, true);

	CreateTextureEX("絵背景BIKE", 110, Center, Middle, "cg/img/l/imgイタバイク_ex01.png");
	Request("絵背景*", Smoothing);
	CreateTextureEX("絵背景CHARA", 120, Center, Middle, "cg/bu/l/st沙紅羅_通常_smile_x01.png");


	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101070fje">
「敵を欺くにはまず味方から――」

{	St("ML",700, @0,@0,"bu恵那_一休_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101080fje">
「でも――思いつかないわ。
　どうすれば、そんなことができるっていうの――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101090mzh">
「そのようなことを言わず、頼む恵那よ！
　もう、おぬしだけが頼りなのじゃ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101100kit">
「もういっそ、ライブ自体メチャクチャにしちゃったら？
　そしたら、封印する意味もなくなるわけだし――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101110fje">
「バカチビ。これだけのお客さんが楽しんでるライブ、壊せるわけないでしょ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101120kit">
「でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101130mzh">
「星のヤツは地獄耳じゃからのう」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101140mzh">
「わらわがほんのちょっと怪しい動きを見せただけで、すぐに察知――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101150kms">
「何の話ですか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@50,"buミヅハ_通常_sigh");
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101160mzh">
「ひええええええっ！　で、出たあっ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101170kms">
「なんの相談かは知りませんが、悪巧みはこの私が許しません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101180kms">
「恵那様、アザナエルを渡していただけますか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101190fje">
「ええと……それが、沙紅羅さんに頼んであるので……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101200kms">
「沙紅羅様――あの、不良女ですか」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101210kms">
「本当に、間に合うのでしょうね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101220fje">
「ええ、たぶん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101230kms">
「……疑わしいものです。
　持ち逃げされてもおかしくない――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101240kit">
「ふざけんなッ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101250kit">
「師匠は、絶対、そんなことしない！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101260kms">
「師匠？　……やけにあの不良女の肩を持つのですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	CreateSE("SE01","seメカ_バイク_エンジン加速");
//	CreateSE("SE02","seメカ_バイク_急停止");
//	CreateSE("SE03","seメカ_バイク_エンジン停止");
	CreateSE("SE01","seメカ_痛バイ_停止");
	CreateSE("SE01a","seメカ_痛バイ_発進");
	CreateSE("SE02","seメカ_バイク_急停止");
	CreateSE("SE03","seメカ_バイク_エンジン停止");
	CreateSE("SE04","seメカ_車_ドア閉める");
	CreateSE("SE05","se擬音_百野殺駆登場");
	CreateSE("SE06","se戦闘_風切り音10");


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101270kit">
「オレは、約束したんだ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101280kit">
「オレが恵那を絶対守るって！
　その代わりアザナエルは絶対に取り返してもらうって！」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101290kit">
「師匠が約束を破るはずなんて、絶対にない！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101300kms">
「しかし、現に彼女は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2353);}


//	TextBoxDelete(150);

	SetVolumeEX("SE*", 400, 0, null);
	DAIICHI_Live_VolumeSet(400, 2);

	DeleteAllSt(200,true);


	CreateTextureEX("絵背景BG", 100, Center, Middle, "cg/bg/bg0602311半田明神_鳥居_雪.jpg");
	SetShade("絵背景BG", MIDEUM);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//◆演出指定：遠くから
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101310skr">
「待たせたなッ！！」

{	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101320fje">
「あ――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101330mzh">
「この声は――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101340kit">
「師匠――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：ヴェドゴニア痛単車に乗ってやってくる沙紅羅
//動作

	Zoom("絵背景BIKE", 0, 500, 500, null, true);
	Zoom("絵背景BG", 0, 2000, 2000, null, true);

	Move("絵背景BIKE", 0, @-1400, @0, null, true);
	Move("絵背景CHARA", 0, @-2000, @0, null, true);
	Move("絵背景BG", 0, @200, @-1000, null, true);



	DAIICHI_Live_VolumeSet(400, 2);
	SoundPlay("@xbgm07",0,450,true);

//動作
	MusicStart("SE01",2500,700,0,1000,Axl2,false);
	MusicStart("SE01a",1000,700,0,1000,null,false);

	Wait(1500);

	SetVolumeEX("SE01a", 1000, 0, null);
	Wait(500);
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("絵背景BIKE", 1500, 0, 10, 0, 0, 1000, Dxl1, false);
	Fade("絵背景BIKE", 200, 1000, null, false);
	Fade("絵背景BG", 200, 1000, null, false);
	Zoom("絵背景BIKE", 1000, 1000, 1000, Dxl3, false);
	Move("絵背景BG", 1000, @-400, @0, Dxl3, false);
	Move("絵背景BIKE", 1000, @1050, @0, Dxl3, true);

	Move("絵背景BIKE", 200, @-10, @-10, Axl1, true);

	MusicStart("SE03",0,700,0,1000,null,false);

	WaitKey(1000);
	MusicStart("SE04",0,700,0,1000,null,false);
	Move("絵背景BIKE", 100, @2, @2, Dxl1, true);
	Move("絵背景BIKE", 100, @-5, @-10, Axl1, true);
//	FadeQ("絵背景BIKE",0,0,200,30,50,Dxl1,false);

	WaitKey(500);
	Fade("絵背景CHARA", 300, 1000, null, false);

	Move("絵背景CHARA", 3000, @1300, @0, AxlDxl, false);
	Move("絵背景BIKE", 3000, @1000, @0, AxlDxl, false);
	Move("絵背景BG", 3000, @300, @0, AxlDxl, true);

	WaitKey(500);

	MusicStart("SE06",0,700,0,1000,null,false);

	Zoom("絵背景BG", 500, 1000, 1000, Dxl1, false);
	Zoom("絵背景BIKE", 500, 500, 500, Dxl1, false);
	Zoom("絵背景CHARA", 500, 500, 500, Dxl1, false);
	Move("絵背景CHARA", 500, -744, -1141, Dxl1, false);
	Move("絵背景BG", 500, 0, -794, Dxl1, false);
	Move("絵背景BIKE", 500, -300, -147, Dxl1, true);

	MusicStart("SE05",0,700,0,1000,null,false);

	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101350skr">
「月夜乃沙紅羅、秋葉原カスタム！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101360skr">
「只今参上！　夜露死苦ぅ！！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101370fje">
「…………」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101380mzh">
「…………」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101390kit">
「…………」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101400kms">
「…………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101410skr">
「はっはー！　どうだッ！
　今のアタシ、格好良くて言葉もないか！？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101420mzh">
「え……ええと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreatePlainSP("揺用", 2005);

	Delete("絵背景BG");
	Delete("絵背景BIKE");
	Delete("絵背景CHARA");
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("C",700, @0,@100,"fuノーコb_通常_shy");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500101430nko">
「かっこいい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101440kit">
「わ！　の、ノーコさん！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101450fje">
「突然出てきたかと思えば……本気？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500101460nko">
「ほんき」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101470kms">
「なんだか頭痛が……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101480skr">
「へへぇ！
　ライブはなかなか上手くいってるみたいじゃねーか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101490fje">
「うん、おかげさまで――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101500kms">
「で、あなたの方はどうなのですか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101510skr">
「もちろん順調、問題ナシ！
　ほら、受け取れ弟子よ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101520kit">
「え……あ、これ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	CreateColorEX("絵色100", 105, "BLACK");
	CreateTextureEX("絵背景100", 110, Center, Middle, "cg/img/imgアザナエルa.png");
	Move("絵背景100", 0, @0, @100, null, true);

	Move("絵背景100", 300, @0, @-100, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, false);
	Fade("絵色100", 300, 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101530skr">
「アザナエル。注文通り、届けてやったぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵背景100", 300, @0, @100, Axl1, false);
	FadeDelete("絵色100", 300, null, false);
	FadeDelete("絵背景100", 300, null, true);
	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101540kit">
「ありがとう！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101550skr">
「なあに、月夜乃沙紅羅に二言はねーよ。な、ミヅハ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101560mzh">
「うむ！！」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101570kms">
「……どうやってアザナエルを！？
　河原屋双一は！？　双六は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101580skr">
「双六は、死んだよ。
　籠を爆発させて、一緒に沈んだ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101590kms">
「沈んだ……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101600skr">
「それじゃ、アタシはこれで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);
	DAIICHI_Live_VolumeSet(2000, 2);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500101610nko">
「まって！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101620skr">
「ん？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500101630nko">
「これ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	CreateTextureEX("絵背景100", 1500, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵背景100", 0, @0, @100, null, true);
	Move("絵背景100", 300, @0, @-100, Dxl2, false);
	Fade("絵背景100", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0385]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101640kit">
「あ！？　コレってオレの――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵背景100", 300, @0, @100, Axl2, false);
	FadeDelete("絵背景100", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0386]
　千秋は有無を言わさず、ノーコからバッグを奪い取り中味を見ると――

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101650kit">
「オレのエコバッグ――じゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateSE("SE01","se動作_布落とす");
	MusicStart("SE01",0,700,0,1000,null,false);

//あきゅん「素材：imgエコバッグ_沙紅羅2350」
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/imgエコバッグ_沙紅羅2350.jpg");
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101660kit">
「ない？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101670kit">
「なんだこれ……同人誌？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101680skr">
「ってオイ！　これ、まさか――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵背景100", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0391]
{	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500101690nko">
「『ＮＯ　ＣＯＮＴＲＯＬ』のさいしんかん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500101700nko">
「あなたが、さがしていたほん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm25",0,450,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101710skr">
「なんで……？　なくなったんじゃ――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500101720nko">
「アザナエルの、きせき」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_shock");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101730skr">
「あ……それじゃもしかして！
　おまえ……カゴメアソビでコレを！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500101740nko">
「もっていって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500101750nko">
「おとうとさんのために」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101760skr">
「は……はは、あははは！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101770skr">
「なんだい。最後に……はは。
　こんな、サプライズが……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_cry");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101780skr">
「やった！　やったぜ！　嬉しいなぁ……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	ClockPass(2354);}




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101790fje">
「ね、千秋！」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101800fje">
「『鳥、戦える？』」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101810kit">
「え？　鳥？
　なに、わけのわかんないこと――」

{	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101820kit">
「ああ、鳥ね。鳥……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
{	St("MR",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101830kit">
「戦えるかっていうけど――
　それ、『痛いんじゃないかな？』」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101840fje">
「ああ、そっか。痛いわよね、やっぱり……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101850kms">
「…………？
　ふたりとも、なにをこそこそと話しているのですか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500101860fje">
「あ、いえいえ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101870kit">
「別になにも！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101880kms">
「……ほら、時間がないのです。
　早くアザナエルを」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101890kit">
「わかってるよ。ほら」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101900kms">
「確かに、受け取りました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500101910kit">
「師匠も、はい」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101920skr">
「おう、サンキュー」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500101930kms">
「行きましょう、ミヅハ様」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101940mzh">
「いや、でも――」

{	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101950mzh">
「沙紅羅、本当に、それでいいのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101960mzh">
「アザナエルを使えば、おぬしの弟は――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101970skr">
「アタシは、姉貴失格だからさ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500101980skr">
「努力したつもりになってるだけで、結局変われない。
　そんなアタシにぴったりの結末だよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500101990mzh">
「しかし――わらわは、運命を変えられる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500102000mzh">
「おぬしらの叶わぬ努力を叶えてやるのが、我らが神の役目ではないのか！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102010skr">
「……ありがとな、ミヅハ」

{	DeleteAllSt(200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500102020mzh">
「待て、待つのじゃ！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500102030mzh">
「沙紅羅――さくらあッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0475]
{	St("C",19100, @0,@0,"fu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102040skr">
「……あばよ、みんな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2355);}


	SetVolumeEX("@xbgm25", 1000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE21", 1500, 150, null);
	DAIICHI_Live_VolumeSet(1500, 150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(1000);

	CreateSE("SE11","seガヤ_歓声_l");
	MusicStart("SE11",2000,200,0,1000,null,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102050skr">
「さて、と。これから――」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102060skr">
「これから……どうすっかな」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102070e05">
「あ、あの！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102080skr">
「ん……？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102090skr">
「ん……ええと……誰だっけ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102100e05">
「あ、やっぱり忘却の彼方ですよね。
　そういうオチだと勘づいてはいました」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102110skr">
「んー、あー、いや……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102120skr">
「なんかこう、ノドのここまで思い出しかけてる……」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_shock");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102130skr">
「…………あ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102140skr">
「あーあー！　思い出した！　思い出したぞ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102150skr">
「確か、ビッグ斎藤で見かけた――」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102160e05">
「はい！　か……感激だなあ……
　まさか、覚えてくれてるなんて……！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102170skr">
「おまえ、アタシを馬鹿にした？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102180e05">
「そ、そんな滅相もない！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102190e05">
「それであの、このヘルメット。
　あの時受け取ったけど、やっぱり、お返ししようって」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102200skr">
「ぁあん？　アタシの厚意が受け取れねーのか？」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102210e05">
「そういうわけじゃないですけど！
　自分、バイク持ってないし、宝の持ち腐れで……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102220e05">
「だから、使ってもらえる環境にあったほうが、彼も嬉しいんじゃないかなって愚考するところです」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102230skr">
「ん……ああ、そうか」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102240skr">
「確かに、メットのせいでブラパンしつこかったし……
　自分でトラブルを呼び込むこともねぇか」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102250skr">
「んじゃ、遠慮なく――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	DeleteAllSt(200,true);

//あきゅん「素材：objヘルメットb」

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objヘルメットb.png");

	Move("絵背景100", 0, @0, @100, null, true);
	Move("絵背景100", 500, @0, @-100, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
{
//	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102260skr">
「お！　なに！？　このステッカー！」

{
//	DeleteAllSt(200,true);
}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102270e05">
「傷ついちゃったんで、隠そうと思って。
　ノーコさんの、ステッカーを――」

{
//	St("C",700, @0,@0,"bu沙紅羅_頭かき_shock");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102280skr">
「これも神様のお導き……か？」

{
//	DeleteAllSt(200,true);
}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102290e05">
「あの……邪魔だったらすいません！
　今すぐ取って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景100", 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102300skr">
「ううん、ダイジョブだ。アリガトよ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102310skr">
「ずっと気に入ってたヤツだからな！
　マジで嬉しいわ！」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102320e05">
「そうですか！？　よ、よかった……」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102330skr">
「んじゃ、またな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102340e05">
「あ、あの――！」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102350e05">
「ええと……その……」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102360e05">
「また、会えますかっ！？」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102370skr">
「ん……？　あ、ああ。そうだな……」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102380skr">
「気が向いたら、ビッグ斎藤に遊びに来るわ」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102390skr">
「財布も、返して貰わなきゃなんねーしな」

{	DeleteAllSt(200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/23/500102400e05">
「あ――はい」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500102410skr">
「んじゃ、あばよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景BIKE", 110, Center, Middle, "cg/img/l/imgイタバイク_ex01.png");
	CreateTextureEX("絵背景BG", 100, Center, Middle, "cg/bg/bg0602311半田明神_鳥居_雪.jpg");
	SetShade("絵背景BG", MIDEUM);
	Move("絵背景BIKE", 0, @-500, @200, null, true);
	Move("絵背景BG", 0, @0, @-300, null, true);

//	Zoom("絵背景BIKE", 0, 500, 500, null, true);
	Zoom("絵背景BG", 0, 2000, 2000, null, true);

	CreateSE("SE01","seメカ_痛バイ_エンジン始動");
	CreateSE("SE02","seメカ_痛バイ_発進");

	MusicStart("SE01",0,600,0,1000,null,false);
	Wait(800);

	MoveFTP3("@絵背景BIKE", 500, 2, 3);
	Shake("絵背景BIKE", 7500, 1, 1, 0, 0, 1000, null, false);

	Fade("絵背景BIKE", 300, 1000, null, false);
	Fade("絵背景BG", 300, 1000, null, true);

	Wait(1500);

	SetVolumeEX("SE01", 1000, 0, null);
	Wait(500);

	Move("絵背景BIKE", 250, @1500, @0, Axl1, false);

	Shake("絵背景BIKE", 7500, 1, 5, 0, 0, 1000, null, false);
	MoveFTP3stop();
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	SetVolumeEX("SE21", 1000, 300, null);
	DAIICHI_Live_VolumeSet(1000, 400);

	Delete("絵背景*");
	OnBG(10,"bg0604212半田明神_社務所_雪");
	FadeBG(0,true);

//ライト準備===========================================================
	CreateColorSPover("絵色ライト1", 1109, "#FF6699");
	CreateColorSPover("絵色ライト2", 1109, "#99FF00");
	CreateColorSPover("絵色ライト3", 1109, "#0055CC");
	DrawTransition("絵色ライト1", 0, 300, 300, 200, null, "cg/data/circle_11_00_1.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 200, null, "cg/data/circle_11_00_1.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 200, null, "cg/data/circle_11_00_1.png", true);


	Fade("絵色ライト1", 0, 0, null, true);
	Fade("絵色ライト2", 0, 0, null, true);
	Fade("絵色ライト3", 0, 0, null, true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトタイム = 300;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("プロセスライト１","プロセスライト１");
	Request("プロセスライト１", Start);

//ライト準備===========================================================

	Wait(1500);
	SetVolumeEX("SE02", 2500, 0, null);
	Wait(1000);
	DrawDelete("絵黒幕", 200, 100, null, "slide_01_03_0", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
{	St("ML",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500102420mzh">
「沙紅羅が……行ってしもうた」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500102430kms">
「自らの節度はわきまえいていたということですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500102440kms">
「双六も死にました。
　これで一件落着――ですね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102450fje">
「ん……うん。そのはずなんだけど……
　なにか引っかかるのよね」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500102460kit">
「引っかかるって、なにが？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102470fje">
「私たち、一度双六の死体見てるでしょ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500102480kit">
「ああ。でもあの時はオレ、カゴメアソビで……あれ？
　カゴメアソビで失敗したのに、なんで？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102490fje">
「私たちの見間違いか、双六がトリックを使ったか。
　それとも――まさか――」

{	St("ML",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102500fje">
「そうか！　双六は――死なない？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500102510kit">
「は？　なに言って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102520fje">
「いいえ、そう考えれば全ての辻褄が合う！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500102530mzh">
「辻褄が……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102540fje">
「ミヅハちゃん！　もしかしたら、河原屋双六は――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500102550kms">
「いつまで下らないことを言っているのですか？」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500102560kms">
「さあ、次は我々の番です。
　渡されたバトンを、きちんと伝えねば」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500102570mzh">
「じゃが、しかし――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500102580kms">
「ミヅハ様！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102590fje">
「……そうね。もう時間がないわ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500102600kit">
「ほら、年越し前に、納めなきゃいけないんだろ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500102610mzh">
「恵那……アッキー……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500102620kms">
「手遅れにならないうちに、さあ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500102630mzh">
「……わかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateSE("SE01","se動作_歩く2人_l");
	MusicStart("SE01",0,1000,0,1000,null,true);


//◆演出指示：ミヅハたち移動




	Wait(1500);

{	ClockPass(2356);}

	SetVolumeEX("SE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
{	St("ML",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102640nko">
「ほんとうに、よかったの？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102650fje">
「ノーコさん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102660nko">
「ミヅハをなかせたら、わたしがゆるさない」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102670fje">
「だいじょーぶ！
　ま、この名探偵富士見恵那を信じなさいって！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102680nko">
「しんじる……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500102690kit">
「さてと、恵那。
　年越しももう迫ってきたわけだけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500102700kit">
「もうひとつだけ――やり残したこと、あるよな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102710fje">
「やり残したこと……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500102720kit">
「そ。ほら、行くぞ」

{	Move("@StNameML/ML*", 200, @-100, @0, Axl1, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500102730fje">
「え？　ちょっと、行くってどこに――待ってよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,1000,0,1000,null,true);


	Move("@StNameMR/MR*", 200, @-100, @0, Axl1, false);
	DeleteAllSt(200,true);

	Wait(1500);

	SetVolumeEX("SE01", 1000, 0, null);

	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102740nko">
「……いっちゃった」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500102750msi">
「の、ノーコさん！
　あの、お願いだから手伝って――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102760nko">
「もう、としこしがちかい」

{	St("C",700, @0,@0,"buノーコb_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102770nko">
「にとりはぶじに、しごとを――」

{	St("C",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102780nko">
「あれ？」

{	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102790nko">
「やねにいるのは……にとり？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolumeEX("SE21", 2000, 400, null);
	DAIICHI_Live_VolumeSet(2000, 500);


//◆場所：半田明神_屋根_雪
	OnBG(10,"bg0605300半田明神_屋根_雪");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/l/bg0605300半田明神_屋根_雪_l.jpg");


	DrawTransition("絵色ライト1", 0, 300, 300, 200, null, "cg/data/circle_10_00_1.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 200, null, "cg/data/circle_10_00_1.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 200, null, "cg/data/circle_10_00_1.png", true);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500102800nki">
「気をつけてくださいね」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500102810nki">
「ええと、それじゃ布の端を――あれ？」

{	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500102820nki">
「どうしちゃったんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　ＡＤは半田明神の屋根の上、サラシを抱えたまま肩を震わせていた。

{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500102830adi">
「え……ええと……あの……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500102840adi">
「なんか……ライブをみてたら……私、急に……
　急に……なんか……なんだろう……その……」

{	St("MR",700, @0,@0,"buＡＤ_通常_cry");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500102850adi">
「感……感激したっていうか……
　胸が……いっぱ……いっぱいで……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
{	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500102860adi">
「今日は……ホントは、番組は、失敗で……
　若原Ｄにも、申し訳なくて……でも……」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500102870adi">
「こんな……こんな……歌声を聞いて……
　お客さんが……あんな顔をしてるのを見ると……私！」

{	St("MR",700, @0,@0,"buＡＤ_通常_cry");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500102880adi">
「報われ……ううっ！　報われるかな、なんて……！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500102890nki">
「ああ……うん、そうだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_風切り音10");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500102900nki">
「あの笑顔を作ったのは、君たちだ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_cry");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500102910adi">
「あは、あははははは……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500102920nki">
「だから、もう一息、がんばろ――」

{
	DAIICHI_Live_VolumeSet(150, 2);
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
	St("C",19010, @-100,@200,"fuノーコa_カッター_pinch");
	Move("@StNameC/C*", 200, @100, @-200, Dxl2, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102930nko">
「しね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500102940nki">
「のわああああああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2357);}

	TextBoxDelete(100);
	DeleteAllSt(100,true);


	SoundPlay("@xbgm03",0,450,true);

//◆ＳＥ：ブンブンナイフ振り回す

	CreateSE("SE01","se戦闘_風切り音複数_l");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreatePlainSP("揺用", 2005);
	Shake("揺用", 300, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Fade("揺用", 0, 1000, null, true);
	Shake("揺用", 300, 5, 19, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Fade("揺用", 0, 1000, null, true);
	Shake("揺用", 300, 17, 2, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Fade("揺用", 0, 1000, null, true);
	Shake("揺用", 300, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Fade("揺用", 0, 1000, null, true);
	Shake("揺用", 300, 5, 19, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");

	CreateSE("SE02","se動作_ジャンプ");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
{	St("C",19010, @100,@200,"fuノーコa_カッター_pinch");
	Move("@StNameC/C*", 200, @-100, @-200, Dxl2, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102950nko">
「わたしいがいの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102960nko">
「おんなのこを」

{	St("C",19010, @0,@0,"fuノーコa_カッター_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102970nko">
「なかせるな」

{	St("C",19010, @0,@0,"fuノーコa_カッター_angry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500102980nko">
「おんなたらし」

{
	CreateSE("SE01","se戦闘_風切り音04");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @-100, @200, Axl2, false);
	DeleteAllSt(200,true);

	St("C",19010, @-100,@0,"fu似鳥_眼鏡上げ_shock");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500102990nki">
「うおっ！　ちょ、違う！　違うって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_風切り音04");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
{	DeleteAllSt(200,false);
	St("ML",19010, @-100,@50,"fuノーコa_カッター_rage");
	Move("@StNameML/ML*", 200, @100, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500103000nko">
「わたしだけをみる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500103010nko">
「よそみしない」

{	St("ML",19010, @0,@0,"fuノーコa_カッター_pinch");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500103020nko">
「うわきは」

{	St("ML",19010, @0,@0,"fuノーコa_カッター_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500103030nko">
「し」

{	DeleteAllSt(200,false);
	St("MR",19010, @0,@0,"fu似鳥_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103040nki">
「だから、浮気とかじゃないっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500103050adi">
「や、やだ！　やめてください！
　私のためにケンカなんて――はれ？」

{
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@xbgm*", 1000, 0, null);
	Move("@StNameC/C*", 200, @-25, @50, Axl2, false);
	DeleteAllSt(200,true);

	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103060nki">
「え？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコb_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500103070nko">
「あ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("C",700, @-25,@50,"buＡＤ_通常_shock");
	Move("@StNameC/C*", 200, @-15, @30, Axl2, false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl2, false);
	FadeSt("C",200,true);

	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl2, false);
	Move("@StNameC/C*", 200, @-15, @30, Axl2, true);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl2, false);
	Move("@StNameC/C*", 200, @-15, @30, Axl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500103080adi">
「あわわ！　わ！　や！　落ち！　ちゃう！」

{	DeleteAllSt(200,false);
	St("MR",700, @50,@0,"bu似鳥_通常_shock");
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103090nki">
「おい、掴まれ――」

{	DeleteAllSt(200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500103100adi">
「お願いこれを！」

{	St("MR",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103110nki">
「え？」

{	DeleteAllSt(200,true);}
　バランスが崩れる寸前、マスコットキャラの描かれたサラシを似鳥に投げて――

//◆音声指示：遠くへ
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500103120adi">
「きゃあああああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ぼさっ！

	CreateSE("SE01","se動作_布落とす");
	CreateSE("SE02","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,400,0,1000,null,false);

	CreatePlainSP("揺用", 2005);
	Shake("揺用", 500, 5, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");

	Wait(500);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500103130nko">
「これがプロこんじょう……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103140nki">
「ＡＤさんっ！？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103150nki">
「大丈夫ですか――ッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DAIICHI_Live_VolumeSet(2000, 150);

	TextBoxDelete(150);
	DeleteAllSt(200,true);



//マスク準備
	CreateTextureEX("絵マスク左枠", 7010, 300, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 5520, 300, Middle, "cg/bg/bg0606200半田明神_涸れ井戸_雪.jpg");
	SetShade("絵マスク左/絵演背景", MIDEUM);
	Zoom("絵マスク左/絵演背景", 0, 2000, 2000, null, true);


//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buＡＤ_通常_sad.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク左枠", 0, -1024, 0, null, true);
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);
	Fade("絵マスク左枠", 0, 1000, null, true);

//イン動作
	Move("絵マスク左枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, 0, middle, Dxl1, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0735]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500103160adi">
「は……はいー！　雪で、なんとか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//アウト動作

	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左枠", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, true);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0737]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103170nki">
「よかった……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Delete("絵マスク左");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500103180nko">
「ち」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103190nki">
「コラ！　おまえが暴れるからだろ！」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500103200nko">
「うわき、ゆるさない」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103210nki">
「だから、浮気とかあり得ないし！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500103220nko">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2358);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0745]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103230nki">
「あー、ったく！　ほら、コレ持て！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500103240nko">
「マスコットキャラ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu似鳥_背張る_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500103250nki">
「あっち行って立っててくれ。
　いいか、下から合図があったら、放すんだぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm*", 3000, 0, null);
	SetVolumeEX("SE21", 3000, 0, null);
	DAIICHI_Live_VolumeSet(3000, 0);

	CreateSE("SE11","seガヤ_大歓声_l");
//	CreateSE("SE12","seガヤ_半田明神02_l");
	MusicStart("SE11",1000,700,0,1000,null,true);
//	MusicStart("SE12",1000,500,0,1000,null,true);

//◆演出指示：時間経過・ステージ上視点が戻る・曲のＢＧＭどうするか相談
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Request("プロセスライト１", Stop);
	Delete("プロセスライト１");
	Fade("絵色ライト*", 0, 0, null, true);
	Delete("絵色ライト*");

	Wait(2000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");


	SetVolumeEX("SE11", 3500, 1, null);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵窓/絵演背景", MIDEUM);
	Zoom("絵窓/絵演背景", 0, 3000, 3000, null, true);

	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu鈴_通常_smile.png");
	Move("絵窓/絵演立絵", 0, @200, @0, null, true);

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 200, @-200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

	DAIICHI_Live_Stop(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500103260fjr">
「会場のみんなッ！
　今日は急なライブに来てもらって、ありがとうッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE11", 500, 500, null);

	TextBoxDelete(150);


//マスク準備
	CreateTextureEX("絵マスク枠", 7010, center, middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureSP("絵マスク/絵演背景", 6520, Center, -188, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵マスク/絵演背景", MIDEUM);
	Zoom("絵マスク/絵演背景", 0, 2000, 2000, null, true);

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 6530, center, middle, "cg/bu/buそに子_通常_normal.png");
	Request("絵マスク/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 712, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);


//マスク準備
	CreateTextureEX("絵マスク左枠", 7010, 300, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureSP("絵マスク左/絵演背景", 6520, Center, -188, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵マスク左/絵演背景", MIDEUM);
	Zoom("絵マスク左/絵演背景", 0, 2000, 2000, null, true);


//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buフウリ_通常_normal.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左枠", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);
	Fade("絵マスク左枠", 0, 1000, null, true);


/*
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/500103270snk">
「ありがとうございましたー！」

//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103280wfu">
「ありがとうございましたー！」
*/


//イン動作
	Move("絵マスク", 200, 200, 0, Dxl3, false);
	Move("絵マスク枠", 200, 200, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 550, middle, Dxl1, false);

//イン動作
	Move("絵マスク左", 200, -200, 0, Dxl3, false);
	Move("絵マスク左枠", 200, -200, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -250, middle, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/500103270">
「ありがとうございましたー！」

{	SetVolumeEX("SE11", 2000, 1, null);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500103290fjr">
「ええと……スタートの時間が遅れて、場所も突然変わっちゃって、ホントにご迷惑おかけしました！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500103300fjr">
「しかも、こんな大雪でねっ！
　すごいよねっ、この天気！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
//アウト動作
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, false);
//アウト動作
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, true);
*/

	CreateTextureEX("絵マスク/絵演立絵2", 6530, center, middle, "cg/bu/buそに子_通常_smile.png");
	Move("絵マスク/絵演立絵2", 0, 550, middle, null, true);
	Fade("絵マスク/絵演立絵", 300, 0, Axl2, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, null, true);

	CreateTextureEX("絵マスク左/絵演立絵2", 6530, center, middle, "cg/bu/buフウリ_通常_smile.png");
	Move("絵マスク左/絵演立絵2", 0, -250, middle, null, true);

	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu鈴_シリアス_angry.png");
	Move("絵窓/絵演立絵2", 0, @0, @0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/500103310snk">
「電車も止まっちゃってました～」

{
	Fade("絵マスク左/絵演立絵", 300, 0, Axl2, false);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103320wfu">
「危うく遅刻ですー」

{
	Fade("絵窓/絵演立絵", 300, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);
}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500103330fjr">
「そうそう。
　ふたりはホント、本番の１分前とかに到着してっ！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500103340fjr">
「いつものんびり気味なふたり組だけどねっ！
　カウントダウンはやり直しとか効かないんだからねっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureEX("絵マスク/絵演立絵", 6530, center, middle, "cg/bu/buそに子_通常_sad.png");
	Move("絵マスク/絵演立絵", 0, 550, middle, null, true);
	Fade("絵マスク/絵演立絵2", 300, 0, Axl2, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, true);

	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buフウリ_通常_fear.png");
	Move("絵マスク左/絵演立絵", 0, -250, middle, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/500103350snk">
「ごめんなさい……」

{
	Fade("絵マスク左/絵演立絵2", 300, 0, Axl2, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103360wfu">
「すみませんでしたー……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu鈴_シリアス_normal.png");
	Move("絵窓/絵演立絵", 0, @0, @0, null, true);

//アウト動作
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 712, 200, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, false);
//アウト動作
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左枠", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, false);

	Fade("絵窓/絵演立絵2", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0781]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500103370fjr">
「ま、時間には間に合ったからとりあえず良しっ！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500103380fjr">
「で、早速カウントダウン――」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500103390fjr">
「に、行く前に！
　ちょっとだけ、説明したいことがありますっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu鈴_通常_happy.png");
	Move("絵窓/絵演立絵2", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500103400fjr">
「フウリちゃんっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("絵背景枠01", 200, @0, 250, Axl2, false);
	Move("絵背景枠02", 200, @0, 250, Axl2, false);
	Zoom("絵窓", 200, 1000, 0, Axl2, true);
	Fade("絵背景枠01", 100, 0, null, false);
	Fade("絵背景枠02", 100, 0, null, true);
	Delete("絵窓*");
	Delete("絵背景枠*");

//マスク準備
	CreateTextureEX("絵マスク左枠", 7200, center, middle, "cg/mask/ci縦ライン_00_00z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ci縦ライン_00_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	Zoom("絵マスク左", 0, 0, 1000, null, true);
	CreateTextureSP("絵マスク左/絵演背景", 6520, Center, middle, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵マスク左/絵演背景", MIDEUM);
	Zoom("絵マスク左/絵演背景", 0, 2500, 2500, null, true);

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buフウリ_胸手_worry.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
//	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);

//イン動作
//	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Zoom("絵マスク左", 200, 1000, 1000, Dxl2, false);
	Zoom("絵マスク左枠", 200, 1000, 1000, Dxl2, false);
	Fade("絵マスク左枠", 200, 1000, null, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, 340, middle, Dxl1, true);

	CreateTextureEX("絵マスク左/絵演立絵2", 6530, center, middle, "cg/bu/buフウリ_通常_normal.png");
//	Move("絵マスク左/絵演立絵2", 0, center, middle, null, true);

/*
	CreateTextureEX("絵マスク/絵演立絵2", 1530, center, middle, "cg/bu/buフウリ_通常_normal.png");
	Fade("絵マスク/絵演立絵", 300, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, null, true);
*/
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0795]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103410wfu">
「は……はい！」

{
	Fade("絵マスク左/絵演立絵", 300, 0, Axl1, false);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103420wfu">
「あー、あの！　ええとー……ここに来る前にー、全国ゆるキャラバンっていうのがあったんですけど――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103430wfu">
「見てくれたひと、いますかー？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：大歓声

	SetVolumeEX("SE11", 500, 1000, null);

//マスク準備
	CreateTextureEX("絵マスク枠", 8010, center, middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 7000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureSP("絵マスク/絵演背景", 6520, Center, middle, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵マスク/絵演背景", MIDEUM);
	Zoom("絵マスク/絵演背景", 0, 2500, 2500, null, true);

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 7530, center, middle, "cg/bu/buそに子_通常_smile.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 7530, center, middle, "cg/bu/bu鈴_通常_shock.png");
	Request("絵マスク/絵演立絵2", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);



	Move("絵マスク左枠", 200, @-300, @0, Dxl3, false);
	Move("絵マスク左", 200, @-300, @0, Dxl3, false);
	Move("絵マスク左/絵*", 200, @-300, @0, Dxl3, false);

//イン動作
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, null, false);
	Move("絵マスク/絵演立絵2", 200, 380, middle, Dxl1, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500103440fjr">
「うひゃー！」

{	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 610, middle, Dxl1, true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/500103450snk">
「す、すごい歓声……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE11", 2000, 1, null);
//アウト動作
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵*", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵*", 200, 0, null, true);
//デリート
	Delete("絵マスク/絵*");
	Delete("絵マスク枠");

	Move("絵マスク左", 200, @300, @0, Dxl3, false);
	Move("絵マスク左枠", 200, @300, @0, Dxl3, false);
	Move("絵マスク左/絵*", 200, @300, @0, Dxl3, true);
	CreateTextureEX("絵マスク左/絵演立絵", 7030, center, middle, "cg/bu/buフウリ_通常_shock.png");
	Fade("絵マスク左/絵演立絵2", 300, 0, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0805]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103460wfu">
「え、ええと！　ありがとうございますー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureEX("絵マスク左/絵演立絵2", 7130, center, middle, "cg/bu/buフウリ_通常_normal.png");
	Fade("絵マスク左/絵演立絵", 300, 0, Axl1, false);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103470wfu">
「あの、私も、参加させてもらったのですが」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103480wfu">
「そこでちょっと色々ありまして、秋葉原のマスコットキャラクターが、未発表のままでした」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103490wfu">
「そ、それでですね、新たにあそこに、大きな絵が描いてあって、カウントダウンとともに――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103500wfu">
「発表ー！　で、ハッピーニューイヤー！　なんですね」

{
	CreateTextureEX("絵マスク左/絵演立絵", 7130, center, middle, "cg/bu/buフウリ_前のめり_shout.png");
	Fade("絵マスク左/絵演立絵2", 300, 0, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103510wfu">
「それでですね、実はあの絵には、なんと霊験あらたかな効果があって、願い事が叶っちゃうのですー」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103520wfu">
「すごいですよねー」

{
	CreateTextureEX("絵マスク左/絵演立絵2", 7130, center, middle, "cg/bu/buフウリ_通常_normal.png");
	Fade("絵マスク左/絵演立絵", 300, 0, Axl1, false);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, true);

}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103530wfu">
「カウントダウンが終わって年越し、発表！　で、皆さんなむなむ、してください」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103540wfu">
「１年間、幸せに過ごせますように……ということです」

{
	CreateTextureEX("絵マスク左/絵演立絵", 7130, center, middle, "cg/bu/buフウリ_前のめり_shout.png");
	Fade("絵マスク左/絵演立絵2", 300, 0, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500103550wfu">
「皆さん、いいですねー？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：うおおおおおおお！！　歓声
	TextBoxDelete(150);

	SetVolumeEX("SE11", 500, 1000, null);


//アウト動作
	Zoom("絵マスク左枠", 200, 0, 1000, Axl2, false);
	Zoom("絵マスク左", 200, 0, 1000, Axl2, true);
//デリート
	Delete("絵マスク*");


	Wait(500);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");
//◆場所：半田明神_社務所_雪
	OnBG(10,"l/bg0604211半田明神_社務所_雪_l");
	FadeBG(0,true);

	SetVolumeEX("SE11", 3000, 200, null);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103560fje">
「そろそろ年越し……か」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103570fje">
「ミヅハちゃん、上手く行くといいけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103580kit">
「きっと大丈夫だって。
　ラッキーアイテムなんだろ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103590fje">
「まあ、ね」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103600fje">
「で、何のためにここに連れてきたわけ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103610kit">
「ジャーン！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/obj御札.png");
	Zoom("絵背景100", 0, 0, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 500, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
{
//	St("MR",700, @0,@0,"bu恵那_一休_surprise");
//	FadeSt("MR",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103620fje">
「え？　コレって……」

{
//	DeleteAllSt(200,false);
//	St("ML",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("ML",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103630kit">
「御札」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Zoom("絵背景100", 300, 0, 1000, Axl2, false);
	Fade("絵背景100", 300, 0, null, true);
	Delete("絵背景100");

//	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0845]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103640fje">
「な、なんで！？　ホントに――本物！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103650kit">
「そ。本物」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103660fje">
「どうやって手に入れたの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103670kit">
「なんか良くわかんないけど師匠がくれた」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103680fje">
「師匠？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103690kit">
「沙紅羅さん」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103700fje">
「うーん……さっぱりわけがわかんない」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103710kit">
「ま、返ってきたんだしいいじゃん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103720kit">
「それよりほら、ちゃーんと、約束は守ったぞ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103730fje">
「ものすごーく、ギリギリだけどね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103740kit">
「そういう意地悪言うなよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103750fje">
「はいはい、ごめんなさい」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103760kit">
「じゃ、ふたりで納めよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103770fje">
「うん」

{	DeleteAllSt(200,true);}
　ふたりは、御札を手に投函用の箱に近づき――

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103780fje">
「今年も一年、ありがとうございました」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103790kit">
「ありがとうございました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 4000, 0, null);


{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0875]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103800kit">
「なあ、恵那」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103810fje">
「なに、千秋」

{
	SoundPlay("@xbgm28",0,450,true);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103820kit">
「今日は、アリガトな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103830fje">
「私も、アリガトね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103840kit">
「ええと、それで、その……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103850fje">
「うん、それで？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103860kit">
「あの、なんて言うか、その――」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103870kit">
「お、お――オレは、変わったんだよ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103880fje">
「変わった？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103890kit">
「変わった！　だって、１回死んでるし！」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103900kit">
「むしろ変わんなきゃ変だろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103910fje">
「で、なにが変わったの？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103920kit">
「そ……それは……
　おまえへの、気持ちとか……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103930fje">
「気持ち？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103940kit">
「あの、あのさ！　恵那！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103950fje">
「……うん」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103960kit">
「オレ、おまえの、おまえのことが――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103970fje">
「……うん」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500103980kit">
「す、すす、すすすすすす――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500103990fje">
「……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm28", 200, 1, null);

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500104000kit">
「スキーにはうってつけの季節だね！」

{	DeleteAllSt(200,false);
	CreateSE("SE01","se擬音_恵那閃く");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @10, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500104010fje">
「ハァ！？」

{
	SetVolumeEX("@xbgm28", 500, 450, null);
	DeleteAllSt(200,false);
	St("ML",700, @0,@50,"bu千秋_驚天_shy");
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500104020kit">
「じゃなくて！」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500104030kit">
「あ、あ、あ、あいあいあいあい――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500104040fje">
「……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm28", 200, 1, null);

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500104050kit">
「アイススケートもできそうだね！」

{	DeleteAllSt(200,false);
	CreateSE("SE01","se擬音_恵那閃く");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu恵那_一休_shy");
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @10, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500104060fje">
「ハァ！？」

{
	SetVolumeEX("@xbgm28", 500, 450, null);
	DeleteAllSt(200,false);
	St("ML",700, @0,@50,"bu千秋_驚天_shy");
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500104070kit">
「じゃなくて！」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500104080kit">
「う、う、う、ううううう――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500104090fje">
「うん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm28", 200, 0, null);

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500104100kit">
「後ろ――――ッ！」

{	DeleteAllSt(200,false);
	CreateSE("SE01","se擬音_恵那閃く");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu恵那_一休_shy");
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500104110fje">
「ハァ！？」

{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500104120fje">
「後ろ……？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	Shake("@StNameL/L*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameL/L*", 200, @0, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/500104130mso">
「やべぇっ！」

{	St("R",700, @0,@0,"buブーa_通常_pinch");
	Shake("@StNameR/R*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameR/R*", 200, @0, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/500104140buu">
「見つかった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2359);}

	DeleteAllSt(200,true);

	SoundPlay("@xbgm03",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500104150kit">
「見つかった、じゃないだろ！
　なに覗き見してんだよッ！！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/500104160mso">
「ば、バッキャロー！
　偶然ここにいただけで、やましいことなんてなにも――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500104170fje">
「『やべぇっ！』って言ったじゃない」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buみそa_通常_happy");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/500104180mso">
「さすが名探偵ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500104190fje">
「誉められても嬉しくない！
　そもそも、こんなところでなにしてるの？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buブーa_通常_happy");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/500104200buu">
「そりゃもちろん、仕事だよ仕事！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buみそa_通常_normal");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/500104210mso">
「オレたちにうってつけの仕事があるのさ。
　おまえらも手伝うか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);



	CreateSE("SE11","seガヤ_大歓声_l");
//	CreateSE("SE12","seガヤ_半田明神02_l");
	MusicStart("SE11",3000,400,0,1000,null,true);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：ステージに視点が戻る

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);

	SoundPlay("@xbgm17",0,450,true);


	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);





//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵窓/絵演背景", MIDEUM);
	Zoom("絵窓/絵演背景", 0, 3000, 3000, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu鈴_通常_smile.png");
	Move("絵窓/絵演立絵", 0, @200, @0, null, true);


//マスク準備
	CreateTextureEX("絵マスク枠", 7010, center, middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureSP("絵マスク/絵演背景", 6520, Center, -188, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵マスク/絵演背景", MIDEUM);
	Zoom("絵マスク/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//マスク準備
	CreateTextureEX("絵マスク左枠", 7010, 300, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureSP("絵マスク左/絵演背景", 6520, Center, -188, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵マスク左/絵演背景", MIDEUM);
	Zoom("絵マスク左/絵演背景", 0, 2000, 2000, null, true);


//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 6530, center, middle, "cg/bu/buそに子_通常_normal.png");
	Request("絵マスク/絵演立絵", Smoothing);

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buフウリ_通常_normal.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//キャラ表情差分準備
	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu鈴_シリアス_angry.png");
	CreateTextureEX("絵マスク/絵演立絵2", 6530, center, middle, "cg/bu/buそに子_通常_smile.png");
	CreateTextureEX("絵マスク左/絵演立絵2", 6530, center, middle, "cg/bu/buフウリ_通常_smile.png");

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 712, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左枠", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);
	Fade("絵マスク左枠", 0, 1000, null, true);


//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 200, @-200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500104220fjr">
「ニコちゃん！」

{
//イン動作
	Move("絵マスク", 200, 200, 0, Dxl3, false);
	Move("絵マスク枠", 200, 200, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵*", 200, 550, middle, Dxl1, false);
}
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/500104230snk">
「はい！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500104240fjr">
「フウリちゃん！」

{
//イン動作
	Move("絵マスク左", 200, -200, 0, Dxl3, false);
	Move("絵マスク左枠", 200, -200, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵*", 200, -250, middle, Dxl1, true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500104250wfu">
「はいー！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500104260wfu">
「準備、オッケーです！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500104270fjr">
「よーし！」

{
	Fade("絵窓/絵演立絵", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);
}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500104280fjr">
「それじゃ、カウントダウン――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




/*
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/500104290snk">
「いってみよ――――ッ」

//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500104300wfu">
「いってみよ――――ッ」
*/

	SetVolumeEX("SE11", 1000, 700, null);

	Fade("絵マスク/絵演立絵", 300, 0, Axl1, false);
	Fade("絵マスク左/絵演立絵", 300, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, null, false);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/500104290">
「いってみよ――――ッ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE11", 2000, 500, null);

	Fade("絵背景枠01", 100, 0, null, false);
	Fade("絵背景枠02", 100, 0, null, false);
	Move("絵背景枠01", 200, @0, 250, Axl2, false);
	Move("絵背景枠02", 200, @0, 250, Axl2, false);
	Zoom("絵窓", 200, 1000, 0, Axl2, false);

//アウト動作
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵*", 200, 1024, 200, Axl1, false);
	Fade("絵マスク/絵演立絵*", 200, 0, null, false);

//アウト動作
	Move("絵マスク左枠", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵*", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵*", 200, 0, null, true);


	Delete("絵マスク*");
	Delete("絵窓*");
	Delete("絵背景枠*");

	CreateTextureEX("絵演背景", 100, Center, -188, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
	SetShade("絵演背景", MIDEUM);
	Zoom("絵演背景", 0, 2000, 2000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0985]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500104310wfu">
「せーのっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//おがみ：β要演出箇所：優先度Ａ　カウントダウン演出　同時音声処理必要　モブの掛け声ほしい

//※ここ、全員分カウントダウン＋明けましておめでとうございます！の声が欲しい
//◆演出指定：ステージ上


	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	Fade("絵演背景", 0, 1000, null, true);
	St("L",700, @0,@200,"buフウリ_通常_smile");
	FadeSt("L",0,true);
	Move("@StNameL/L*", 100, @0, @-200, Dxl1, false);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

	CountDownSE("10", 1000, 0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/500104320wfu">
「１０！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",750, @-10,@200,"bu鈴_通常_happy");
	Move("@StNameC/C*", 100, @0, @-200, Dxl1, false);
	FadeSt("C",100,true);

	CountDownSE("09", 1000, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0991]
//◆音声指示：同時
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/500104330fjr">
「９！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("R",700, @0,@200,"buそに子_通常_happy");
	Move("@StNameR/R*", 100, @0, @-200, Dxl1, false);
	FadeSt("R",100,true);

	CountDownSE("08", 1000, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0992]
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/500104340snk">
「８！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：屋根の上
//◆音声指示：同時

	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	Delete("絵演背景");
	St("L",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("L",0,true);
	St("R",700, @0,@0,"bu似鳥_背張る_happy");
	FadeSt("R",0,true);
	OnBG(10,"bg0605300半田明神_屋根_雪");
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

/*

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500104350nko">
「７――」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/23/500104360nki">
「７！」

*/
	CountDownSE("07", 1000, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0993]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/500104350">
「７――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指示：裏方
	SetVolumeEX("SE11", 1000, 200, null);
	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	St("L",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("L",0,true);
	St("R",700, @0,@0,"buＡＤ_通常_cry");
	FadeSt("R",0,true);
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

/*

//◆音声指示：同時
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500104370mrp">
「６！」

//◆音声指示：同時
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/500104380adi">
「６！」

*/

	CountDownSE("06", 500, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//◆音声指示：同時
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/500104370">
「６！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：鳥居前から
	SetVolumeEX("SE11", 1000, 350, null);
	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",0,true);
	OnBG(10,"bg0602311半田明神_鳥居_雪");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg0602311半田明神_鳥居_雪.jpg");
	Move("絵背景100", 0, @0, @-300, null, true);

	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

	CountDownSE("05", 700, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//◆音声指示：同時
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/23/500104390msi">
「５！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：男坂で振り返って
//◆音声指示：同時
	SetVolumeEX("SE11", 1000, 200, null);
	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	Delete("絵背景100");
	St("C",700, @0,@0,"bu貫太_横向き_normal");
	FadeSt("C",0,true);
	OnBG(10,"bg0107300秋葉原_遠景_雪");
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

	CountDownSE("04", 300, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1011]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/23/500104400okt">
「４……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：社務所かな？

//◆音声指示：同時
	SetVolumeEX("SE11", 1000, 500, null);
	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	St("L",700, @0,@0,"buみそa_通常_happy");
	FadeSt("L",0,true);
	St("R",700, @0,@0,"buブーa_通常_happy");
	FadeSt("R",0,true);
	OnBG(10,"bg0604212半田明神_社務所_雪");
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

/*

//【みそ】
<voice name="みそ" class="みそ" src="voice/23/500104410mso">
「３！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/500104420buu">
「３！」

*/

	CountDownSE("03", 1000, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1012]
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/500104410">
「３！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆音声指示：同時
	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	St("L",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("L",0,true);
	St("R",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("R",0,true);
	OnBG(10,"bg0604212半田明神_社務所_雪");
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

/*
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500104430fje">
「２！」

//◆音声指示：同時
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/500104440kit">
「２！」
*/
	CountDownSE("02", 1000, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/500104430">
「２！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：ジャガンナートで

	SetVolumeEX("SE11", 1000, 0, null);
	CreatePlainSP("揺用", 2005);
	DeleteAllSt(0,true);
	St("L",700, @0,@0,"bu平次_通常_shout");
	FadeSt("L",0,true);
	St("C",800, @0,@0,"buユージローb_通常_angry");
	FadeSt("C",0,true);
	St("R",700, @0,@0,"buジャブル_通常_happy");
	FadeSt("R",0,true);
	OnBG(10,"bg0902100エレキセンター_ジャガンナート_通常");
	FadeBG(0,true);
	Fade("揺用", 100, 0, null, true);
	Delete("揺用");

//おがみ：音声：同時再生
/*
//◆音声指示：同時
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/500104450fjh">
「１！」

//◆音声指示：同時
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/500104460ujr">
「わん！」

//◆音声指示：同時
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/500104470jbr">
「１」
*/
	CountDownSE("01", 100, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//◆音声指示：同時
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/500104450">
「１！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(0);

//◆場所：泰然堂大学病院_廊下

	CreateColorEX("絵色100", 20000, "BLACK");
	SetVolumeEF("@xbgm17", 650);
//	SetVolumeEX("@SE*", 100, 0, null);
//	SetVolumeEF("ナット名", ボリウム);
	Fade("絵色100", 0, 1000, null, true);

	DeleteAllSt(0,true);

	Wait(4000);
	OnBG(10,"bg1403100泰然堂大学病院_廊下_通常");
	FadeBG(0,true);
	CreateTextureSP("絵背景後描画", 50, Center, Middle, "cg/bg/l/bg1403100泰然堂大学病院_廊下_通常_l.jpg");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/l/bg1403100泰然堂大学病院_廊下_通常_l.jpg");
	Zoom("絵背景100", 0, 700, 700, null, true);
	Move("絵背景100", 0, -512, -180, null, true);
	Request("絵背景100", Smoothing);
//	MoveFTP3stop();
//	SetBlur("絵背景100", true, 2, 500, 350, false);
	SetBlur("絵背景100", true, 1, 500, 500, false);

//◆ＳＥ：キュッ、キュッ、キュ――病院に響く足音
//◆音声指示：息を落ち着かせようとしている
	CreateSE("SE01","se動作_歩く02_l");
	MusicStart("SE01",0,700,0,500,null,true);

	MoveFTP1("@絵背景100", 10000, 10, 5);

	Zoom("絵背景100", 45000, 1300, 1300, null, false);

	Fade("絵色100", 2000, 0, null, true);
	Delete("絵色100");

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1031]
{
//	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104480skr">
「――――、――――、――――、――――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104490skr">
「――――、――――、――――、――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104500skr">
（ギリギリ……年明けまでに間に合ったぜ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104510skr">
（どーじんしを手に、参上だ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104520skr">
（――なあ、マーくん）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104530skr">
（アタシ――ちっちゃいころから、悪ガキでさ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104540skr">
（その分を埋め合わせるみたいに、おまえはイイコでさ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104550skr">
（アタシ、おまえに何回も嘘ついて――）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104560skr">
（でも、そのたびおまえ、信じんのな）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104570skr">
（それで随分、迷惑、かけちまったよな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆演出指定：少し、鼻交じりになる
//	DeleteAllSt(200,true);

	Wait(800);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104580skr">
「――――、――――、――――、――――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104590skr">
「――――、――――、――――、――――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104600skr">
（１回で――いいんだよ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104610skr">
（１回でいいから、さ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104620skr">
（おまえが……ついてくれよ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104630skr">
（病室から飛び出して、笑顔でさ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104640skr">
（「ねえちゃん、騙された！」ってさ――）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104650skr">
（頼む……頼むよ、マーくん！　な？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104660skr">
（１回だけでいいから――さ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104670skr">
（……な？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵色100", 20000, "BLACK");

//◆ＳＥ：足音、止まる
	SetVolumeEX("SE*", 500, 0, null);

	Fade("絵色100", 1000, 1000, null, true);

	MoveFTP1stop();
	Delete("絵背景100");
	Delete("絵背景後描画");
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104680skr">
「――ぐっ、ぅっ――、ぅ――ぅぅ――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104690skr">
「ずずっ、ず――、ん、んん――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104700skr">
「はぁ――――ふぅ――――」

//◆ＳＥ：トントン、ノック
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104710skr">
「ま――マーくん？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104720skr">
「いるんだろ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104730skr">
「入る……ぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Wait(500);

	CreateSE("SE01","se動作_ドア開ける02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵色100");
//◆場所：泰然堂大学病院_霊安室
	OnBG(10,"bg1404100泰然堂大学病院_霊安室_通常");
	FadeBG(0,true);

	Wait(1500);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104740skr">
「…………………………ぅ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104750skr">
「ぅ……ぅぅ……ひっ、ひっく、ひぐ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104760skr">
「ひぐっ、う……うう……う……ううううう……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104770skr">
「うあああああああああああああん……！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104780skr">
「ぁぅっ、ぁ……ぅぅっ！
　う！　うああああああ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104790skr">
「なんでだよ……なんで……！
　なんで、すぐに来てやんなかったんだよ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/500104800skr">
「あああ、あああ！　馬鹿！
　あだしの……馬鹿ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorEX("絵色100", 20000, "BLACK");
	Fade("絵色100", 1500, 1000, null, true);

//※下倉注：ここで唯一時間が少し戻る＆視点がメイン６人から離れるので、多めに時間を空けてください

{	ClockPass(2357);}

//◆場所：地下_通路_水
	OnBG(10,"bg0701300地下_通路_水");
	FadeBG(0,true);

	Wait(3000);

//あきゅん「演出：双六カットイン素材を先に定義しておきます」

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu歌門_威圧_pinch.png");
	Request("絵窓/絵演立絵", Smoothing);
	Move("絵窓/絵演立絵", 0, @0, @80, null, true);
	CreateTextureEX("絵窓/絵演立絵2", 1909, center, middle, "cg/bu/bu双六a_通常_pride.png");
	Move("絵窓/絵演立絵2", 0, @450, @50, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");



//◆ＳＥ：チャプチャプ水音
	CreateSE("SE11","se環境_水_l");
	MusicStart("SE11",3000,700,0,1000,null,true);

	Fade("絵色100", 1500, 0, null, true);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500104810kms">
「これは……水？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500104820mzh">
「籠を爆破したと言っていたからの。
　神田川の水が溢れたんじゃな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500104830mzh">
「これ以上は増えないようじゃし、問題なかろ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500104840kms">
「一瞬、祭壇まで浸かってしまうのかと」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500104850mzh">
「いっそ、そうなってしまえば良かったのに……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500104860kms">
「ミヅハ様わかっているのですか！？　あなたのために、皆様がこうやって協力してくれているのですよ！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500104870kms">
「それを今さら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500104880mzh">
「ああ、わかっておる！　わかっておるさ！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500104890mzh">
「じゃがやはり、沙紅羅のことは――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500104900kms">
「ミヅハ様は……私のことなどどうでもよいと？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500104910mzh">
「ば、バカを言うでない！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500104920mzh">
「星はわらわの一番大事な――大事な、友達じゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500104930kms">
「友達――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500104940mzh">
「ん？　どうした、星よ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500104950kms">
「いいえ、ミヅハ様はそれでよいのです！」

{	St("ML",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500104960kms">
「さあ、参りましょう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE11", 2000, 400, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：地下_祭壇
	OnBG(10,"bg0702100地下_祭壇_通常");
	FadeBG(0,true);
	CreateTextureSP("絵背景", 11, Center, InBottom, "cg/bg/bg0702100地下_祭壇_通常.jpg");


	CreateSE("SE21","se環境_水滴01");
	MusicStart("SE21",0,700,0,1000,null,true);


	CreateMovieEX("ムービー１", 15000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 6000, null, true);
	Fade("ムービー１", 0, 1000, null, true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

	Zoom("ムービー１", 3000, 3000, 3000, AxlDxl, false);
	Move("絵背景", 3000, @0, -150, AxlDxl, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500104970mzh">
「どうやら、間に合ったようじゃの」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500104980kms">
「ええ。皆さんに、感謝しなければなりません」

{	St("ML",700, @0,@0,"bu歌門_通常_smile");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500104990kms">
「いよいよこれで一件落着――」

{	SetVolumeEX("SE*", 1000, 0, null);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105000ksr">
「待てよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500105010mzh">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2358);}

	TextBoxDelete(150);
	DeleteAllSt(200,false);

//◆演出指定：暗がりから河原屋双六が姿を現す
//◆ＳＥ：じゃばっ！
	CreateSE("SE01","se環境_水に落ちる");
	CreateSE("SE02","se人体_倒れる04");
	CreateSE("SE03","se動作_一歩");

//あきゅん「演出：定義位置をかなり上にしました」

/*
//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu歌門_威圧_pinch.png");
	Request("絵窓/絵演立絵", Smoothing);
	Move("絵窓/絵演立絵", 0, @0, @80, null, true);
	CreateTextureEX("絵窓/絵演立絵2", 1909, center, middle, "cg/bu/bu双六a_通常_pride.png");
	Move("絵窓/絵演立絵2", 0, @450, @50, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");
*/

//動作
	MusicStart("SE01",0,400,0,1000,null,false);
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

	MusicStart("SE02",0,800,0,1000,null,false);
	Shake("絵窓/絵演立絵*", 300, 10, 0, 0, 0, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 300, @-50, @100, Axl2, false);

	Wait(200);
	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("絵背景枠01", 100, 0, null, false);
	Fade("絵背景枠02", 100, 0, null, false);
	Move("絵背景枠01", 200, @0, 250, null, false);
	Move("絵背景枠02", 200, @0, 250, null, false);
	Zoom("絵窓", 200, 1000, 0, null, true);
	Delete("絵窓*");
	Delete("絵背景枠*");

	CreateSE("SE04","se銃_落とす01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
　暗がりから突進を受け、歌門が後ろから抱え込まれる。

{
	MusicStart("SE04",0,700,0,1000,null,false);
}
　衝撃で、彼女の手からアザナエルが零れた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm31",0,450,true);

	CreateSE("SE01","se戦闘_刃物01");

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2350双六歌門を人質に取る.txt"
	CreateTextureEX("絵背景100", 120, -1024, Middle, "cg/ev/l/ev2350双六歌門を人質に取る_l.jpg");
	CreateTextureEX("絵背景200", 120, center, Middle, "cg/ev/ev2350双六歌門を人質に取る.jpg");
	Fade("絵背景100", 300, 1000, null, false);
	Move("絵背景100", 1500, -964, @0, null, true);
	Move("絵背景100", 300, -200, @0, AxlDxl, true);

	Wait(500);

	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵背景100", 500, 500, 500, Dxl1, false);
	Move("絵背景100", 500, -512, @0, Dxl1, true);
	Fade("絵背景200", 500, 1000, Axl2, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1161]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105020kms">
「な……！？　あなたは死んだはずじゃ――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105030ksr">
「そう簡単には、くたばらねぇよ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105040ksr">
「久しぶりだな、ミヅハ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500105050mzh">
「……ほう、わかったぞ。
　恵那は、おぬしが死なぬと言っておった」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500105060mzh">
「貴様は――双一じゃな」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105070ksr">
「さすがに、神様の目は誤魔化せねぇか」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105080ksr">
「いかにもオレは、河原屋双一。
　今は双六って名乗ってるがな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105090kms">
「あなたが双一！？
　しかし年齢が――！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105100ksr">
「オレも、かつてはカゴメアソビをしたのさ。
　おかげでこの身体は不老不死――」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105110kms">
「まさか……そんな……しかし、なぜ……」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500105120mzh">
「貴様――星を放せ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureEX("絵背景100", 120, -80, 0, "cg/ev/l/ev2350双六歌門を人質に取る_l.jpg");
	Fade("絵背景100", 300, 1000, null, false);
	Move("絵背景100", 25000, -300, -100, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105130ksr">
「なあミヅハ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105140ksr">
「この時代には、夢が足りねぇと思わねぇか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105150ksr">
「オレたちが生きてきたあの時代にはよ、モノはなかったがミライはあった。違うか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105160ksr">
「生きるか死ぬかの大バクチ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105170ksr">
「アザナエルこそ、オレたちにもう一度、ミライを見せてくれる夢への切符じゃねぇか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵背景100", 500, 0, null, false);
	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1200]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500105180mzh">
「…………」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105190kms">
「ミヅハ様ッ！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105200kms">
「私など大した問題ではありません！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105210kms">
「ミヅハ様が元の姿に戻れるなら、私は――！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500105220mzh">
「おぬしは黙っておれ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500105230mzh">
「河原屋双六――おぬしの願いは、アザナエルじゃな？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105240ksr">
「ああ。オレは一度、アザナエルのトリガーを引いた」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105250ksr">
「一人が引けるのは一度だけ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105260ksr">
「あんたに、引いてもらいたいんだよ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500105270mzh">
「そうすれば、星を自由にするのじゃな」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105280ksr">
「もちろんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「シナリオ：文章の意味がわからなかったので削除」
//【河原屋双六】
//<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105290ksr">
//「ああ」

	SetVolumeEX("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
	Delete("絵背景100");
	Fade("絵背景200", 500, 0, null, true);
	Delete("絵背景200");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1220]
{	St("C",700, @0,@0,"buミヅハ_手構え_other");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/500105300mzh">
「よかろ。それでは――」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105310kms">
「だ、ダメです！　それをしては――」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105320kms">
「それをしては、また――長い時間を――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2359);}

	TextBoxDelete(150);


//◆演出指定：光ぽわわ～
	CreateTextureEXadd("絵背景100", 500, Center, Middle, "cg/ef/ef044_火花c.png");
	Zoom("絵背景100", 0, 200, 200, null, true);
	CreateColorEXadd("絵色100", 1500, "WHITE");


	CreateStencil("マスク１",1000,center,-28,128,"cg/bu/buミヅハ_手構え_other.png",false);
	CreateColor("マスク１/色１", 1000, 0, 0, 1024, 576, "WHITE");
	Fade("マスク１/色１", 0, 0, null, true);
	Request("マスク１/色１", AddRender);

	CreateSE("SE01","se擬音_光り輝く01");
	CreateSE("SE02","se擬音_光り輝く02");
	MusicStart("SE01",500,700,0,1000,null,false);
	MusicStart("SE02",2000,700,0,1000,null,true);


	Rotate("絵背景100", 10000, @0, @0, @990000, null,false);
	Zoom("絵背景100", 3000, 1000, 1000, null, false);
	Fade("絵背景100", 3000, 1000, null, false);
	Fade("マスク１/色１", 3000, 1000, null, true);

	Fade("絵色100", 200, 1000, null, true);

	FeatherDrop(2000);

	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",0,true);
	Delete("マスク１*");
	Wait(500);

	SetVolumeEX("SE*", 4000, 0, null);
	Fade("絵背景100", 3000, 0, Axl1, false);
	Fade("絵色100", 3000, 0, Axl2, true);
	Delete("絵色100");



	Wait(1000);
	Delete("絵背景100");

	SoundPlay("@xbgm14_inst",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1230]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105330mhn">
「ふむ……この格好は久々じゃのう」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105340mhn">
「わらわの名はミヅハノメじゃ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105350kms">
「あ……ああ……ミヅハ様……」

{
	CreateTextureEX("絵背景100", 1000, -80, 0, "cg/ev/l/ev2350双六歌門を人質に取る_l.jpg");
	Move("絵背景100", 0, -300, -100, null, true);
	Fade("絵背景100", 300, 1000, null, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105360ksr">
「……へへっ、いい感じじゃねぇか」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105370ksr">
「じゃあ、アザナエルを取るんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("C",0,true);
	Fade("絵背景100", 300, 0, null, true);

	CreateSE("SE01","se動作_銃渡す");
	MusicStart("SE01",0,800,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1240]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105380mhn">
「わかっておる」

{	DeleteAllSt(200,true);}
　ミヅハは悠然と返答し、水に浸かったアザナエルを取る。

{	St("C",700, @0,@0,"buミヅハノメ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105390mhn">
「ん？　これは――」

{	DeleteAllSt(200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105400kms">
「ミヅハ様！　今ならまだ、引き返せま――」

{	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105410mhn">
「そう、大声を立てるでない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆演出指定：ミヅハ、銃を双六に向ける
//◆ＥＶ："ev/ev2350ミヅハノメ銃構え.txt"
	CreateTextureEX("絵背景100", 120, 0, 0, "cg/ev/l/ev2350ミヅハノメ銃構え_l.jpg");
	CreateTextureEX("絵背景200", 120, Center, Middle, "cg/ev/ev2350ミヅハノメ銃構え.jpg");

	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FeatherDropDelete(0);

	Fade("絵背景100", 300, 1000, null, false);
	Zoom("絵背景100", 1500, 500, 500, AxlDxl, false);
	Move("絵背景100", 1500, -512, -288, AxlDxl, true);
	Fade("絵背景200", 300, 1000, null, true);

	Wait(200);
	Delete("絵背景100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1250]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105420mhn">
「わらわには、勝負事の加護がついておる。
　カゴメアソビをすれば、間違いなく願いが叶う」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105430mhn">
「じゃが……最後にひとつだけ、訊いておこうか」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105440mhn">
「おぬし、いったい何を願うのじゃ？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105450mhn">
「お主自身が、夢など信じられないにもかかわらず、何故カゴメアソビを繰り返した？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1260]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105460ksr">
「オレが……夢を、信じられないだと？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105470mhn">
「……やはり、図星じゃな」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105480mhn">
「お主自身は、もう未来に希望など持っていない」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105490mhn">
「全ては、計算のうちだったのじゃな」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105500mhn">
「わらわがたくさんの人と出会うように仕向けた」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105510mhn">
「人間に、愛着を抱くように仕向けた」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105520mhn">
「その人間を――カゴメアソビで苦しめるように仕向けた」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105530mhn">
「それが、おぬしらの計画じゃったのじゃな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//マスク準備
	CreateTextureEX("絵マスク左枠", 16010, 300, 0, "cg/mask/ciスラッシュ_05_01z.png");
	CreateMask("絵マスク左", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
//	CreateColorEX("絵マスク左/絵演色", 6510, "#993399");
//	CreateTextureEXadd("絵マスク左/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/ev/ev2350双六歌門を人質に取る.jpg");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク左枠", 0, -1024, 0, null, true);
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, 0, 200, null, true);
	Fade("絵マスク左枠", 0, 1000, null, true);
//	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
//	Fade("絵マスク左/絵演色", 0, 1000, null, true);

//イン動作
	Move("絵背景200", 200, 100, 0, Dxl3, false);
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Move("絵マスク左枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -150, middle, Dxl1, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1270]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105540ksr">
「くっ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105550ksr">
「くっくっくっくっく……バレちゃしょうがねぇな。
　よーくわかってるじゃねぇか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1280]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105560ksr">
「オレにも、信じる神様がいてな」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105570ksr">
「そいつが『未来の運命を操れる』っていうもんで、オレもすっかりその気になっちまった」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105580ksr">
「色々紆余曲折もあったが、ようやくここまで辿り着いたって寸法だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105590ksr">
「で……オレの計画に、乗ってくれるのか？」

{	Move("絵マスク左/絵演立絵", 200, -400, @0, Axl1, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105600kms">
「計画って……どういう意味ですか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1290]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105610mhn">
「こやつの望みは、ずばり――死」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105620mhn">
「カゴメアソビで願いが叶えば、こやつは死ねる」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105630mhn">
「じゃが、かつてのカゴメアソビで得た不老不死の能力が、アザナエルの確率を歪めてしまうのじゃ」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105640mhn">
「鉛の弾丸でこやつは死ねぬ。
　失敗するように運命づけられた、カゴメアソビ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1300]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105650mhn">
「双六の不老不死を打ち破る可能性を持つ唯一の存在――」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105660mhn">
「それが、勝負事の加護を受けたわらわ――」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105670mhn">
「ミヅハノメなのじゃろう？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105680kms">
「そんな――」

{	Move("絵マスク左/絵演立絵", 200, -150, @0, Dxl2, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105690ksr">
「……で？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1310]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105700ksr">
「それがわかったら、どうする？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105710ksr">
「ミヅハ。
　あんたはそれがわかっていても、オレを撃つ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105720ksr">
「撃たなきゃアンタの大事な人が、死んじまうんだぜ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105730ksr">
「さあ、ミヅハノメ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1320]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105740ksr">
「年が変わっちまう前に、オレの命奪ってくれ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/500105750ksr">
「もういい加減、終わらせてくれ」

{	Move("絵マスク左/絵演立絵", 200, -400, @0, Axl1, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/500105760kms">
「撃ってはなりません！
　私には構わず、アザナエルを――」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105780mhn">
「ふふ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);

//◆演出指定：ミヅハノメ銃構えか、ＥＶか、必要

//アウト動作
	Move("絵背景200", 200, 0, 0, Axl3, false);
	Move("絵マスク左枠", 200, -1024, 0, Axl3, false);
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, @0, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, true);

//デリート
	Delete("絵マスク*");

	Wait(300);

//おがみ：ＳＥ：アザナエル構え　トリガー
	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1330]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105790mhn">
「星よ、安心しろ」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105800mhn">
「わらわは――」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/23/500105810mhn">
「自らの判断を、過ちだとは思っておらんよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：発射！
//おがみ：ＳＥ：発砲音　弾が偽者だけど
	TextBoxDelete(100);

	CreateSE("SE01","se銃_銃声01");
	CreateColorEXadd("絵色100", 1500, "WHITE");


	MusicStart("SE01",0,1500,0,1000,null,false);
	Wait(300);
	Fade("絵色100", 50, 1000, null, true);


	Wait(3500);


	EndScene();
}
