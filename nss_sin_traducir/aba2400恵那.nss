
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aba2400恵那.nss_MAIN
{
//■エンディングチェック
	Ending_IsChaeck("aba");

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
	$GameName = "aba2401千秋_フウリ.nss";//★エンディング中（aba）
}

scene aba2400恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="430">
////////////header////////////
//file name "aba2400恵那.nss"
//title "未来は今"
//previous "ab2230カゴメアソビ.nss"

////////////footer////////////
//next "aba2401千秋_フウリ.nss"

//※↑条件分岐の書き方がよく分からないため飛び先設定未設置（mngw 10/14）



////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1857);}

//◆場所：地下_通路
	OnBG(10,"bg0701100地下_通路_通常");
	FadeBG(0,true);

	if($PreGameName=="ab2230カゴメアソビ.nss"){

//あきゅん「演出：10/12/17パッチで追加」

//定義
	CreateSE("SEP01","se擬音_カゴメアソビ成功");
	CreateSE("SEP02","se擬音_羽が舞う");
	CreateColorEXadd("絵色白", 30010, "#FFFFFF");

//開始
	MusicStart("SEP01",0,800,0,1000,null,false);
	MusicStart("SEP02",0,900,0,1000,null,false);
	Fade("絵色白", 800, 1000, Axl3, true);
	FeatherDrop(0);

	Wait(2000);

	FadeDelete("絵色白", 2000, null, true);
//あきゅん「演出：追加部分ここまで」
	FadeDelete("上背景", 500, null, true);
	}else{
	CreateColorSP("絵色黒", 20000, "#000000");
	FadeDelete("上背景", 0, null, true);

	TakeRatePic();//あきゅん「演出：スクリーン希望箇所」

	FadeDelete("絵色黒", 1000, null, true);
	}

//あきゅん「β演出：元のシーンをあとから移植」

//※1850恵那から重複する描写を移植しました（mngw 11/16）
//※11/16時点で1850恵那には曲がありませんでしたので、曲に関しては独自に判断して設置しています。(mngw 11/16)
//※一部恵那の立ちグラ表示とそれに関連した背景（大）は、1850恵那とは相違があります。（mngw 11/16）
//※clockpassは一応コメントアウトしてあります（mngw 11/16）
//※下倉注：↑コメントアウト解除しました

//◆演出指定：ここから、1840にタイムスリップする



	St("C",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 2, 0, 2, 0, 500, Axl3, false);

	CreateSE("SE01","se環境_電撃");
	MusicStart("SE01",0,500,0,1000,null,true);

	CreateTextureEX("絵背景100", 50, Center, Middle, "cg/bg/l/bg0701100地下_通路_通常_l.jpg");
	Move("絵背景100", 0, @-300, @100, null, true);

	CreateColorEXadd("絵色", 1500, "#FFFF99");
	Fade("絵色", 0, 600, null, true);
	SetVolume("SE01", 1000, 0, null);
	FadeDelete("絵色", 500, null, false);


	SoundPlay("@xbgm22",0,450,true);

//◆演出指示：気合い
{	St("C",700, @0,@0,"buミリＰa_通常_shout");
	Shake("@StNameC/C*", 200, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}

//あきゅん「演出：10/12/17パッチで追加」
	if($PreGameName=="ab2230カゴメアソビ.nss")
	{
	SetVolumeEX("@SEP*", 5000, 0, null);
	FeatherDropDelete(5000);
	}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/aba24/000100010mpt">
「ふん…………ッ！！」

{	DeleteAllSt(200,true);
	Fade("絵背景100", 1000, 1000, null, false);
	St("R",700, @60,@0,"bu恵那_哀愁_pinch");
	Move("@StNameR/R*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("R",1000,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100020fje">
（え……何？）


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100030fje">
（……？）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100040fje">
（……なにが、起こってるの？）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(0);

	Fade("絵背景100", 200, 0, null, false);
	DeleteAllSt(200,true);

{	ClockPass(1858);}

//◆演出指定：稲光
//	TextBoxDelete(150);

	CreateSE("SE01","se環境_電撃");//se環境_雷01
	MusicStart("SE01",500,500,0,1000,null,true);


	St("C",700, @0,@0,"buミリＰa_通常_shout");
	Shake("@StNameC/C*", 1200, 2, 1, 2, 0, 500, Axl3, false);
	FadeSt("C",200,true);

	CreateColorEXadd("絵色", 1500, "#FFFF99");
	CreateProcess("絵p稲光", 150, 0, 0, "ina1850");
	Request("絵p稲光",Start);

//◆演出指示：気合い
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buミリＰa_通常_shout");
	DeleteAllSt(200,true);
	Shake("@StNameC/C*", 200, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/aba24/000100050mpt">
「はぁッ、んん…………ん……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("絵p稲光");
	SetVolume("SE01", 100, 0, null);

	DeleteAllSt(200,true);

//	TextBoxDelete(150);

	St("R",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,true);
	Fade("絵背景100", 200, 1000, null, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100060fje">
「――――ッ！」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100070fje">
（なんか……すごく、まずいかも――）


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100080fje">
（誰か、助けを呼びに――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Fade("絵背景100", 200, 0, null, false);
	DeleteAllSt(200,true);


	CreateSE("SE01","se環境_電撃");//se環境_雷01
	MusicStart("SE01",500,700,0,1000,null,true);


	St("C",700, @0,@0,"buミリＰa_通常_shout");
	Shake("@StNameC/C*", 1800, 4, 2, 4, 0, 500, Axl3, false);
	FadeSt("C",200,true);

	CreateColorEXadd("絵色", 1500, "#FFFF99");
	CreateProcess("絵p稲光", 150, 0, 0, "ina1850b");
	Request("絵p稲光",Start);


//◆演出指示：気合い
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

//【太四郎（ミリＰ）】
<voice name="太四郎（ミリＰ）" class="ミリＰ" src="voice/aba24/000100090mpt">
「ぉ……お、おおおおお……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	Delete("絵p稲光");
	Delete("絵色");
	SetVolume("SE01", 100, 0, null);

	DeleteAllSt(200,true);


//◆ＳＥ：稲妻
//◆演出指定：稲光バチバチ


WaitKey(500);


	St("R",700, @0,@0,"bu恵那_一休_shy");
	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 1000, null, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100100fje">
（大人ふたりに、私ひとりで勝てる？）

{	St("R",700, @0,@0,"bu恵那_一休_think");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100110fje">
（ええいっ！　迷ってるヒマはない！）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Fade("絵背景100", 200, 0, null, false);
	DeleteAllSt(200,true);

	St("MR",700, @0,@50,"bu恵那_ハルヒ_angry");
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100120fje">
「アンタたち！　待ちなさい！」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100130fje">
「そんなとこで、いったい何を――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,true);

//◆ＳＥ：雷
	CreateSE("SE02","se環境_雷01");
	MusicStart("SE02",0,1200,0,1000,null,false);

	SetVolumeEX("@xbgm*", 500, 0, null);

	Shake("@OnBG*", 1000, 5, 5, 0, 0, 500, null, false);
	Fade("絵色白", 1000, 0, null, true);
	Delete("絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aba24/000100140ujr">
「きゃう――――――ん！！」

{	ClockPass(1859);}


{	St("C",700, @0,@0,"bu恵那_ハルヒ_sigh");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100150fje">
「え？　今の音――」

{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100160fje">
（…………ユージローに、落雷？）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100170fje">
（いやいやいや、まさかまさかまさか……）


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100180fje">
（…………）


{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100190fje">
（駄目だ、あり得る……！）



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100200fje">
（まず、ユージローの所にッ！！）

{	DeleteAllSt(200,true);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100210fje">
「ん――しょっと！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);

	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);

	TextBoxDelete(150);

	SceneOut(5000, 1000, "blind_02_00_0");
	WaitKey(1000);


{	ClockPass(1900);}


//◆場所：半田明神_涸れ井戸
	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_02_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aba24/000100220ujr">
「あうあ……あうあうあう……」


{	St("MR",700, @120,@0,"bu恵那_通常_shy");
	DeleteAllSt(200,true);
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100230fje">
「ユージローッ！！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100240fje">
「まさか……ホントに、雷が！？」


{	DeleteAllSt(200,true);}


　恵那はしゃがみ込み、ユージローの身体を抱く。


{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100250fje">
「ユージロー……ユージローッ！！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_cry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100260fje">
「ごめんなさい……放っておいたばっかりに……」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100270fje">
「お願い……神様ッ！
　ユージローを、生き返らせて――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@120,"buユージローa_通常_ero");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @0, @-130, Dxl1, false);
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 200, @0, @10, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aba24/000100280ujr">
「ぱふぱふ……ぱふぱふ……むふふふ……」

{	SoundPlay("@xbgm05",0,450,true);
	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100290fje">
「な――」

{	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100300fje">
「ななな、な――」


{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100310fje">
「なにやってんのよ、このエロ犬――――ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1901);}


	TextBoxDelete(0);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,true);
	Delete("@OnBG*");
	Delete("絵背景*");


	CreateSE("SE01","se戦闘_打撃音07");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg2401100空_上空_通常");
	Move("@OnBG*", 0, @0, @-200, DxlAuto, false);
	FadeBG(0,true);

	Move("@OnBG*", 1000, @0, @300, DxlAuto, false);
	Shake("@OnBG*", 1200, 5, 5, 0, 0, 500, null, false);

	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");

/*
	Wait(800);

	CreateSE("SE01","se擬音_ギャグ_キラーン01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateMovie("絵演動画", 20, Center, 0, true, false, "dx/mv_キラーン.ngs");
	SetAlias("絵演動画","絵演動画");
	Request("絵演動画", Play);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]


//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/aba24/000100320ujr">
「きゃううううううううううんッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

	WaitAction("@OnBG*", null);

	CreateMovie("絵演動画星", 2010, Center, 0, false, true, "dx/mv_キラーン.ngs");
	SetAlias("絵演動画星","絵演動画星");
	Request("絵演動画星", Disused);
	Request("絵演動画星", Start);

	CreateSE("SE01","se擬音_ギャグ_キラーン01");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("絵演動画星");
	WaitKey($SETime);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	PrintGO("上背景", 30000);
	Delete("@OnBG*");
	DeleteAllSt(0,true);

	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	FadeBG(0,true);

	St("MR",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("MR",200,true);

	FadeDelete("上背景", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100330fje">
「ったく、なんなのアレ！
　びっくりして気絶的な！？　全然元気じゃ――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：着信
	CreateSE("SE01","seメカ_携帯_メール着信_恵那_l");
	MusicStart("SE01",0,700,0,1000,null,true);

//※↑メール着信音は書くキャラごとにありますが、電話の着信がありません。仮に一番オーソドックスな沙紅羅のを充てておきます。（mngw）

	WaitKey(2000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100340fje">
「ん――電話？」


{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100350fje">
「………………父さんからだ」


{	DeleteAllSt(200,true);
	SetVolumeEX("SE01", 0, 0, null);
	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(1000);
	}

//◆音声指示：不機嫌
{	St("C",19010, @0,@0,"fu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100360fje">
「もしもし？」

//◆音声指示：電話越し

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/000100370fjh">
『おう、恵那か！』

//◆音声指示：不機嫌

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100380fje">
「なんの用事？」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/000100390fjh">
『おう、聞いて驚け！』

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aba24/000100400fjh">
『おまえのブルマー盗んだ犯人……見つけたぞ！』

{	St("C",19010, @0,@0,"fu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100410fje">
「ウソ！？」

{	St("C",19010, @0,@0,"fu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100420fje">
「や……やった……！」


{	St("C",19010, @0,@0,"fu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/aba24/000100430fje">
「アタシの願いが……
　とうとう神様に、通じたんだ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

	WaitKey(1000);



	EndScene();
}
