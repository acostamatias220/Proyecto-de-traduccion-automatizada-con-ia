
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1900恵那.nss_MAIN
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
	$GameName = "1910恵那.nss";
	//$GameCircle=false;

}

scene 1900恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1150">
////////////header////////////
//file name "1900恵那.nss"
//title "アザナエル"
//previous "1850恵那.nss"

////////////footer////////////
//next "恵那" "1910恵那.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

	//OnBG(10,"bg0701200地下_通路_地震後");
	//FadeBG(0,true);

{	ClockPass(1900);}


//◆演出指定：徐々に辺りの煙が晴れていく

	CreateMovieEX("ムービー１", 11000, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);
	Fade("ムービー１", 0, 1000, null, true);

	FadeDelete("上背景", 2000, null, true);

//恵那、ユージロー、地下（音声加工：反響）
//voice/19/000300010fje～voice/19/000301150fje//β時（千代子）
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300010fje">
「けほっ！　けほっけほっ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300020fje">
（……天井が、崩れた？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300030fje">
（ここは大丈夫だけど――）

　恵那は、携帯するエコバッグから、探偵七つ道具のひとつ懐中電灯を取り出す。

{	CreateSE("SE01","se動作_ライト点ける");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300040fje">
（だめだ、視界が利かない）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1901);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300050fje">
（壁伝いに……前に……）



//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300060fje">
「ユージロー？　けほっ！」



//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300070fje">
「ユージロー。ユージロー！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300080fje">
「どこにいるの？　ねえ、ねえってば！」

　足の裏が傾斜に触れ、かさりと音を立てる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("ムービー１", 8000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　徐々に利き始めた視界の中、足元を凝視する。

//	St("C",700, @0,@0,"bu恵那_哀愁_worry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300090fje">
（草……？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300100fje">
（ってことは、上は――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateSE("SE02","se環境_雨_l");
	MusicStart("SE02",10000,400,0,1000,null,true);


	PrintGO("上背景", 5000);

//◆場所：地下_通路_地震後
	OnBG(10,"bg0701200地下_通路_地震後");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300110fje">
「空……」


　崩れた天井から吹き込む外気が、土煙をさらう。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　いつの間にか降り出した雨が、涙のように頬を濡らした。

　目の前には、崩れた土の小山。


{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300120fje">
「そんな……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300130fje">
「天井……崩れてる……！」

{	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300140fje">
「ユージロー！　お願い！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300150fje">
「返事して！　ねぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　懐中電灯のスポットが、小山をひっきりなしに走る。

　ユージローを踏まないように、恐る恐る足を踏み出す。

　雨に濡れながら、懸命に愛犬の名前を呼ぶ。

　だが、どこからも声は聞こえない。

{	St("C",700, @0,@0,"bu恵那_哀愁_cry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300160fje">
「どうして？　ねぇ、どうして？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300170fje">
「また――私をおいて――」


{	SetVolume("SE02", 5000, 0, null);}

//◆ＳＥ：タヌキの鳴き声「きゅーん！」
{	CreateSE("SE01","se動物_タヌキ_鳴き声02");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);}

//	St("C",700, @0,@0,"bu恵那_通常_sigh");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300180fje">
「ユージロー！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	DeleteAllSt(200,true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　恵那は慌てて、懐中電灯で音のした方向を照らす。

　黒い４つ足の影がスポットを横切るが――

//◆ＳＥ：足音逃げる
{	CreateSE("SE02","se動物_タヌキ_走る_l");
	MusicStart("SE02",0,700,0,1000,null,false);
}

　まるで光を嫌うように闇の向こうへと走り出す。

{	SetVolume("SE02", 2000, 0, null);
}
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300190fje">
「ユージロー！　待って！　逃げないで！」

//	St("C",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300200fje">
「逃げるなって！　こら！　待ち――」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/000300210ujr">
「きゃううううううん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300220fje">
「え？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300230fje">
「今……足元から？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_normal");
	CreateSE("SE01","se擬音_ギャグ_ぷに");
	SetVertex("@StNameC/C*", center, bottom);
	Zoom("@StNameC/C*", 0, 2000, 0, null, true);
	FadeSt("C",0,true);
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("@StNameC/C*", 150, 1000, 2000, Axl1, true);
	Zoom("@StNameC/C*", 150, 1000, 1000, Dxl1, true);
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 1000, Axl3, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/000300240ujr">
「わうわうわうわうッ！！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300250fje">
「わ！　ご、ごめん！」


　恵那が足を持ち上げると、その下からユージローがバネ仕掛けの人形のように飛び出した。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1902);}

//	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300260fje">
「足元にいるなんて――」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300270fje">
「まさに灯台もと暗し！」

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300280fje">
「ってか、じゃあさっきの影は――」



//◆ＳＥ：走り出す
{	CreateSE("SE02","se動物_イヌ_走る_l");
	MusicStart("SE02",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);}

{	St("C",700, @200,@0,"buユージローa_通常_hard");
Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/000300290ujr">
「わうわうわうわうッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//	St("C",700, @0,@0,"bu恵那_通常_angry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300300fje">
「え？　ちょっとユージロー！」

//	DeleteAllSt(200,true);}
　突然、元来た道の方向へと走り出すユージロー。

　さっき見た黒い影と同じ方向だ。

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300310fje">
「さっきからなんなの？　なんで逃げ出すのよ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300320fje">
「待ちなさいって――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


//◆演出指定：通路の奥が光る：不思議ＳＥ全力でいくか
//◆演出指定：ＢＧＭ特別なものに。ってか「かごめかごめ」が徐々にフェードインって感じだな
//◆演出指定：とにかくユージローを忘れるくらい

//	TextBoxDelete(150);

	CreateSE("SE01","se擬音_光迸る");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵黒幕", 25000, "#FFFFFF");
	DrawTransition("絵黒幕", 3000, 0, 1000, 1000, null, "cg/data/circle_05_00_0.png", true);

WaitKey(500);
	SetVolume("SE01", 3000, 0, null);

	SoundPlay("@xbgm14_onlyvo",10000,300,true);
	FadeDelete("絵黒幕", 2000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300330fje">
「…………！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300340fje">
（なに……この感じ？）



//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300350fje">
（これ……誰かの声……？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300360fje">
（歌……？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300370fje">
（あ……もしかして……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1903);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300380fje">
（かごめ……かごめ……？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300390fje">
（奥に……誰かいるの？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


	CreateSE("SE01","se動作_歩く01_l");
	CreateSE("SE02","se動作_歩く01_l");
	SoundEffect("SE02","SEWERPIPE");

	MusicStart("SE01",0,700,0,800,null,true);
	MusicStart("SE02",0,700,0,800,null,true);



	PrintGO("上背景", 5000);
	FadeDelete("上背景", 1000, null, true);
Delete("ムービー１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300400fje">
（…………）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//◆ＳＥ：近づく足音

	//CreateSE("SE01","se動作_歩く04_l");
	//MusicStart("SE01",0,700,0,1000,null,false);

//◆演出指定：焦らす感じでたっぷり


	CreateColorSP("上背景", 15000, "BLACK");

	CreateTextureSPmul("絵色闇", 200, Center, Middle, "cg/data/circle_16_00_1.png");
	Fade("絵色闇", 0, 850, null, true);

WaitKey(1000);


{	ClockPass(1904);}

	SetVolume("@xbgm14_onlyvo", 10000, 400, null);

//◆場所：地下_祭壇
	OnBG(10,"bg0702200地下_祭壇_閉門");
	FadeBG(0,true);
//1024x1757
	Move("@OnBG*", 0, @0, -1180, null, true);

	FadeDelete("上背景", 1000, null, true);

	Move("@OnBG*", 10000, @0, -100, DxlAuto, false);
WaitKey(10000);
	Move("@OnBG*", 0, @0, -100, null, true);

	SetVolume("SE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0116]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300410fje">
（ここは――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300420fje">
「社……？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300430fje">
（なんで、こんな所に社が……？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300440fje">
（サイババアも、こんなの教えてくれなかったし……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300450fje">
（それに……なんか、変）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300460fje">
（胸が苦しくて……すごく……嫌な感じ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm14_onlyvo", 10000, 500, null);


//	TextBoxDelete(150);

//◆ＳＥ：高い音量で「きいいいいいいい」扉開く
	CreateSE("SE01","se動作_ドア開ける05");
	MusicStart("SE01",0,1200,0,1000,null,false);

	OnBG(10,"bg0702100地下_祭壇_通常");
	Move("@OnBG*", 0, @0, -100, null, true);
	FadeBG(1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//	St("C",700, @0,@0,"bu恵那_哀愁_worry");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300470fje">
「――――っ！？」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300480fje">
（なななななな、何？！　開いた！？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300490fje">
（なんで……扉が開くの？）

//	St("C",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300500fje">
（風……？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300510fje">
（いやでも、風なんてどこにも吹いてないし……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1905);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300520fje">
（それじゃ、なんで……）

//	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300530fje">
「……………………」

//	St("C",700, @0,@0,"bu恵那_哀愁_fear");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300540fje">
「あ……」

　恵那はゆっくりと、祭壇へと近づき――



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureSP("絵背景", 100, Center, -100, "cg/bg/bg0702100地下_祭壇_通常.jpg");
	SetVertex("絵背景",512,398);

//◆ＥＶ："ev/ev1900恵那アザナエル発見.txt"
	CreateTextureEX("絵背景M", 1000, 0, -90, "cg/ev/m/ev1900恵那アザナエル発見_m.jpg");//1536x864

	Zoom("絵背景", 2000, 1500, 1500, Axl1, false);
	Request("絵背景",Disused);

	Wait(1000);
	Move("絵背景M", 1000, -400, @0, Dxl1, false);
	Fade("絵背景M", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300550fje">
「拳銃……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300560fje">
（確かこれ……ミリタリー＆ポリスってやつだわ……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300570fje">
（だいぶ古い感じはするけど――）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300580fje">
（あれ？）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev1900恵那アザナエル発見.jpg");

	CreateTextureEX("絵背景L", 1000, 0, -110, "cg/ev/l/ev1900恵那アザナエル発見_l.jpg");//2048x1152
//	Move("絵背景L", 4000, -1024, @0, null, false);
	Move("絵背景L", 4000, -524, @0, null, false);

	Fade("絵背景L", 1000, 1000, null, true);
	Fade("絵背景", 0, 1000, null, true);
	Delete("絵背景M");
WaitKey(2000);
	FadeDelete("絵背景L", 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300590fje">
（なんか……グリップに、模様が）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300600fje">
（ぐちゃぐちゃで、よくわかんないな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300610fje">
（バレルにも……文字が彫ってある？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300620fje">
（アルファベット……だよね？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300630fje">
（Ａ……Ｎ……Ｅ……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300640fje">
（…………）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300650fje">
（なんて書いてあるのか、この角度だと読めない……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	Fade("絵背景*", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300660fje">
「…………」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300670fje">
「うーん……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300680fje">
（やっぱり、見ただけじゃ本物かわかんないか……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300690fje">
（かといって……触る？）




//	St("C",700, @0,@0,"bu恵那_哀愁_sad");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300700fje">
（さすがに、社の中に手を入れるのはちょっと……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(200,true);

{	ClockPass(1906);}

//	TextBoxDelete(150);
	Fade("絵背景*", 500, 1000, null, true);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300710fje">
（…………）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300720fje">
（うん。１回外に出て、星さんに相談――）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("@xbgm14_onlyvo", 10000, 550, null);

//◆ＳＥ：演出、拳銃光る

	CreateSE("SE01","se擬音_光迸る");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵黒幕", 25000, "#FFFFFF");
	DrawTransition("絵黒幕", 3000, 0, 1000, 1000, null, "cg/data/circle_02_00_0.png", true);

WaitKey(500);
	SetVolume("SE01", 3000, 0, null);
	FadeDelete("絵黒幕", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300730fje">
「――――！？」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300740fje">
（拳銃が光った……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolume("SE01", 1000, 0, null);
	Fade("絵背景*", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//	St("C",700, @0,@0,"bu恵那_哀愁_sad");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300750fje">
（私……呼ばれてる？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300760fje">
「――――」




{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300770fje">
（そうよ、落ち着きなさい富士見恵那！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300780fje">
（名探偵は、何故名探偵と呼ばれるの？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300790fje">
（常人にはできないような、優れた推理をするから？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1907);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300800fje">
（いいえ。それは必要条件だけど、十分条件じゃないわ）

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300810fje">
（優れた推理が花開くためには、それ相応の大事件が必要なのよ！）



{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300820fje">
（私は今まで、どんな事件を解決してきた？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300830fje">
（新聞に載るような怪事件があった？）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300840fje">
（ない。ないわ。今までの私の推理なんて、おままごとみたいなものだもの！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);





	SetVolume("@xbgm14_onlyvo", 10000, 600, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300850fje">
（確かに、私にはまだ、実績がない）



//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300860fje">
（私のブルマー窃盗事件も）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300870fje">
（みーちゃんのひとりあそびの怪談も）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300880fje">
（ヨガトランスポートの謎も）

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300890fje">
（……母さんの、失踪も）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300900fje">
（真実を解明できてない。正直まだ半人前よ）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300910fje">
（父さんに、推理ごっこだって笑われても、仕方ない）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300920fje">
（でも――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1908);}

//	TextBoxDelete(150);
	Fade("絵背景", 500, 1000, null, true);
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0225]
//	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300930fje">
（それは、昨日までの話）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300940fje">
（この拳銃は、私の夢！）


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300950fje">
（本当の――）

//	St("C",700, @0,@0,"bu恵那_通常_hard");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300960fje">
「事件よ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※下倉注：ここ例のエコー演出したいです。

//	SetVolume("@xbgm14_onlyvo", 400, 0, null);
//	TextBoxDelete(150);
	CreateSE("SE01","se擬音_銃光る");
	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	CreateTextureEX("絵背景L", 1000, Center, Middle, "cg/ev/l/ev1900恵那アザナエル発見_l.jpg");//2048x1152

	MusicStart("SE01",1000,700,0,1000,null,false);

	Fade("絵色", 3000, 300, Dxl1, true);

	SetVolumeEX("SE01", 200, 0, null);
	SetVolumeEF("@xbgm14_onlyvo", 1000);

	Zoom("絵背景L", 0, 500, 500, null, false);
	Zoom("絵背景L", 500, 5000, 5000, Axl2, false);
	Fade("絵背景L", 500, 1000, null, false);

	Fade("絵色", 500, 1000, null, true);
	Delete("絵背景*");
	SetVolume("SE01", 1000, 0, null);
	FadeDelete("絵色", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{
//	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300970fje">
「――――！！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300980fje">
（この感じ……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000300990fje">
（この銃……やっぱり、普通じゃない……！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);


//imgアザナエルa.png

	CreateColorEX("絵色100", 300, "BLACK");
	CreateTextureEX("絵背景100a", 300, Center, 100, "cg/img/imgアザナエルa.png");

	Move("絵背景100a", 1000, @0, 0, Dxl1, false);
	Fade("絵色100", 1000, 1000, null, false);
	Fade("絵背景100a", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　暗闇の中、恵那は銃に刻まれた文字を読む。

//	St("C",700, @0,@0,"bu恵那_哀愁_sad");
//	FadeSt("C",200,true);
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301000fje">
「<RUBY text="アザナエル">ＡＸＡＮＡＥＬ</RUBY>――」

//	St("C",700, @0,@0,"bu恵那_一休_think");
//	FadeSt("C",200,true);
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301010fje">
（この銃は、隠されていた）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301020fje">
（そして河原屋双六が、それを盗み出そうとしていた――）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301030fje">
（絶対に、事件だわ）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("絵背景100a", 500, null, false);
	FadeDelete("絵色100", 500, null, true);


	DeleteAllSt(200,true);





//◆ＳＥ：カチャカチャシリンダを外す

	CreateSE("SE01","se銃_シリンダー回転");
	MusicStart("SE01",0,700,0,1000,null,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301040fje">
（たしか、ここをこうして……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301050fje">
（弾は……ないわね）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

{	ClockPass(1909);}

//◆ＳＥ：チャックの開け閉め
//あきゅん「objエコバッグ_恵那1900」


	CreateSE("SE01","se動作_ジッパー開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);

	CreateSE("SE02","se動作_バッグ落とす");
	MusicStart("SE02",0,700,0,1000,null,false);
WaitKey(200);

	CreateTextureEX("絵オブ", 500, Center, Middle, "cg/obj/objエコバッグ_恵那1900.png");
	Zoom("絵オブ", 0, 0, 1000, null, true);

	Zoom("絵オブ", 300, 1000, 1000, Dxl3, false);
	Fade("絵オブ", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]
　恵那は空のシリンダを確認した後、バッグにしまう。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_ジッパー閉める01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("絵オブ", 300, 0, 1000, Dxl3, false);
	FadeDelete("絵オブ", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0256]

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301060fje">
（星さんに伝えたら、絶対に隠そうとする。
　そっと、持ち出さなきゃ）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301070fje">
（その後は……父さんに？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301080fje">
（……それは、嫌）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301090fje">
（父さんは星さんと親しいし、私が発見したのを認めたくないはず……）

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301100fje">
（他の人に渡して、個人的なコネクションをつくるの！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301110fje">
（事件現場に顔パスで入れるようになったらこっちのものよ！）


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301120fje">
（拳銃は、大いなる陰謀の尻尾にしか過ぎない）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301130fje">
（その頭に、食らい付いてやるんだから！）


{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301140fje">
「気合い入れなさい、富士見恵那！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/000301150fje">
「これが、名探偵としての第一歩よ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	EndScene();
}
