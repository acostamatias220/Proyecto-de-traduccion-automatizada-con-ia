
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1810似鳥.nss_MAIN
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
	$GameName = "1830似鳥_ノーコ.nss";
	//$GameCircle=false;

}

scene 1810似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1190">
////////////header////////////
//file name "1810似鳥.nss"
//title "ってかさ、スマガの厨二病センスはないわ"
//previous "1800似鳥.nss"


////////////footer////////////
//next "似鳥" "1830似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

{	ClockPass(1810);}


//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);


//※下倉注：ここ、既に雨が止んでてＯＫ 2010/11/19

/*
	$SYSTEM_effect_rain_dencity=32;
	$SYSTEM_effect_rain_speed=128;

	CreateEffect("エフェクト１", 8000, 0, 0, 1024, 288, "Rain");
	SetAlias("エフェクト１","エフェクト１");
	SetVertex("エフェクト１", 0, 0);
	Zoom("エフェクト１", 0, 1000, 2000, null, true);
	Fade("エフェクト１", 0, 500, null, true);
*/



	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE11",2000,500,0,1000,null,true);


	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);


	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300010nki">
（どうしよう……）

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300020nki">
（いつまでも、河原屋組から逃げられるわけないし）

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300030nki">
（早く、あにのあな行かないと――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,false);

//◆演出指示：ブオン！　みたいな感じで回想開始
//◆演出指示：コミマ会場でその日の午前中の出来事回想：ギャグＥＶでいいので入れたい
//おがみ：β調整済み

	SetVolumeEX("SE*", 1000, 1, null);



	CreateColorEXadd("絵色100", 20000, "WHITE");
	ClockDelete(200,false);
	Fade("絵色100", 200, 1000, null, true);
//	CreateColorSPadd("絵色200", 15000, "WHITE");
//	Fade("絵色200", 0, 200, null, true);

	Fade("エフェクト１", 0, 0, null, true);

	OnBG(10,"bg2001211ビッグサイト_正面_昼");
	FadeBG(0,true);

	SoundPlay("@xbgm03",0,450,true);


	Fade("絵色100", 300, 0, null, true);


	Yuru_Comima_Set("yurIF背景01","yur似鳥同人誌爆死_似鳥a","yur似鳥同人誌爆死_似鳥b","yur似鳥同人誌爆死_オタク全容a","yur似鳥同人誌爆死_オタク全容b","コミマプロセス");


//	St("C",700, @0,@0,"bu似鳥_通常_normal");
//	FadeSt("C",200,true);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300040nki">
「よし！　きょうは絶対、売りまくる――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＳＥ：「うおおおおおおおおお！！」
//◆演出指示：土煙がやってくる

	Yuru_Comima_Start();


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300050nki">
「あ、いらっしゃ――のわああああああ…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1811);}



//◆演出指示：土煙が通り過ぎて呆然とする似鳥

	WaitAction("@コミマプロセス", null);

	SetFrequency("@xbgm03", 2000, 1, AxlDxl);

	Wait(300);

//	St("C",700, @0,@0,"bu似鳥_通常_worry");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300060nki">
「……………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);

	CreateSE("SE01","se動物_カラス_鳴き声");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXover("絵色暮れ", 50, "#FFAA00");
	CreateColorEXmul("絵色暮れ2", 50, "#FFAA00");
	Fade("絵色暮れ", 1500, 900, null, false);
	Fade("絵色暮れ2", 1500, 100, null, true);


//◆演出指示：そのまま日が暮れる・鴉が鳴くなど


//	TextBoxDelete(150);
//	DeleteAllSt(200,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/18/100300070e09">
「なんだこの本？」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/18/100300080e10">
「さあ。興味ないし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/18/100300090e10">
「それよりホラ！　あっち行こうぜ！」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/18/100300100e09">
「あ！　すげえ！　スマガ本の新刊だ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300110nki">
「……………………」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：ブオン！　回想終了


	SetVolumeEX("SE*", 2000, 450, null);

	Fade("絵色100", 300, 1000, null, true);
	Yuru_Comima_Delete();
	Delete("絵色200");
	Delete("絵色暮れ*	");
	DeleteAllSt(0,false);
	Fade("エフェクト１", 0, 500, null, true);

//◆時間：ジャンプ
{	ClockPass(1812);}


	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);
	Fade("絵色100", 500, 0, null, true);
	Delete("絵色100");

//	CreateSE("SE10","se環境_雨_l");
//	CreateSE("SE11","seガヤ_交通_l");
//	MusicStart("SE10",2000,1000,0,1000,null,true);
//	MusicStart("SE11",2000,1000,0,1000,null,true);


	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300120nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300130nki">
（売れ残り……山ほどあるんだよな……）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300140nki">
（…………）

{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300150nki">
（なんか、足が――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @20, @0, Axl1, false);
	DeleteAllSt(200,true);

//◆演出指定：イタバイク絵
//あきゅん「素材：imgイタバイク駐車」
//おがみ：素材まだ

	Wait(200);

	CreateTextureEX("絵背景100", 150, Center, Middle, "cg/img/imgイタバイク駐車.jpg");
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300160nki">
「…………あ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300170nki">
「いた、イタタタタタタタ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300180nki">
（なにこのバイク？
　こういうの、カッコイイとか思ってんの？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300190nki">
（ありえねー。マジでありえねー。
　いわゆるひとつの厨二病？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300200nki">
（こういうヤツに限って、バイクに事細かな設定とかつくっちゃったりなんかしてんだよなあ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	Fade("絵背景100", 500, 0, null, true);
	Delete("絵背景100");

	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300210nki">
（あー、やだやだ！　目に入れたくもねぇや）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300220nki">
（やっぱりさ、クリエイターなんだからもうちょっとマシなデザインしないと……）

{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300230nki">
（あ、そうだ！）

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300240nki">
（確か、オレのデザインしたソトカンダーを、ＵＰ＋の方で飾るんじゃ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);



//	SoundPlay("@xbgm12",0,450,true);

	CreateSE("SE11","seガヤ_ざわざわ_l");
	MusicStart("SE11",1500,700,0,1000,null,true);

//◆場所：ＵＰ＋_屋外セット
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆時間：ジャンプ
{	ClockPass(1814);}
	Wait(1000);

	OnBG(10,"bg1201100ＵＰ＋_屋外セット_通常");
	FadeBG(0,true);
	Fade("エフェクト１", 0, 0, null, true);
	Delete("エフェクト１");
	SetVolumeEX("SE10", 2000, 0, null);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

	St("C",700, @0,@0,"bu若原_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/18/100300250whr">
「本番まであと５０分！　気合い入れろよ！」

{	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300260nki">
（はは、やってるやってる）

{	St("C",19010, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300270nki">
（全国ゆるキャラバン――）

{	St("C",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300280nki">
（年末に急にやるとか言われて、秋葉原マスコットのキャラデザ発注来たときはビビったけど）

{	St("C",19010, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300290nki">
（ニヤ動でもイチオシ企画らしいし、もしコレがネットで話題になっちゃったりなんかしたら、オレも……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",19010, @0,@0,"fu似鳥_眼鏡上げ_pride");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300300nki">
「ぐふ、ぐふふふふふふ……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu若原_通常_angry");
	FadeSt("C",200,true);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/18/100300310whr">
「おい！　ソトカンダーの模型はどこだ！？
　主役がねぇぞ！　持ってこい！」


{	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300320nki">
（おっと！　そうだった！）

{	St("C",19010, @0,@0,"fu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300330nki">
（今回の企画の目玉！　それは立体化ソトカンダー！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//あきゅん「素材：imgソトカンダーイラスト」
	CreateTextureEX("絵背景100", 150, Center, Middle, "cg/img/imgソトカンダーイラスト.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);

	Zoom("絵背景100", 500, 1000, 1000, DxlAuto, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300340nki">
（オレのキャラクターが、番組のハイライトを――）

//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/18/100300350whr">
「ハァ！？　ない？　ないってどういうことだ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1815);}


	TextBoxDelete(150);

	Fade("絵背景100", 500, 0, null, true);
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/100300360adi">
「ないワケじゃなくて、トラックに置きっぱなし――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu若原_通常_normal");
	FadeSt("ML",200,true);}
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/18/100300370whr">
「忘れてたのか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/100300380adi">
「忘れてました……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu若原_通常_angry");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/18/100300390whr">
「ドアホ！　さっさと取ってこい！」

//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/18/100300400whr">
「どんなにマヌケでイケてないデザインだからってな！
　一応、この番組のメインなんだよ！」

//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/18/100300410whr">
「どんな腐った素材でも、届いちまったからには、オレたちが手を抜くわけにはいかねぇだろうが！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/100300420adi">
「は、はい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu若原_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【若原レイジ】
<voice name="若原レイジ" class="若原レイジ" src="voice/18/100300430whr">
「あ、あと肉まんはどうした！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/18/100300440adi">
「ええと、肉まんがなかったのでコレを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1816);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);
	Wait(500);
	St("C",19010, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//◆音声指示：小声
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300450nki">
「………………ははは」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300460nki">
（そう……そうだよな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",19010, @0,@0,"fu似鳥_通常_sigh");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300470nki">
（２時間のやっつけデザインだもんな）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300480nki">
（オレだって、そんなキャラが評価されたところで、全然なんにも嬉しくねぇし）

{	St("C",19010, @0,@0,"fu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300490nki">
「ははははははは…………はははははははは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	Move("@StNameC/C*", 400, @-50, @20, Axl1, false);
	DeleteAllSt(400,true);

	SetVolume("SE*", 1000, 0, null);





	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	SoundPlay("@xbgm12",0,450,true);

//	Fade("エフェクト１", 0, 500, null, true);
//◆時間：ジャンプ
{	ClockPass(1820);}
//◆場所：秋葉原_万世橋
	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	OnBG(10,"bg0104111秋葉原_万世橋_通常");
	#bg0104100秋葉原_万世橋_通常 = true;

	FadeBG(0,true);
$カメラ位置1810似鳥 = 700;
	CreateTextureSP("カメラ１/絵背景100", 500, Center, Middle, "cg/bg/bg0104111秋葉原_万世橋_通常.jpg");
	CreateTextureEX("カメラ１/絵立絵_normal", $カメラ位置1810似鳥, Center, Middle, "cg/bu/bu似鳥_通常_normal.png");
	CreateTextureEX("カメラ１/絵立絵_hard", $カメラ位置1810似鳥, Center, Middle, "cg/bu/bu似鳥_通常_hard.png");
	CreateTextureEX("カメラ１/絵立絵_sad", $カメラ位置1810似鳥, Center, Middle, "cg/bu/bu似鳥_通常_sad.png");
	CreateTextureEX("カメラ１/絵立絵_sigh", $カメラ位置1810似鳥, Center, Middle, "cg/bu/bu似鳥_通常_sigh.png");
	CreateTextureEX("カメラ１/絵立絵_pinch", $カメラ位置1810似鳥, Center, Middle, "cg/bu/bu似鳥_通常_pinch.png");
	CreateTextureEX("カメラ１/絵立絵_angry", $カメラ位置1810似鳥, Center, Middle, "cg/bu/bu似鳥_通常_angry.png");
	CreateTextureEX("カメラ１/絵立絵_smile", $カメラ位置1810似鳥, Center, Middle, "cg/bu/bu似鳥_通常_smile.png");
	CreateTextureEX("カメラ１/絵立絵_worry", $カメラ位置1810似鳥, Center, Middle, "cg/bu/bu似鳥_通常_worry.png");
	CreateTextureEX("カメラ１/絵立絵_rage", $カメラ位置1810似鳥, Center, Middle, "cg/bu/bu似鳥_通常_rage.png");
	CreateTextureEX("カメラ１/絵立絵_shout", $カメラ位置1810似鳥, Center, Middle, "cg/bu/bu似鳥_通常_shout.png");
	Request("カメラ１/*", Smoothing);
	SetShade("カメラ１/絵背景100", HEAVY);
	Zoom("カメラ１/絵背景100", 0, 1800, 1800, null, true);
	Fade("カメラ１/絵背景100", 0, 1000, null, true);


	CreateSE("SE20","se動作_歩く01_l");
	MusicStart("SE20",0,1200,0,1000,null,true);


	MoveCamera("@カメラ１", 0, @20, @-30, @100, null, true);
	MoveFTP3("@カメラ１/*", 8000, 8, 12);

	Zoom("カメラ１/絵背景100", 60000, 1200, 1200, null, false);
	MoveCamera("@カメラ１", 60000, @0, @0, @-100, null, false);

	Fade("カメラ１/絵立絵_sigh", 0, 1000, null, true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(100);
//	St("C",700, @0,@0,"bu似鳥_通常_sigh");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300500nki">
「はぁ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300510nki">
（……最悪だ。ホントにあり得ねえ）

{
//	St("C",700, @0,@0,"bu似鳥_通常_hard");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_sigh", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_hard", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300520nki">
（こうなったのも、みんな、あいつらが悪いんだ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300530nki">
（特にアレ。<RUBY text="たちばな">大刀刃那</RUBY>とかいうヤツ）

{
//	St("C",700, @0,@0,"bu似鳥_通常_normal");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_hard", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_normal", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300540nki">
（いつもせいぜい２０部が関の山だったのに）

{
//	St("C",700, @0,@0,"bu似鳥_通常_rage");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_normal", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_rage", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300550nki">
（「２ｂｉｒｄ先生の新刊なら６００部余裕ですよ！」とか、ふざけんなっての！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	St("C",700, @0,@0,"bu似鳥_通常_pinch");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_rage", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_pinch", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300560nki">
（あれだけ会場に来るとか言っといて、全然顔も出しゃしねーし！）

{
//	St("C",700, @0,@0,"bu似鳥_通常_angry");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_pinch", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_angry", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300570nki">
（責任とれよ、責任！）

{
//	St("C",700, @0,@0,"bu似鳥_通常_sad");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_angry", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_sad", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300580nki">
（大体さ、世の中薄情なんだよ）

{
//	St("C",700, @0,@0,"bu似鳥_通常_hard");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_sad", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_hard", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300590nki">
（なにが「ヤンデレノーコさん最高です！」だよ！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300600nki">
（そんなの、２週間ブームがあっただけだろ？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("C",700, @0,@0,"bu似鳥_通常_angry");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_hard", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_angry", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300610nki">
（しかもよつばちゃんねるだけだし）

{
//	St("C",700, @0,@0,"bu似鳥_通常_rage");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_angry", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_rage", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300620nki">
（オレを一発屋芸人にすんな！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300630nki">
（ブームとか、そういうのいらないって！）

{
//	St("C",700, @0,@0,"bu似鳥_通常_sad");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_rage", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_sad", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300640nki">
（…………）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300650nki">
（ブーム、ねぇ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1821);}

//	St("C",700, @0,@0,"bu似鳥_通常_smile");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_sad", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_smile", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300660nki">
（スマガ本でも出すか？　流行ってるし）

{
//	St("C",700, @0,@0,"bu似鳥_通常_normal");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_smile", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_normal", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300670nki">
（<RUBY text="タチバナ">大刀刃那</RUBY>も、流行り物のジャンルに替えた途端、ゲームが売れたっていうしな……）

{
//	St("C",700, @0,@0,"bu似鳥_通常_hard");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_normal", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_hard", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300680nki">
（あんな才能無い絵で、よく売れるわ）

{
//	St("C",700, @0,@0,"bu似鳥_通常_pinch");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_hard", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_pinch", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300690nki">
（ったく、ホントに客は見る目ないのな。
　ブームだったらいいのかよ。バカか？　死ね！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	St("C",700, @0,@0,"bu似鳥_通常_sad");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_pinch", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_sad", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300700nki">
（……うん、ないな。ないない）

{
//	St("C",700, @0,@0,"bu似鳥_通常_hard");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_sad", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_hard", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300710nki">
（ってかさ、あの厨二病センスはないわ。
　なにあのルビの振り方？　最強主人公？）

{
//	St("C",700, @0,@0,"bu似鳥_通常_normal");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_hard", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_normal", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300720nki">
（最初のころのセカイ系？
　っぽいのだったらまだギリギリセーフかな？）

{
//	St("C",700, @0,@0,"bu似鳥_通常_angry");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_normal", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_angry", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300730nki">
（今や女主人公が<RUBY text="アルマゲスト">原器</RUBY>でオレＴＵＥＥＥＥＥＥＥＥ！！　で敵も味方もバンバンルビふりまくりでアホか）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1822);}


//	St("C",700, @0,@0,"bu似鳥_通常_shout");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_angry", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_shout", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300740nki">
（<RUBY text="ザ・ラスト・ワン">空前絶後</RUBY>とか<RUBY text="アポカリプティフィ">黙示録級災厄</RUBY>とか<RUBY text="ヘヴンズ・トライアングル">天国への三扉</RUBY>とかあああああ、もう考えただけでサブイボ立つわ！）

{
//	St("C",700, @0,@0,"bu似鳥_通常_normal");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_shout", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_normal", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300750nki">
（そんなのが受ける世の中ってなによ？）

{
//	St("C",700, @0,@0,"bu似鳥_通常_sad");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_normal", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_sad", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300760nki">
（オレ、儲けたくて創作してるんじゃないし）

{
//	St("C",700, @0,@0,"bu似鳥_通常_normal");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_sad", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_normal", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300770nki">
（もっとこう、なんていうんだ？
　オレの中にあるものを、そのままポンと出す）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("C",700, @0,@0,"bu似鳥_通常_smile");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_normal", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_smile", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300780nki">
（わかんないやつには、わかんないだろうな……）

{
//	St("C",700, @0,@0,"bu似鳥_通常_normal");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_smile", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_normal", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300790nki">
（…………）

{
//	St("C",700, @0,@0,"bu似鳥_通常_sad");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_normal", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_sad", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300800nki">
（……あー）

{
//	St("C",700, @0,@0,"bu似鳥_通常_worry");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_sad", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_worry", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300810nki">
（なんで、誰も、わかんないんだよ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300820nki">
（もうちょっと、わかってくれたって――いいだろ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("C",700, @0,@0,"bu似鳥_通常_smile");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_worry", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_smile", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300830nki">
（誰か……理解してくれねーかな……）

{
//	St("C",700, @0,@0,"bu似鳥_通常_sigh");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_smile", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_sigh", 200, 1000, null, true);
}
//◆ＳＥ：ぐううう……腹が鳴る
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300840nki">
「はぁ……」

{
//	St("C",700, @0,@0,"bu似鳥_通常_normal");
//	FadeSt("C",200,true);
	Fade("カメラ１/絵立絵_sigh", 300, 0, Axl2, false);
	Fade("カメラ１/絵立絵_normal", 200, 1000, null, true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300850nki">
「帰って、塩ごはんでも食べるか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,true);

	SetVolumeEX("SE20", 3000, 0, null);

//※下倉注：似鳥のカメラが揺れすぎている。あともう少し万世橋を見せてあげたい。（なかなか万世橋の絵が出ないので）

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	MoveFTP3stop();
	Fade("カメラ１/絵立絵*", 0, 0, null, true);
	Delete("カメラ１/*");
	Delete("カメラ１");
//◆場所：秋葉原_中央通り


//◆時間：ジャンプ
{	ClockPass(1824);}


	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

//◆ＳＥ：救急車
	CreateSE("SE05","seメカ_車_救急車サイレン_l");
	CreateSE("SE06","seメカ_車_救急車サイレン_l");
	MusicStart("SE05",2200,1000,0,1000,null,true);
	MusicStart("SE06",0,1,0,1000,null,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(1500);

	SetFrequency("SE06", 300, 960, null);
	SetVolumeEX("SE05", 400, 0, null);
	SetVolumeEX("SE06", 400, 1000, null);

	Wait(500);
	SetVolumeEX("SE06", 3000, 0, null);
	Wait(500);

	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300860nki">
（ん？　救急車？）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300870nki">
（ＵＰ＋の方……ってことは、ゆるキャラバンか？）

{	ClockPass(1825);}


{	St("C",700, @0,@0,"bu似鳥_通常_pride");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300880nki">
「バチが当たったんだ。ザマぁ！」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300890nki">
（ったく、なにがイケてないデザインだっつーの！）

{	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300900nki">
（オレの仕事の素晴らしさがわかってたまるか！）

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300910nki">
（どうせ視聴率とカネしか頭にないやつらなんだろ？）

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300920nki">
（ったく、世の中金かねカネ！　アホか！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1826);}




	TextBoxDelete(150);
	DeleteAllSt(200,true);


	SetVolumeEX("@xbgm*", 200, 1, null);

//◆ＳＥ：人同士がぶつかった音　どん！

	CreateSE("SE02","se戦闘_打撃音01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	EffectZoomadd(10000, 500, 500, "cg/ef/ef034_精神汚染.jpg",true);


	CreateSE("SE01","se人体_倒れる02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("揺用", 15000);
	Shake("揺用", 500, 5, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);

//	CreateSE("SE10","se環境_雨_l");
	CreateSE("SE11","seガヤ_交通_l");

	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300930nki">
「のぁっ！」

{	DeleteAllSt(200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/100300940kit">
「うぎゃっ！」

{	MusicStart("SE10",2000,1000,0,1000,null,true);
	MusicStart("SE11",2000,1000,0,1000,null,true);
	St("MR",700, @0,@0,"bu似鳥_ラッパー_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300950nki">
「ふざけんな！　ちゃんと前見て――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@50,"bu千秋_通常_sigh");
	Move("@StNameML/*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/100300960kit">
「いたたたた――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100300970nki">
「あ、歩いた方がいいと思いますよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	Move("@StNameML/*", 200, @-30, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/100300980kit">
「ぅ……あ、あああああ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/100300990kit">
「いやああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//ＳＥ：ピュー！
	CreateSE("SE01","se動作_空飛ぶ01");
	MusicStart("SE01",0,900,0,1000,null,false);

	Move("@StNameML/*", 200, @-300, @0, Axl1, false);
	DeleteAllSt(200,true);

	Wait(1200);

	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);

//あきゅん「修正：エコーしていたのを修正しました」
	SetVolumeEX("@xbgm12", 2000, 450, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301000nki">
「…………なんだよ」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301010nki">
「ガキまでオレをバカにすんのかよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 3000, 0, null);

	SoundPlay("@xbgm12",0,450,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(1827);}

//◆場所：秋葉原_蔵前橋通り
	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


	St("C",19010, @0,@0,"fu似鳥_通常_angry");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0245]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301020nki">
（ああっ！　クソ！　ふざけてる！）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301030nki">
（みんな、オレを目の仇みたいにしやがって！）

{	St("C",19010, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301040nki">
（オレがなんか悪いことしたか？）

{	St("C",19010, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301050nki">
（オレをこんな風にしたの、世の中だろ？）

{	St("C",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301060nki">
（オレだって、好きで借金したワケじゃないし）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(1828);}
//◆場所：似鳥マンション_エントランス
	OnBG(10,"bg1301100似鳥マンション_エントランス_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);


	St("C",19010, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301070nki">
（そうだ、政治が世の中を腐らせたんだ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301080nki">
（利権なんかに目が眩んだんだろ？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",19010, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301090nki">
（国民を食い物にしやがって）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301100nki">
（だからオレたちが苦しむんだよ）

{	St("C",19010, @0,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301110nki">
（オレたちだって、好きでこんな暮らししてないし）

{	St("C",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301120nki">
（ちゃんと職があって、未来への夢があって、やりがいがあれば、ちゃんとできるよ）

{	St("C",19010, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301130nki">
（でも、世の中そうじゃ――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(1829);}

//◆場所：似鳥マンション_正面
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

	Fade("エフェクト１", 0, 0, null, true);
	Delete("エフェクト１");

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

	St("C",19010, @0,@0,"fu似鳥_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301140nki">
（そうじゃないんだよ、クソ！）

{	St("C",19010, @0,@0,"fu似鳥_通常_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301150nki">
（違う！　間違ってる！）

{	St("C",19010, @0,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301160nki">
（本当に、なにからなにまで間違って――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：鍵を開ける

//◆ＳＥ：扉を開ける


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆場所：似鳥マンション_玄関
	OnBG(10,"bg1303100似鳥マンション_玄関_通常");
	FadeBG(0,true);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@xbgm*", 1000, 0, null);

	DrawDelete("絵黒幕", 300, 100, null, "blind_01_00_1", true);

	Wait(300);


//◆演出指定：カッターナイフが目立つ感じの演出
//おがみ：β調整済み
/*
	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/img/imgカッター刃元a.jpg");
	CreateTextureEX("絵背景２", 2000, 0, 0, "cg/img/imgカッター刃元b.jpg");

	Fade("絵背景１", 500, 1000, null, true);

	CreateSE("SE02","se戦闘_カッター_刃出す04単発");
	MusicStart("SE02",0,1500,0,1000,null,false);
	Fade("絵背景２", 2000, 1000, null, true);

	Wait(300);

	CreateColorEX("絵色１", 10000, "#000000");
	Fade("絵色１", 1000, 1000, null, true);
	Wait(500);

	PrintGO("上背景", 30000);
	FadeDelete("上背景", 0, null, true);

*/
	PrintGO("上背景", 30000);

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/img/imgカッターバラe.jpg");
	#imgカッター全体 = true;

//	FadeDelete("上背景", 300, null, true);

//◆演出指定：カッターナイフが目立つ感じの演出
	//▼カッターマクロセット
	NocoCutSet("IN",10,2000);

//	CreatePlainSP("上背景", 10000);

	//▼カッターマクロフェード
	NocoCutFade();

	FadeDelete("上背景", 200, null, true);

	//▼カッターマクロフェード
	NocoCut("OUT",10,200,100,200);

	Wait(500);


/*
	CreateColorEX("絵色１", 10000, "#000000");
	Fade("絵色１", 1000, 1000, null, true);
	Wait(500);
*/

//◆ＳＥ：ザシュッ！　と血が噴き出す
//★徒歩：画像が無いので血のエフェクトいれて！
	CreateSE("SE03","se戦闘_切断03");
	CreateTextureEX("上背景", 10000, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Zoom("上背景", 0, 2000, 2000, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE03",0,500,0,1000,null,false);
	Zoom("上背景", 100, 1000, 1000, Dxl2, false);
	Fade("上背景", 100, 1000, null, true);

	PrintGO("デリート用", 1000);
	Delete("絵短刃*");
	Delete("絵色*");
	Delete("デリート用");

	Wait(500);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301170nki">
「え……？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/100301180nki">
「ノーコ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/100301190nko">
「しんで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("上背景", 1000, null, true);


//	ClearFadeNut(0, true);


	EndScene();
}
