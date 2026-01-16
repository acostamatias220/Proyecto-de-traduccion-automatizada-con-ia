
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss_MAIN
{
//■エンディングチェック
	Ending_IsChaeck("abb");

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

	//★エンディング中（abb）
	//★エンドロール
	PreSetRoll(0);
	TheEND(0);

	$GameName = "";
	$GameCircle=false;
	$GameClear=true;
}

scene abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="450">
////////////header////////////
//file name "abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//title "無間地獄"
//previous "ab2230カゴメアソビ.nss"

////////////footer////////////
//flag "flabb"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2300);}

//◆場所：半田明神_男坂（ここはノーマル）
	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	if($PreGameName=="ab2230カゴメアソビ.nss"){

//あきゅん「演出：10/12/17パッチで追加」
	CreateSE("SEP01","se擬音_カゴメアソビ失敗");
	CreateSE("SEP02a","se人体_倒れる05");
	CreateSE("SEP02b","se人体_倒れる05");
	CreateSE("SEP02c","se人体_倒れる05");
	CreateSE("SEP02d","se人体_倒れる05");
	CreateSE("SEP02e","se人体_倒れる05");

	MusicStart("SEP01",0,1200,0,1000,null,false);

	Wait(2000);

	MusicStart("SEP02a",0,700,0,1000,null,false);
	Wait(600);
	MusicStart("SEP02b",0,550,0,1000,null,false);
	Wait(600);
	MusicStart("SEP02c",0,400,0,1000,null,false);
	Wait(600);
	MusicStart("SEP02d",0,250,0,1000,null,false);
	Wait(600);
	MusicStart("SEP02e",0,100,0,1000,null,false);

	Wait(5000);
//あきゅん「演出：追加部分ここまで」
	FadeDelete("上背景", 2000, null, true);

	}else{
	CreateColorSP("絵色黒", 20000, "#000000");
	FadeDelete("上背景", 0, null, true);

	TakeRatePic();//あきゅん「演出：スクリーン希望箇所」

	FadeDelete("絵色黒", 2000, null, true);
	}


{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100010ksr">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_歩く01_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	SceneOut(5000, 1000, "blind_01_00_0");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]

　血まみれのアザナエルを手に――双六は階段を上る。

　一歩、一歩。重い足取りで。

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100020ksr">
「――――」

　中腹で、振り返る。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2301);}

	TextBoxDelete(150);

	SetVolumeEX("@SE01*", 1500, 0, null);

//◆場所：秋葉原_俯瞰_廃墟
//	OnBG(10,"bg0107400秋葉原_遠景_破壊");
//	FadeBG(0,true);

	Delete("@OnBG*");
	DeleteAllSt(0,true);
	CreateTextureSP("絵背景102", 20, Center, @-990, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");
	Move("絵背景102", 5000, @0, -440, DxlAuto, false);

	FadeDelete("絵色演出黒", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100030ksr">
「…………」

{	WaitAction("@絵背景102", null);
	St("C",700, @0,@0,"bu双六a_横向き_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100040ksr">
「無様だなあ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100050ksr">
「一瞬で、こんなだもんなぁ」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100060ksr">
「…………」

{	St("C",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100070ksr">
「バカだよなぁ」

{
	DeleteAllSt(200,true);
}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100080kms">
「救いようのない、バカですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);




//◆演出指定：歌門の弓構え差分
// ↑指定された素材がみあたりません。

	CreateSE("SE01","se戦闘_弓矢_弓しなる");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵背景101", 1000, -310, -360, "cg/ev/m/ev0000歌門破魔弓_m.jpg");
	Move("絵背景101",1000,-500,-320,DxlAuto,false);
	Fade("絵背景101",1000, 1000, null, true);
	DeleteSt("C",0,true);

	Wait(2000);

	SoundPlay("@xbgm26",0,450,true);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateMaskAXLSP("マスク", 2000, 0, 0, "ciスラッシュ_06_01", false, "ciスラッシュ_06_01z");
	CreateTextureSP("マスク/絵背景", 1010, -170, -760, "cg/bg/m/bg0107400秋葉原_遠景_破壊_m.jpg");
	CreateTextureSP("マスク/絵立絵", 1100, Center, Middle, "cg/bu/bu双六a_通常_normal.png");
	Move("マスク/絵立絵", 0, @260, @70, null, true);
	DrawDelete("絵板写", 500, 100, null, "slide_03_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100090ksr">
「星……か」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100100ksr">
「ミヅハは？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100110kms">
「お休みになりました」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100120kms">
「あの化け狸を封じるので、力を使い果たしたのです」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100130ksr">
「そうか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 5000);
	CreateTextureSP("絵背景102", 10, Center, -660, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");
	Delete("マスク*");
	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("R",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100140ksr">
「欲しいか、アザナエル――」

{
	CreateSE("SE01","se銃_投げ捨てる");
	MusicStart("SE01",0,550,0,1000,null,false);
	DeleteAllSt(200,true);
}

　双六は、星に向かってアザナエルを投げ捨てた。


{	St("R",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100150ksr">
「もう、弾切れだけどな」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100160kms">
「ええ、知っています」

{	St("L",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100170kms">
「あなたは……取り返しのつかない罪を犯した」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2302);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100180ksr">
「ああ。そうだ。
　バカだったよ」

{	St("R",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100190ksr">
「こんなに人が、死ぬなんてな……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100200ksr">
「夢なんて最初から、見るんじゃなかった……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100210kms">
「夢も見ず――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("L",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100220kms">
「ただ、静かに眠りなさい」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100230ksr">
「な――！？」

　アザナエルを拾う星の手のひらに表れるのは――

{	DeleteAllSt(200,true);
	CreateTextureEX("絵背景１", 2000, Center, Middle, "cg/obj/objアザナエル弾丸.png");
	Move("絵背景１", 0, @0, @150, null, true);
	Move("絵背景１", 500, @0, @-150, DxlAuto, false);
	Fade("絵背景１", 500, 1000, null, true);}

{	
//	St("R",700, @0,@0,"bu双六a_通常_hard");
//	FadeSt("R",200,true);
	}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100240ksr">
「弾……まだ、あったのか」

{	Move("絵背景１", 500, @0, @150, AxlAuto, false);
	FadeDelete("絵背景１", 500, null, true);
	}

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100250kms">
「ただの弾ではありません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("L",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100260kms">
「ミヅハ様の力が宿る、祝福の弾丸――」

{	St("L",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100270kms">
「私は、河原屋双一を、殺す！」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100280ksr">
「おまえが……やってくれるのか？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100290kms">
「できます」

{	St("L",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100300kms">
「しかし――最後に、ひとつだけ、聞かせてください」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100310kms">
「河原屋双一は、なぜ、あんなことを――？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100320kms">
「双一は、全てを見ていたのでしょう！？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100330ksr">
「さあ。爺の余興に、理由なんてあるのかね」

{	St("R",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100340ksr">
「それとも、本人に聞いてみるかい？」

　双六が、携帯電話を取り出すが――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：弓矢放つ

	CreateTextureEX("絵背景101", 1900, Center, @-180, "cg/ev/ev0000歌門破魔弓.jpg");
	Zoom("絵背景101", 0, 3000, 3000, null, true);
//	Move("絵背景101",300,0,-180,null,false);
	Zoom("絵背景101", 200, 1000, 1000, Axl1, false);
	Fade("絵背景101",200, 1000, null, true);
	Shake("絵背景101", 200, 10, 10, 0, 0, 500, null, false);
	DeleteSt("C",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100350kms">
「――――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef破魔矢飛来a.jpg");
//	Rotate("絵背景100", 0, @0, 180, @0, null,true);

	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetBlur("絵背景100", true, 3, 500, 50, false);

	CreateSE("SE01","se戦闘_弓矢_矢放つ");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("絵背景100", 800, 5, 5, 0, 0, 500, null, false);

	Zoom("絵背景100", 300, 1000, 1000, Axl1, false);

	Fade("絵背景100", 300, 1000, Dxl1, true);

	Delete("絵マスク/絵*");
	Delete("絵マスク");

//	CreateTextureEX("絵背景100", 2000, Center, -1, "cg/ev/ev0000歌門破魔弓.jpg");

	MusicStart("SE01",0,1000,0,1000,null,false);
//	Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);

	WaitKey(500);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵背景100");
	Delete("絵背景101");


	CreateSE("SE01","se戦闘_切断04");
	St("R",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("R",0,true);

	Shake("@OnBG*", 500, 5, 5, 0, 0, 500, null, false);
	Shake("@StNameR/R*", 500, 5, 5, 0, 0, 500, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100360ksr">
「うおっと！」

　歌門が放った矢が、真っ直ぐに射貫いた。

{	St("R",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("R",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100370ksr">
「はっ、容赦ないな……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100380kms">
「当然です」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100390ksr">
「怖い、怖い」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_軽く叩く");
	MusicStart("SE01",0,700,0,700,null,false);
	$SETime = RemainTime("SE01");
	WaitKey($SETime);

{	St("R",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100400ksr">
「次はここかい？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100410kms">
「ミヅハ様を苦しめた罪――」

{	St("L",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/abb24/000100420kms">
「その命で、償いなさい！」

　そう告げて、破魔矢が双六へと放たれ――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef破魔矢飛来a.jpg");
//	Rotate("絵背景100", 0, @0, 180, @0, null,true);

	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetBlur("絵背景100", true, 3, 500, 50, false);

	CreateSE("SE01","se戦闘_弓矢_矢放つ");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("絵背景100", 800, 5, 5, 0, 0, 500, null, false);

	Zoom("絵背景100", 300, 1000, 1000, Dxl1, false);

	Fade("絵背景100", 300, 1000, Dxl1, true);

	DeleteAllSt(0,true);
	Delete("絵マスク/絵*");
	Delete("絵マスク");

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);

	Delete("絵背景100");

//	CreateTextureEX("絵背景100", 2000, Center, -1, "cg/ev/ev0000歌門破魔弓.jpg");

//	CreateSE("SE01","se戦闘_弓矢_刺さる01");

	SetVolumeEX("@xbgm*", 300, 0, null);
	CreateSE("SE01","se戦闘_切断03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);

	Shake("@OnBG*", 500, 5, 5, 0, 0, 500, null, false);
	Shake("@StNameC/C*", 500, 5, 5, 0, 0, 500, null, false);

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100430ksr">
「へっ……」


　胸を矢に貫かれたまま、双六はひとり微笑んだ


{	St("C",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100440ksr">
「生きるか死ねるか……コイツは、ギャンブルだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/abb24/000100450ksr">
「なあ、河原屋双一よ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);

	PrintGO("上背景", 20000);

	FadeDelete("上背景", 2000, null, true);

	DeleteAllSt(0,true);
	Delete("@OnBG*");
	Wait(1000);

	CreateSE("SE01","se擬音_カゴメアソビ失敗");
	MusicStart("SE01",0,700,0,1000,null,false);

	WaitPlay("SE*", null);

	EndingReady();
	EndScene();
}
// 次ファイル指定なし
