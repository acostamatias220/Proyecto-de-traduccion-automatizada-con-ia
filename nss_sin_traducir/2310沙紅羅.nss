
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2310沙紅羅.nss_MAIN
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

	$GameName="2320カゴメ5.nss";

}

scene 2310沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1520">
////////////header////////////
//file name "2310沙紅羅.nss"
//title "足踏み"
//previous "2304沙紅羅.nss"

////////////footer////////////
//next "沙紅羅"（"flkagome5" = false） "e2320沙紅羅.nss"
//next "沙紅羅" "2320沙紅羅_千秋.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 10000, "#000000");

	SoundPlay("@xsong01",0,1,true);
//※下倉注：バックギャモン準備

{	ClockPass(2310);}

//あきゅん「演出：シナリオ整合性のため前ファイルからシナリオを移植しました」

//◆演出指定：原付に乗ってる
//	CreateSE("SE01","seメカ_バイク_エンジン加速");
	CreateSE("SE10","seメカ_バイク_走行_l");
//	MusicStart("SE01",0,900,0,1000,null,false);
	MusicStart("SE10",3000,500,0,1000,null,true);

	Wait(2500);

	CreateMovieEX("絵オムービー１", 1000, Center, Middle, true, true, "dx/mv_集中線白a1.ngs");
	Request("絵オムービー１", AddRender);

	Zoom("絵オムービー１", 0, 3250, 2500, null, true);
	Fade("絵オムービー１", 0, 300, null, false);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 3, 500, 80, false);

	Fade("絵背景100", 0, 1000, null, true);
	MoveFTP1("@絵背景100",1000,15,8);

	Wait(1500);

	FadeDelete("上背景", 0, null, true);
	DrawDelete("黒幕１", 300, 100, null, "zoom_01_00_1", true);

	Wait(1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100580skr">
（ウソだ……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100590skr">
（絶対に……ウソだ！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100600skr">
（マーくんが死ぬなんて、そんなのウソだ！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100610skr">
（信じない！）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100620skr">
（そんなの、アタシは絶対信じない――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2311);}

//◆演出指定：空から雪が降る

	SetVolumeEX("SE10", 3500, 200, null);

	CreateTextureEX("絵背景1000", 200, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");

	SnowDrop(1000);
	Fade("絵オムービー１", 2000, 0, null, false);
	Fade("絵背景1000", 2000, 1000, null, true);

	MoveFTP1stop();
	Delete("絵背景100");
	Delete("絵オムービー１");

	Wait(3000);

	SoundPlay("@xbgm25",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100630skr">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100640skr">
「雪……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100650skr">
（あの日――）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100660skr">
（タカが事故ったあの日も、雪で――）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100670skr">
（あいつは――前の日に、電話で言ってた）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100680skr">
（ワルばっかりやって、オチコボレなアタシたちだけど、ふたりならやり直せるって）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100690skr">
（心を入れ替えれば、きっとまともに生きられるって）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100700skr">
（やり直すのに、遅いってことは、ないって……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100710skr">
（タカは……そのまま、帰ってこなかったけど……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100720skr">
（アタシは、その言葉を信じて……だから……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100730skr">
（きっと……きっと、まだ、間に合うって……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	SetVolumeEX("@xbgm*", 2000, 0, null);

	SetFrequency("SE10", 6000, 1500, AxlDxl);
	SetVolumeEX("SE10", 2500, 1000, null);

	CreateColorSP("黒幕１", 3000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	SnowDropDelete(0);
	Delete("絵背景*");

	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100740skr">
「お……おお……おおおおおお……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/040100750skr">
「うおおおおおおおおおおおおおおおおッッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Wait(1000);

	SetVolume("SE*", 2000, 0, null);

	Wait(2000);

//■再定義定型文
	PrintGO("上背景", 30000);

	Delete("黒幕１");
	Delete("Snow/絵演出雪*");
	Delete("Snow/pプロセス");

{	ClockPass(2312);}

//◆場所：泰然堂大学病院_正面
	OnBG(10,"bg1401100泰然堂大学病院_正面_通常");
	FadeBG(0,true);

	SnowDrop(0);

	Wait(2000);

	DrawDelete("上背景", 300, 100, null, "blind_01_00_1", true);


//◆ＳＥ：原付から降りる
	CreateSE("SE01","seメカ_バイク_エンジン停止");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);



	St("C",2000, @-50,@0,"fu沙紅羅_後ろ向き_hard");
	Move("@StNameC/C*", 700, @+50, @0, Dxl1, false);
	FadeSt("C",600,true);


//※下倉注：ここはたっぷり時間を入れて演出お願いします 2010/11/22

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300010skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(500,true);

	Wait(500);

//嶋：踏みきれない一歩
	CreateSE("SE01","se動作_一歩");
	MusicStart("SE01",0,500,0,1200,null,false);

	Wait(2000);

{	St("C",2000, @0,@0,"fu沙紅羅_通常_normal");
	FadeSt("C",600,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300020skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(500,true);

	CreateTextureEX("絵背景100", 10, -700, -406, "cg/bg/l/bg1401100泰然堂大学病院_正面_通常_l.jpg");
	Move("絵背景100", 5000, -820, @0, null, false);
	Fade("絵背景100", 2000, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300030skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Fade("絵背景100", 1000, 0, null, true);
	Delete("絵背景100");

//嶋：下がる一歩
	CreateSE("SE01","se動作_一歩");
	MusicStart("SE01",0,500,0,700,null,false);

	Wait(2000);

{	St("C",2000, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",600,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300040skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300050skr">
「マーくん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300060skr">
「アタシ、こんなナリだろ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300070skr">
「今までさんざん、悪いことしてさ。
　みんな――ほとんどみんなから、見放されてさ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300080skr">
「自分で自分が、どうしようもないはみ出しものだってわかってて、もうどうでもよくなって」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300090skr">
「おまえにも、ひでーことして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",2000, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300100skr">
「でも、おまえから電話が来た」

{	St("C",2000, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300110skr">
「そんとき、アタシは思ったんだ」

{	St("C",2000, @0,@0,"fu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300120skr">
「これは、神様のアドバイスだって」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300130skr">
「やり直すには、遅すぎることはねぇって」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300140skr">
「今からでも、きっと、やり直せるって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",2000, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300150skr">
「でも……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300160skr">
「こんな姉ちゃんで、ごめん」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300170skr">
「約束も守れないで、ごめん」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300180skr">
「意気地無しで、ごめん」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300190skr">
「でもアタシ……入れねぇ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――





	TextBoxDelete(150);

	DeleteAllSt(200,true);


	CreateSE("SE01","se動作_足踏み");

	St("C",700, @+50,@+200,"buユージローa_通常_hard");
	MusicStart("SE01",0,700,0,750,null,false);
	Move("@StNameC/C*", 200, @-50, @-200, Dxl1, false);
	FadeSt("C",200,true);


	SetVolumeEX("SE*", 1000, 0, null);

	SetVolumeEX("@xbgm25", 1000, 0, null);

	CreateSE("SE10","se環境_風_l");
	CreateSE("SE20","se環境_風低音_l");
	MusicStart("SE10",2000,300,0,1100,null,true);
	MusicStart("SE20",2000,300,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/100300200ujr">
「わうわうわうわうっ！！」

{
//	SoundPlay("@xbgm04",1500,450,true);
	CreateSE("SE02","se動作_一歩");
	St("ML",700, @+100,@0,"bu平次_通常_normal");
	DeleteSt("C",200,false);
	MusicStart("SE02",0,600,0,1000,null,false);
	Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300210fjh">
「おう、キンカクジ！」

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300220skr">
「……誰が、金閣寺だ」

{	St("ML",700, @0,@0,"bu平次_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300230fjh">
「てめぇだよ」

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/100300240ujr">
「わうーん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300250skr">
「うるせえこのモジャモジャファミリー。
　アタシは今、そういうファンキーな気分じゃねぇんだ」

{	St("ML",700, @0,@0,"bu平次_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300260fjh">
「ところがどっこい、世の中はファンキーだ。
　悪ぃけどよ、オレを送っちゃくれねぇか？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300270skr">
「……送る？」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300280fjh">
「村崎が、バリーとか言うガイジンに連れて行かれちまったからな。足がねぇんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

{	ClockPass(2313);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300290skr">
「足ならてめぇにもついてんだろうよ」

{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300300fjh">
「ところがどっこい、使い物にならねぇと来てる」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300310skr">
「使い物に……？」

{	DeleteSt("MR",200,true);}
　平次が足袋を外すと、赤黒く腫れ上がった素足が露わになった。

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300320skr">
「ひでぇ……！
　さっさと病院行って、治療してもらえよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"bu平次_通常_happy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300330fjh">
「抜け出してきたんだ」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300340skr">
「は？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300350fjh">
「娘がさらわれた」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300360skr">
「……は？　娘？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300370skr">
「結婚してたのか？　そのモジャモジャで？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu平次_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300380fjh">
「余計なお世話だ！」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300390skr">
「ははっ！
　娘さんに遺伝してねぇといいな、そのモジャモジャ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300400skr">
「ん？　モジャモジャ……？」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300410skr">
「あれ？　父親がモジャモジャ警官だから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300420skr">
「あれ？　もしかしてその娘って、あの名探偵！？」

{	St("ML",700, @0,@0,"bu平次_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300430fjh">
「なんでぇ、知り合いか？」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300440skr">
「さっき半田明神で会ったばっかり――
　って、アイツがさらわれた？　なんで！？」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300450fjh">
「河原屋双一って知ってっか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300460skr">
「双六さんの親分……か？」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300470fjh">
「ああ。オレの所に、さっき電話が来たんだ」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300480fjh">
「娘を預かったって、な」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300490skr">
「…………」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300500fjh">
「頼む！　この天気だろ？
　タクシー拾っても交通が麻痺してる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu平次_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300510fjh">
「どうしても、おまえの協力が必要なんだ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300520skr">
「…………乗れよ」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@+50,"buユージローa_通常_normal");
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/100300530ujr">
「わうわうっ！」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300540skr">
「あー、わかった。おまえもな」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("C",200,true);}
//◆音声指示：小声
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300550skr">
「ごめん、マーくん。
　後でまた、絶対来るから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE10", 2000, 0, null);
	SetVolume("SE20", 2000, 0, null);



	TextBoxDelete(150);

//	SetVolume("@xbgm*", 500, 0, null);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SnowDropDelete(0);

	DeleteAllSt(0,true);

	CreateWindow("win01", 1500, 0, 0, 320, 576, false);

	CreateWindow("win02", 1500, 704, 0, 320, 576, false);

	CreateTextureEX("winline01", 2000, 299, Middle, "cg/mask/ciウィンドウ縦01.png");
	CreateTextureEX("winline02", 2000, 678, Middle, "cg/mask/ciウィンドウ縦01.png");

	Move("win01", 0, @-320, @0, null, true);
	Move("win02", 0, @+320, @0, null, true);
	Move("winline01", 0, @-320, @0, null, true);
	Move("winline02", 0, @+320, @0, null, true);


	CreateTextureEX("win01/絵背景100", 1000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureEX("win01/絵st01", 1600, -350, -50, "cg/bu/bu沙紅羅_通常_shout.png");
	CreateTextureEX("win01/絵st02", 1600, -350, -50, "cg/bu/bu沙紅羅_通常_hard.png");
	CreateTextureEX("win01/絵st03", 1600, -350, -50, "cg/bu/bu沙紅羅_通常_sad.png");
	CreateTextureEX("win01/絵st04", 1600, -350, -50, "cg/bu/bu沙紅羅_通常_normal.png");
	CreateTextureEX("win01/絵st05", 1600, -350, -50, "cg/bu/bu沙紅羅_通常_smile.png");
	Move("win01/絵st01", 0, -135, 200, null, true);

	CreateTextureEX("win02/絵背景100", 1000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureEX("win02/絵st01", 1600, 422, -80, "cg/bu/bu平次_通常_pain.png");
	CreateTextureEX("win02/絵st02", 1600, 422, -80, "cg/bu/bu平次_通常_hard.png");
	CreateTextureEX("win02/絵st03", 1600, 422, -80, "cg/bu/bu平次_通常_cool.png");
	CreateTextureEX("win02/絵st04", 1600, 422, -80, "cg/bu/bu平次_通常_normal.png");
	CreateTextureEX("win02/絵st05", 1600, 422, -80, "cg/bu/bu平次_落ち込み_sad.png");
	Move("win02/絵st01", 0, 573, 200, null, true);


	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");

	Shake_Loop_shima2("@絵背景50","絵背景50shake");


	CreateSE("SE10","seメカ_バイク_走行_l");
	MusicStart("SE10",1500,700,0,1000,null,true);

	SoundPlay("@xbgm07",1000,450,true);

//◆時間：ジャンプ
{	ClockPass(2315);}
	Wait(2000);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);




//◆演出指定：移動中

	Fade("win01/絵背景100", 0, 1000, null, true);
	Fade("win02/絵背景100", 0, 1000, null, true);

	Move("winline02", 200, 678, @0, null, false);
	Move("win02", 200, 704, @0, null, false);
	Fade("winline02", 300, 1000, null, true);

	Move("win02/絵st01", 200, 422, -80, Dxl1, false);
	Fade("win02/絵st01", 300, 1000, null, true);
	Shake("win02/絵st01", 500, 1, 5, 0, 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300560fjh">
「いつつつつつッ！！」

{	SetVolume("SE10", 10000, 0, null);
	Move("winline01", 200, 299, @0, null, false);
	Move("win01", 200, 0, @0, null, false);
	Fade("winline01", 300, 1000, null, true);
	Move("win01/絵st01", 200, -350, -50, Dxl1, false);
	Fade("win01/絵st01", 300, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300570skr">
「お、おいモジャモジャ。
　汗すげぇぞ。大丈夫か？」

{	Fade("win02/絵st02", 200, 1000, null, true);
	Fade("win02/絵st01", 0, 0, Axl1, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300580fjh">
「あ……ああ。こんなのかすり傷よ！」

{	Fade("win01/絵st02", 200, 1000, null, true);
	Fade("win01/絵st01", 0, 0, Axl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300590skr">
「……場所は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300600fjh">
「バックギャモン、わかるか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300610skr">
「ああ」

{	Fade("win01/絵st03", 200, 1000, null, true);
	Fade("win01/絵st02", 0, 0, Axl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300620skr">
「……やっぱり、双六さんも関係してんのか？」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300630fjh">
「まあな」

{	Fade("win01/絵st02", 200, 1000, null, true);
	Fade("win01/絵st03", 0, 0, Axl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300640skr">
「カゴメアソビも？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300650fjh">
「なんだ。話が早ぇな」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300660skr">
「なあ、モジャモジャ。
　カゴメアソビって……いったい何なんだ？」

{	Fade("win02/絵st03", 200, 1000, null, true);
	Fade("win02/絵st04", 0, 0, Axl1, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300670fjh">
「河原屋双一の、遊びだよ」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300680fjh">
「今日秋葉原で起こった事件な、あの大半が、河原屋双一の手によって起こされたって言ったら、信じるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	Fade("win02/絵st02", 200, 1000, null, true);
	Fade("win02/絵st03", 0, 0, Axl1, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300690fjh">
「出会うはずのない人間たちが出会う。
　起こるはずのない事件が起こる」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300700fjh">
「小さな波と波が干渉し合い、大きなうねりとなって、願いを賭けた命懸けの遊戯が始まる」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300710fjh">
「叶うはずのない願いが叶い――
　死ぬはずのない人間が死ぬ」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300720fjh">
「アイツはな、カゴメアソビを楽しんでやがんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	Fade("win02/絵st02", 200, 1000, null, true);
	Fade("win02/絵st03", 0, 0, Axl1, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300730fjh">
「それまで命のやりとりになんて興味もなかったやつらが、アザナエルって欲望の導火線を見つけた瞬間――」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300740fjh">
「命懸けのギャンブルに、のめり込んでいくその様子を見て、はしゃいでやがるのさ」

{	Fade("win01/絵st03", 200, 1000, null, true);
	Fade("win01/絵st02", 0, 0, Axl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300750skr">
「本当に……それだけのために？」

{	Fade("win02/絵st04", 200, 1000, null, true);
	Fade("win02/絵st02", 0, 0, Axl1, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300760fjh">
「……さあな」

{	Fade("win01/絵st04", 200, 1000, null, true);
	Fade("win01/絵st03", 0, 0, Axl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300770skr">
「さあなって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300780fjh">
「オレも昔、カゴメアソビをし損ねてな」

{	Fade("win02/絵st05", 200, 1000, null, true);
	Fade("win02/絵st04", 0, 0, Axl1, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300790fjh">
「それで、嫁に逃げられちまって。
　娘からもさんざん嫌われて」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300800fjh">
「だから、もしかしたらコレは罰なのかもしれねぇ」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300810fjh">
「全部、手遅れだったのかもな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("win01/絵st02", 200, 1000, null, true);
	Fade("win01/絵st04", 0, 0, Axl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300820skr">
「違う」

{	Fade("win01/絵st01", 200, 1000, null, true);
	Fade("win01/絵st02", 0, 0, Axl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300830skr">
「そんなわけぇねよ。運命なワケねぇだろ！」

{	Fade("win01/絵st02", 200, 1000, null, true);
	Fade("win01/絵st01", 0, 0, Axl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300840skr">
「やり直そうと思うんなら、遅すぎるってことは――」

{	Fade("win02/絵st04", 200, 1000, null, true);
	Fade("win02/絵st05", 0, 0, Axl1, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300850fjh">
「遅すぎるってことはねぇな？」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300860fjh">
「そりゃおまえも、一緒だな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	Fade("win01/絵st04", 200, 1000, null, true);
	Fade("win01/絵st02", 0, 0, Axl1, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300870skr">
「…………」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300880fjh">
「お互い、傷は多いがよ」

{	Fade("win02/絵st02", 200, 1000, null, true);
	Fade("win02/絵st04", 0, 0, Axl1, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300890fjh">
「まだまだ、嘆いてる場合じゃねぇぞ」

{	Fade("win02/絵st03", 200, 1000, null, true);
	Fade("win02/絵st02", 0, 0, Axl1, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300900fjh">
「オレたちには、河原屋双一とは違う」

{	Fade("win02/絵st04", 200, 1000, null, true);
	Fade("win02/絵st03", 0, 0, Axl1, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300910fjh">
「本物の神様が、ついてんだ」

{	Fade("win01/絵st05", 200, 1000, null, true);
	Fade("win01/絵st04", 0, 0, Axl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300920skr">
「……サンキュー」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300930fjh">
「なぁに。礼を言うのは、こっちでぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SnowDrop(0);

	Delete("win01/絵*");
	Delete("win02/絵*");
	Delete("win01");
	Delete("win02");
	Delete("winline01");
	Delete("winline02");
	Delete("絵背景*");



//◆場所：秋葉原_ガード下_破壊
	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);

//◆時間：ジャンプ
{	ClockPass(2318);}
	Wait(1000);

	CreateSE("SE10","seガヤ_ざわざわ_l");
	MusicStart("SE10",1000,700,0,1000,null,true);

	Wait(300);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300940skr">
「……さすがに騒がしいな」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300950fjh">
「危ねぇからな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE10", 20000, 0, null);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　ノーコの一撃で高架線が崩壊したガード下。

　立ち入り禁止のテープが貼られ、その向こうには白バイ警官がひとり――

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100300960skr">
「ブラパン？」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/100300970e16">
「あ、さっきの！　金閣寺じゃねぇかッッ！！」

//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/100300980e16">
「はっはっはっは！　ここで会ったが１００年目！
　またノーヘルで現れるとは、いい度胸じゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu平次_通常_happy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100300990fjh">
「おう、久しぶりだなブラパン！」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/100301000e16">
「え……平次殿ッ！？」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301010fjh">
「おまえ、まだあのヘンチクリンなバイク乗り回してんのか？」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/100301020e16">
「いやそんな、ヘンチクリンだなんて……」

{	St("MR",700, @0,@0,"bu平次_通常_hard");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301030fjh">
「で、だ。積もる話はあるんだが、ちょいと急ぐ。
　ちょっくら通してもらえるか？」

{	DeleteAllSt(200,true);}
//【警官Ａ】
<voice name="警官Ａ" class="その他男声" src="voice/23/100301040e16">
「は、はいっ！！」

{	St("MR",700, @0,@0,"bu平次_通常_normal");
	FadeSt("MR",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301050fjh">
「じゃ、金閣寺」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301060skr">
「お……おう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SoundPlay("@xbgm07",0,450,true);


//◆ＳＥ：原付発進
	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

	SnowDropDelete(0);

//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901200エレキセンター_廊下_閉店");
	FadeBG(0,true);

	CreateWindow("win01", 1500, 0, 0, 320, 576, false);
	CreateWindow("win02", 1500, 704, 0, 320, 576, false);



	CreateTextureEX("winline01", 2000, 299, Middle, "cg/mask/ciウィンドウ縦01.png");
	CreateTextureEX("winline02", 2000, 678, Middle, "cg/mask/ciウィンドウ縦01.png");

	Move("win01", 0, @-320, @0, null, true);
	Move("win02", 0, @+320, @0, null, true);
	Move("winline01", 0, @-320, @0, null, true);
	Move("winline02", 0, @+320, @0, null, true);

	CreateTextureEX("win01/絵背景100", 1000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureEX("win01/絵st01", 1600, -350, -50, "cg/bu/bu沙紅羅_通常_normal.png");
	CreateTextureEX("win01/絵st02", 1600, -350, -50, "cg/bu/bu沙紅羅_通常_shout.png");
	CreateTextureEX("win01/絵st03", 1600, -350, -50, "cg/bu/bu沙紅羅_通常_hard.png");
	Move("win01/絵st01", 0, -135, 200, null, true);

	CreateTextureEX("win02/絵背景100", 1000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureEX("win02/絵st01", 1600, 422, -80, "cg/bu/bu平次_通常_hard.png");
	CreateTextureEX("win02/絵st02", 1600, 422, -80, "cg/bu/bu平次_落ち込み_sad.png");
	CreateTextureEX("win02/絵st03", 1600, 422, -80, "cg/bu/bu平次_落ち込み_shock.png");
	Move("win02/絵st01", 0, 573, 200, null, true);


	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg0901200エレキセンター_廊下_閉店.jpg");


	CreateSE("SE20","se環境_地鳴り02_l");
	MusicStart("SE20",500,700,0,1000,null,true);

	Shake("絵背景100", 3000, 0, 3, 0, 0, 500, null, false);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	Fade("win01/絵背景100", 0, 1000, null, true);
	Fade("win02/絵背景100", 0, 1000, null, true);

	Move("winline01", 200, 299, @0, null, false);
	Move("win01", 200, 0, @0, null, false);
	Fade("winline01", 300, 1000, null, true);

	Move("win01/絵st01", 200, -350, -50, Dxl1, false);
	Fade("win01/絵st01", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301070skr">
「おまえ……そんなカッコで人望あるんだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("SE20", 10000, 0, null);


	Move("winline02", 200, 678, @0, null, false);
	Move("win02", 200, 704, @0, null, false);
	Fade("winline02", 300, 1000, null, true);

	Move("win02/絵st01", 200, 422, -80, Dxl1, false);
	Fade("win02/絵st01", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301080fjh">
「うるせぇ」

{	Fade("win02/絵st02", 200, 1000, null, true);
	Fade("win02/絵st01", 0, 0, Axl1, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301090fjh">
「ってか、バイクで中まで来ちまって――」

{	Fade("win01/絵st02", 200, 1000, null, true);
	Fade("win01/絵st01", 0, 0, Axl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301100skr">
「アタシの暴蛇羅号を甘く見んな！
　どんな悪路だろうと――」

{	St("C",700, @+50,@0,"buジャブル_通常_normal");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/100301110jbr">
「おー！　ゴールデン・パビリオン！
　キンカクシデスネ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteAllSt(200,true);

{	Fade("win01/絵st03", 200, 1000, null, true);
	Fade("win01/絵st02", 0, 0, Axl1, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301120skr">
「あっちいけ！　見世物じゃねぇんだよ！」

{	Fade("win02/絵st03", 200, 1000, null, true);
	Fade("win02/絵st02", 0, 0, Axl1, true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301130fjh">
「おいコラ！　ちゃんと前見ろ！　階段――」

{	Fade("win01/絵st01", 200, 1000, null, true);
	Fade("win01/絵st03", 0, 0, Axl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301140skr">
「ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("winline01", 200, -640, @0, null, false);
	Move("win01", 200, -320, @0, Dxl1, false);
	Move("winline02", 200, 1024, @0, null, false);
	Move("win02", 200, 1344, @0, Dxl1, true);

//◆ＳＥ：ガガガガガガ！　揺れるバイク
	CreateSE("SE10","seメカ_バイク_階段降下");
	MusicStart("SE10",0,600,0,1000,null,true);

	Shake_Loop_shima2("@絵背景100","絵背景100shake");


{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	Shake("@StNameC/C*", 300, 5, 2, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301150skr">
「のわあああああああああああああああッ！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buユージローa_通常_sad");
	Shake("@StNameC/C*", 300, 5, 2, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/100301160ujr">
「キャゥ――――――ン」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu平次_通常_angry");
	Shake("@StNameC/C*", 300, 5, 2, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301170fjh">
「イデデデデデデデ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@xbgm07", 1000, 0, null);
	SetVolume("@SE*", 1000, 0, null);

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",300,1000,null,true);


	Wait(500);



	CreateSE("SE01","seメカ_バイク_エンジン停止");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(0,true);

	Delete("win01/絵*");
	Delete("win02/絵*");
	Delete("win01");
	Delete("win02");
	Delete("絵背景*");

	SetVolumeEX("@xsong01", 2000, 450, null);


//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

{	ClockPass(2319);}

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	Wait(2000);


{	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301180skr">
「おおおおおおお……楽しい」

{	St("ML",700, @0,@0,"bu平次_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301190fjh">
「『楽しい……』じゃねーだろ！
　イデーっつーの！」

{
//	SoundPlay("@xbgm04",1000,450,true);
	St("MR",700, @0,@0,"bu沙紅羅_頭かき_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301200skr">
「それが狙いだもんね」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301210fjh">
「狙い？」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301220skr">
「モジャモジャのオッサン、もう足、限界だろ」

{	St("ML",700, @0,@0,"bu平次_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301230fjh">
「ヘッ！　足の痛みなんて屁の河童――」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301240skr">
「ちょん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("MR",200,true);

{	St("ML",700, @0,@0,"bu平次_通常_pain");
	Shake("@StNameML/ML*", 300, 5, 0, 0, 0, 1000, null, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301250fjh">
「いでででででででッ！！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301260skr">
「ほーらみろ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301270skr">
「そんなんで、愛する娘を取り返しに行けんのか？
　無理だろ？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301280skr">
「アタシが代わりに話つけてきてやっからさ！
　ここで大人しく待ってなって！」

{	DeleteSt("MR",200,true);
	St("ML",700, @0,@0,"bu平次_通常_shout");
	Shake("@StNameML/ML*", 300, 0, 3, 0, 0, 1000, null, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301290fjh">
「バッキャロー！
　無理を通せば道理が引っ込むんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：足音
	CreateSE("SE01","se動作_歩く04_l");
	MusicStart("SE01",0,500,0,500,null,true);

	St("ML",700, @-100,@0,"bu平次_通常_angry");
	FadeSt("ML",200,false);
	Move("@StNameML/ML*", 100, @+20, @0, Dxl1, true);
	Move("@StNameML/ML*", 100, @+20, @0, Dxl1, true);
	Move("@StNameML/ML*", 100, @+20, @0, Dxl1, true);
	Move("@StNameML/ML*", 100, @+20, @0, Dxl1, true);
	Move("@StNameML/ML*", 100, @+20, @0, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301300fjh">
「ふんぐっ！　ふんぐっ！　ふんぐっ！　ふんぐっ！」

{	SetVolume("SE*", 100, 0, null);
	CreateSE("SE02","se動作_足踏み");
	MusicStart("SE02",0,1000,0,1000,null,false);
	St("ML",700, @0,@0,"bu平次_通常_smile");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301310fjh">
「へっへっへっへ！　どーでいッ！！」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301320skr">
「いやいや、そこまで無理しなくても……」

{	St("ML",700, @0,@0,"bu平次_通常_shout");
	DeleteSt("MR",200,true);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301330fjh">
「女ひとりに任せてオレがあぐらかいていられっか！」

{	DeleteSt("ML",200,true);
	CreateSE("SE01","se動作_カーテン開ける");
	MusicStart("SE01",0,1200,0,1000,null,false);}
　平次は顔面を蒼白にさせながら、地下通路への入り口を塞いでいる、コスプレ服を剥いだ。

{	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301340fjh">
「てめぇが連れてってくれなくてもな！」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301350fjh">
「オレひとりで、這ってでも行ってや――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xsong01", 1000, 0, null);


	TextBoxDelete(150);

	DeleteSt("C",200,true);

	SetVolume("@xbgm*", 500, 0, null);
	CreateSE("SE01","se人体_倒れる01");
	MusicStart("SE01",0,700,0,1000,null,false);

//◆ＳＥ：地下通路に転がる死体
{	St("ML",700, @0,@0,"bu平次_通常_shock");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301360fjh">
「な――――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev2250千秋オブデス.jpg");
	Fade("絵背景100", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301370skr">
「し、死体……！？」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301380fjh">
「カゴメアソビに失敗したか？
　頭を撃って……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301390skr">
「ちょ……ちょっと待て！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301400skr">
「こいつ、もしかして……見覚えが……」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/100301410ujr">
「わうわうわうっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	FadeDelete("絵背景100", 500, null, true);

	SoundPlay("@xbgm26",1000,450,true);

	St("MR",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301420skr">
「嘘だろ……？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301430skr">
「こいつ……こいつ……ッ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301440skr">
「アタシの弟子じゃねぇか！」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301450fjh">
「弟子……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu平次_通常_shock");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/100301460fjh">
「ああ！
　そういえば……スーパーノヴァで、働いてた……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301470skr">
「おい、嘘だろ弟子！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301480skr">
「アタシが本物の侠にしてやるって、約束しただろ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301490skr">
「こんなところで眠ったって、誰も喜ばねぇぞッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301500skr">
「おいコラ！　起きろ……起きてくれよ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301510skr">
「もうアタシ……もう、誰も失いたくない……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/100301520skr">
「こういうの、嫌なんだよ……ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//あきゅん「演出："e2320沙紅羅.nss"との繋ぎがあるので変更した際にはご連絡を」

	EndScene();
}
