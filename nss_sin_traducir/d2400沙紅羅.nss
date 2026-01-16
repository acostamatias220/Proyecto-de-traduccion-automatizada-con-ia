
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene d2400沙紅羅.nss_MAIN
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
	$GameName = "d2401似鳥_ノーコ.nss";//★エンディング中（d）
}

scene d2400沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="390">
////////////header////////////
//file name "d2400沙紅羅.nss"
//title "新年"
//previous "c2357恵那.nss"

////////////footer////////////
//next "d2401似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2357);}


//◆場所：半田明神_境内_雪ライブ
	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);

//あきゅん「修正指示：ガヤ五月蝿すぎ、環境音として使うなら音量絞る」
//★inc櫻井　修正
	CreateSE("SEzawa", "seガヤ_歓声_l");
	MusicStart("SEzawa", 1000, 400, 0, 1000, null,true);


	FadeDelete("上背景",1500,null,true);

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d24/000100010mzh">
「お……おーい！　沙紅羅！
　こっちじゃ、こっち！」

{	DeleteSt("MR",200,false);
	St("R",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d24/000100020kms">
「ようやく来たのですか……いったいどこへ？」

{	DeleteSt("R",200,false);
	St("ML",700, @-80,@0,"bu沙紅羅_頭かき_sigh");
	Move("@StNameML/ML*", 200, @80, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/000100030skr">
「いや、ちょいと、野暮用が……な」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d24/000100040mzh">
「ん？　おぬしそれは……涙の跡？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	Shake("@StNameML/ML*", 200, 0, 6, 0, 0, 500, null, false);
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 2000);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/000100050skr">
「ははっ！　バカ言うな！
　アタシがなんで、泣かなきゃなんねぇんだよ！」

{	AgainSt("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/000100060skr">
「ところでこっちの方はどうだ？
　ちゃんと、アザナエルは――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d24/000100070mzh">
「心配するでない。無事に帰ってきたぞ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d24/000100080mzh">
「もっとも、他の箇所は色々修正があるのじゃが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/000100090skr">
「修正？」

{	DeleteSt("ML",200,false);
	St("R",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d24/000100100kms">
「フウリ様は、もう来ません。
　バンドのニコちゃんとやらも、間に合わないそうです」

{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/000100110skr">
「そんな、それじゃイベントは！？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d24/000100120mzh">
「危うく中止――になるところじゃったのじゃがのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d24/000100130mzh">
「鈴は、諦めておらんのじゃよ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/000100140skr">
「諦めてない……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★ inc櫻井　場面転換としてシーンアウト・インを使用しています。
//あきゅん「修正指示：拡大背景など使用してください」
//★inc櫻井　修正

	SetVolumeEX("SE*", 1000, 0, null);
	SceneOut(5000, 300, "circle_02_00_1");
	DeleteSt("ML",0,false);

	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);
	CreateTextureSP("BG", 10, Center, -380, "cg/bg/l/bg0603311半田明神_境内_雪ライブ_l.jpg");

	SceneIn(300, "circle_02_00_1");

{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100150fjr">
「みんな！
　年の瀬に集まってもらって、本当にありがとう！」


//◆演出指示：おおおお！！　盛り上がる会場
//あきゅん「修正指示：だらっと繋げすぎ、メリハリつけて。歓声だけで少し流してからキャラ喋る」
//★inc櫻井　修正
{	CreateSE("歓声01", "seガヤ_大歓声_l");
	MusicStart("歓声01", 800, 1200, 0, 1000, null,true);

	BGPlainShake(50, 1000, 0, 8, 0, 0, 1000, Dxl1, true);
	Wait(1500);
	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100160fjr">
「すいません……今日は交通事故でトラックが突っ込んで、急に会場変更になってしまいました」


{	SetVolume("歓声*", 3000, 0, null);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100170fjr">
「その上、ニコちゃんとフウリちゃんが、この大雪で会場入りが間に合いそうにありません」

{	St("C",700, @0,@0,"bu鈴_通常_sad");
	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 3200);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100180fjr">
「こんなに夜遅く集まってもらったのに――
　皆さん、本当に――」

{	AgainSt("C",700, @0,@0,"bu鈴_シリアス_sad");
	Move("@StNameC/C*", 300, @0, @100, Axl1, false);
	DeleteSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100190fjr">
「すみませんでした――」

{	BGPlainShake(50, 500, 4, 8, 0, 0, 1000, Dxl1, false);}
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/d24/000100200e07">
「ドンマイドンマイ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	BGPlainShake(50, 500, -4, 8, 0, 0, 1000, Dxl1, false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/d24/000100210e08">
「気にしてないよー！！」

{	BGPlainShake(50, 500, 0, 8, 0, 0, 1000, Dxl1, false);}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/d24/000100220e09">
「頑張れ――！」



//◆演出指示：盛り上がる
{	CreateSE("歓声02", "seガヤ_大歓声_l");
	MusicStart("歓声02", 300, 1000, 0, 1000, Axl3,true);
	St("C",700, @0,@80,"bu鈴_通常_happy");
	Move("@StNameC/C*", 200, @0, @-80, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100230fjr">
「みんな、ありがとう！」

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100240fjr">
「そしてその代わり！
　今日は、特別ゲストをお呼びしております！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolumeEX("歓声*", 1000, 500, null);

{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100250fjr">
「アタシ……実を言うと、ずっと前からファンでした！」


{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100260fjr">
「今日、偶然にも公園で出会ったんですが……」

{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100270fjr">
「なんかこう、こんな日に会うことができるなんて、神様のいたずら心を感じてしまいます！」


{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100280fjr">
「皆さんも、恐らく知っておられると思います」

//あきゅん「修正指示：ここで静かに」
//★inc櫻井　修正
{	SetVolume("歓声02", 3000, 0, null);
	St("C",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100290fjr">
「それではお呼びいたしましょう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm20_noeff",0,450,true);

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100300fjr">
「ＴＡＭＡのパロディＡＶでお馴染み――」

{	CreateSE("歓声03", "seガヤ_沸き立つ02");
	MusicStart("歓声03", 200, 1000, 0, 1000, null,false);
	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d24/000100310fjr">
「ロクロー様の、登場です！！」

//あきゅん「修正指示：歓声の使い方吟味して、一度静かにするタイミングなどいれてメリハリ」
//★inc櫻井　修正　こちらにあった歓声をなくす形で修正しました。
{	DeleteSt("C",200,true);
	WaitKey(200);
	St("C",700, @-700,@0,"buロクローa_通常_smile");
	Move("@StNameC/C*", 300, @700, @0, DxlAuto, false);
	FadeSt("C",200,false);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/d24/000100320rkr">
「はいど――――――――――――――――――――――も―――――――――――――――――――――――！！」

{	St("C",700, @0,@0,"buロクローa_通常_shout");
	FadeStPro("C", 200, 1000);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/d24/000100330rkr">
「ロクローで――――――――――――――――す！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	AgainSt("C",700, @0,@0,"buロクローa_通常_shout");

	TextBoxDelete(0);

//◆演出指定：うおおおおおおお！！　歓声

	CreateColorEX("絵色黒", 5000, "#000000");


//あきゅん「修正指示：歓声の入りかた不自然、フェードタイムなど調整」
//inc櫻井　フェードタイム800で修正
	CreateSE("歓声05", "seガヤ_大歓声_l");
	MusicStart("歓声05", 300, 1100, 0, 1000, Axl2,true);
	BGPlainShake(50, 3000, 0, 0, 10, 30, 1000, Axl2, false);

	Wait(2000);

	Fade("絵色黒", 1000, 1000, null, true);

//★ inc櫻井　場面転換としてシーンアウト・インを使用しています。
//　　　　　　　かつ、遠くから見ていると想定してSE止めていません。

//★ inc遠藤 うるさい。
//inc久保田　調整しました
	WaitKey(2000);

	DeleteSt("C",0,false);
	Delete("BG");
	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);
	SetVolumeEX("歓声*", 2000, 500, null);

	FadeDelete("絵色黒", 1000, null, true);

{	St("R",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d24/000100340kms">
「色々と計算違いもありましたが……」

{	St("R",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d24/000100350kms">
「これだけの人が集まれば、アザナエルの呪いも解ける」

{	DeleteSt("R",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d24/000100360mzh">
「わらわもきっと、元の姿に……」

//★inc櫻井　ゆっくりと歓声を消す
{	SetVolume("歓声*", 4000, 0, null);
	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/000100370skr">
「ははっ、そうか……そういうことか」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d24/000100380skr">
「そうだよな。
　諦めたら……それで、おしまいだもんな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d24/000100390mzh">
「沙紅羅……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//	ClearWaitAll(1000, 1000);

	SetVolumeEX("@xbgm*", 2000, 300, null);

	CreateColorEX("絵色100", 15000, "Black");
	Fade("絵色100", 1000, 1000, null, true);


	EndScene();
}
