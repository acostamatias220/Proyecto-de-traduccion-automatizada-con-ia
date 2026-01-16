
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene d2304沙紅羅.nss_MAIN
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
	$GameName = "d2310沙紅羅.nss";
	//$GameCircle=false;

}

scene d2304沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="600">
////////////header////////////
//file name "d2304沙紅羅.nss"
//title "親子の再会に水を差せ！"
//previous "2301沙紅羅.nss"

////////////footer////////////
//next "沙紅羅" "d2310沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_境内_ペンキ
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",0,true);

	FadeDelete("上背景", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100010skr">
「おーい！　おおおおお――――い！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100020skr">
「…………」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100030skr">
「アレェ？　おっかしーなー。
　アタシを置いて、先に行っちまったか？」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100040skr">
「……あー、もう！　しゃーねーなー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：半田明神_社務所
	SetVolumeEX("@xbgm*", 1000, 0, null);
	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteSt("C",0,false);
	Delete("@OnBG*");

	SetVolume("SEL01", 1000, 0, null);

	OnBG(10,"bg0604100半田明神_社務所_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

	SoundPlay("@xbgm15",0,450,true);

{	St("ML",700, @-60,@0,"bu沙紅羅_通常_shout");
	Move("@StNameML/ML*", 300, @60, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100050skr">
「おい、星！　名探偵の電話番号知ってんだろ？
　ちょっと教えてくれ！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/040100060kms">
「……恵那様においていかれたのですか？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100070skr">
「あ……ああ、まあな」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/040100080kms">
「ふ、無様」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	Shake("@StNameML/ML*", 200, 0, 8, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100090skr">
「んなっ！！」


{	DeleteSt("ML",200,false);}
　怒る沙紅羅をよそに、歌門は社務所備え付けの電話を素早くダイヤルし、受話器を持ち上げた。

{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/040100100kms">
「どうぞ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100110skr">
「あ……ああ、どうも」

{	CreateSE("電話", "seメカ_携帯_コール01_l");
	MusicStart("電話", 0, 700, 0, 1000, null,true);
	DeleteSt("ML",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100120skr">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100130skr">
「………………」

{	SetVolume("電話", 1000, 0, null);}
//◆音声指示：電話越し
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/d23/040100140fje">
『もしもし、恵那です』

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100150skr">
「おお、名探偵ッ！　てめぇ何で勝手において行く――」

{	DeleteSt("ML",200,true);}
//◆音声指示：電話越し
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/d23/040100160fje">
『只今電話に出ることができません』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：電話越し

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/d23/040100170fje">
『「コレは事件！？」と言ったらメッセージを――』



{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	Shake("@StNameML/ML*", 300, 8, 0, 0, 0, 500, Axl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100180skr">
「があああああああっ！　クソッ！！
　こうなったらアレだ！　先回りだッ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100190skr">
「おい、星！
　あのモジャモジャの電話番号知ってんだろ？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100200skr">
「悪いけど、電話繋げてもらえねーかな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/040100210kms">
「…………ハァ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100220skr">
「そんな、聞こえよがしに溜息つかなくても――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/040100230kms">
「……どうぞ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100240skr">
「おう、サンキュー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//◆ＳＥ：呼び出し音

	CreateSE("電話", "seメカ_携帯_コール01_l");
	MusicStart("電話", 0, 1000, 0, 1000, null,true);
	WaitKey(2000);

	SetVolume("電話", 1000, 0, null);

//あきゅん「修正指示：ここでの電話腰でのイライラは体を揺らすなどして表現してください」
//★inc櫻井　修正

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100250skr">
「あ、もしもし？」

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/040100260fjh">
『ん？　この声は……金閣寺か？』

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	Shake("@StNameML/ML*", 200, 0, 10, 0, 0, 500, Axl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100270skr">
「金閣寺じゃねぇっつーの！
　沙紅羅だ、沙紅羅！！」

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/040100280fjh">
『おう、そうか。
　で、そのマクラがいったい何の用事だ？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	Shake("@StNameML/ML*", 200, 5, 15, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100290skr">
「マクラじゃねぇ！　沙紅羅だ！
　モジャモジャ、今どこにいる？」

//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/040100300fjh">
『あぁん？
　なんで居場所を、オクラに言わなきゃなんねぇんだ？』

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	Shake("@StNameML/ML*", 200, -5, 15, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100310skr">
「オクラじゃねぇ！　沙紅羅だ！
　名探偵……恵那が今、おまえんとこに行ってんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：電話越し

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/040100320fjh">
『な……なんだとォ！？　ここに、ここにかっ！？
　本当だなッ！！』

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100330skr">
「本当だよ。
　だからほら、おまえの居場所を――」


{	SetVolumeEX("@xbgm*", 300, 0, null);}
//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/040100340fjh">
『絶対教えませ――――――――んっ！！』

{	SoundPlay("@xbgm03",0,450,true);
	SetComic(@0,@0,15);
	CreateSE("SE01","se擬音_ギャグ_頭打つ");
	Move("@Comic*", 0, @-140, @-100, null, true);
	St("ML",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("ML",200,true);
	FadeComic();
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("@StNameML/ML*", 300, -6, 12, 0, 0, 300, Axl1, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100350skr">
「てめぇオイコラブッ叩くぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteComic();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆音声指示：電話越し
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/d23/040100360fjh">
『てめぇバカ野郎せっかく手に入れた親子団らんの時をてめぇに汚されてたまっか！　シッシッ！！』

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100370skr">
「てんめぇ――ッ！！」


//◆ＳＥ：電話切れる
{	SetVolumeEX("@xbgm*", 300, 0, null);
	CreateSE("電話切る", "seメカ_携帯_電話切れる02_l");
	MusicStart("電話切る", 0, 1000, 0, 1000, null,false);

	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100380skr">
「オイバカ！　こら！　切るなッ！　切るなって！！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100390skr">
「あ……ああああっ！　クソッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100400skr">
「こ、こうなったら……」

{	SoundPlay("@xbgm07_noint",0,450,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	Shake("@StNameML/ML*", 300, 0, 8, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100410skr">
「ぜええええええええええったい！
　親子の再会に水差してやるッ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100420skr">
「ん？　あれ？　でも確か……名探偵……
　もじゃもじゃがどこかにいるって言ってなかったか？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100430skr">
「ん？　ん？　んんんん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100440skr">
「え、ええと確か――」


{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100450skr">
「病院？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100460skr">
「おい、星！
　あのモジャモジャのかかりつけの医者知って――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100470skr">
「――るわけねーよな」

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
<voice name="歌門星" class="歌門星" src="voice/d23/040100480kms">
「泰然堂大学病院です」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100490skr">
「え？　マジで知ってんの！？
　なにそれ？　知恵袋？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/040100500kms">
「以前お世話になったとき、見舞いに行っただけです」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100510skr">
「ほいで、その泰然堂大学病院ってどこだ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：原付に乗ってる

	SceneOut(5000, 1000, "blind_01_00_0");
	Delete("@OnBG*");
	DeleteSt("ML",0,false);

	Wait(1000);

//※下倉注：以下のシーン、時間の整合性のためd2310沙紅羅.nssに以降でお願いします

/*
//★ inc遠藤 冒頭、パクらせてください。
//晴海通り
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");
	MoveFFP1("@絵演背景",50);

	CreateTextureSPover("道線", 110, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	TurboBlur("@道線");

	Zoom("絵演背景", 0, 2000, 2000, null, true);

	CreateSE("SEL01","seメカ_バイク_走行_l");
	MusicStart("SEL01",2000,700,0,1100,null,true);

	WaitKey(2000);

	SetFrequency("SEL01", 300, 1000, null);
	//FadeDelete("上背景", 0, null, true);
	DrawDelete("上背景", 200, 100, Dxl1, "zzex_circle_01_00_1", false);
	Zoom("絵演背景", 200, 1100, 1100, Dxl1, true);

	SoundPlay("@xbgm03",0,450,true);


//	CreateTextureSP("バイク", 300, @0, @0, "cg/ef/efバイク走行表現背景.jpg");
//	CreateSE("バイク走行", "seメカ_バイク_走行_l");
//	MusicStart("バイク走行", 0, 1200, 0, 1000, null,true);
//	SoundPlay("@xbgm23", 0, 450, true);/

	SceneIn(1000, "blind_01_00_1");



{	ClockPass(2310);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100520skr">
「行けぇッ！　暴蛇羅号ッ！！」



//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100530skr">
（ははっ、なんつー偶然！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100540skr">
（秋葉原に来る前、アタシが寄ったあの病院じゃねぇか！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100550skr">
（ん？　でも……アレ？）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100560skr">
（泰然堂大学病院って……
　どっかで聞いたことあるような……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2311);}

//◆演出指定：空から雪が降る
	SnowDrop(500);


	CreateTextureEX("絵背景200", 500, @0, @-300, "cg/bg/bg2401100空_上空_通常.jpg");
	DeleteSt("C",200,false);
	Fade("絵背景200", 1000, 1000, null, false);
	Move("絵背景200", 2000, @0, -100, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100570skr">
「あ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100580skr">
「雪……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100590skr">
（ミヅハ、頑張ってるな……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/d23/040100600skr">
（ウシ！　待ってろよ。
　今、アザナエルを取ってきてやるからな……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★inc櫻井 次のファイルも外から開始なので、雪を降らすのを止めていません。
//★inc櫻井 同時にBGMも止めていません。

	SetVolume("バイク", 1000, 0, null);
*/


	EndScene();
}
