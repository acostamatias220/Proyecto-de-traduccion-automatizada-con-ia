
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2348ノーコ_フウリ.nss_MAIN
{
//■エンディングチェック
	if(#RouteName=="e"){
		Ending_IsChaeck("e");

		if($CharaName=="フウリ"){
			GameBreak();//死亡
		}
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

	//★徒歩：フラグ修正
	if(#RouteName=="トゥルー"){
		$GameName = "2349ノーコ_フウリ.nss";
	}else if(#RouteName=="e"){
		$GameName = "e2349ノーコ.nss";//★エンディング中（e）
	}
}

scene 2348ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="310">
////////////header////////////
//file name "2348ノーコ_フウリ.nss"
//title "別れ"

//previous "2340ノーコ_フウリ.nss"

//previous "e2338ノーコ.nss"
//previous "e2330沙紅羅.nss"
//previous "2330似鳥.nss"

////////////footer////////////
//next "ノーコ"（"flkagome5" = false） "e2349ノーコ.nss"
//next "ノーコ" "2349ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_社務所_雪
	OnBG(10,"bg0604211半田明神_社務所_雪");
	FadeBG(0,true);

	CreateSE("SE10","seガヤ_沸き立つ_l");
	MusicStart("SE10",500,200,0,1000,null,true);
	CreateSE("SE11","seガヤ_歓声_l");
	MusicStart("SE11",500,300,0,1000,null,true);

	SetVolume("SE10", 3000, 0, null);

	if($PreGameName=="2340ノーコ_フウリ.nss"||$PreGameName=="2330似鳥.nss"){
	FadeDelete("上背景", 0, null, true);
	}else{
//あきゅん「演出：ｅルート事刻表時は暗転から開始されます」
	CreateColorSP("絵暗転", 20000, "#000000");
	Wait(16);
	FadeDelete("上背景", 0, null, true);
	TakeRatePic();//あきゅん「演出：スクリーン希望箇所」

	FadeDelete("絵暗転", 1000, null, true);
	}

{	ClockPass(2348);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/480100010mrp">
「ふぅ……」

{	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/480100020fjr">
「ミリＰさん、お疲れ様です！」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/480100030mrp">
「いやあ、動いた動いた！」

{	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/480100040mrp">
「ガチムチも、素敵よねえ……」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/480100050kms">
「……それよりも、次の段取りを」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("R",700, @30,@0,"buＡＤ_通常_pride");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-30, @0, Dxl3, false);
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/480100060adi">
「ミリＰさん！　会場準備整いました！」

{	St("ML",700, @0,@0,"buミリＰa_ショータイム_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/480100070mrp">
「よし！　この短い時間でよくやってくれたわね」

{	St("ML",700, @0,@0,"buミリＰa_ショータイム_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/480100080mrp">
「音の対策は？」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/480100090mzh">
「整った！
　雪がこれだけ降れば、まず大丈夫じゃろう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"buミリＰa_ショータイム_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/480100100mrp">
「よしよし！」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/480100110kms">
「よくありません」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/480100120kms">
「まだアザナエルは、返ってきていない」

{	St("R",700, @0,@0,"buＡＤ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/480100130adi">
「ゆるキャラバンのマスコットもまだ」

{	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/480100140fjr">
「いや、それより何より！
　開始まで３分なのに、フウリちゃんもニコちゃんも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);


//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：ぷっぷー！　クラクション
	CreateSE("SE01","seメカ_車_クラクション_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/23/480100150mrp">
「ん……？」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/23/480100160kms">
「なにか、音……」

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/480100170mzh">
「上からじゃ！」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/480100180fjr">
「上？」

{	St("R",700, @0,@0,"buＡＤ_通常_shock");
	DeleteAllSt(200,false);
	Shake("@StNameR/R*", 200, 0, 10, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/23/480100190adi">
「って、車――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景1000", 1000, -1024, -282, "cg/img/l/imgミリＰ車飛翔_l.jpg");
	SetBlur("絵背景1000", true, 2, 500, 50, false);

	CreateSE("SE02","seメカ_車_走行車外");
	MusicStart("SE02",0,500,0,1000,null,true);

	Shake("絵背景1000", 1000, 0, 8, 0, 0, 1000, null, false);
	Move("絵背景1000", 1000, -200, @0, Dxl1, false);
	Fade("絵背景1000", 300, 1000, null, true);

	SetVolumeEX("SE02", 500, 800, null);
	Wait(1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");

//◆ＳＥ：ドカーン！
	CreateSE("SE01","seメカ_車_事故");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE01","se戦闘_爆発01");

	SetVolume("SE02", 300, 0, null);
	MusicStart("SE01",0,800,0,1000,null,false);

	Move("絵背景1000", 200, -1000, @0, Axl1, false);
	Fade("フラッシュ白",200,1000,null,true);

	Delete("絵背景1000");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg0604211半田明神_社務所_雪.jpg");

	Shake("絵背景100", 1000, 5, 8, 0, 0, 1000, null, false);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@50,"buみそa_オラオラ_pride");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl3, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/480100200mso">
「到・着……ッ！！」

{	SoundPlay("@xbgm05",0,450,true);}
{	St("C",700, @0,@0,"buみそa_オラオラ_shout");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/480100210mso">
「恐れ入ったか、オレのこのドライビングテク――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");

	SetVolume("SE01", 1000, 0, null);
//◆ＳＥ：カッティング・リーゼント
	CreateSE("SE02","se戦闘_切断01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(30);

	St("C",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(0,false);
	FadeSt("C",0,true);

	FadeDelete("絵フラッシュ白", 100, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/480100220nko">
「ばつ」

{	St("C",700, @0,@0,"buみそa_オラオラ_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-100, @0, Dxl3, false);
	Shake("@StNameC/C*", 200, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/480100230mso">
「いでええええええええええええッッ！！」

{	St("C",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-20, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/480100240nko">
「いのちで――」

{	St("MR",700, @30,@0,"buブーa_オラオラ_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/480100250buu">
「ちょ！　ま！」

{	St("C",700, @-20,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @-50, @0, Axl3, false);
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/480100260nko">
「つぐなえ」

{	St("MR",700, @0,@0,"buブーa_オラオラ_shout");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 15, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/480100270buu">
「みそ――――っ！！」

{	St("L",700, @-40,@0,"buみそa_オラオラ_hard");
	DeleteAllSt(200,false);
	Move("@StNameL/L*", 200, @100, @0, Dxl3, false);
	FadeSt("L",200,true);
	St("L",700, @60,@0,"buみそa_オラオラ_shout");
	Shake("@StNameL/L*", 200, 0, 20, 0, 0, 500, AxlDxl, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/480100280mso">
「リーゼントカウンターッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	DeleteAllSt(0,false);
//◆ＳＥ：パキィーン！！
	CreateSE("SE01","se戦闘_金属弾く04");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵フラッシュ白", 100, null,true);

	St("MR",700, @-50,@0,"buノーコa_カッター_shock");
	Move("@StNameMR/MR*", 200, @50, @0, Dxl3, false);
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/480100290nko">
「はじかれた……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/480100300nko">
「なぜ、かみだけはきれない？」

{	St("ML",700, @-40,@0,"buみそa_オラオラ_hard");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @40, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/480100310mso">
「侠の魂は折れず！　曲がらずッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1000, 0, null);


	EndScene();
}
