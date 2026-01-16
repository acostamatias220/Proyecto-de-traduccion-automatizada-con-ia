
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1840沙紅羅.nss_MAIN
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
	$GameName = "1850沙紅羅.nss";

}

scene 1840沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="720">
////////////header////////////
//file name "1840沙紅羅.nss"
//title "だらしねぇな"
//previous "1810沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "1850沙紅羅.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1840);}

	CreateTextureEX("絵背景スクロール１", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg02.jpg");
	CreateTextureEX("絵背景スクロール２", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg02.jpg");

	CreateTextureSP("絵背景ライダー", 102, center, middle, "cg/ev/ex/ev0000沙紅羅原付ライダーa_ex01.png");
	Request("絵背景ライダー", Smoothing);
	Move("絵背景ライダー", 0, -442, -800, Dxl1, false);
	Zoom("絵背景ライダー", 0, 1200, 1200, null, true);
//	SetBlur("絵背景ライダー", true, 2, 300, 80, false);

	CreateSE("SE10","seメカ_バイク_走行_l");
	MusicStart("SE10",2500,1300,0,1500,null,true);
	SetFrequency("SE10", 10000, 1500, AxlDxl);

	MoveFTP3("@絵背景ライダー", 2000, 6, 4);

	CloudZoomSet(4000);
	CloudZoomStart(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1000,@0,null,false);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,@3500,@0);



	FadeDelete("上背景", 1000, null, true);


	SetVolumeEX("SE10", 2000, 500, null);


	Wait(1000);



//◆演出指示：前半、ＥＶで誤魔化す

//嶋：ＦＩＸくるまで調整しないぞぉ！！
//	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev0000沙紅羅原付ライダーa.jpg");
//	Fade("絵背景100", 300, 1000, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100010skr">
「疲れた……ブラパンしつこすぎだろ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100020skr">
「あー、耳痛い……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100030skr">
「でもまあ、そろそろ秋葉原――だな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100040skr">
「絶対、とーじんぼーを手に入れてやるぜ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100050skr">
「…………あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100060skr">
「とーじんぼー……だったっけ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100070skr">
「なんか、違ったような。
　とーじんぼー、とーじんぼー……あれ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100080skr">
「出てこねーぞ。確か……
　ええと、とー、どう……どー……どーじん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1841);}

//窓準備
	CreateWindow("絵窓", 15000, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 15200, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 19100, center, middle, "cg/bu/bu沙紅羅_通常_surprise.png");
	Move("絵窓/絵演立絵", 0, @0, @0, null, true);

	CreateTextureEX("絵背景枠01", 19200, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 19200, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

	CutInLine02("@絵背景枠*");


//◆ＳＥ：救急車
//◆ＳＥ：クラクションプップー！
	TextBoxDelete(150);
	SetVolumeEX("SE10", 1000, 300, null);
	CreateSE("SE01","seメカ_車_救急車サイレン_l");
	CreateSE("SE02","seメカ_車_クラクション_l");
	MusicStart("SE01",2000,1200,0,1000,null,true);

	Wait(1500);
	MusicStart("SE02",0,1200,0,1000,null,false);

	Wait(500);


//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100090skr">
「え！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 500, 0, null);

	CreateColorEX("絵色100", 25000, "Black");
	Fade("絵色100", 200, 1000, null, true);

	Move("絵背景枠01", 0, @0, 262, null, false);
	Move("絵背景枠02", 0, @0, 262, null, false);
	Zoom("絵窓", 0, 1000, 0, null, true);
	Fade("絵背景枠*", 0, 0, null, true);
	Delete("絵窓*");
	CutInLineStop02();
	Delete("絵背景枠*");


	CloudZoomDelete(0,true);
	SCR1stop();
	MoveFTP3stop();
	Delete("絵背景*");

//	Delete("絵背景100");
//◆ＳＥ：急ブレーキ

//◆演出指示：時間が少し戻る

//嶋：衝突用前定義
	CreateWindow("win01", 1500, 256, 0, 512, 576, false);
	SetAlias("win01","win01");
	Zoom("win01", 0, 0, 1000, null, true);

	CreateTextureEX("win01/絵背景100", 900, Center, InBottom, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEX("win01/絵st1000", 1000, 336, 166, "cg/bu/bu沙紅羅_通常_angry.png");
	Zoom("win01/絵st1000", 0, 1500, 1500, null, true);
	Request("win01/絵st1000", Smoothing);
	CreateMovie("win01/絵M1000", 1100, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Fade("win01/絵M1000", 0, 0, null, true);
	SetAlias("win01/絵M1000","win01/絵M1000");
	Zoom("win01/絵M1000", 0, 2000, 2500, null, true);

//◆場所：泰然堂大学病院_正面
	OnBG(10,"bg1401100泰然堂大学病院_正面_通常");
	FadeBG(0,true);
	Fade("絵色100", 1000, 0, null, true);

	SoundPlay("@xbgm04",0,450,true);

	Wait(500);

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100100jbr">
「バリーさん、身体ダイジョブデスカ？」

{	St("MR",700, @0,@50,"buバリー_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/18/400100110e03">
「歪みねぇよ」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100120jbr">
「ホントにホントにダイジョブデスカ？
　双一オヤビン守れマスカ？　ボディーガードＯＫ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buバリー_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/18/400100130e03">
「大丈夫いける！　いける！」

{	St("ML",700, @0,@0,"buジャブル_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100140jbr">
「……心配デスネ」

//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100150jbr">
「テレビを隠れ蓑に呼んだはいいけど……
　特殊訓練受けたってホントデスカ？」

{	St("MR",700, @0,@0,"buバリー_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/18/400100160e03">
「ホントホント！　コレ、証拠の品！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「素材：objノートＰＣ」

	DeleteAllSt(200,true);


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objノートＰＣ.png");
	Move("絵背景100", 0, @0, @100, null, true);

	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景100", 500, @0, @-100, Dxl2, false);
	Fade("絵背景100", 500, 1000, null, true);

	WaitKey(2000);

	Move("絵背景100", 500, @0, @100, Axl2, false);
	Fade("絵背景100", 500, 0, null, true);

	St("MR",700, @0,@0,"buバリー_通常_happy");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/18/400100170e03">
「ちゃんとレイアンシツ？　から取ってきた！」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100180jbr">
「……ワカリマシタ。信じるデス」

{	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100190jbr">
「その代わり、セクハラ禁止デスネ。
　レイヤーにやられて入院なんて、だらしない」

{	St("MR",700, @0,@0,"buバリー_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/18/400100200e03">
「仕方ないね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1842);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/18/400100210e03">
「あのドロップキック、本物のレスリング」

{	St("MR",700, @0,@0,"buバリー_通常_happy");
	FadeSt("MR",200,true);}
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/18/400100220e03">
「オレ惚れた。今度是非あったら求婚！
　一生ついていく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆演出指示：遠くから徐々に近づく救急車の音
	CreateSE("SE01","seメカ_車_救急車サイレン_l");
	MusicStart("SE01",4000,500,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/18/400100230e03">
「けど、もう大丈夫。あれは不意打ち。
　これからは違う」

//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/18/400100240e03">
「どんな危険が襲ってきても、双一オヤブンを守る――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//◆ＳＥ：クラクションプップー！
	SetVolumeEX("@xbgm*", 100, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	DeleteAllSt(200,true);

	CreateTextureEX("絵マスク左枠", 1000, center, middle, "cg/mask/ci縦ライン_00_00z.png");
	Zoom("絵マスク左枠", 0, 0, 1500, null, false);
	Request("絵マスク左枠", Smoothing);

	CreateSE("SE01","seメカ_車_クラクション_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("win01/絵st*", 0, 4, 42, null, true);

	Fade("絵マスク左枠", 0, 1000, null, true);
	Shake("win01/絵st*", 10000, 0, 1, 0, 0, 1000, null, false);
	Fade("win01/絵*", 300, 1000, null, false);
	DrawTransition("win01/絵*", 200, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", false);
	Zoom("絵マスク左枠", 300, 1500, 1500, Dxl1, false);
	Zoom("win01", 300, 1000, 1000, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100250skr">
「退け退け退け――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：急ブレーキ

	CreateSE("SE02","seメカ_バイク_急停止");
	MusicStart("SE02",0,700,0,1000,null,false);
	FadeDelete("絵マスク左枠", 200, null, false);
	Fade("win01/絵*", 300, 0, null, false);

	Wait(300);
	DrawTransition("win01/絵*", 300, 1000, 0, 100, Dxl1, "cg/data/slide_06_00_1.png", true);
	St("C",700, @0,@0,"buバリー_通常_pain");
	Shake("@StNameC/C*", 200, 10, 20, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【バリー・ヘリントン】
<voice name="バリー・ヘリントン" class="バリー・ヘリントン" src="voice/18/400100260e03">
「ＯＨ！　ＮＯＯＯＯＯＯＯ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	CreateSE("SE01","se戦闘_破壊01");
	CreateSE("SE01a","se戦闘_破壊03");
	CreateSE("SE03","se擬音_ライト倒れる");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("フラッシュ白",30,1000,null,true);
	Shake("@StNameC/C*", 400, 10, 20, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 400, @-1000, @0, Dxl1, false);
	Fade("フラッシュ白",300,0,null,true);
	MusicStart("SE03",0,700,0,1000,null,false);
	Delete("フラッシュ白");


	MusicStart("SE01a",0,700,0,1000,null,false);
	CreatePlainSP("揺用", 2005);
	Shake("揺用", 1000, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1000, 0, null, true);
	Delete("揺用");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0076]
　救急車を避けたバイクが、ハンドルを切り損ね、バリーの身体を吹き飛ばした。

{
	DeleteAllSt(0,true);
	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100270jbr">
「……やっぱりバリー、使えないデスネ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}

	SoundPlay("@xbgm03",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100280skr">
「げ、ヤベ！　今誰か轢いちまった――」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100290jbr">
「気にしないでいいデスネ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100300skr">
「え？　あ、インド人！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100310skr">
「えーと、へロー！　インド人！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100320skr">
「アイアムグッドウーマン！
　アイムソーリー、ヒクキ、ナカッタ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100330jbr">
「気にしなくてダイジョブデスネ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100340skr">
「ＯＨ！　ジャパン語ＯＫ？」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100350jbr">
「ＯＫデスネ。あいつ役立たず。
　しばらく入院しててもらうデス」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100360skr">
「ナイスインド人！　ホントにいいのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100370jbr">
「インド人嘘つかないデスネ」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100380skr">
「そ、そうか。そりゃありがてー！
　インド人いい人だな！」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100390jbr">
「いやあ、それほどでも……」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100400skr">
「またまた、謙遜しちゃって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1843);}

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100410skr">
「ハッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100420skr">
（待ちに待った運命の人って、まさか……！？）

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100430skr">
「あの……お名前、聞いて良いすか？」

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100440jbr">
「ワタシ？　ジャブル言いマスネ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100450skr">
「近くに住んでるんすか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100460jbr">
「秋葉原で、パソコン関係の仕事してマスネ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	SetVolumeEX("@xbgm*", 500, 0, null);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100470skr">
「だからさっきパソコンを持ってあああああッ！！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100480skr">
「なななな！　なんだそのパソコン！」

{	St("ML",700, @0,@0,"buジャブル_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100490jbr">
「へ？　あ、えと、コレは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	St("MR",700, @0,@0,"bu沙紅羅_通常_angry");
//	DeleteAllSt(200,false);
//	FadeSt("MR",200,true);

	DeleteAllSt(200,true);


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objノートＰＣ.png");
	Request("絵背景100", Smoothing);

//	Move("絵背景100", 0, @0, @100, null, true);

	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Move("絵背景100", 500, @0, @-100, Dxl2, false);
	Fade("絵背景100", 200, 1000, null, false);
	Zoom("絵背景100", 200, 1300, 1300, Dxl2, true);

	WaitKey(500);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100500skr">
「パンツ丸出しじゃねぇかッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Zoom("絵背景100", 200, 1000, 1000, Axl2, false);
	Fade("絵背景100", 200, 0, null, true);

	SoundPlay("@xbgm07_noint",0,450,true);


{	St("MR",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("MR",200,true);}

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	SetBlur("絵背景100", true, 3, 500, 50, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100510skr">
「そんなエッチいモン持ち歩いて――許さん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：木刀ブオン！
	CreateSE("SE01","se戦闘_風切り音05");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);
	Zoom("絵背景100", 200, 1000, 1000, Dxl1, false);
	Fade("絵背景100", 200, 1000, Dxl1, true);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	St("ML",700, @0,@50,"buジャブル_通常_pinch");
	Shake("@StNameML/ML*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",0,true);
	Delete("絵背景100");
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130a]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100520jbr">
「ぬはっ！　ちょ！　待て下サーイ！
　このパソコンは大切な――ぬはっ！」

{	St("MR",700, @0,@0,"bu沙紅羅_木刀_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100530skr">
「ヘンタイパソコン！　許すまじ！　天――――誅！！」

//◆ＳＥ：木刀ブオン！
{
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"buジャブル_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100540jbr">
「ゴメンナサイゴメンナサイ！　許してー！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateSE("SE01","se戦闘_風切り音複数_l");
	MusicStart("SE01",0,700,0,1000,null,false);


	Shake("@StNameML/ML*", 200, 0, 6, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @-200, @0, Axl1, false);
	DeleteAllSt(200,true);

	Wait(1000);
	SetVolumeEX("SE*", 300, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　インド人は振り下ろされる木刀から逃げながら、なんとかノートパソコンをバッグにしまう。

{	St("ML",700, @-50,@50,"buジャブル_通常_shock");
	Move("@StNameML/ML*", 200, @50, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100550jbr">
「しまいましたデスネ！　ネ？
　わかりますネ？　ダイジョブネ？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100560skr">
「はぁッ、はぁッ、はぁッ……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100570skr">
「ったく、コレだから都会は！　乱れる風俗！」

{	St("ML",700, @0,@0,"buジャブル_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100580jbr">
「ホントにスミマセンデス……
　ニホンのコトあんまりよくワカラナイ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1844);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100590skr">
「まあ、コッカカカンモンダイだから、今回は許すけど。
　二度とそういうことはしないように！」

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100600jbr">
「ワカリマシタ。気をつけルデスネ！」

{	St("ML",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("ML",200,true);}
//◆音声指示：小声
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100610jbr">
「全く……ホントにこんな潔癖ショーだとは……」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100620skr">
「ん？　なんか言ったか？　味塩コショー？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100630jbr">
「な、なんでもないデスネ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100640skr">
「ん、そか。……あ、ところで秋葉原ってどっち？」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100650jbr">
「あっちデスネ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100660skr">
「おう、サンキューインド人！　じゃあな！」

{	St("ML",700, @0,@0,"buジャブル_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100670jbr">
「ハァい！　沙紅羅さんも、お気をつけて！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateSE("SE02","seメカ_バイク_エンジン始動");
	MusicStart("SE02",0,700,0,1000,null,false);


	Wait(1500);
	Wait(500);
	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);
	WaitKey(1500);


//◆演出指示：見送るインド人

{	St("C",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100680jbr">
「ふぅ……」

{	St("C",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/18/400100690jbr">
「パソコン無事で、良かったデスネ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指示：バイクに戻る
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");
	MoveFFP1("@絵演背景",50);

	CreateTextureSPover("道線", 110, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	TurboBlur("@道線");

	Zoom("絵演背景", 0, 2000, 2000, null, true);

	CreateSE("SEL01","seメカ_バイク_走行_l");
	MusicStart("SEL01",2000,700,0,1500,null,true);

	WaitKey(2000);

	SetFrequency("SEL01", 3000, 1300, AxlDxl);
	//FadeDelete("上背景", 0, null, true);
	DrawDelete("黒幕１", 200, 100, Dxl1, "zzex_circle_01_00_1", false);
	Zoom("絵演背景", 200, 1100, 1100, Dxl1, true);


{	ClockPass(1845);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100700skr">
（病院……か）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100710skr">
（……もう少し、待っててくれよ）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/18/400100720skr">
（とーじんぼー手に入れて、今、届けてやるからな！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetFrequency("SEL01", 2500, 3000, AxlDxl);

	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/zzex_circle_01_00_0.png", true);

	MoveFFP1stop();
	Request("ProTurboBlur", Stop);
	Delete("Pro*");
	Delete("絵演*");
	Delete("道線");

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(3000);


	EndScene();

}
