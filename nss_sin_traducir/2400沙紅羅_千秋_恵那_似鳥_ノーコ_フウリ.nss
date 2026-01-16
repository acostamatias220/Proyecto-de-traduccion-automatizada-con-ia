
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss_MAIN
{
//■エンディングチェック
	Ending_IsChaeck("トゥルー");

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

	//★エンディング中（トゥルー）
	//★エンドロール
	PreSetRoll(1);
	TheEND(1);

	$GameName = "";
	$GameCircle=false;
	$GameClear=true;
}

scene 2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="4120">
////////////header////////////
//file name "2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//title "ＨＡＰＰＹ　ＮＥＷ　ＹＥＡＲ"
//previous "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"

////////////footer////////////
//flag "fltrue"

////////////body////////////



//■再定義定型文
	PrintBG("上背景", 30000);


	CloudZoomSmokeSet01("スモークプロセスA",200,"cg/ef/efスモーク.png");
	CloudZoomSmokeSet02("スモークプロセスB",200,"cg/ef/efスモーク.png");

//	CloudZoomSmokeSet(画像優先度,ファイルパス名)
//	CloudZoomSmokeStart(速度,間隔,濃度,拡大度,角度,開始位置X,開始位置Y,移動位置X,移動位置Y,テンポ)


//◆場所：半田明神_境内_雪トゥルー新年
//まだ垂れ幕下りてないのでこっちを使用
	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);

//◆演出指示：花火がぽん！
//あきゅん「素材：img花火」
	CreateTextureSP("絵背景50", 50, Center, middle, "cg/bg/bg2401100空_上空_通常.jpg");
	CreateTextureEX("絵背景100", 100, Center, -1064, "cg/img/img花火.jpg");
	Request("絵背景100", Smoothing);
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 2, 500, 80, false);
	CreateTextureEXadd("絵背景100b", 100, center, middle, "cg/ef/ef花火_m.png");
	Move("絵背景100b", 0, @0, @-200, null, true);
	Request("絵背景100b", Smoothing);
	Zoom("絵背景100b", 0, 200, 200, null, true);
	SetBlur("絵背景100b", true, 1, 500, 200, false);

//ライト準備===========================================================
	CreateColorSPadd("絵色ライト1", 1109, "#993355");
	CreateColorSPadd("絵色ライト2", 1109, "#449900");
	CreateColorSPadd("絵色ライト3", 1109, "#005599");
	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);


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


//生成まとめ１=================================================================
//	CreateTextureEX("絵背景BG01", 90, -30, -550, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
//	CreateTextureEX("絵背景BG02", 90, -512, -550, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");

	CreateColorSPadd("絵色100", 1500, "WHITE");

	CreateTextureEXadd("絵背景EF01", 100, -50, 100, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景EF02", 100, 126, 150, "cg/ef/花火02.jpg");
	CreateTextureEXadd("絵背景EF03", 100, 242, 230, "cg/ef/花火03.jpg");
	CreateTextureEXadd("絵背景EF04", 100, 408, 400, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景EF05", 100, 554, 230, "cg/ef/花火02.jpg");
	CreateTextureEXadd("絵背景EF06", 100, 700, 150, "cg/ef/花火03.jpg");
	CreateTextureEXadd("絵背景EF07", 100, 846, 100, "cg/ef/花火01.jpg");

	CreateTextureEXadd("絵背景EG01", 100, -60, -100, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG02", 100, 46, 50, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG03", 100, 182, -200, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG04", 100, 338, 100, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG05", 100, 484, -30, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG06", 100, 600, -150, "cg/ef/ef花火_ms_ogm.png");
	CreateTextureEXadd("絵背景EG07", 100, 776, 100, "cg/ef/ef花火_ms_ogm.png");
	Zoom("絵背景EG*", 0, 500, 500, null, true);



	CreateSE("SE01","se環境_花火連打01");
	CreateSE("SE02","se環境_花火02");
	CreateSE("SE02b","se環境_花火01");
//	CreateColorEXadd("絵色200", 1500, "WHITE");

//生成まとめ１=================================================================





{	ClockPass(2359);}
	Wait(300);
{	ClockPass(2400);}


	MusicStart("SE01",0,1200,0,700,null,false);

	FadeDelete("上背景", 200, null, true);


//	Fade("絵背景EF*", 0, 1000, null, true);
//	Shake("絵背景EF*", 1500, 5, 3, 0, 0, 1000, null, false);
//	Zoom("絵背景EF*", 1000, 1500, 2300, Dxl2, false);
//	Rotate("絵背景EF*", 1500, @0, @15000, @0, null,false);

//	FadeDelete("絵背景EF*", 1200, Axl1,400);

	FadeDelete("絵色100", 300, null,false);

	Rotate("絵背景EF*", 1500, @0, @3000, @0, null,false);
	Zoom("絵背景EF01", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF01", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EF01", 500, 0, Axl2, false);
	Zoom("絵背景EF05", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF05", 0, 1000, null, true);
	Wait(80);
	Fade("絵背景EF05", 500, 0, Axl2, false);
	Zoom("絵背景EF02", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF02", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EF02", 500, 0, Axl2, false);
	Zoom("絵背景EF07", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF07", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EF07", 500, 0, Axl2, false);
	Zoom("絵背景EF03", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF03", 0, 1000, null, true);
	Wait(150);
	Fade("絵背景EF03", 500, 0, Axl2, false);
	Zoom("絵背景EF06", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF06", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EF06", 500, 0, Axl2, false);
	Zoom("絵背景EF04", 1000, 1500, 3300, Dxl2, false);
	Fade("絵背景EF04", 0, 1000, null, true);
	Wait(80);
	Fade("絵背景EF04", 500, 0, Axl2, false);


	SetVolumeEX("SE01", 1500, 0, null);
	Move("絵背景100", 1500, @0, @50, null, true);

	MusicStart("SE02",0,1200,0,700,null,false);
	MusicStart("SE02b",0,1200,0,700,null,false);


	Move("絵背景50", 3000, @0, 0, Dxl1, false);
	Zoom("絵背景100", 2500, 2500, 2500, Dxl1, false);
	Move("絵背景100", 200, @0, 0, AxlDxl, true);


	Zoom("絵背景EG01", 3000, 3000, 3000, Dxl2, false);
//	Rotate("絵背景EG*", 5000, @0, @0, @15000, null,false);
	Fade("絵背景EG01", 0, 1000, null, true);
	Move("絵背景100", 2300, @0, 150, null, false);
	Wait(50);
	Fade("絵背景EG01", 2333, 0, Axl1, false);
	Zoom("絵背景EG02", 3000, 2000, 2000, Dxl2, false);
	Fade("絵背景EG02", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG02", 2333, 0, Axl1, false);
	Zoom("絵背景EG03", 3000, 2000, 2000, Dxl2, false);
	Fade("絵背景EG03", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG03", 2333, 0, Axl1, false);
	Zoom("絵背景EG04", 3000, 3000, 3000, Dxl2, false);
	Fade("絵背景EG04", 0, 1000, null, true);
	Wait(50);
	Fade("絵背景EG04", 2333, 0, Axl1, false);
	Zoom("絵背景EG05", 3000, 2500, 2500, Dxl2, false);
	Fade("絵背景EG05", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EG05", 2333, 0, null, false);
	Zoom("絵背景EG06", 3000, 3500, 3500, Dxl2, false);
	Fade("絵背景EG06", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EG06", 2333, 0, Axl1, false);
	Zoom("絵背景EG07", 3000, 2000, 2000, Dxl2, false);
	Fade("絵背景EG07", 0, 1000, null, true);
	Wait(100);
	Fade("絵背景EG07", 2333, 0, Axl1, false);
	Request("プロセスライト１", Start);
	Fade("絵背景100b", 100, 1000, null, false);
	Move("絵背景100b", 2500, @0, @100, Dxl1, false);
	Zoom("絵背景100b", 3500, 1000, 1000, Dxl1, 300);



//	Wait(500);

	SoundPlay("@xbgm17",0,450,true);


	Fade("絵背景100", 1000, 0, null, 500);
	Fade("絵背景100b", 800, 0, null, 500);

	SetVolumeEX("SE02", 5000, 0, null);

	Wait(1000);




//◆ＥＶ："ev/ev謹賀新年.txt"

	Request("プロセスライト１", Stop);
	Fade("絵色ライト*", 2000, 0, Axl1, false);


	Move("絵背景50", 500, @0, -400, Axl1, 300);
	FadeDelete("絵背景50", 200, null, true);
//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100010fjr">
「あけまして――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


/*
//◆音声指示：同時
{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100020fjr">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000100030wfu">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buそに子_通常_normal");
	FadeSt("C",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/24/000100040snk">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100050fje">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100060kit">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/24/000100070mrp">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/24/000100080adi">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000100090msi">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000100100nki">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000100110nko">
「おめでとうございます――――！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buみそa_通常_normal");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/24/000100120mso">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buブーa_通常_normal");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/24/000100130buu">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"bu平次_通常_normal");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/24/000100140fjh">
「おめでとうございます――――っ！！」

//◆音声指示：同時
{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/24/000100150ujr">
「わう――――――んッ！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：同時
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100020">
「おめでとうございます――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵背景*");
	Delete("プロセスライト１");
	Delete("絵色ライト*");
	OnBG(10,"bg0605300半田明神_屋根_雪");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/l/bg0605300半田明神_屋根_雪_l.jpg");
	St("ML",700, @0,@-80,"bu似鳥_背張る_shout");
	FadeSt("ML",0,true);

	DrawDelete("絵黒幕", 150, 100, null, "slide_02_01_1", false);
	Move("@StNameML/ML*", 200, @0, @80, Dxl2, false);
	Move("絵背景100", 200, @0, @80, Dxl2, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000100160nki">
「ノーコ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000100170nko">
「きる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：紐が切られてサラシが広がる。デカいマスコットキャラの絵。ノーコの「謹賀新年」

//◆演出指示：花火パーン！

//おがみ：ＳＥ：サラシが広がるおと　ばっさー
	CreateTextureEX("絵背景100a", 1000, Center, Middle, "cg/ev/ev0000ノーコカッターb.jpg");
	Zoom("絵背景100a", 0, 1100, 1100, null, true);
//	SetBlur("絵背景100a", true, 2, 500, 80, false);

	CreateSE("SE05a","se戦闘_風切り音10");
	CreateSE("SE05b","se戦闘_風切り音05");
	MusicStart("SE05a",0,600,0,1000,null,false);

	Move("@StNameMR/MR*", 200, @100, @100, Axl1, false);
	Zoom("絵背景100a", 500, 1000, 1000, Dxl1, false);
	Fade("絵背景100a", 300, 1000, Axl1, true);

	Wait(200);

	MusicStart("SE05b",0,600,0,1000,null,false);
	Zoom("絵背景100a", 200, 5000, 5000, Dxl1, false);
	CreateColorSPadd("絵黒幕", 25000, "WHITE");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_08_00_1.png", true);

	DeleteAllSt(0,true);
	Delete("絵背景100*");

	//★ロック設置
	LockVideo(true);

	CreateSE("SE05","se戦闘_切断04");
	MusicStart("SE05",0,600,0,1000,null,false);

	CreateSE("SE30","seガヤ_大歓声_l");



//生成まとめ１=================================================================
//	CreateTextureEX("絵背景BG01", 90, -30, -550, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");
//	CreateTextureEX("絵背景BG02", 90, -512, -550, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");

	CreateColorEXadd("絵色100", 1500, "WHITE");

	CreateTextureEXadd("絵背景EF01", 100, -50, 100, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景EF02", 100, 106, 150, "cg/ef/花火02.jpg");
	CreateTextureEXadd("絵背景EF03", 100, 252, 230, "cg/ef/花火03.jpg");
	CreateTextureEXadd("絵背景EF04", 100, 408, 400, "cg/ef/花火01.jpg");
	CreateTextureEXadd("絵背景EF05", 100, 554, 230, "cg/ef/花火02.jpg");
	CreateTextureEXadd("絵背景EF06", 100, 700, 150, "cg/ef/花火03.jpg");
	CreateTextureEXadd("絵背景EF07", 100, 846, 100, "cg/ef/花火01.jpg");

	CreateTextureEXadd("絵背景EG01", 100, -160, -100, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG02", 100, -46, 50, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG03", 100, 92, -200, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG04", 100, 238, 100, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG05", 100, 384, -30, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG06", 100, 530, -150, "cg/ef/花火04.jpg");
	CreateTextureEXadd("絵背景EG07", 100, 676, 100, "cg/ef/花火04.jpg");

	CreateSE("SE01","se環境_花火連打01");
	CreateSE("SE02","se動作_布落とす");
	CreateColorEXadd("絵色200", 1500, "WHITE");

//生成まとめ１=================================================================

//生成まとめ２=================================================================

	CreateTextureEXadd("絵背景EH01", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH02", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH03", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH04", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH05", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH06", 100, 0, 0, "cg/ef/efスモーク.png");
	CreateTextureEXadd("絵背景EH07", 100, 0, 0, "cg/ef/efスモーク.png");


//生成まとめ２=================================================================

//	OnBG(10,"bg0605300半田明神_屋根_雪");
//	FadeBG(0,true);
	CreateTextureSP("絵背景100b", 80, Center, 0, "cg/bg/l/bg0603600半田明神_境内_雪トゥルー新年_l.jpg");
	CreateTextureEX("絵背景100", 80, Center, -62, "cg/bg/bg0603611半田明神_境内_雪トゥルー新年.jpg");
	Request("絵背景100*", Smoothing);
	Zoom("絵背景100*", 0, 2000, 2000, null, true);
	Zoom("絵背景100", 0, 4000, 4000, null, true);

	OnBG(10,"bg0603611半田明神_境内_雪トゥルー新年");
	FadeBG(0,true);

	//★ロック設置
	LockVideo(false);

//	DrawDelete("絵黒幕", 200, 100, null, "slide_02_01_1", false);

	MusicStart("SE02",0,2000,0,500,null,false);
	Wait(300);
	Fade("絵背景BG02", 0, 1000, null, true);

	Move("絵背景100b", 2000, @0, -350, Dxl1, false);
	FadeDelete("絵黒幕", 500, null, false);
	Move("絵背景BG02", 500, @0, 0, Dxl2, false);


	Wait(2000);

	CloudZoomSmokeStart01(800,25,800,2500,900,100,576,200,100,Dxl1);
	CloudZoomSmokeStart02(800,25,800,2500,900,800,576,700,100,Dxl1);

	MusicStart("SE01",0,1200,0,1000,null,false);
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

	Wait(1000);

	CloudZoomSmokeDelete02(300);
	CloudZoomSmokeDelete01(300);

	Wait(300);
	MusicStart("SE30",300,700,0,1000,null,true);
	Fade("絵背景100", 300, 1000, null, false);
	Move("絵背景100", 500, 0, 0, Dxl2, false);
	Move("絵背景100b", 500, -512, -288, Dxl2, false);
	Zoom("絵背景100b", 500, 500, 500, Dxl2, false);
	Zoom("絵背景100", 500, 1000, 1000, Dxl2, true);



//	CloudZoomSmokeDelete02(500);
//	CloudZoomSmokeDelete01(500);

	SetVolumeEX("SE01", 2000, 0, null);

//	SoundPlay("@xbgm18",0,450,true);

	Delete("絵背景E*");
	Delete("絵背景100b");

/*
//◆音声指示：同時
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/24/000100180e05">
「おおおおおおお――――――――っ！！」

//◆音声指示：同時
//【オタクＢ】
<voice name="オタクＢ" class="その他男声" src="voice/24/000100190e06">
「おおおおおおお――――――――っ！！」

//◆音声指示：同時
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/24/000100200e07">
「おおおおおおお――――――――っ！！」

//◆音声指示：同時
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/24/000100210e08">
「おおおおおおお――――――――っ！！」

//◆音声指示：同時
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/24/000100220e09">
「おおおおおおお――――――――っ！！」

//◆音声指示：同時
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/24/000100230e10">
「おおおおおおお――――――――っ！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//◆音声指示：同時
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/24/000100180">
「おおおおおおお――――――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/24/000100240e07">
「の、ノーコ様だああああッ！！」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/24/000100250e08">
「ノーコ様、最高――――ッ！！」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/24/000100260e09">
「愛してます――――――ッ！！」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/24/000100270e10">
「切断して―――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE30", 3000, 1, null);


//◆演出指定：屋根
	CreateTextureEX("絵背景上200", 300, Center, Middle, "cg/bg/l/bg0605300半田明神_屋根_雪_l.jpg");
	Fade("絵背景上200", 300, 1000, null, true);


	CreateTextureSP("絵背景200", 300, Center, Middle, "cg/bg/l/bg0605300半田明神_屋根_雪_l.jpg");

	Delete("絵背景100");
	Delete("絵背景上200");

//	OnBG(10,"bg0605300半田明神_屋根_雪");
//	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@100,"bu似鳥_ラッパー_rage");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000100280nki">
「黙れ、黙れ黙れ黙れッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000100290nki">
「いいか、よく聞けッ！！」

{	St("C",700, @0,@0,"bu似鳥_ラッパー_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000100300nki">
「妄想は妄想！
　非実在青少年としてのノーコは、おまえらの自由だッ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000100310nki">
「コスプレだろうと輪姦陵辱だろうと近親相姦だろうとふたなり化だろうと死姦だろうと好きにしやがれッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2401);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"bu似鳥_ラッパー_pride2");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000100320nki">
「しか――――――――――し！！」

{	St("C",700, @0,@0,"bu似鳥_ラッパー_rage2");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000100330nki">
「現実の！　ノーコは！　オレだけのもんだッ！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコb_通常_shy");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000100340nko">
「にとり……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_ラッパー_pride2");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000100350nki">
「おまえらは、オレの魂籠もったノーコのエロマンガで、思う存分マスかきやがれッ！！」

{	St("C",700, @0,@0,"bu似鳥_ラッパー_rage2");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000100360nki">
「は――――っはっはっはっは！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/24/000100370e07">
「アホだ……」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/24/000100380e08">
「アホだぞ……」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/24/000100390e09">
「アホがいる……」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/24/000100400e10">
「本物のアホだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	Fade("絵背景200", 300, 0, null, true);
	Delete("絵背景200");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/24/000100410mrp">
「……最低」

{	DeleteAllSt(200,false);

	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/24/000100420adi">
「かっこいい……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/24/000100430mrp">
「え！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE30", 1500, 700, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指示：場面がライブ会場に戻ってくる
//◆演出指定：歓声が巻き上がる
//おがみ：ＳＥ：歓声
	OnBG(10,"bg0603611半田明神_境内_雪トゥルー新年");
	FadeBG(500,true);

	Wait(300);

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/bg0603600半田明神_境内_雪トゥルー新年.jpg");
	SetShade("絵窓/絵演背景", HEAVY);
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureEX("絵背景枠01", 2200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu鈴_通常_normal.png");
	Move("絵窓/絵演立絵", 0, @200, @0, null, true);

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 200, @-200, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);


	SetVolumeEX("SE30", 2500, 200, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100440fjr">
「会場のみんな！
　ちゃんと願い事はした？」

{	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu鈴_シリアス_normal.png");
	Move("絵窓/絵演立絵2", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100450fjr">
「ニコちゃんは？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//マスク準備
	CreateTextureEX("絵マスク枠", 7010, center, middle, "cg/mask/ciスラッシュ_05_00z.png");
	Rotate("絵マスク枠", 0, @0, @180, @0, null,true);
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	Rotate("絵マスク", 0, @180, @0, @0, null,true);
	SetAlias("絵マスク","絵マスク");
	CreateTextureSP("絵マスク/絵演背景", 6520, Center, -188, "cg/bg/bg0603311半田明神_境内_雪ライブ.jpg");
	SetShade("絵マスク/絵演背景", MIDEUM);
	Zoom("絵マスク/絵演背景", 0, 2000, 2000, null, true);

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 6530, center, middle, "cg/bu/buそに子_通常_happy.png");
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
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buフウリ_頬手_shy.png");
	Request("絵マスク左/絵演立絵", Smoothing);

//動作準備
	Move("絵マスク左枠", 0, -1024, 0, null, true);
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);
	Fade("絵マスク左枠", 0, 1000, null, true);


//イン動作
	Move("絵マスク枠", 200, 200, 0, Dxl3, false);
	Move("絵マスク", 200, 200, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 600, middle, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【そに子】
<voice name="そに子" class="そに子" src="voice/24/000100460snk">
「はいっ！　しましたよ～」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100470fjr">
「どんなお願い？」

//【そに子】
<voice name="そに子" class="そに子" src="voice/24/000100480snk">
「そういうのは、秘密なんですよ！」

{	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu鈴_シリアス_smile.png");
	Move("絵窓/絵演立絵", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵2", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100490fjr">
「あ、そっかそっか」

{	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu鈴_通常_normal.png");
	Move("絵窓/絵演立絵2", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100500fjr">
「ちなみにフウリちゃんも、お願いした？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//イン動作
	Move("絵マスク左", 200, -200, 0, Dxl3, false);
	Move("絵マスク左枠", 200, -200, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -50, middle, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000100510wfu">
「もちろんです！
　ふふふ……考えただけで、よだれが……じゅるり」

{
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu鈴_通常_sad.png");
	Move("絵窓/絵演立絵", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵2", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);
}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100520fjr">
「ええと……まあ、いいわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

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

	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu鈴_シリアス_normal.png");
	Move("絵窓/絵演立絵2", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100530fjr">
「ちなみにアタシのお願いは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu鈴_通常_happy.png");
	Move("絵窓/絵演立絵", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵2", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100540fjr">
「第一宇宙速度、念願のメジャーデビュー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆演出指定：うおおおおおおお！！　歓声
	SetVolumeEX("SE30", 500, 700, null);

	Wait(1000);

	CreateTextureEX("絵マスク/絵演立絵", 6530, center, middle, "cg/bu/buそに子_通常_sad.png");
	Move("絵マスク/絵演立絵", 0, 600, middle, null, true);

	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buフウリ_胸手_worry.png");
	Move("絵マスク左/絵演立絵", 0, -200, middle, null, true);

//動作準備
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵", 0, 712, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク左枠", 0, -1024, 0, null, true);
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, -512, 200, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);


//イン動作
	Move("絵マスク枠", 200, 200, 0, Dxl3, false);
	Move("絵マスク", 200, 200, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, 600, middle, Dxl1, false);

	Move("絵マスク左枠", 200, -200, 0, Dxl3, false);
	Move("絵マスク左", 200, -200, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵", 200, -50, middle, Dxl1, true);

	SetVolumeEX("SE30", 3000, 300, null);

{	ClockPass(2402);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【そに子】
<voice name="そに子" class="そに子" src="voice/24/000100550snk">
「え？　え？
　でもそれって、言っちゃダメなんじゃ……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000100560wfu">
「そうですよー！
　せっかく、夢に向かってここまで来たのにー！」

{	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu鈴_シリアス_angry.png");
	Move("絵窓/絵演立絵2", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100570fjr">
「構わないわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu鈴_通常_happy.png");
	Move("絵窓/絵演立絵", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵2", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100580fjr">
「だって、もう全然、夢じゃないもの！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100590fjr">
「今夜叶う出来事は、夢じゃなくてただの未来よ。
　違う？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵マスク/絵演立絵2", 6530, center, middle, "cg/bu/buそに子_通常_happy.png");
	Move("絵マスク/絵演立絵2", 0, 600, middle, null, true);

	CreateTextureEX("絵マスク左/絵演立絵2", 6530, center, middle, "cg/bu/buフウリ_頬手_happy.png");
	Move("絵マスク左/絵演立絵2", 0, -50, middle, null, true);

	Fade("絵マスク/絵演立絵", 300, 0, Axl2, false);
	Fade("絵マスク左/絵演立絵", 300, 0, Axl2, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, null, false);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000100600wfu">
「なるほどー」

//【そに子】
<voice name="そに子" class="そに子" src="voice/24/000100610snk">
「さすが、鈴ちゃん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//アウト動作
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵", 200, 712, 200, Axl1, false);
	Fade("絵マスク/絵演立絵", 200, 0, null, false);
//アウト動作
	Move("絵マスク左", 200, -1024, 0, Axl3, false);
	Move("絵マスク左枠", 200, -1024, 0, Axl3, false);
	Move("絵マスク左/絵演立絵", 200, -512, 200, Axl1, false);
	Fade("絵マスク左/絵演立絵", 200, 0, null, true);

	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu鈴_シリアス_smile.png");
	Move("絵窓/絵演立絵2", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100620fjr">
「ってことでミリＰさん！
　プロデュースよろしくお願いねっ！」

{
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu鈴_シリアス_normal.png");
	Move("絵窓/絵演立絵", 0, @0, @0, null, true);
	Fade("絵窓/絵演立絵2", 300, 0, Axl1, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);
}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100630fjr">
「ささ、それじゃ新年１発目！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);

//◆演出指定：うおおおおおおお！！　歓声
	SetVolumeEX("SE30", 1000, 700, null);

	Delete("絵マスク左/絵演立絵2");
	Delete("絵マスク/絵演立絵2");

/*
	CreateTextureEX("絵マスク/絵演立絵", 6530, center, middle, "cg/bu/buそに子_通常_smile.png");
	Move("絵マスク/絵演立絵", 0, 600, middle, null, true);

	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/bu/buフウリ_通常_smile.png");
	Move("絵マスク左/絵演立絵", 0, -200, middle, null, true);
*/

	CreateTextureEX("絵窓/絵演立絵にこ", 6530, center, middle, "cg/bu/buそに子_通常_smile.png");
	Move("絵窓/絵演立絵にこ", 0, 600, middle, null, true);

	CreateTextureEX("絵窓/絵演立絵ふり", 6530, center, middle, "cg/bu/buフウリ_通常_smile.png");
	Move("絵窓/絵演立絵ふり", 0, -200, middle, null, true);

//動作準備
	Move("絵窓/絵演立絵にこ", 0, 712, 200, null, true);
	Move("絵窓/絵演立絵ふり", 0, -512, 200, null, true);


//イン動作
	Fade("絵背景枠01", 100, 0, null, false);
	Fade("絵背景枠02", 100, 0, null, false);
	Move("絵背景枠01", 200, @0, -20, Axl1, false);
	Move("絵背景枠02", 200, @0, 576, Axl1, false);
	Zoom("絵窓", 200, 1000, 2000, Axl1, false);
	Fade("絵窓/絵演立絵にこ", 200, 1000, null, false);
	Move("絵窓/絵演立絵にこ", 200, 550, middle, Dxl1, false);
	Move("絵窓/絵窓/絵演立絵", 200, 320, middle, Dxl1, false);

	Fade("絵窓/絵演立絵ふり", 200, 1000, null, false);
	Move("絵窓/絵演立絵ふり", 200, -227, middle, Dxl1, true);

/*
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/24/000100640snk">
「いってみよー！！」

//◆音声指示：同時
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/24/000100650fjr">
「いってみよー！！」

//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000100660wfu">
「いってみよー！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/24/000100640">
「いってみよー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE30", 1000, 1000, null);
	TextBoxDelete(150);

	CreateColorEXadd("絵色100", 15500, "WHITE");

	CreatePlainSP("揺用", 15005);
	SetBlur("揺用", true, 5, 500, 50, false);
	Zoom("揺用", 400, 3000, 3000, Axl3, false);

	Wait(300);
//	SoundPlay("@xsong03",0,400,true);
	Fade("絵色100", 100, 1000, null, true);

	XSONG03_Live(500,500);


	Delete("絵マスク*");
	Delete("絵窓*");
	Delete("絵背景枠*");
	Delete("揺用");

//◆演出指定：井戸の側？？
	CreateTextureEX("絵背景上敷", 1000, Center, Middle, "cg/bg/bg0606200半田明神_涸れ井戸_雪.jpg");

	OnBG(10,"bg0606200半田明神_涸れ井戸_雪");
	FadeBG(0,true);

//ライト準備===========================================================
	CreateColorSPover("絵色ライト1", 1109, "#993355");
	CreateColorSPover("絵色ライト2", 1109, "#449900");
	CreateColorSPover("絵色ライト3", 1109, "#005599");
	DrawTransition("絵色ライト1", 0, 300, 300, 200, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 200, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 200, null, "cg/data/slide_02_00_0.png", true);


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

	CreateSE("SE77","se環境_花火02");

	SetVolumeEX("SE30", 5000, 0, null);

	Request("プロセスライト１", Start);

	fireworks_set(600);
	CreateTextureSP("絵背景100", 500, Center, -100, "cg/img/img花火.jpg");
//	Zoom("絵背景100", 0, 1100, 1100, null, true);
	MoveFTP3("@絵背景100", 3000, 4, 3);
	Request("絵背景100", Smoothing);

	Zoom("絵背景100", 2000, 1200, 1200, Dxl1, false);

	MusicStart("SE77",0,700,0,1000,null,true);

	Fade("絵色100", 500, 0, null, true);


	Wait(3000);
	WaitKey(3000);

	SetVolumeEX("SE77", 4000, 400, null);

	Fade("絵背景上敷", 2000, 1000, null, true);

	fireworks_Delete(0,true);
	MoveFTP3stop();
	Delete("絵背景100");

//バグ回避のため
	SetVolumeEX("@ライブ歓声01", 2000, 1, null);

	FadeDelete("絵背景上敷", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("L",700, @-50,@100,"buみそa_通常_happy");
	Shake("@StNameL/L*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameL/L*", 200, @50, @-100, Dxl1, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/24/000100670mso">
「た――まや――――！！」

{	St("R",700, @50,@100,"buブーa_通常_happy");
	Shake("@StNameR/R*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameR/R*", 200, @-50, @-100, Dxl1, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/24/000100680buu">
「か――ぎや――――！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100690fje">
「父さん、花火まで用意してたんだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100700kit">
「お祭り好きだからなあ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100710fje">
「身体、大丈夫かな？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100720kit">
「大丈夫だろ。元々頑丈だし」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100730fje">
「この花火、見せてあげたかったな……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100740kit">
「それは確かに」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100750kit">
「でもま、何にせよ無事にいって良かった良かった」

{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100760kit">
「今頃星さん、びっくりしてるだろうな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100770fje">
「地団駄踏んでるかも。一応、逃げとこっか」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100780kit">
「ん、そうすっか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE77", 4000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：半田明神_社務所
	OnBG(10,"bg0604212半田明神_社務所_雪");
	FadeBG(0,true);
	DrawTransition("絵色ライト1", 0, 300, 300, 200, null, "cg/data/circle_07_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 200, null, "cg/data/circle_09_00_1.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 200, null, "cg/data/circle_06_00_1.png", true);

	CreateTextureSP("絵背景100b", 80, Center, -100, "cg/bg/l/bg0603611半田明神_境内_雪トゥルー新年_l.jpg");

	Move("絵背景100b", 5500, @0, -300, null, false);
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(3000);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DrawTransition("絵色ライト1", 0, 300, 300, 200, null, "cg/data/circle_11_00_1.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 200, null, "cg/data/circle_11_00_1.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 200, null, "cg/data/circle_11_00_1.png", true);

	Delete("絵背景100b");


//	Request("プロセスライト１", Stop);
//	Fade("絵色ライト*", 0, 0, null, true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100790kit">
「お……すごい絵」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100800fje">
「ノーコさん、幸せそうだね」

{	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100810fje">
「私も……あんな顔、してみたいな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100820kit">
「人を刺したりすんのか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100830fje">
「そういうんじゃないって！　もう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2403);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100840kit">
「はは、ごめんごめん」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100850fje">
「で、願い事はした？」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100860kit">
「一応……」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100870fje">
「何、願ったの？」

{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100880kit">
「ん？　いや、ええと……
　おまえこそ、なにお願いしたんだよ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("MR",700, @0,@0,"bu恵那_一休_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100890fje">
「んー、そうだな……早めの事件解決？」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100900kit">
「事件解決？」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100910fje">
「ほら、例えば私のブルマーだって、見つかったのはいいけれど、まだ犯人が捕まってないじゃない」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100920kit">
「あ……ああ、うん。アレね……」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100930kit">
「いやでも、それはもう済んだこと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100940fje">
「そんなことないわよ！
　罪は罪で、ちゃんと償ってもらわないと！」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100950kit">
「いやいや、犯人もきっと反省してるって！」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100960fje">
「……ちょっと。なんでそんな犯人の肩もつのよ。
　なんか、怪しくない？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100970fje">
「まさか犯人知ってるとか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000100980kit">
「ないない！　そんなのあり得ないでしょ！」

{	St("MR",700, @0,@0,"bu恵那_一休_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000100990fje">
「怪しい……」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101000kit">
「いやいや、怪しくなんて――あ、メール！」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101010fje">
「ちょっと！　話逸らさないでよ！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101020kit">
「ええと、誰からかなあ……{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}って、恵那のオヤジさん！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//おがみ：音声：下記、発言者間違いのためスクリプト上で修正　台本は佐藤ライター修正
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101030fje">
「父さんから！？　なんてメールが？」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101040kit">
「ええと……なになに？
　『ネット中継で見てた。娘から今すぐ離れろ』」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101050kit">
「『うちの娘は、嫁にはやらん。
　なお、離れない場合には……』」

{	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101060kit">
「『オレからの使者が、天罰を下す』……？」

{	St("MR",700, @0,@0,"bu恵那_一休_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101070fje">
「使者って、いったい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/24/000101080ujr">
「わう――――――んッ！！」

{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101090fje">
「ん？　この声――」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101100kit">
「ユージロ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2404);}


	DeleteAllSt(200,true);

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#9955FF");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 19100, center, middle, "cg/bu/buユージローb_通常_angry.png");
	Move("絵窓/絵演立絵", 0, @100, @300, null, true);
	Zoom("絵窓/絵演立絵", 0, 800, 800, null, true);

	CreateTextureEX("絵背景枠01", 10000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 10000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");



//動作
	CutInLine02("@絵背景枠*");

	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);

	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 200, @-70, @-200, Dxl2, false);
	Shake("絵窓/絵演立絵", 300, 20, 0, 0, 0, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵窓/絵演立絵", 300, 1000, 1000, Dxl2, true);

	Wait(200);

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");

	St("C",700, @0,@100,"bu千秋_驚天_shock");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0263]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101110kit">
「ブルマー仮面ッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("R",700, @100,@0,"buユージローb_通常_angry");
	Move("@StNameR/R*", 200, @-200, @0, Dxl1, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/24/000101120ujr">
「がうがうがうがうっ！！」

{	DeleteAllSt(200,false);
	St("L",700, @200,@10,"bu千秋_驚天_shock");
	Move("@StNameR/R*", 200, @-200, @0, Axl1, false);
	Shake("@StNameL/L*", 200, 5, 5, 0, 0, 1000, Dxl1, false);
	Move("@StNameL/L*", 200, @-200, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101130kit">
「いででっ！　や、やめろコラ！　っていうかアレ？
　コイツが、オヤジさんからの使者！？」

{	DeleteAllSt(200,false);
	St("ML",700, @100,@10,"buユージローb_通常_angry");
	Shake("@StNameML/ML*", 200, 5, 5, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/24/000101140ujr">
「わお――――――ん！！」

{	DeleteAllSt(200,false);
	St("L",700, @50,@10,"bu千秋_驚天_shock");
	Shake("@StNameL/L*", 200, 5, 5, 0, 0, 1000, Axl1, false);
	Move("@StNameL/L*", 200, @-50, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101150kit">
「ぎゃああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);


	Shake("@StNameL/L*", 200, 5, 5, 0, 0, 1000, Axl1, false);
	Move("@StNameL/L*", 200, @-200, @0, Axl1, false);
	DeleteAllSt(200,true);

	SetVolumeEX("SE01", 2000, 0, Axl2);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101160fje">
「こらユージロー！　いい加減にしなさいッ！」

{	St("C",700, @0,@0,"buユージローb_通常_hard");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, Axl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/24/000101170ujr">
「ぐぅぅぅぅぅぅ……」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101180fje">
「もう！　千秋のことはとりあえず置いといて！」

{	St("ML",700, @0,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101190kit">
「そうだそうだっ！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101200fje">
「それよりもこのブルマーの匂いから、泥棒を探すのが先でしょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101210kit">
「え、いやそれはやめたほうが――」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101220fje">
「ほら、匂い嗅いで！」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buユージローb_通常_ero");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/24/000101230ujr">
「くんくん……くんくんくん……」

{	St("MR",700, @0,@0,"buユージローb_通常_hard");
	Shake("@StNameMR/MR*", 200, 5, 0, 0, 0, 1000, Axl1, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/24/000101240ujr">
「ぐるるるるるるる……」

{	St("MR",700, @0,@0,"buユージローb_通常_angry");
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Axl1, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/24/000101250ujr">
「がうがうがうがうッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Shake("@StNameL/L*", 200, 5, 0, 0, 0, 1000, Axl1, false);
	Move("@StNameL/L*", 200, @-200, @0, Axl1, false);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("ML",700, @100,@0,"bu千秋_驚天_shock");
	Shake("@StNameML/ML*", 200, 5, 5, 0, 0, 1000, Axl1, false);
	Move("@StNamemML/ML*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101260kit">
「ぎゃーっ！！　や、やっぱりかあああ！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101270fje">
「だから、千秋はもういいって！
　私が探して欲しいのは、ブルマー泥棒で――」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101280fje">
「…………ん？　あれ？」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101290fje">
「ブルマー、泥棒？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101300fje">
「そういえば……私、アンタにエコバッグあげたわよね。
　あの日、私のブルマーも同じ柄の袋に入ってたわけで」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101310fje">
「もしかして千秋、カバン間違えって持ち帰った！？」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101320kit">
「そ、そんなわけない……」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101330fje">
「そんなに私のブルマーがはきたかったの！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101340kit">
「は……ハァ！？」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101350kit">
「ブルマーはきたいとか！　オレは変態かッ！？
　ただちょっと間違えて――」


{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101360fje">
「間違えて……？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101370kit">
「あ、ヤベ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101380fje">
「やっぱり――アンタが持ち帰ったんじゃないッ！！」

{	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101390kit">
「ご……ごめんなさい！」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101400kit">
「でも、ほら！
　オレすごい努力したんだぜ！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101410kit">
「元はといえば今日こんなカッコでバイトすることになったのも、ブルマーを返そうとしたからだし！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101420fje">
「あ……あの、さ。
　もしかして……もしかして、なんだけど」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101430fje">
「千秋が探してた、私にどうしても渡さなきゃならないものって――」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101440fje">
「その、ブルマーのこと？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101450kit">
「えへ。
　実は、そうなんだよね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("MR",700, @0,@0,"bu恵那_一休_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101460fje">
「ふ……ふふふ……」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101470kit">
「あれ？　面白い？」

{	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101480fje">
「ふはははは、あはははははは……」

{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101490kit">
「面白いよね、ははははははは……」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101500fje">
「全ッ然！　面白くない！」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,false);
	Zoom("@StNameC/C*", 100, 1080, 1080, Dxl1, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl1, true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000101510fje">
「行け、ユージロー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＥＶ："ev/ev2400恵那千秋変わらない日常.txt"

	TextBoxDelete(150);
	DeleteAllSt(150,true);


	CreateTextureEX("絵背景100", 120, 0, -500, "cg/ev/l/ev2400恵那千秋変わらない日常_l.jpg");
	CreateTextureEX("絵背景200", 120, center, middle, "cg/ev/ev2400恵那千秋変わらない日常.jpg");

	CreateSE("SE01","se動作_刺す02");
	CreateSE("SE02","se動作_布破る");
	MusicStart("SE01",0,700,0,1000,null,false);

	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("絵背景100", 300, 1000, null, false);
	Shake("絵背景100", 800, 0, 10, 0, 0, 1000, Dxl2, false);
	Move("絵背景100", 1000, -512, @0, Dxl2, true);


	Zoom("絵背景100", 500, 500, 500, Dxl2, false);
	Move("絵背景100", 500, -512, -288, Dxl2, true);
	Fade("絵背景200", 200, 1000, null, true);

	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/24/000101520ujr">
「ぐるるるる――がうがうがうがうがうッ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000101530kit">
「なんで……うぎゃあああ――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：半田明神_鳥居


	CreatePlainSP("揺用", 2005);

	Request("プロセスライト１", Stop);
//	Delete("プロセスライト１");
	Fade("絵色ライト*", 0, 0, null, true);
//	Delete("絵色ライト*");
	Delete("絵背景200");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0602311半田明神_鳥居_雪.jpg");
	Zoom("絵背景100", 0, 0, 1000, null, true);
	Move("絵背景100", 0, @-512, @-300, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	Move("絵背景100", 1000, @512, @0, AxlDxl, false);
	Zoom("絵背景100", 1000, 1000, 1000, AxlDxl, false);
	Move("揺用", 1000, @512, @0, AxlDxl, false);
	Zoom("揺用", 1000, 0, 1000, AxlDxl, true);

	Wait(500);
	Delete("揺用");

	OnBG(10,"bg0602311半田明神_鳥居_雪");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
{	St("C",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000101540nko">
「うるさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101550nki">
「……確かに、賑やかだな」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101560nki">
「ま、あのライブに比べりゃ大人しいもんだけど」

{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000101570nko">
「フウリ、かっこいい」

{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101580nki">
「……だな」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000101590nko">
「プロになれる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101600nki">
「ああ。きっとなれるさ」

{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000101610nko">
「にとりも、なれる？」

{	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101620nki">
「……それは、わかんないけど」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101630nki">
「でもオレ、マンガ、描くよ」

{	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101640nki">
「言い訳して逃げてたけど、今度こそ、本物を描く」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000101650nko">
「うん」

{	St("MR",700, @0,@0,"buノーコb_幽霊_smile");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000101660nko">
「にとりなら、きっとできる」

{	St("ML",700, @0,@0,"bu似鳥_背張る_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101670nki">
「ああ」

{	St("ML",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101680nki">
「っていっても、生活費を稼がないことには――」

{	DeleteAllSt(200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101690msi">
「似鳥さあああああああん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	St("C",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101700nki">
「あ、村崎。どうしたんだ？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@100,"bu村崎_通常_happy");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101710msi">
「すごい！　すごいですよ！」

{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101720msi">
「『ＮＯ　ＣＯＮＴＲＯＬ　１１』――
　あっという間に完売！」

{	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101730msi">
「こりゃ一財産ですよォ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2405);}

{	St("MR",700, @0,@0,"bu似鳥_背張る_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101740nki">
「盗むなよ」

{	St("ML",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101750msi">
「そ、そんな！　滅相もない！」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101760msi">
「私は……思い出したんです」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101770msi">
「ただお客様の笑顔だけが見たくて……懸命に働いた、あの若い日のことを」

{	St("ML",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101780msi">
「長く商売を続けるうちに、忘れてしまっていました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101790msi">
「似鳥さん。今日は、色々ご迷惑おかけしました」

{	St("MR",700, @0,@0,"bu似鳥_背張る_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101800nki">
「いや……オレも色々手伝ってもらっちゃって」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101810msi">
「つきましては――」

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/24/000101820msi">
「ええ、私明日から同人誌を取り扱って委託販売など行いたいかな、と思っているのですが是非――」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000101830nko">
「けっきょくしょうばい」

{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101840nki">
「……そういうなって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(400,true);


//◆ＥＶ："ev/ev2400似鳥ノーコ一番大切なもの"

	CreateTextureEX("絵背景200BIG", 120, Center, Middle, "cg/ev/l/ev2400似鳥ノーコ一番大切なもの_l.jpg");
	CreateTextureEX("絵背景200", 120, Center, Middle, "cg/ev/ev2400似鳥ノーコ一番大切なもの.jpg");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 1100, 1100, null, true);

	Move("絵背景200BIG", 0, @-200, @0, null, true);

	Move("絵背景200BIG", 10000, @200, @0, null, false);
	Fade("絵背景200BIG", 1000, 1000, null, true);
	Delete("絵背景100");
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101850nki">
「追い詰められたから、一番大切なものが見える」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000101860nki">
「村崎の大切なものが、商売だったってことだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Zoom("絵背景200", 1500, 1000, 1000, null, false);
	Fade("絵背景200", 1500, 1000, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
//※下倉注：この台詞削除
//【村崎勇】
//<voice name="村崎勇" class="村崎勇" src="voice/24/000101870msi">
//「そうかも……しれませんね」
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000101880nko">
「だったら、わたしのたいせつなものは」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000101890nko">
「にとりだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2406);}

	TextBoxDelete(150);
//◆演出指定：ライブ

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景b200", 100, Center, 0, "cg/bg/l/bg0603611半田明神_境内_雪トゥルー新年_l.jpg");
	CreateTextureEX("絵背景b300", 100, Center, middle, "cg/bg/bg0603611半田明神_境内_雪トゥルー新年.jpg");
	SetShade("絵背景b300", HEAVY);
	Zoom("絵背景b300", 0, 2000, 2000, null, true);
	Move("絵背景b300", 0, @0, @288, null, true);

	Wait(300);
	OnBG(10,"bg0602311半田明神_鳥居_雪");
	FadeBG(0,true);
	St("C",19100, @0,@100,"fuフウリ_胸手_smile");

	DrawTransition("絵色ライト1", 0, 300, 300, 200, null, "cg/data/circle_10_00_1.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 200, null, "cg/data/circle_09_00_1.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 200, null, "cg/data/circle_06_00_1.png", true);

	Move("絵背景b*", 4000, @0, @-100, null, false);

//	Fade("絵背景b200", 2000, 1000, null, true);
	Delete("絵背景200*");
	Delete("絵背景100");

	FadeDelete("絵板写", 2000, null, true);
	Delete("絵板写");

	Request("プロセスライト１", Start);
//	Delete("プロセスライト１");
//	Fade("絵色ライト*", 0, 0, null, true);
//	Delete("絵色ライト*");

	Wait(1000);

	Fade("絵背景b300", 1000, 1000, null, false);
	Move("@StNameC/C*", 1000, @0, @-100, Dxl1, false);
	FadeSt("C",1000,true);

	Wait(500);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000101900wfu">
（大切なもの――）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000101910wfu">
（これが、私が見つけた大切なもの――）

{	St("C",19100, @0,@0,"fuフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000101920wfu">
（ひとも、タヌキも、たくさんのものをなくしてしまう）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
{	St("C",19100, @0,@0,"fuフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000101930wfu">
（けど、なくしてしまうだけじゃない）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000101940wfu">
（禍福はあざなえる縄のごとし――）

{	St("C",19100, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000101950wfu">
（辛いこともたくさんあるけれど）

{	St("C",19100, @0,@0,"fuフウリ_胸手_shy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000101960wfu">
（きっと、それよりたくさんの、うれしいことがあるから）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000101970wfu">
（誰かが私を助けてくれたみたいに――）

{	St("C",19100, @0,@0,"fuフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000101980wfu">
（この歌が、誰かを助けてるかもしれないから――！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	XSONG03_Live_VolumeSet(1500, 800);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateSE("SE30","seガヤ_大歓声_l");
	MusicStart("SE30",1000,1000,0,1000,null,true);

	Request("プロセスライト１", Start);
	Delete("プロセスライト１");
	Fade("絵色ライト*", 300, 0, null, true);
	Delete("絵色ライト*");



//◆ＥＶ："ev/ev2400フウリタイコを叩きます.txt"
	CreateColorSPover("絵色ライト1", 1109, "#AA3355");
	CreateColorSPover("絵色ライト2", 1109, "#55AA00");
	CreateColorSPover("絵色ライト3", 1109, "#0000AA");
	Fade("絵色ライト1", 0, 0, null, true);
	Fade("絵色ライト2", 0, 0, null, true);
	Fade("絵色ライト3", 0, 0, null, true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトタイム = 200;

	CreateTextureEX("絵背景100", 120, -1024, 0, "cg/ev/l/ev2400フウリタイコを叩きます_l.jpg");
	CreateTextureEX("絵背景200", 120, Center, Middle, "cg/ev/ev2400フウリタイコを叩きます.jpg");
	SetBlur("絵背景100", true, 1, 500, 50, false);

	#ev2400フウリタイコを叩きます_big = true;


	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoop");
	SetAlias("プロセスライト１","プロセスライト１");

	Request("プロセスライト１", Start);

	Fade("絵背景100", 200, 1000, null, false);
	Move("絵背景100", 500, 0, 0, Dxl2, true);

	Wait(50);

	SetBlur("絵背景100", false, 1, 500, 50, false);
	Move("絵背景100", 0, 0, -576, null, true);
	SetBlur("絵背景100", true, 1, 500, 50, false);
	Move("絵背景100", 500, -1024, -576, Dxl2, true);

	Wait(50);

	SetBlur("絵背景100", false, 1, 500, 50, false);
	Move("絵背景100", 0, 0, 0, null, true);
	SetBlur("絵背景100", true, 1, 500, 50, false);

	Move("絵背景100", 800, -1024, -300, Dxl2, true);
	Zoom("絵背景100", 400, 500, 500, Axl2, false);
	Move("絵背景100", 400, -512, -288, Axl2, true);
	Fade("絵背景200", 200, 1000, null, true);

	SetVolumeEX("SE30", 2000, 400, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000101990wfu">
（だから――）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000102000wfu">
（私は、タイコを、たたきます！）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000102010wfu">
（天国で、聴いててください。
　大好きだった――貫太さん）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000102020wfu">
（そしてこの歌が――）

{	SetVolumeEX("SE*", 2000, 0, null);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000102030wfu">
（沙紅羅ちゃんの元にも、届きますように――っ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：場面転換
	TextBoxDelete(0);

//	XSONG03_Live_VolumeSet(1000, 0);
	Request("@ライブBGMプロセスナット", Stop);
	Request("@ライブBGMチェックプロセスナット", Stop);

	SetVolume("@ライブ歓声01", 100, 0, NULL);
	SetVolumeEF("@ライブ音源01", 650);
	SetVolumeEF("@ライブ音源02", 650);

	Delete("@ライブBGMプロセスナット");
	Delete("@ライブBGMチェックプロセスナット");


//おがみ：β２：音止める
	CreateColorEXadd("絵色100", 20000, "WHITE");
	Fade("絵色100", 100, 1000, null, true);

{	ClockPass(2400);}

	Request("プロセスライト１", Stop);
	Delete("プロセスライト１");
	Delete("絵色ライト*");
	Delete("絵色200");
	Delete("絵背景*");
	OnBG(10,"bg1404100泰然堂大学病院_霊安室_通常");
	FadeBG(0,true);

	Wait(2000);

	XSONG03_Live_Stop(1000);

	Wait(1000);

	Fade("絵色100", 3000, 0, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102040skr">
「ひぐっ……ぅ……ぅ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102050skr">
「そ……そうだ……マーくん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102060skr">
「お姉ちゃん、遅れてごめんな？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102070skr">
「でも……ちゃんと、持ってきたから」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102080skr">
「おまえに頼まれた――ほら」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102090skr">
「のーこんとろーるの、１１が――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102100skr">
「あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102110skr">
「な……んだ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102120skr">
「なんか……カバンの底に――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102130skr">
「――――な！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000102140skr">
「なんでコレが、こんなところに――ッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆場所：地下_祭壇
//◆演出指定：銃声で突然切り替わる。スローモーションっぽく、エコー？
//おがみ：ＳＥ：銃声　弾は偽者だけど
//◆ＳＥ：銃声
	CreateColorEXadd("絵色100", 20000, "WHITE");
	Fade("絵色100", 100, 1000, null, true);
	OnBG(10,"bg0702100地下_祭壇_通常");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 11, Center, InBottom, "cg/bg/bg0702100地下_祭壇_通常.jpg");
	Move("絵背景", 0, @0, -150, null, true);

	CreateTextureEX("絵背景100", 120, -1024, middle, "cg/ev/l/ev2350ミヅハノメ銃構え_l.jpg");
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 2, 500, 80, false);

	Fade("絵背景100", 0, 1000, null, false);

	Wait(500);
	Zoom("絵背景100", 10000, 800, 800, null, false);
	Move("絵背景100", 10000, -800, @0, null, false);

	CreateSE("SE21","se人体_鼓動_l");
	MusicStart("SE21",0,1000,0,1000,null,true);


	Fade("絵色100", 2500, 200, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102150kms">
「ミヅハ様――」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102160mhn">
「ふ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：びしゃっ！　液体の音
	CreateColorEXadd("絵色ペンキ100", 1500, "#FFFF00");

	CreateSE("SE01","se戦闘_ペイント弾直撃");
	CreateSE("SE01a","se環境_水流_l");

	SetVolumeEX("SE21", 1000, 0, null);

	FadeDelete("絵色100", 500, null, false);
	Zoom("絵背景100", 500, 500, 500, Axl2, false);
	Move("絵背景100", 500, -512, -288, Axl2, false);
	Fade("絵背景100", 500, 0, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色ペンキ100", 0, 1000, null, true);
	DrawTransition("絵色ペンキ100", 200, 0, 1000, 200, null, "cg/data/zoom_01_00_0.png", true);
	MusicStart("SE01a",0,400,0,1000,null,false);
	Wait(200);
	SetVolumeEX("SE*", 600, 0, null);
	FadeDelete("絵色ペンキ100", 1000, null, true);


	Delete("絵背景100");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501]
{	St("C",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102170ksr">
「あ……」

{	St("C",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102180ksr">
「な……な……」

{	St("C",700, @0,@0,"bu双六a_通常_shout");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102190ksr">
「なんだこりゃあッ！！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
{	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102200kms">
「黄色い……ペイント弾……？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102210kms">
「まさか、鳥居を塗っていたもの……？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102220mhn">
「アザナエルを手渡すときに、アッキーが交換したのじゃろうな」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102230kms">
「なぜそんなことを！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm25",0,450,true);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
{	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102240mhn">
「そうでもせねば、おぬしは許さなかったじゃろう？」

{
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102250kms">
「あ……当たり前ですッ！」

{	St("ML",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102260kms">
「せっかく今日まで、元の力を取り戻すべく、我慢を重ねてきたというのに！」

{	St("MR",700, @0,@0,"buミヅハノメ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102270mhn">
「歌門星よ。
　わらわは大晦日の秋葉原で、たくさんの人と出会った」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102280mhn">
「そうして、たくさんの人々の想いに触れた。
　たくさんの人々の願いに触れた」

{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_smile");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102290mhn">
「たくさんの想いに触れたからこそ、おぬしが誰よりも深く、わらわを想っているのを知ることができた」

{	St("C",700, @0,@0,"bu歌門_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102300kms">
「や……やめて下さい！
　そのような優しいお言葉をいただいては、私も――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateSE("SE01","se動作_抱く");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//◆演出指定：優しく囁き抱き合う感じで
{	St("MR",700, @50,@0,"buミヅハノメ_通常_hard");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 400, @-50, @0, Dxl1, false);
	FadeSt("MR",400,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102310mhn">
「いいのじゃ、星よ」

{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102320mhn">
「もう、自らに嘘はつかずとも良い。
　想いに、正直になるのじゃ」

{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_smile");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102330mhn">
「わらわはしばらく人と共に……
　おぬしと共に、生きて行こうと決めたのじゃからのう」

{	St("ML",700, @-50,@0,"bu歌門_通常_shy");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102340kms">
「ミヅハ……様……！」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102350ksr">
「……やれやれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2401);}


	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：テレフォン
	CreateSE("SE01","seメカ_携帯_電子音01");
	CreateSE("SE02","seメカ_携帯_電子音01");
	CreateSE("SE03","seメカ_携帯_電子音01");
	CreateSE("SE04","seメカ_携帯_コール02_l");
	CreateSE("SE05","seメカ_携帯_コール01_l");
	CreateSE("SE06","seメカ_携帯_切れる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(600);
	MusicStart("SE03",0,700,0,1000,null,false);
	Wait(400);
	MusicStart("SE04",0,700,0,1000,null,false);
	Wait(1500);

	SetVolumeEX("SE04", 100, 0, null);
	Wait(1000);

	MusicStart("SE05",0,700,0,1000,null,false);

	Wait(2500);

	SetVolumeEX("SE05", 100, 0, null);

	MusicStart("SE06",0,400,0,1000,null,false);


	Wait(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102360ksr">
「もしもし？」

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/24/000102370fjh">
『……もしもし』

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102380ksr">
「ん……？　ああ、とっつぁんか。
　ジャブルに代わってもらえるか？」

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/24/000102390fjh">
『けっ！　代わってやる義理はねぇよ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102400ksr">
「おいおい、ケチくせぇこと言うなよ」

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/24/000102410fjh">
『他に用事はねぇな？　切るぞ！』

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102420ksr">
「ああ、わかったわかった！　じゃあコレだけ！
　コレだけ伝えておいてくれ！」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102430ksr">
「今回は、オレたちの負けだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102440ksr">
「オレたちは――
　人が幸せを願う気持ちを、甘く見てたって」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102450ksr">
「それだけでいいんだ。頼むわ」

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/24/000102460fjh">
『…………』

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102470ksr">
「おい、平次？　聞いてんのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/24/000102480fjh">
『……なあ、双六』

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102490ksr">
「ん？　なんだよ」

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/24/000102500fjh">
『そんな悲しい顔すんなって』

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102510ksr">
「別に、悲しい顔なんて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","seメカ_携帯_切れる");
	CreateSE("SE02","seメカ_携帯_電話切れる02_l");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/24/000102520fjh">
『いいか、あいつらが仲間の幸せ願ってたみたいに、この世界のどっかにおまえの幸せを願ってるヤツがいる』

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102530ksr">
「オレの、幸せを――？　バカ言え――」

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/24/000102540fjh">
『じゃあな！　達者に暮らせよ！』

{
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(500);
}
//◆ＳＥ：電話が切れる
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102550ksr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE02", 1000, 0, null);


{	ClockPass(2402);}

{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102560ksr">
「――ありえねぇよ」

{
	DeleteAllSt(200,true);

	St("MR",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102570mhn">
「おぬしの過去は、確かに消えぬ。
　死に値するような悪行を、積み重ねてきた」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102580mhn">
「じゃがのう、双六よ」

{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102590mhn">
「その罪を罰するために、神がいる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102600mhn">
「その罪を許すために、わらわがいる」

{	St("ML",700, @0,@0,"bu双六a_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102610ksr">
「オレを――許す？」

{	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102620mhn">
「ああ、そうじゃ」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102630mhn">
「わらわも、おぬしを救いたい」

{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102640mhn">
「沙紅羅が願ったのと、同じようにな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102650mhn">
「過ちを直すのに、遅すぎるということはないのじゃぞ」

{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102660ksr">
「――やれやれ」

{	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102670mhn">
「のう、双六よ。例えば……の話じゃが」

{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_smile");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102680mhn">
「同じ永い命を持つ者同士――
　友達になってみるというのはどうじゃ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102690kms">
「なななな――！？」

{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102700ksr">
「――ふぅ」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102710ksr">
「あーあ、アンタ……」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102720ksr">
「やっぱり、神様だったんだな」

{	St("MR",700, @0,@0,"buミヅハノメ_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102730mhn">
「今頃気付いたか、この馬鹿者め」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);
	CreateSE("SE11","se環境_水_l");
	MusicStart("SE11",3000,550,0,1000,null,true);

	DeleteAllSt(200,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
{	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102740mhn">
「さて――と」

{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("C",700, @0,@0,"buミヅハノメ_通常_pride");
	FadeSt("C",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102750mhn">
「星よ。いつまで抱きついているつもりじゃ？」

{	DeleteAllSt(200,true);

	St("ML",700, @50,@0,"bu歌門_通常_shy");
	Shake("@StNameML/ML*", 200, 0, 8, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102760kms">
「あ……はい、すみません！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102770kms">
「ついうっとりしていました」

{	St("MR",700, @0,@0,"buミヅハノメ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102780mhn">
「うっかりじゃろ。ホレ、時間がないぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2403);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102790mhn">
「早く、最後のカゴメアソビを完成させねばな」

{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102800kms">
「最後の、カゴメアソビ？」

{	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102810kms">
「いや、でも――それをすると、ミヅハ様は――」

{	St("MR",700, @0,@0,"buミヅハノメ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102820mhn">
「またしばし、この姿には戻れぬじゃろうな」

{	St("ML",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102830kms">
「そ、そんなの、でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
{	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102840mhn">
「どうせアザナエルの解呪に失敗したのじゃ。
　また１０年、辛抱せねばならぬ」

{	St("ML",700, @0,@0,"bu歌門_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102850kms">
「でも、私まだ――」

{	St("MR",700, @0,@0,"buミヅハノメ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102860mhn">
「残念じゃが――次の機会に取っておくんじゃな」

{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_pride");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102870mhn">
「それまでは、これで我慢せい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("@StNameMR/MR*", 400, @-50, @0, Axl1, false);
	DeleteAllSt(400,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102880mhn">
「んちゅ――」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102890kms">
「ぁむ？　……ん、ん――！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102900mhn">
「むちゅ……んん……んちゅ……
　ん……んん……ちゅぅぅっ、う……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/24/000102910kms">
「ぁぅ……ん……ちゅぅ……はふぅっ、ん……
　ミヅハノメ様……ん……ちゅぅ……ちゅっ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
{	St("C",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102920ksr">
「やれやれ……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102930ksr">
「邪魔者は、退散するぜ」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@50,"buミヅハノメ_通常_hard");
	Move("@StNameMR/MR*", 300, @0, @-50, Dxl1, false);
	FadeSt("MR",300,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102940mhn">
「待たれよ、双六！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102950mhn">
「おぬしは、来んのか？」

{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102960ksr">
「オレには、会いに行く資格なんて――」

{	St("MR",700, @0,@0,"buミヅハノメ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102970mhn">
「資格など関係ない。遠慮など要らぬ。
　むしろ自分の想いに嘘をつくことを恥じよ」

{
	CreatePlainSP("ミヅハ専用立ち絵", 800);
	St("MR",700, @0,@0,"buミヅハノメ_通常_pride");
	FadeSt("MR",0,true);
	FadeDelete("ミヅハ専用立ち絵", 200, null, true);
}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000102980mhn">
「自分の信念を貫くのが、侠ってものじゃろう？」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000102990ksr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 3000, 0, null);


	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 2000, 1000, null, true);

	Delete("絵背景*");

	Wait(2000);

/*
//◆場所：半田明神_涸れ井戸_雪
	OnBG(10,"bg0606200半田明神_涸れ井戸_雪");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//※下倉注：ここから先、削り 2010/11/18

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
{	St("C",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/24/000103000buu">
「みそ！　コレで最後の一発だ！」

{	St("C",700, @0,@0,"buみそa_オラオラ_shout");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/24/000103010mso">
「おうよ！　んじゃ、行くぜ！」

{	St("C",700, @0,@0,"buみそa_オラオラ_angry");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/24/000103020mso">
「ラスト、ファイヤ――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆ＳＥ：花火ボカーン



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
{	St("C",700, @0,@0,"buブーa_通常_happy");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/24/000103030buu">
「風流……風流……」

{	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103040mhn">
「おお、みそブー、大義であった！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
{	St("C",700, @0,@0,"buミヅハノメ_通常_smile");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103050mhn">
「おぬしらの働き、実に見事であったぞ！」


{	St("C",700, @0,@0,"buみそa_通常_hard");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/24/000103060mso">
「………………？？？？」

{	St("C",700, @0,@0,"buブーa_通常_sad");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/24/000103070buu">
「………………？？？？」

{	St("C",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103080mhn">
「ん？　どうしたふたりとも？
　そんな呆気取られた目をして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
{	St("C",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/24/000103090mso">
「あれ？　おまえは――？」

{	St("C",700, @0,@0,"buミヅハノメ_通常_smile");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103100mhn">
「お……おう、そうか！
　おぬしら、わらわのこの姿を見るのは初めてじゃな」

{	St("C",700, @0,@0,"buブーa_通常_shock");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/24/000103110buu">
「え？　え？　ええええ？」

{	St("C",700, @0,@0,"st沙悟浄_通常_normal");
	FadeSt("C",200,true);}
//【沙悟浄】
<voice name="沙悟浄" class="その他男声" src="voice/24/000103120e01">
「ヒョーヒョー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
{	St("C",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/24/000103130mso">
「その河童！」

{	St("C",700, @0,@0,"st九千坊_通常_normal");
	FadeSt("C",200,true);}
//【九千坊】
<voice name="九千坊" class="その他男声" src="voice/24/000103140e02">
「ガワッガワッ！」

{	St("C",700, @0,@0,"buブーa_通常_shock");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/24/000103150buu">
「もしかしてェ――！？」

{	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103160mhn">
「うむ！　わらわの名はミヅハノメ！」

{	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103170mhn">
「ミヅハじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
{	St("C",700, @0,@0,"buみそa_通常_happy");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/24/000103180mso">
「す……すげえっ！
　一瞬でこんなに育って――！！」

{	St("C",700, @0,@0,"buブーa_通常_cry");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/24/000103190buu">
「うっ、うそだああっ！
　うわあああああああああああああん！！」

{	St("C",700, @0,@0,"buミヅハノメ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103200mhn">
「何故泣く？」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000103210fje">
「あ！　ここにいた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
{	St("C",700, @0,@0,"buミヅハノメ_通常_smile");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103220mhn">
「おお、恵那と千秋ではないか！」

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000103230kit">
「え……？
　このお姉さん、どちら様――？」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000103240fje">
「なに、鼻の下伸ばしてるのよ！
　ミヅハちゃんに決まってるじゃない！」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000103250kit">
「ミヅハ……？
　ってあの……あのミヅハ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
{	St("C",700, @0,@0,"buミヅハノメ_通常_pride");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103260mhn">
「ふふ……わらわの色香に当てられたか？」

{	St("C",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000103270kit">
「い、いやいやいや、そんなそんなそんな……」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000103280fje">
「それよりもっ！！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000103290fje">
「その格好になったなら、上手くいったってことでしょ？
　だったら、私たちも一緒に連れて行ってくれるわよね」

{	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103300mhn">
「やれやれ……
　名探偵は全て、お見通しじゃな」

{	St("C",700, @0,@0,"buミヅハノメ_通常_smile");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103310mhn">
「ではこの際――皆も誘うとするか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//※下倉注：ここまで削り 2010/11/18


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

*/



{	ClockPass(2410);}


//◆場所：泰然堂大学病院_霊安室
	OnBG(10,"bg1404100泰然堂大学病院_霊安室_通常");
	FadeBG(0,true);

	CreateSE("SE01","se人体_鼓動_l");
	MusicStart("SE01",3000,1500,0,1000,null,true);


	FadeDelete("絵黒幕", 2000, null, true);

	Wait(1000);

//◆ＥＶ："ev/ev2400カゴメアソビ6.txt" 差分Ａ
	CreateTextureEX("絵背景100", 120, -320, Middle, "cg/ev/l/ev2400カゴメアソビ6a_l.jpg");
	SetBlur("絵背景100", true, 1, 500, 200, false);
	#ev2400カゴメアソビ6a_big = true;


	MoveFTP3("@絵背景100", 10000, 6, 5);

	Fade("絵背景100", 1500, 1000, null, true);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103320skr">
「はぁ……はぁ……はぁ……はぁ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103330skr">
「う……うう……うううう……っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103340skr">
「はぁ……はぁ……はぁ……はぁ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103350skr">
「うくぅっ……く……くぅぅぅ……っ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103360skr">
「コイツを……コイツを、撃てば……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103370skr">
「マーくんは、蘇る……蘇る……はず……なのに……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103380skr">
「……………………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103390skr">
「アタシは、姉、失格で……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103400skr">
「だから……アタシ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103410skr">
「撃てないよ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 500, 0, null);

	Fade("絵背景100", 300, 0, null, true);
	MoveFTP3stop();
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103420mhn">
「そのようなことは、ないぞ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103430skr">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Wait(500);


	St("C",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("C",1000,true);



	Wait(1000);

{	ClockPass(2411);}

	DeleteAllSt(500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
{	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103440skr">
「ミヅハ……？　ミヅハなのか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103450skr">
「まさか、封印が解けて元の姿に――？
　いや、でもアザナエルは――」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103460mhn">
「うむ。アザナエルの呪いは解けておらん。
　この姿は一時的なものじゃ」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103470skr">
「それじゃなんで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103480mhn">
「おぬしの願いを叶えるため、力を解き放った」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103490skr">
「アタシのために――？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103500mhn">
「わらわがこの力を貸せば――
　おぬしのカゴメアソビは、必ず成功する」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103510skr">
「…………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103520skr">
「でも……アタシは……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103530skr">
「カゴメアソビをする、資格なんて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//	SoundPlay("@xbgm92",0,450,true);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000103540kit">
「師匠。大丈夫です！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	SoundPlay("@xbgm92",0,450,true);

	CreateTextureEX("絵背景霊安室", 100, Center, Middle, "cg/bg/bg1404100泰然堂大学病院_霊安室_通常.jpg");
	SetShade("絵背景霊安室", MIDEUM);
	Zoom("絵背景霊安室", 0, 2000, 2000, null, true);

	St("C",19010, @-300,@0,"fu千秋_気合い_shout");
	Move("絵背景霊安室", 600, @100, @0, Dxl1, false);
	Move("@StNameC/C*", 600, @200, @0, Dxl1, false);
	Fade("絵背景霊安室", 300, 1000, null, false);
	FadeSt("C",300,true);

	SoundPlay("@xbgm18",0,450,true);

	Wait(1000);

	Fade("絵背景霊安室", 300, 0, null, false);
	DeleteAllSt(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820a]
{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103550skr">
「弟子――！？」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000103560kit">
「師匠ならできます！
　どんなに無理に見えても、その木刀で真っ二つ！」

{	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/24/000103570kit">
「カッコいいところ見せて下さい！
　オレだって、あなたのおかげで男になれたんです！」

{
	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu恵那_通常_think");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000103580fje">
「全然なれてないじゃない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",19010, @300,@0,"fu恵那_通常_think");
	Move("絵背景霊安室", 0, @-100, @0, null, true);

	Move("絵背景霊安室", 600, @-100, @0, Dxl1, false);
	Move("@StNameC/C*", 600, @-200, @0, Dxl1, false);
	Fade("絵背景霊安室", 300, 1000, null, false);
	FadeSt("C",300,true);


	Wait(500);

	Fade("絵背景霊安室", 300, 0, null, false);
	DeleteAllSt(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103590skr">
「名探偵も……！？」

{
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000103600fje">
「さっきは、助けてくれてありがとう。
　あなたのおかげで、ライブも成功できたわ」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/24/000103610fje">
「名探偵富士見恵那の推理によれば――
　あなたは、こんなところで躊躇してちゃいけない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	St("C",19010, @-350,@0,"fu似鳥_背張る_normal");
	Move("絵背景霊安室", 0, @100, @0, null, true);

	Move("絵背景霊安室", 600, @100, @0, Dxl1, false);
	Move("@StNameC/C*", 600, @200, @0, Dxl1, false);
	Fade("絵背景霊安室", 300, 1000, null, false);
	FadeSt("C",300,true);


	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000103620nki">
「怖いのは、わかる。
　オレだって、怖い。怖くて怖くて逃げ出したい」

{	Fade("絵背景霊安室", 300, 0, null, false);
	DeleteAllSt(300,true);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103630skr">
「似鳥……」

{
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu似鳥_背張る_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000103640nki">
「でも――お前の言葉が、勇気をくれた。
　過去に向き合って、もう一度、やり直そうって思った」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2412);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
{	St("ML",700, @0,@0,"bu似鳥_背張る_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/24/000103650nki">
「でっかいノーコの絵、描けたんだ。
　もちろん、見に来てくれるだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	St("C",19010, @300,@0,"fuノーコb_通常_normal");
	Move("絵背景霊安室", 0, @-100, @0, null, true);

	Move("絵背景霊安室", 600, @-100, @0, Dxl1, false);
	Move("@StNameC/C*", 600, @-200, @0, Dxl1, false);
	Fade("絵背景霊安室", 300, 1000, null, false);
	FadeSt("C",300,true);


	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000103660nko">
「おねがい、みにきて」

{	Fade("絵背景霊安室", 300, 0, null, false);
	DeleteAllSt(300,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103670skr">
「ノーコ……」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000103680nko">
「アザナエルは、ねがい。
　ねがいは、ひとのいきるあかし」

{	St("MR",700, @100,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000103690nko">
「ひとは、ひとりでは、よわい。
　だから――なかまが、ひつよう」

{	St("MR",700, @100,@0,"buノーコb_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/24/000103700nko">
「みんなのおもいがあつまり――
　だから、きせきがおこる」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103710skr">
「奇跡――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorEXadd("絵色車ライト", 1500, "WHITE");

	CreateTextureEX("絵背景車", 120, 0, Middle, "cg/img/l/imgミリＰ車飛翔_l.jpg");
	Request("絵背景車", Smoothing);
	Move("絵背景車", 0, @-100, @0, null, true);
	Rotate("絵背景車", 0, @0, @0, @-10, null,true);


//◆ＳＥ：プップー！　クラクション
//◆ＳＥ：きき――っ！！
	CreateSE("SE01","seメカ_車_クラクション_l");
	CreateSE("SE02","seメカ_車_急ブレーキ");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(500);

	Fade("絵色車ライト", 300, 1000, null, true);

	Shake("絵背景車", 2000, 5, 5, 0, 0, 1000, AxlDxl, false);
	Move("絵背景車", 800, @-100, @0, Dxl1, false);
	FadeDelete("絵色車ライト", 500, null, false);
	Fade("絵背景車", 500, 1000, null, true);

	Wait(500);
//	CreatePlainSP("揺用", 2005);
	Fade("絵背景車", 500, 0, null, true);
	Delete("絵背景車");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103720skr">
「ん？　ナンダァ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","seメカ_車_ドア開ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	St("C",19010, @0,@200,"fuフウリ_通常_angry");
	Move("絵背景霊安室", 0, @100, @100, null, true);

	Move("絵背景霊安室", 600, @0, @-100, Dxl1, false);
	Move("@StNameC/C*", 600, @0, @-200, Dxl1, false);
	Fade("絵背景霊安室", 300, 1000, null, false);
	FadeSt("C",300,true);


	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000103730wfu">
「沙紅羅ちゃああああん！！」

{	Fade("絵背景霊安室", 300, 0, null, false);
	DeleteAllSt(300,true);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103740skr">
「え……？　フウリ！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103750skr">
「おまえ、ライブは――
　ってか、車！？　病院の中なのに！？」


{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000103760wfu">
「太四郎さんに頼んで抜けて来ちゃいました！
　ライブ中ですぐに戻らなきゃ、ですけど！」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000103770wfu">
「沙紅羅ちゃん！　お願いです！
　私たち、仲間を信じて！」

{	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/24/000103780wfu">
「みんなで、願いを叶えましょう！」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103790skr">
「でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
{	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103800skr">
「でも……私は……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103810skr">
「仲間みんなを、幸せにできたわけじゃ――」

{	DeleteAllSt(200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000103820ksr">
「そう。まだだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景双六", 120, Center, Middle, "cg/bu/l/st河原屋双六a_通常_normal_x09.png");
	Move("絵背景霊安室", 0, @0, @-200, null, true);

	Move("絵背景霊安室", 2300, @0, @200, AxlDxl, false);
	Move("絵背景双六", 2300, @0, @450, AxlDxl, false);
	Fade("絵背景双六", 600, 1000, null, false);
	Fade("絵背景霊安室", 600, 1000, null, true);


	Wait(1400);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103830skr">
「双六さん――」

{	Fade("絵背景双六", 400, 0, null, false);
	Fade("絵背景霊安室", 400, 0, null, true);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000103840ksr">
「はは……あんな、思わせぶりに別れたのに。
　また会っちまったな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("絵背景双六");
	Delete("絵背景霊安室");
{	ClockPass(2413);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
{	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103850skr">
「なんで――なんで、生きてる――？」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000103860ksr">
「まあ、なんていうか……
　神様が、奇跡を起こしてくれたんでな」

{
	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103870skr">
「よ……よ……」

{	St("C",19010, @0,@0,"fu沙紅羅_通常_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103880skr">
「よかった……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103890skr">
「双六さんが生きてて……本当に……」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000103900ksr">
「おおっと、喜ぶのはまだ早いぜ」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000103910ksr">
「まだ、おまえには、やり残したことがある」

{	St("C",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000103920ksr">
「おまえの心からの笑顔、見てぇんだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000103930ksr">
「失敗は、やり直せるんだろ？
　おまえはそう、啖呵を切っただろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000103940ksr">
「オレは――おまえのその心意気に、惚れたんだ」

{
	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu沙紅羅_放心_lost");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000103950skr">
「双六さん……」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000103960ksr">
「オレにも、その証拠、見せてくれよ。な？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/24/000103970ksr">
「オレにも、希望があるって、未来があるって。
　見せてくれよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm18", 10000, 300, null);



	TextBoxDelete(150);

	DeleteAllSt(400,true);

	CloudZoomSmokeSet01("スモークプロセスA",200,"cg/ef/天使の羽big.png");
	CloudZoomSmokeSet02("スモークプロセスB",200,"cg/ef/天使の羽big.png");

	CreateSE("SE01","se擬音_光り輝く01");
	MusicStart("SE01",3000,500,0,1000,null,true);


	FeatherDrop(2000);

//◆ＥＶ："ev/ev2400カゴメアソビ6.txt" 差分Ｂ

	CreateTextureEXadd("雲１", 3000, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲２", 3000, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲２０", 3000, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲３", 3000, Center, InBottom, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小４", 3000, -800, 100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小５", 3000, -600, -100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小６", 3000, -1600, 100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小７", 3000, -800, 130, "cg/ef/天使の羽big.png");

	CreateColorEXadd("絵色100", 1500, "WHITE");
	CreateColorEXadd("絵色200", 1400, "#FF88FF");

	Zoom("雲小*", 0, 500, 500, null, true);

	CloudZoomSmokeStart01(3800,250,200,2500,900,-300,576,-100,-100,Dxl1);
	CloudZoomSmokeStart02(3500,200,200,2500,900,1044,576,824,-100,Dxl1);

	Move("雲１", 0, @-800, @-200, null, true);
	Move("雲２", 0, @-800, @+100, null, true);
	Move("雲２０", 0, @-1600, @0, null, true);

	Rotate("雲３", 0, @0, @0, @-90, null,true);
	Move("雲３", 0, @-800, @+130, null, true);

	Fade("雲*", 0, 1000, null, true);

	Move("絵背景100", 4000, -300, -50, Axl2, false);

	Zoom("雲*", 4000, @1500, @1500, Axl1, false);
	Rotate("雲*", 4000, @0, @0, @1800, Axl2,false);

	Move("雲小４", 800, @+2600, @-200, Axl2, false);
	Move("雲小５", 750, @+2600, @-200, Axl2, false);
	Move("雲小６", 1000, @+2600, @-200, Axl2, false);
	Move("雲小７", 2000, @+2400, @-100, Axl2, false);

	Move("雲１", 2000, @+1600, @-100, Axl2, false);
	Move("雲２", 750, @+1600, @-100, Axl2, false);
	Move("雲３", 1500, @+1600, @-100, Axl2, false);
	Move("雲２０", 1500, @+2400, @+0, Axl2, false);


	Wait(200);

	ClockDelete(1500,false);
	ClockTime(2413);

	Fade("絵色100", 1500, 1000, null, true);
	Fade("絵色200", 0, 1000, null, true);

	CreateTextureEX("絵背景END", 10, Center, Middle, "cg/ev/l/ev2400カゴメアソビ6b_l.jpg");
	Zoom("絵背景END", 0, 1000, 1000, null, true);
	Move("絵背景END", 0, @-250, @0, null, true);
	Request("絵背景END", "Smoothing");
	Fade("絵背景END", 0, 1000, null, true);

	CreateTextureEXadd("フラッシュ100L", 150, Center, Middle, "cg/ev/l/ev2400カゴメアソビ6b_l.jpg");

	#ev2400カゴメアソビ6b_big = true;

	CreateProcess("Effectプロセス01", 15000, 0, 0, "EffectFlashLoop2");
	Request("Effectプロセス01", Start);



	Fade("絵背景100", 0, 1000, null, true);
	CreateTextureEXadd("雲１", 3000, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲２", 3000, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲２０", 3000, Center, Middle, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲３", 3000, Center, InBottom, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小４", 3000, -800, 100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小５", 3000, -600, -100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小６", 3000, -1600, 100, "cg/ef/天使の羽big.png");
	CreateTextureEXadd("雲小７", 3000, -800, 130, "cg/ef/天使の羽big.png");

/*
	Zoom("雲小４", 0, 500, 500, null, true);
	Zoom("雲小５", 0, 350, 350, null, true);
	Zoom("雲小６", 0, 600, 600, null, true);
	Zoom("雲小７", 0, 750, 750, null, true);
*/
	Move("雲１", 0, @-800, @-200, null, true);
	Move("雲２", 0, @-800, @+100, null, true);
	Move("雲２０", 0, @-1600, @+100, null, true);

	Rotate("雲３", 0, @0, @0, @-90, null,true);
	Move("雲３", 0, @-800, @+130, null, true);

	Fade("雲*", 0, 1000, null, true);

	Rotate("雲*", 6000, @0, @0, @190, Dxl1,false);
	Zoom("雲*", 6000, @-500, @-500, Dxl2, false);
	Move("絵背景100", 4000, -300, -50, Dxl1, false);

	Move("雲小４", 5500, @+1600, @-100, Dxl1, false);
	Move("雲小５", 5500, @+800, @-100, Dxl1, false);
	Move("雲小６", 5500, @+1600, @-100, Dxl1, false);
	Move("雲小７", 5500, @+2400, @+0, Dxl1, false);

	Move("雲１", 2000, @+1600, @-100, Dxl1, false);
	Move("雲２", 750, @+1600, @-100, Dxl1, false);
	Move("雲３", 1500, @+1600, @-100, Dxl1, false);
	Move("雲２０", 2500, @+2400, @+0, Dxl1, false);
	Request("雲*", Disused);


	Move("絵背景END", 4500, @400, @0, Dxl1, false);

	FadeDelete("雲小*", 4500, null,false);
	FadeDelete("絵色200", 4000, null,false);
	FadeDelete("絵色100", 1000, null,true);
	Wait(1500);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103980mhn">
「人の力では届かぬ願い」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000103990mhn">
「それを叶えるのが、神様の役目じゃ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000104000skr">
「ミヅハ……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000104010mhn">
「沙紅羅」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000104020mhn">
「信じるのじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/24/000104030mhn">
「友達、じゃろう？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000104040skr">
「…………ああ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000104050skr">
「みんな……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000104060skr">
「ありがとな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	CreateTextureEX("絵背景100", 11, Center, Middle, "cg/ev/ev2400カゴメアソビ6b.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 1200, 1200, null, true);

	Wait(300);

	SetVolumeEX("SE*", 5000, 0, null);

	Zoom("絵背景100", 4000, 1000, 1000, null, false);
	Fade("絵背景100", 4000, 1000, null, true);

	Wait(1000);


	SetVolumeEX("@xbgm18", 10000, 150, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000104070skr">
（そう――）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000104080skr">
（ひとりじゃないから、前に進める）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000104090skr">
（やり直すのに……遅いってことは、ない）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000104100skr">
（アタシの道は、希望に満ちてる）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000104110skr">
（きっと、未来に続いてるんだ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/24/000104120skr">
（……だよな、神様？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：カゴメアソビ、成功
//あきゅん「演出：とにかく派手に美しい演出で頼む」
//おがみ：β要演出箇所：優先度Ａ　ここ一帯すべてクオリティアップ

	SetVolumeEX("@xbgm*", 5000, 0, null);

	CreateColorEXadd("絵色100", 20000, "WHITE");
	Fade("絵色100", 5000, 1000, null, true);

	CloudZoomSmokeDelete02(0);
	CloudZoomSmokeDelete01(0);

//あきゅん「演出：最後に成功の音を入れるかかなり悩んだが、あえてやめた2010/12/12」
//	CreateSE("SEP01","se擬音_カゴメアソビ成功");
//	CreateSE("SEP02","se擬音_羽が舞う");
//	MusicStart("SEP01",0,900,0,1000,null,false);
//	MusicStart("SEP02",0,800,0,1000,null,false);
//	Wait(2000);
//	SetVolumeEX("SEP*", 3000, 0, null);

	Wait(3000);

	FeatherDropDelete(0);



	EndScene();
}
