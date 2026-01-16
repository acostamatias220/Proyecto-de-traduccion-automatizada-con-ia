
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2340恵那.nss_MAIN
{
//■エンディングチェック
	if(#RouteName=="c"){
		Ending_IsChaeck("c");
	}else if(#RouteName=="d"){
		Ending_IsChaeck("d");
	}

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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	if(#RouteName=="c"){
		$GameName="c2341沙紅羅_フウリ.nss";//★エンディング中（c）
	}else if(#RouteName=="d"){
		$GameName="d2341ノーコ.nss";//★エンディング中（d）
	}
}

//★inc櫻井　上記記述方法、質問返答待ち
//★inc櫻井　追記　ニトロプラス様より、最終調整のため手を加えないようにとのこと

scene c2340恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="870">
////////////header////////////
//file name "c2340恵那.nss"
//title ""
//previous "c2310沙紅羅_フウリ.nss"
//previous "c2310似鳥.nss"

//previous "2310恵那.nss"
//previous "2310似鳥.nss"

//previous "d2310沙紅羅.nss"
//previous "d2311ノーコ.nss"

////////////footer////////////
//next （flkagome3=false） "c2341沙紅羅_フウリ.nss"
//next （flkagome4=false） "d2341ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2334);}

//◆場所：籠_内部
	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);

	CreatePlainSP("揺用", 50);

	Wait(500);

	if($PreGameName=="c2310沙紅羅_フウリ.nss"||$PreGameName=="c2310似鳥.nss")||$PreGameName=="2310恵那.nss")||$PreGameName=="2310似鳥.nss")||$PreGameName=="d2310沙紅羅.nss")||$PreGameName=="d2311ノーコ.nss"){
	FadeDelete("上背景", 2000, null, true);
	}else{
	CreateColorSP("絵色黒", 20000, "#000000");
	FadeDelete("上背景", 0, null, true);

	TakeRatePic();//あきゅん「演出：スクリーン希望箇所」

	FadeDelete("絵色黒", 2000, null, true);
	}


//あきゅん「修正指示：双六の歌をＢＧＭでおぼろにするなんてもったいない、雰囲気重視で」
//★inc櫻井　修正

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100010ksr">
「かごめかごめ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100020ksr">
「かごのなかのとりは」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100030ksr">
「いついつでやる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100040ksr">
「よあけのばんに」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100050ksr">
「つるとかめがすべった」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100060ksr">
「うしろのしょうめん――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：バタン！　扉開く

	SetVolume("@xbgm*", 1000, 0, null);

	CreateSE("扉開ける", "se動作_ドア開ける05");
	MusicStart("扉開ける", 0, 700, 0, 1000, null, false);

	Wait(500);

{	St("ML",700, @-100,@0,"bu平次_通常_hard");
	FadeSt("ML",200,false);
	Move("@StNameML/ML*", 200, @100, @0, Dxl2, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100070fjh">
「オレだ」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/c23/400100080ujr">
「わうわうわうっ！！」

{	SoundPlay("@xbgm21", 0, 450, true);

	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100090ksr">
「よう。待ったぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100100ksr">
「脚を引きずって、大変だったろ？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100110fjh">
「恵那を、返せ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100120ksr">
「恵那？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_shout");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100130fjh">
「とぼけんな。オレの娘だ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100140ksr">
「ああ、アイツか。アイツなら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteSt("MR",200,true);
	St("MR",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100150ksr">
「ほら、そこ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100160fjh">
「――――」

{	St("ML",700, @0,@0,"bu平次_落ち込み_shock");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100170fjh">
「あ――あ――ああ――あ――！！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100180ksr">
「見えるだろ、ホラ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100190fjh">
「――――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100200ksr">
「頭から血、流して――」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu平次_通常_shout");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100210fjh">
「――――黙れ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("@xbgm*", 1000, 0, null);

	DeleteSt("ML",200,true);
	CreateSE("構え", "se銃_構える");
	MusicStart("構え", 0, 700, 0, 1000, null,false);

//★ inc遠藤 ここ、動作確認したのか疑問
// 双六の背景位置が間違っていないか
//もうちょっと格好いい立ち位置はないのか

//★ inc櫻井　フェードデリートするときに双六の体が浮き出てしまうので、違う方法にしました。

//あきゅん「修正指示：双六立ち位置修正」
//あきゅん「修正指示：二人の背景の色見を変え、しょってるものが違うのに一緒は微妙」

//★ inc櫻井 修正

//窓1
	CreateWindow("絵窓", 1500, 50, 0, 300, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓/絵演背景", 1550, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateColorSPmul("絵窓/色", 1600, #000033);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1600, @-250, middle, "cg/bu/bu平次_通常_hard.png");
	CreateTextureEX("絵窓/絵演立絵02", 1600, @-250, middle, "cg/bu/bu平次_通常_cool.png");
	CreateTextureEX("絵窓/絵演立絵03", 1600, @-250, middle, "cg/bu/bu平次_通常_shout.png");

//窓2
	CreateWindow("絵窓02", 1500, 670, 0, 300, 600, false);
	SetAlias("絵窓02","絵窓02");
	Zoom("絵窓02", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓02/絵演背景", 1550, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateColorSPmul("絵窓02/色", 1600, #330000);

//キャラ準備
	CreateTextureEX("絵窓02/絵演立絵", 1600, @510, middle, "cg/bu/bu双六a_通常_hard.png");
	CreateTextureEX("絵窓02/絵演立絵02", 1600, @510, middle, "cg/bu/bu双六a_通常_pride.png");

//動作
	CreateTextureEX("ライン", 2000, @810, @0, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("ライン02", 2000, @810, @0, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("ライン03", 2000, @190, @0, "cg/mask/ciウィンドウ縦02.png");
	CreateTextureEX("ライン04", 2000, @190, @0, "cg/mask/ciウィンドウ縦02.png");

	Fade("ライン", 200, 1000, null, false);
	Fade("ライン02", 200, 1000, null, false);
	Move("ライン", 200, @-150, @0, Dxl2, false);
	Move("ライン02", 200, @150, @0, Dxl2, false);


	Zoom("絵窓02", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓02/絵演立絵", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100220ksr">
「ナンダァ？　腰抜けのクセして」

{	FadeDelete("絵窓02/絵演立絵",300,Axl2,false);
	Fade("絵窓02/絵演立絵02", 200, 1000, null, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100230ksr">
「オレを、撃てんのか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100240ksr">
「おまえ、あの時は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2335);}

//	TextBoxDelete(150);

//あきゅん「修正指示：ラインの動作が美しくないので調整」
//★ inc櫻井　修正

{	Fade("ライン03", 200, 1000, null, false);
	Fade("ライン04", 200, 1000, null, false);
	Move("ライン03", 200, @-150, @0, Dxl2, false);
	Move("ライン04", 200, @150, @0, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100250fjh">
「……あの時とは、違う」

{	Fade("絵窓/絵演立絵02", 200, 1000, null, true);
	FadeDelete("絵窓/絵演立絵",0,Axl2,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100260fjh">
「オレには……今、一番大事なものが何か、わかる」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100270fjh">
「そいつを奪った外道に……」

{	FadeDelete("絵窓/絵演立絵02",300,Axl2,false);
	Fade("絵窓/絵演立絵03", 200, 1000, null, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100280fjh">
「容赦はしねぇんだよッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：銃声


	TextBoxDelete(150);

	Move("ライン", 200, @150, @0, null, false);
	Move("ライン02", 200, @-150, @0, null, false);
	Move("ライン03", 200, @150, @0, null, false);
	Move("ライン04", 200, @-160, @0, null, false);
	FadeDelete("ライン*",300,null,false);

	Zoom("絵窓", 200, 0, 1000, Dxl2, false);
	Zoom("絵窓02", 200, 0, 1000, Dxl2, true);
	Delete("絵窓*");

	CreateSE("銃声02", "se銃_銃声01");
	MusicStart("銃声02", 0, 700, 0, 1000, null,false);

	Wait(500);

	Shake("揺用", 100, 15, 4, 0, 0, 300, null, false);

	CreateTextureSPadd("ライト", 15000, @0, @0, "cg/data/circle_13_00_1.png");
	FadeDelete("ライト", 500, null, true);

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100290ksr">
「な……んだと……？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100300ksr">
「普通の……弾で？」

//あきゅん「修正指示：倒れたならＳＥ」
//★inc櫻井　修正
{	Move("@StNameC/C*", 600, @0, @+100, Axl2, false);
	DeleteSt("C",400,true);
	CreateSE("SE", "se人体_倒れる01");
	MusicStart("SE", 0, 700, 0, 1000, null,false);
	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100310fjh">
「てめぇの夢なんて……叶えて……やんねぇよッ！」

{	Move("@StNameML/ML*", 1000, @150, @0, Dxl2, false);
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,600,null,false);
	DeleteSt("ML",600,false);}
　平次は、脚を引きずり、倒れた双六に近づくと――

{	CreateSE("構え", "se銃_構える");
	MusicStart("構え", 0, 700, 0, 1000, null,false);}
　ニューナンブを、突きつけた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//あきゅん「修正指示：マスク処理などでお互いに顔を出す」
//★inc櫻井 修正
//嶋：さらに修正

//窓1
//	CreateWindow("絵窓", 1500, 50, 0, 300, 600, false);
//	SetAlias("絵窓","絵窓");
//	Zoom("絵窓", 0, 0, 1000, null, true);
//	CreateTextureSP("絵窓/絵演背景", 1550, Center, Middle, "cg/bg/l/bg0802100籠_内部_通常_l.jpg");
//キャラ準備
//	CreateTextureEX("絵窓/絵演立絵", 1600, @-250, middle, "cg/bu/bu平次_通常_cool.png");
//窓2
//	CreateWindow("絵窓02", 1500, 670, 0, 300, 600, false);
//	SetAlias("絵窓02","絵窓02");
//	Zoom("絵窓02", 0, 0, 1000, null, true);
//	CreateTextureSP("絵窓02/絵演背景", 1550, Center, @-300, "cg/bg/l/bg0802100籠_内部_通常_l.jpg");
//キャラ準備
//★inc櫻井　インクルード内リテイク　双六の顔がウィンドウの真ん中に来るように
//	CreateTextureEX("絵窓02/絵演立絵", 1600, @510, @120, "cg/bu/bu双六a_通常_pride.png");
//動作
//	CreateTextureEX("ライン03", 2000, @190, @0, "cg/mask/ciウィンドウ縦02.png");
//	CreateTextureEX("ライン04", 2000, @190, @0, "cg/mask/ciウィンドウ縦02.png");
//	Fade("ライン03", 200, 1000, null, false);
//	Fade("ライン04", 200, 1000, null, false);
//	Move("ライン03", 200, @-150, @0, Dxl2, false);
//	Move("ライン04", 200, @150, @0, Dxl2, false);
//	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
//	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//マスク準備
	CreateTextureEX("絵マスク枠", 1610, 0, 0, "cg/mask/ciスラッシュ_00_00z.png");
	CreateMask("絵マスク左", 1000, 0, 0, "cg/mask/ciスラッシュ_00_01.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 1520, 0, -280, "cg/bg/bg0802100籠_内部_通常.jpg");
	Zoom("絵マスク左/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵マスク左/絵演背景", MEDIUM);

//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 1530, center, middle, "cg/bu/l/bu双六a_通常_shock_x01.png");
	CreateTextureEX("絵マスク左/絵演立絵2", 1530, 272, -10, "cg/bu/l/bu双六a_通常_sad_x01.png");
	CreateTextureEX("絵マスク左/絵演立絵3", 1530, 272, -10, "cg/bu/l/bu双六a_通常_hard_x01.png");
	CreateTextureEX("絵マスク左/絵演立絵4", 1530, 272, -10, "cg/bu/l/bu双六a_通常_normal_x01.png");


//セカンド
	CreateTextureEX("絵st100", 1001, -435, -132, "cg/bu/l/bu平次_通常_cool_x01.png");
	CreateTextureEX("絵st200", 1001, -405, -132, "cg/bu/l/bu平次_通常_hard_x01.png");
	CreateTextureEX("絵背景100", 1000, 176, -161, "cg/bg/bg0802100籠_内部_通常.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", MEDIUM);

//動作準備
	Move("絵マスク左", 0, 1024, 0, null, true);
	Move("絵マスク左/絵演立絵", 0, 302, -10, null, true);
	Move("絵マスク枠", 0, 1024, 200, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);

//イン動作
	Move("絵マスク枠", 500, 0, 0, Dxl3, false);
	Move("絵マスク左", 500, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 500, 1000, null, false);
	Move("絵マスク左/絵演立絵", 500, 272, -10, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100320ksr">
「そんな、でも……もう一発撃てるって……双一は……」

{	Fade("絵背景100", 300, 1000, null, true);
	Move("絵st100", 300, -405, @0, null, false);
	Fade("絵st100", 300, 1000, null, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100330fjh">
「双一？　誰のことだ？」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100340fjh">
「河原屋双一は、もういない。そうだろう？」

{
//	CreateTextureEX("ライン", 2000, @810, @0, "cg/mask/ciウィンドウ縦02.png");
//	CreateTextureEX("ライン02", 2000, @810, @0, "cg/mask/ciウィンドウ縦02.png");
//	Fade("ライン", 200, 1000, null, false);
//	Fade("ライン02", 200, 1000, null, false);
//	Move("ライン", 200, @-150, @0, Dxl2, false);
//	Move("ライン02", 200, @150, @0, Dxl2, false);
//	Zoom("絵窓02", 200, 1000, 1000, Dxl2, false);
//	Fade("絵窓02/絵演立絵", 200, 1000, null, true);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, true);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, true);
}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100350ksr">
「はっ！　そうか……そういうことか……」

{	Fade("絵マスク左/絵演立絵3", 200, 1000, null, true);
	Fade("絵マスク左/絵演立絵2", 0, 0, null, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100360ksr">
「アイツが……オレを裏切ったんだな」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100370ksr">
「最初からコレを狙って……
　それで、組を乗っ取ろうと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵st200", 300, 1000, null, true);
	Fade("絵st100", 0, 0, null, false);

//	CreateTextureEX("絵窓/絵演立絵02", 1600, @-250, middle, "cg/bu/bu平次_通常_hard.png");
//	FadeDelete("絵窓/絵演立絵",300,Axl2,false);
//	Fade("絵窓/絵演立絵02",200,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100380fjh">
「何を言ってるか知らねぇが、手遅れだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100390ksr">
「そうか……そういうことか……
　オレには、お似合いの最期……か」

{	Fade("絵マスク左/絵演立絵4", 200, 1000, null, true);
	Fade("絵マスク左/絵演立絵3", 0, 0, null, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/c23/400100400ksr">
「頼むぜ……平次……最後の願いだ……
　オレに……ふさわしい罰を……与えてくれ……」

{	Move("絵背景100", 600, 0, @0, Dxl1, false);
	Move("絵st200", 600, -149, -131, Dxl1, false);
	Move("絵マスク左", 500, 1024, 0, null, false);
	Move("絵マスク枠", 500, 1024, 200, null, false);
	Fade("絵マスク枠", 300, 0, null, true);
	Fade("絵マスク左/絵*", 0, 0, null, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100410fjh">
「永遠に……地獄で苦しみな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	Move("ライン", 200, @150, @0, null, false);
//	Move("ライン02", 200, @-160, @0, null, false);
//	Move("ライン03", 200, @150, @0, null, false);
//	Move("ライン04", 200, @-160, @0, null, false);
//	FadeDelete("ライン*",300,null,false);

//	Zoom("絵窓", 200, 0, 1000, Dxl2, false);
//	Zoom("絵窓02", 200, 0, 1000, Dxl2, true);
//	Delete("絵窓*");


//◆ＳＥ：銃声×４

//あきゅん「修正指示：テンポ悪いのでもっと軽快に、後迫力強化のために画面揺らすなどいれる」
//★inc櫻井　修正

	CreatePlainSP("一瞬", 3000);

	Delete("絵マスク左/絵*");
	Delete("絵マスク左");
	Delete("絵マスク枠");
	Delete("絵st100");
	Delete("絵st200");
	Delete("絵背景100");

	FadeDelete("一瞬", 300, null, true);

	CreateSE("銃声02", "se銃_銃声01");
	MusicStart("銃声02", 0, 700, 0, 1500, null,false);
	Wait(100);

	SetBlur("揺用", true, 3, 500, 50, false);

	Shake("揺用", 100, 15, 4, 0, 0, 300, null, false);
//	SetVolume("銃声02", 500, 0, null);
	CreateTextureSPadd("ライト", 15000, @0, @0, "cg/data/circle_13_00_1.png");
	FadeDelete("ライト", 300, null, true);


	CreateSE("銃声03", "se銃_銃声01");
	MusicStart("銃声03", 0, 700, 0, 1500, null,false);
	Wait(100);

	Shake("揺用", 100, 15, 4, 0, 0, 300, null, false);
//	SetVolume("銃声03", 500, 0, null);
	CreateTextureSPadd("ライト", 15000, @0, @0, "cg/data/circle_13_00_1.png");
	FadeDelete("ライト", 300, null, true);


	CreateSE("銃声04", "se銃_銃声01");
	MusicStart("銃声04", 0, 700, 0, 1500, null,false);
	Wait(100);

	Shake("揺用", 100, 15, 4, 0, 0, 300, null, false);
//	SetVolume("銃声04", 500, 0, null);
	CreateTextureSPadd("ライト", 15000, @0, @0, "cg/data/circle_13_00_1.png");
	FadeDelete("ライト", 300, null, true);

	CreateSE("銃声05", "se銃_銃声01");
	MusicStart("銃声05", 0, 700, 0, 1500, null,false);

	Wait(100);

	Shake("揺用", 100, 15, 4, 0, 0, 300, null, false);
//	SetVolume("銃声05", 500, 0, null);
	CreateTextureSPadd("ライト", 15000, @0, @0, "cg/data/circle_13_00_1.png");
	FadeDelete("ライト", 300, null, true);
	Delete("揺用");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　平次の銃が、更に火を噴く。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2336);}


	TextBoxDelete(150);

	CreateTextureEX("双六死体", 2000, @0, @0, "cg/img/img双六死に手.jpg");
	Fade("双六死体", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　双六の身体が、動かなくなった。

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/c23/400100420ujr">
「わぉ――――――――――ん…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("双六死体",1000,null,true);


//◆ＳＥ：携帯鳴る
	CreateSE("携帯", "seメカ_携帯_メール着信_平次_l");
	MusicStart("携帯", 0, 700, 0, 1000, null,false);

	Wait(3000);

	CreateSE("携帯とる", "seメカ_携帯_電子音01");

	SetVolume("携帯", 0, 0, null);
	MusicStart("携帯とる", 0, 700, 0, 1000, null,false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：電話越し
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/400100430jbr">
『おとさん！　おつかれデス！』

//◆音声指示：電話越し
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/400100440jbr">
『ちゃんと手、縛ったデスカ？』

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100450fjh">
「ああ。これでいいんだな？」

{	DeleteSt("MR",200,true);
	CreateSE("SE01","se銃_シリンダー装填");
	MusicStart("SE01",0,700,0,600,null,false);}
　平次は促されるがまま、双六の手首に手錠をかける。

//◆音声指示：電話越し
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/400100460jbr">
『はいはい。バッチリＯＫデスネ』

//◆音声指示：電話越し
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/400100470jbr">
『スイッチ入れるデス。３分でボーン！』

//◆音声指示：電話越し
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/400100480jbr">
『はやく逃げるデスヨ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100490fjh">
「わかった」

{	St("MR",700, @0,@0,"bu平次_通常_pain");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100500fjh">
「ん……くぅっ、く……んんっ！！」

//あきゅん「修正指示：足の怪我なのでゆらりと移動」
//★inc櫻井　修正
{	Move("@StNameMR/MR*", 1000, @-150, @0, Dxl2, false);
	DeleteSt("MR",600,true);}
　平次はケガした脚を引きずりながら、恵那の側へ。

　先に駆けつけたユージローが、頬をしきりに舐めている。

{	St("ML",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/c23/400100510ujr">
「くぅーん、くぅーん」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100520fjh">
「恵那……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//★inc櫻井　手を伸ばす動作

	Move("@StNameC/C*", 500, @-50, @30, Dxl2, false);
	DeleteSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　赤で塗れたその頬に、静かに手を伸ばし――

//★inc櫻井　座りこんだ位置で表示
{	St("C",700, @-50,@30,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100530fjh">
「…………ん？」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100540fjh">
「温かい……？　いや、呼吸――！」

{	St("C",700, @-50,@30,"bu平次_通常_shock");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100550fjh">
「なんだ！？　まさか――」

{	DeleteSt("C",200,false);}
　平次は慌てて、手首の脈を取る。

{	St("C",700, @-50,@30,"bu平次_通常_shock");
	FadeSt("C",200,true);}

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100560fjh">
「……生きてる！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @-50,@30,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100570fjh">
「これ……血じゃなく、ペンキ？」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100580fjh">
「気絶してただけってことか！？」

//あきゅん「修正指示：ユージロー楽しそうに」
//★inc櫻井　修正
{	DeleteSt("C",200,false);
	St("ML",700, @20,@60,"buユージローa_通常_normal");
	Move("@StNameML/ML*", 100, @-20, @-60, Dxl1, false);
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 200, @20, @60, null, true);
	Move("@StNameML/ML*", 200, @-20, @-60, Dxl1, false);
}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/c23/400100590ujr">
「わう！　わうわう！！」

{	DeleteSt("ML",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100600fje">
「ん……んん……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100610fje">
「と……父さん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2337);}

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("C",700, @-50,@30,"bu平次_通常_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100620fjh">
「恵那――ッ！！」

//★inc櫻井　抱きつく動作＋音
{	Move("@StNameC/C*", 500, @-50, @30, Dxl2, false);
	CreateSE("抱擁", "se動作_抱く");
	MusicStart("抱擁", 0, 1000, 0, 1000, null);
	DeleteSt("C",400,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100630fjh">
「恵那……恵那……生きて……」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100640fjh">
「良かった……良かった……！！」

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/c23/400100650ujr">
「わぅ――――ん」


//あきゅん「修正指示：恵那登場からは立ち位置気をつける、CとLはバランスわるい」
//★inc櫻井　修正　平次をMRに
{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100660fje">
「ユージローも……あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100670fje">
「千秋……千秋は……？」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100680fjh">
「よ……よしいいか、脱出するぞ！
　ほら、おぶさって――」

{	St("MR",700, @0,@0,"bu平次_通常_pain");
	Shake("@StNameMR/MR*", 300, 15, 0, 0, 0, 300, Axl1, false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100690fjh">
「いでででででッ！！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100700fje">
「父さん……脚、ケガしたまま……無理しないで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100710fjh">
「悪いな。とにかく、ここを出るぞ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100720fje">
「あ……あそこに、双六――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_shout");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100730fjh">
「見るな！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	Shake("@StNameML/ML*", 300, 3, 0, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100740fje">
「え……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_cool");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100750fjh">
「アイツのことは、忘れろ！
　いいか、忘れるんだ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100760fje">
「そんな、でも――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100770fjh">
「それがアイツの望み……」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100780fjh">
「行き着いた場所なんだ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100790fje">
「…………」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100800fjh">
「行くぞ」

{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100810fje">
「…………うん」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：籠_正面_ブラックライト



	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);

	CreatePlainSP("揺用", 50);

	SceneIn(1000, "blind_01_00_1");

//★inc櫻井　ここから恵那は平次におぶられているものと考え、立ち絵を出していません。
{	St("C",700, @0,@0,"bu平次_通常_pain");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100820fjh">
「ん……くぅっ、んんん……！！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100830fje">
「父さん、そんな無理しなくても」

{	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100840fjh">
「いや！　急ぐんだっ！」

{	St("C",700, @0,@0,"bu平次_通常_pain");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100850fjh">
「急がないと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2338);}

	TextBoxDelete(150);

//◆ＳＥ：どんっ！　爆発音

	DeleteSt("C",200,true);
	CreateSE("SE01","se戦闘_爆発03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0801200籠_正面_ブラックライト.jpg");//背景要確認
	Shake("絵ゆれ", 300, 20, 50, 20, 0, 500, DxlAuto, true);
	Shake("絵ゆれ", 500, 30, 20, 10, 0, 500, Dxl3, true);
	Shake("絵ゆれ", 1000, 10, 15, , 0, 500, Axl3, true);

	Shake("絵ゆれ", 300, 20, 40, 20, 0, 500, DxlAuto, true);
	Shake("絵ゆれ", 1500, 30, 20, 0, 0, 1000, Dxl3, true);

	Shake("絵ゆれ", 300, 20, 50, 20, 0, 500, DxlAuto, true);
	Shake("絵ゆれ", 2000, 30, 20, 0, 0, 1000, Dxl3, true);

	Delete("絵ゆれ");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/400100860fje">
「え――！？」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/400100870fjh">
「ちぃっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	OnBG(100, "bg0801300籠_正面_激流");
//	FadeBG(1000,true);

//あきゅん「修正指示：勢いつけて激しく、まったりさせない」
//★inc櫻井　修正

	PrintGO("上背景", 5000);

	Delete("揺用");

	CreateTextureEX("絵背景101", 101, Center, Middle, "cg/bg/l/bg0801200籠_正面_ブラックライト_l.jpg");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/l/bg0801300籠_正面_激流_l.jpg");
	SetBlur("絵背景100", true, 3, 500, 50, false);
	CreateTextureEX("絵背景10", 12, Center, Middle, "cg/bg/bg0801300籠_正面_激流.jpg");
	CreateTextureEX("絵背景1", 11, Center, Middle, "cg/bg/bg0801300籠_正面_激流.jpg");
	SetBlur("絵背景10", true, 3, 500, 50, false);

	Fade("絵背景101", 0, 1000, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 300, null, true);

	CreateSE("SE02","se環境_地鳴り01_l");
	MusicStart("SE02",3000,500,0,1000,null,true);

	Shake("絵背景101", 1000, 0, 1, 1, 2, 1000, null, true);
	Shake("絵背景101", 2000, 1, 2, 3, 5, 1000, null, true);
	Shake("絵背景101", 3000, 3, 5, 4, 8, 500, null, false);

	Wait(2000);

//◆演出指定：大量の水が流れてくる
	OnBG(10,"bg0801300籠_正面_激流");
	FadeBG(0,true);

	CreateSE("SE01","se戦闘_爆破水しぶき");
	SetVolume("SE02", 200, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵背景101", 500, null, false);
	Zoom("絵背景100", 2000, 2000, 2000, null, false);
	Move("絵背景100", 1000, @0, 0, Dxl1, false);

	Wait(500);

	Fade("絵背景1", 0, 1000, null, true);
	Fade("絵背景10", 0, 1000, null, true);

	Zoom("絵背景10", 1500, 2000, 2000, null, false);
	FadeDelete("絵背景10", 1000, Dxl1, false);
	FadeDelete("絵背景100", 500, null, true);

	Shake_Loop_shima("@絵背景1","絵シェイク");

	CreateSE("SE10","se環境_水流_l");
	MusicStart("SE10",1000,500,0,1000,null,true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　爆発――

　そして籠の中から、凄まじい勢いで水が流れ出す。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolume("SE*", 1000, 0, null);
	SetVolume("@xbgm*", 1000, 0, null);

	CreateColorEX("絵色100", 20000, "Black");
	Fade("絵色100", 1500, 1000, null, true);

	Delete("@絵シェイク");

	Wait(1000);

	EndScene();
}
