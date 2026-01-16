
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2040恵那.nss_MAIN
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

	//★徒歩：フラグ修正
	if($myRoute=="トゥルー"){
		$GameName="2050カゴメ2.nss";
	}else{
		$LFlag_NowFile = "2040恵那.nss";
		$GameName="a2050カゴメ.nss";
	}
}

scene 2040恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1480">
////////////header////////////
//file name "2040恵那.nss"
//title "家族"
//previous "2030千秋_恵那.nss"

////////////footer////////////
//next "恵那" （"flkagome1" = true）"2050恵那.nss"
//next "恵那"（"flkagome1" = false） "aa2050千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);


//◆場所：秋葉原_万世橋

{	ClockPass(2040);}


	SoundPlay("@xbgm20",0,1,true);

	OnBG(10,"bg0104111秋葉原_万世橋_通常");
	FadeBG(0,true);

	//FadeDelete("上背景", 1000, null, true);

	if($PreGameName=="2030千秋_恵那.nss"){
	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}


	CreateSE("SE11","seガヤ_交通_l");
	MusicStart("SE11",1000,700,0,1000,null,true);

//◆演出指定：力なく

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg0104111秋葉原_万世橋_通常.jpg");
	SetShade("絵背景",MEDIUM);
	Zoom("絵背景", 0, 2000, 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//	St("C",700, @0,@0,"bu恵那_哀愁_sad");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100010fje">
「…………ふぅ」

{	St("C",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100020fje">
（アリガトね、アッキーちゃん）

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100030fje">
（さて……と）


//◆ＳＥ：ぴ！　携帯
{	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);}

　ディスプレイに表示されるのは、父である平次の名前。

{	St("C",19700, @0,@0,"fu恵那_一休_sigh");
	Fade("絵背景", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100040fje">
（さっきは、古井戸のことを隠しちゃったけど……
　怒るだろうな）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",19700, @0,@0,"fu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100050fje">
（でもさ、父さんの態度だって、どうかと思う）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100060fje">
（子供扱いして、アザナエルのことを教えてくれないから、こんなことに――）

{	St("C",19700, @0,@0,"fu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100070fje">
（…………いや）


{	St2("C",19700, @0,@0,"fu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100080fje">
（アザナエル、なくしちゃうんだもんね）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100090fje">
（子供扱いされて当然か……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　いつの間にか、バックライトの消えたディスプレイに、落胆した自分の顔が映る。



//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100100fje">
（……酷い顔）

{	St("C",19700, @0,@0,"fu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100110fje">
（うん、ダメだダメだ！）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100120fje">
（名探偵は諦めても、自分の務めは果たそう）

{	SetVolume("@SE11", 2000, 0, null);}


{	FadeDelete("絵背景", 200, null, false);
	DeleteAllSt(200,true);

	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(3000);
	CreateSE("SE01","seメカ_携帯_コール02_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(2000);
	CreateSE("SE01","seメカ_携帯_コール01_l");
	MusicStart("SE01",0,700,0,1000,null,true);
}
　覚悟を決めて、通話ボタンを押す。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2041);}


	SetVolume("@SE01", 10, 0, null);

//◆ＳＥ：通話

//	TextBoxDelete(150);


//◆ＳＥ：通話通じる

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
{	SetVolume("SE11", 10, 0, null);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100130fje">
「あの……父さん？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100140fjh">
『アザナエルを持ち出して、なくしたって？』

{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100150fje">
「知ってたんだ」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100160fjh">
『ミヅハに聞いたからな』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100170fje">
「そっか……」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100180fjh">
『で、何があった？』


{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100190fje">
「…………」



{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100200fjh">
『悪いニュース、だな？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100210fje">
「…………」



{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100220fje">
「アザナエルで、人が死んだの」




{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100230fjh">
『……んなバカな』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100240fjh">
『本殿にあった弾は盗まれてないって、星さんが――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100250fje">
「バックギャモンに、死体があるわ」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100260fjh">
『河原屋組が用意したのか』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100270fjh">
『…………』

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100280fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100290fjh">
『……本当に死んでたんだな？』

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100300fje">
「すぐに出てきちゃったから、触ってはいないけど。
　即死みたいな傷だった」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100310fjh">
『誰が死んだか、わかるか？』

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100320fje">
「うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2042);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100330fje">
「河原屋、双六……」



{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100340fjh">
『双六……？』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100350fjh">
『ふ……ふはは』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100360fjh">
『ははははははははは！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100370fje">
「え……なんで、笑うの？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100380fjh">
『大丈夫。おまえが見たのは、何かの間違いだ』

{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100390fje">
「間違い……？　それって――」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100400fjh">
『アザナエルじゃ、誰も死んでねぇってことだよ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100410fje">
「でも、絶対アレは――」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100420fjh">
『後でちゃんと話す』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/400100430fjh">
『だから今は安心して、父ちゃんに任せとけ。な？』


{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100440fje">
「う……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);




//◆ＳＥ：電源切れる音
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100450fje">
「任せとけ……か」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2043);}

//	DeleteAllSt(200,true);
	TextBoxDelete(150);

	CreateSE("SE10","seガヤ_街中_l");
	MusicStart("SE10",2000,700,0,1000,null,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);
//	SetVolume("@SE*", 1000, 0, null);
WaitKey(1000);
	SetVolume("@SE10", 2000, 0, null);

	SetVolumeEX("@xbgm20", 2000, 200, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2044);}


//◆場所：スーパーノヴァ_正面_ガラス補修
	OnBG(10,"bg0501300スーパーノヴァ_正面_ガラス補修");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);
WaitKey(1000);

	SoundPlay("@xbgm20",2000,450,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(2045);}

//◆場所：スーパーノヴァ_ライブ会場_ガラス補修
	OnBG(10,"bg0502211スーパーノヴァ_ライブ会場_ガラス補修");
	FadeBG(0,true);

	SetVolumeEX("@xbgm20", 2000, 450, null);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]

{	St("C",700, @0,@0,"bu鈴_通常_happy");
	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1000);
	}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100460fjr">
「いらっしゃいま――あ、恵那ちん」

{	AgainSt("C", 700, @0, @0, "bu鈴_シリアス_normal");
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100470fje">
「ガラス、直ったんだ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100480fjr">
「アレじゃ音漏れはシャットアウトできないから、応急処置にしかならないけどね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100490fjr">
「一応さ、ガラスはめる道具は一式あるのよね。
　けど、肝心の職人さんが……」

{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100500fjr">
「恵那ちん、ガラス職人に心当たり――」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100510fjr">
「あるはずないよね……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100520fje">
「ごめん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100530fjr">
「それで、なにか用事？」

{	St2("MR",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100540fje">
「うん。悪いんだけど、ちょっといさせて」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100550fjr">
「いいけど……
　こっちはもう席少ないから、控え室でいい？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100560fje">
「アリガト」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100570fjr">
「ワンドリンク５００円」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100580fje">
「お金取るんだ」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100590fjr">
「当然でしょ」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100600fje">
「我が姉ながら、せこい奴。
　カルーアミルクお願いね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"bu鈴_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100610fjr">
「はい、カルーアミルクひとつ入りまーす！」

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100620fjr">
「後で届けるから、先に行っててくれる？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100630fje">
「了解」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm20", 2000, 1, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);



{	ClockPass(2046);}

//◆場所：スーパーノヴァ_控え室
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm16",1000,200,true);

//2045沙紅羅_フウリ.nss
	CreateSound("tvミリＰ1", VOICE, "voice/20/450100200mrp");
	SetVolume("tvミリＰ1", 0, 0, null);
	SetAlias("tvミリＰ1","tvミリＰ1");
	CreateSound("tvミリＰ2", VOICE, "voice/20/450100210mrp");
	SetVolume("tvミリＰ2", 0, 0, null);
	SetAlias("tvミリＰ2","tvミリＰ2");
	CreateSound("tvミリＰ3", VOICE, "voice/20/450100220mrp");
	SetVolume("tvミリＰ3", 0, 0, null);
	SetAlias("tvミリＰ3","tvミリＰ3");

	//if(#voice_on_ミリＰ){
		CreateProcess("SEpミリＰ", 150, 0, 0, "tv2040");
		Request("SEpミリＰ", Start);
	//}


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//◆演出指定：ゆるキャラバンの様子がテレビから流れてくる

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]

//	St("C",700, @0,@0,"bu恵那_哀愁_sad");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100640fje">
「ふぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　無人の控え室に、テレビのスピーカーが鳴り響く。


{	SetVolume("@tvミリＰ*", 3000, 0, null);}

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100650fje">
「全国ゆるキャラバン……か」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100660fje">
（ホントは、父さんが町内会代表で立ち会ってるはずだったのよね……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100670fje">
（でも……）


{
	SetVolume("@xbgm16", 2000, 0, null);
	SetVolume("@tvミリＰ*", 2000, 0, null);}

{	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

	Request("SEpミリＰ", Stop);
	Delete("SEpミリＰ");
	Delete("@tvミリＰ*");
}

{	St("MR",700, @50,@0,"bu歌門_通常_normal");
Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100680kms">
「失礼します。
　ご注文の、カルーアミルク――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100690kms">
「恵那様！？」

{	St("ML",700, @0,@0,"bu恵那_哀愁_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100700fje">
「星さん！」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100710kms">
「無事だったのですか！？」

{	St2("ML",700, @0,@0,"bu恵那_哀愁_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100720fje">
「え……ええと、あの……」

{	SoundPlay("@xbgm26",0,450,true);}

{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100730fje">
「私、星さんに謝らなきゃならないことが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("MR",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100740kms">
「では、やはり……？」

{	St2("ML",700, @0,@0,"bu恵那_哀愁_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100750fje">
「アザナエルを、地下から持ち出したのは、私です」

{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100760fje">
「自分の興味本位で持ち出して、その上なくしてしまって、色んな方に迷惑を――」

{	St("C",700, @50,@0,"bu歌門_通常_hard");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100770kms">
「すみませんでしたッ！！」

{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100780fje">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2047);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("C",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100790kms">
「私の……監督不行届です。
　まさか、御爺様の結界が破られてしまうとは……！！」

{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100800fje">
「結界って、あ……あの、光ったあれ……？」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100810kms">
「アザナエルは、周囲にいる人間の理性の皮を奪い、その中に埋もれた欲望を剥き出しにします」

//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100820kms">
「結界が破られた以上、恵那様がアザナエルを持ち出すのは必然の成り行き」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100830kms">
「防ぎようのないことだったのです。
　恵那様が気に病むことは、なにひとつありません」

{	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100840fje">
「でも……そんなの、おかしいです」

{	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100850fje">
「それじゃ、私の気が済みません。
　だって私のせいで、アザナエルが――」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100860kms">
「恵那様のその気持ちは理解できます」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//	St("C",700, @0,@0,"bu歌門_通常_normal");
//	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100870kms">
「もしもあなたが、私のために何かをしようとしていただけるのならば――お願いです」

{	SetVolumeEX("@xbgm26", 3000, 0, null);
	St("C",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100880kms">
「私と交代、していただけませんでしょうか？」

{	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100890fje">
「交代……？」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100900kms">
「実は……半ば鈴様に脅されるような格好で、この役を押しつけられておりまして……」

{	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100910kms">
「しかし本来、こんなことをしてる場合ではないのです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("ML",700, @0,@0,"bu恵那_一休_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100920fje">
「無視して逃げちゃえば……？」

{	St("C",700, @0,@0,"bu歌門_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100930kms">
「私といえども、あのドロップキックを無傷でくぐり抜けるのは至難の業」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100940kms">
「それに私のせいでアッキー様がアルバイトから逃げ出したのも、どうやら確かなようですし……」

{	St("ML",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400100950fje">
「え？　アッキーちゃん？
　彼女なら今まで私と一緒に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




{	ClockPass(2048);}


	SetVolumeEX("@xbgm20", 1000, 300, null);


//◆ＳＥ：きいっ！　扉開く
	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);


	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("MR",700, @50,@0,"bu鈴_シリアス_normal");
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100960fjr">
「ほら、星ちゃん！　いつまでボーッとしてるの」

{	St("C",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100970kms">
「す、すみません！」

{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400100980fjr">
「アッキーちゃんを追い出した分、ちゃんと働いてもらいますからね！」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400100990kms">
「いや、だからアレはアッキー様とやらではなく……」

{	St("C",700, @50,@0,"bu鈴_シリアス_angry");
	DeleteAllSt(200,false);
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101000fjr">
「言い訳無用！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101010fjr">
「それとも……
　トイレの伝説、バラされたいんですか？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@50,"bu歌門_通常_hard");
Move($C_次, 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/20/400101020kms">
「頑張ります！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	DeleteAllSt(200,true);
	CreateSE("SE01","se動作_ドア閉める01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@xbgm*", 500, 0, null);



//◆演出指定：星の立ち絵消える

//◆ＳＥ：扉閉じる


WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]

{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101030fje">
「やれやれ……鈴姉、脅しとか酷くない？
　それに、トイレの伝説っていったい……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101040fjr">
「申し訳ないけど、答えてる余裕なしッ！」

{	St("C",700, @0,@0,"bu鈴_シリアス_fear");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101050fjr">
「ただでさえ人数不足なのに、地震は起こるわガラスは割れるわガラス屋は捕まらないわ人は逃げ出すわ――」

{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101060fjr">
「ホント、最悪っ！！」

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101070fjr">
「でもね、今回ばかりは絶対に、スーパー・スーパーノヴァを成功させなきゃならないのっ！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101080fjr">
「だって……フウリちゃんと約束したんだもん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101090fje">
「約束……ね」


{	SoundPlay("@xbgm25",0,450,true);
	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101100fjr">
「で、恵那ちんはどうしたの？」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101110fje">
「どうしたって、別に……」

{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101120fjr">
「嘘つき。
　お姉ちゃんを騙そうったってそうはいかないんだから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101130fjr">
「父さんとケンカでもした？」


{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101140fje">
「……むしろ逆」

{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101150fjr">
「逆？」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101160fje">
「怒鳴ってくれた方が、楽だったかも」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101170fjr">
「無視されたの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2049);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101180fje">
「優しくされた」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101190fje">
「父さんだけじゃなく、色んな人に」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101200fjr">
「……それって、落ち込む話？」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101210fje">
「違うと思う。でも……」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101220fje">
「なんか、宙ぶらりん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("MR",700, @0,@0,"bu鈴_シリアス_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101230fjr">
「探偵になるの、諦めろ！」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101240fjr">
「――って、父さんに言われたかったとか？」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101250fje">
「……わかんない」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101260fje">
「でも、私は探偵、失格だと思う」




{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101270fjr">
「恵那ちんは、なんで探偵になりたいの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);





{	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101280fje">
「え……？」



{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101290fjr">
「アタシはね、たぶん父さんが嫌いで、だから父さんが嫌がるようなことをしてやろうと思ったんだ」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101300fjr">
「それで、プロレスラーに占い師にバンド……普通じゃないことばっかりに、全力を注いできた」


{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101310fjr">
「じゃあ、恵那ちんは？
　なんで探偵になったの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101320fje">
「私は……」

{	St2("C",700, @0,@0,"bu恵那_哀愁_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101330fje">
「母さんの失踪の謎を、解きたくて」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101340fjr">
「その夢を、諦められる？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101350fje">
「…………」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101360fjr">
「ほら、やっぱり」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101370fjr">
「ユージローを警察犬にしようとあれだけ努力したのも、母さんを捜したかったからでしょ？」

//▼べー：音声タグ修正。恵那→鈴へ
{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101380fjr">
「今まで一生懸命やってきたのにさ。
　その努力を、今日で捨てちゃえる？」

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101390fje">
「……私だって、捨てたくないよ」

{	St("ML",700, @0,@0,"bu恵那_通常_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101400fje">
「できるなら今すぐにでも飛び出して、現場の謎にかぶりつきたい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101410fje">
「でも私……ユージローと同じ」

//	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
//	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101420fje">
「調子に乗ってキャンキャン吠えてるクセに、実はなんにもできなくて」

{	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101430fjr">
「そっかな？」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101440fje">
「そうよ！　だってほら！」

{	St("ML",700, @0,@0,"bu恵那_一休_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101450fje">
「この間だって、盗まれたブルマー一生懸命捜したけど、私もユージローも、全然見つけられなくて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 3000, 0, null);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("ML",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("ML",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101460fje">
「あれ……？」

{	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/20/400101470fjr">
「ん？　どした？」

{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/400101480fje">
「今、どっかからユージローの声が聞こえたような――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	EndScene();
}
