
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene e2355沙紅羅.nss_MAIN
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
	$GameName = "e2400似鳥_ノーコ.nss";//★エンディング中（e）
}

scene e2355沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="500">
////////////header////////////
//file name "e2355沙紅羅.nss"
//title ""
//previous "d2345似鳥_ノーコ.nss"

////////////footer////////////
//※下倉注：ジャンプ先変更 2010/11/11
//next "e2400似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

{	ClockPass(2350);}

//◆演出指定：場所、切り替わる

//★inc櫻井　ライブ会場にしようとしたところ、後で指定されているので俯瞰にしています。

	OnBG(10,"bg0107300秋葉原_遠景_雪");
	Move("@OnBG*", 0, @0, 0, null, true);
	FadeBG(0,true);
	Move("@OnBG*", 5000, @0, @-288, DxlAuto, false);
	FadeDelete("上背景", 2000, null, true);

	WaitAction("@OnBG*", null);

//★ inc櫻井　2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ　から引用しています。


//線枠準備
	CreateTextureEX("ライン", 15000, @1024, @0, "cg/mask/ciスラッシュ_05_01za.png");
	Fade("ライン", 0, 1000, null, false);


//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 6510, "#993399");
	CreateTextureEXadd("絵マスク/絵演背景", 6520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");

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

//イン動作
	Move("ライン", 200, 0, 0, Dxl3, false);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵*", 200, 450, middle, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/e23/550100010mrp">
「それでは皆さんお待ちかねッ！！」


//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/e23/550100020mrp">
「第一宇宙速度、年越しライブ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵マスク/絵演立絵", 300, 0, Axl2, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/e23/550100030mrp">
「スーパー・スーパー・ノヴァの、始まりよォッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("ライン", 200, 1024, 0, Axl3, false);

	Move("絵マスク/絵演立絵*", 200, 512, 200, Axl1, false);
	Fade("絵マスク/絵演立絵*", 200, 0, null, true);
	Delete("ライン");

//◆場所：半田明神_境内_雪ライブ
	OnBG(15,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(800,true);

{	ClockPass(2351);}

//◆ＳＥ：大歓声
	CreateSE("歓声01", "seガヤ_大歓声_l");
	MusicStart("歓声01", 800, 1200, 0, 1000, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　ステージ上に輝く目映い花火。

　大歓声に包まれて――

//★inc櫻井　ここで大歓声FO
{	SetVolume("歓声01", 6000, 0, null);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/e23/550100040fjr">
「行っくよおおおおお――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

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

//あきゅん「β演出：本編スクリプト完成後、ここにも移植」

//★ inc櫻井　2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ　から引用しています。

//◆ＥＶ："ev/ev2350第一宇宙速度年越しライブ.txt"

//◆演出指定：演奏始まる

	DAIICHI_Live02(700,1200);

	CreateColorEXadd("絵色100", 1500, "WHITE");

	Fade("絵色100", 300, 1000, null, true);

	CreateTextureEX("絵背景100", 100, -30, -30, "cg/ev/l/ev2350第一宇宙速度年越しライブ_l.jpg");
	SetBlur("絵背景100", true, 1, 500, 100, false);
	Request("絵背景100", Smoothing);

	CreateTextureEX("絵背景200", 100, center, middle, "cg/ev/ev2350第一宇宙速度年越しライブ.jpg");
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	SetBlur("絵背景200", true, 1, 500, 100, false);


	MoveFTP1("@絵背景100",2500,8,3);

	Fade("絵背景100", 0, 1000, null, true);

	Fade("絵色100", 200, 0, null, true);
	Wait(500);
	Fade("絵色100", 200, 1000, null, true);

	Move("絵背景100", 0, -964, -100, null, true);

	Fade("絵色100", 200, 0, null, true);
	Wait(500);
	Fade("絵色100", 200, 1000, null, true);

	Move("絵背景100", 0, -513, -288, null, true);

	Fade("絵色100", 200, 0, null, true);
	Wait(500);

	Zoom("絵背景100", 300, 600, 600, Dxl2, true);

	Wait(1000);

	Request("プロセスライト１", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/e23/550100050e07">
「うおおおおおおおおおおお！！」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/e23/550100060e08">
「第一宇宙速度、きた――――っ！！」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/e23/550100070e09">
「おい、あれホントにゆるキャラバンの――」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/e23/550100080e10">
「ホントだ！　あの大食いの――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	MoveFTP1stop();
	TextBoxDelete(150);

	FadeDelete("絵背景100", 1000, null, true);
	DAIICHI_Live_VolumeSet(4000, 350);

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100090mzh">
「無事、始まったのう」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100100kms">
「無事……ですか」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100110kms">
「しかしあのフウリ様は、恐らく……」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100120mzh">
「ん？　なにか問題が？」


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100130kms">
「……いえ、何でもありません。
　これだけ会場が盛り上がれば、重畳でしょう」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100140mzh">
「うむ！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100150kms">
「後は、アザナエルだけですね」

{	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100160kms">
「……果たして、やってくるのでしょうか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2352);}

//	TextBoxDelete(150);


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100170mzh">
「な……なにを言うておる！
　恵那が自分の役目を放棄するとでも？」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100180mzh">
「沙紅羅は、アザナエルを持ってくると約束した！
　あやつが約束を破るはずが――」

//★inc櫻井　stの沙紅羅を表示してみましたが、背景の人物との身長差がおかしかったため、声だけにしています。
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100190skr">
「その通り！」

{	St("ML",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100200mzh">
「沙紅羅ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100210skr">
「待たせたな。ほらよッ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100220skr">
「アザナエル。注文通り、届けてやったぜ！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100230mzh">
「お……おお、本当じゃ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100240mzh">
「これは……正しくアザナエル！」

{	DeleteSt("MR",200,false);
	St("R",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100250kms">
「……ありがとうございます」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100260skr">
「持ち逃げしなくて、悪かったな！」

{	DeleteSt("ML",200,false);
	St("R",700, @0,@0,"bu歌門_通常_smile");
	FadeSt("R",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100270kms">
「いえ。これでミヅハ様への罰が解けます。
　心より、感謝します！」

{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100280skr">
「感謝なんていらねぇよ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100290skr">
「んじゃ、アタシは行くところあっからさ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100300skr">
「達者で――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100310mzh">
「ま……待つのじゃ沙紅羅！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100320skr">
「なんだ？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100330mzh">
「恵那はどこじゃ？
　おぬしと一緒に、行ったのじゃろう？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100340skr">
「恵那……か」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2353);}

	TextBoxDelete(150);

	CreateColorSPadd("フラッシュバック", 15000, WHITE);
	CreateTextureSP("籠", 2000, @0, @0, "cg/bg/bg0802100籠_内部_通常.jpg");
	DeleteSt("MR",0,true);
	CreateEffect("monokuro", 3000, @0, @0, 1024, 576, "Monochrome");
	Fade("フラッシュバック", 500, 0, null, true);
	DeleteSt("ML",200,true);
	Wait(1500);

	Fade("フラッシュバック", 500, 1000, null, true);
	Delete("籠");
	Delete("monokuro");
	FadeDelete("フラッシュバック",500,null,true);

//★inc櫻井　専用コマンド適用箇所

	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 1600);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100350skr">
「……アタシには、わかんねぇな」

{	AgainSt("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100360mzh">
「しかし、おぬしと一緒にアザナエルを――」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100370skr">
「アイツはアタシを待たずに、どっか行っちまった。
　そのおかげでソレ、返して貰うのに苦労したんだぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100380mzh">
「そ……そうか」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100390skr">
「それじゃ、そろそろいくぞ。
　ボーッとしてると年越しちまう」

{	DeleteSt("ML",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/e23/550100400skr">
「あばよ！」



//◆ＳＥ：走り去る
//あきゅん「修正指示：音」
//★inc櫻井　修正　ここでクリックしないと永遠にSEループはおかしいと感じたので単発再生。
{	CreateSE("走る", "se動作_走る02_l");
	MusicStart("走る", 0, 700, 0, 1000, null,true);
	Move("@StNameML/ML*", 300, @-150, @0, Axl2, false);
	DeleteSt("ML",200,true);
	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("MR",200,true);
	SetVolumeEX("走る", 6000, 0, null);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100410mzh">
「さ、沙紅羅！　良いお年を！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("MR",200,false);
	St("R",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100420kms">
「良いお年を！」


{	SetVolume("走る", 1000, 0, null);
	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100430mzh">
「…………」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100440kms">
「…………」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100450mzh">
「沙紅羅……泣いておらんかったか？
　まるで逃げるようにも見えたが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100460kms">
「……気のせいでしょう」

{	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100470kms">
「それより我々は、早くアザナエルを」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100480mzh">
「しかし――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/e23/550100490kms">
「ミヅハ様！！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/e23/550100500mzh">
「…………うむ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Request("@ライブ音源01", Lock);
	Request("@ライブ音源02", Lock);

	TextBoxDelete(150);

//★inc櫻井　次のファイルと繋がっているのでBGM等そのままにしています。

	EndScene();
}
