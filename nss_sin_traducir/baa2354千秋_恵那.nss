
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2354千秋_恵那.nss_MAIN
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
	$GameName = "baa2355沙紅羅.nss";//★エンディング中（baa）

}

scene baa2354千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="200">
////////////header////////////
//file name "baa2354千秋_恵那.nss"
//title "新しい未来へ"
//previous "baa2353千秋_恵那.nss"

////////////footer////////////
//next "baa2355沙紅羅.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2402);}

//◆場所：半田明神_鳥居
//↑前のファイルで境内に移動していると思われます

	OnBG(10,"bg0603411半田明神_境内_ノーマル新年");
//	OnBG(10,"bg0602112半田明神_鳥居_通常");
	FadeBG(0,true);

	if($PreGameName == "baa2353千秋_恵那.nss"){
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",0,true);
	}
	FadeDelete("上背景", 0, null, true);

	SoundPlay("@xbgm18",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100010kit">
「ホント――アレ？　あそこにいるの、誰だ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/540100020fje">
「ちょっと！　なに話逸らそうとしてるのよ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100030kit">
「いやいや、違う！　違うから！　ホラあそこ！」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100040kit">
「あそこに、ナイスバディな巫女のお姉さんが……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/540100050fje">
「ナイスバディ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100060kit">
「そうそう。
　健全なオトナのエロス爆発！　みたいな！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100070kit">
「いやー、しかしアレだな。
　あんなコがいるなんて……まさか新人？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100080kit">
「胸とか……でかかったよなあ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_think");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/540100090fje">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100100kit">
「ん？　どした？　そんな難しい顔して」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/540100110fje">
「なんでもない！　ほら、お賽銭！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100120kit">
「お、おう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//	TextBoxDelete(150);

//◆ＳＥ：賽銭投げる

//あきゅん「β演出：効果音最後に確認」
	CreateSE("SE01","se日常_小銭");

	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

//あきゅん「演出：後述の窓演出用の素材ここで生成」
	CreatePlainSP("絵板写", 5000);
	Wait(32);

	CreateAXLWindowEX("絵窓", "Y", 2000, 96, 384, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100130kit">
「二重にご縁がありますように……チャリーン、と」


{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100140kit">
「恵那？　賽銭は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	DeleteAllSt(200,false);

	SetVolumeEX("@xbgm*", 0, 0, null);
	SoundPlay("@xbgm03",0,450,true);

	CreateSE("SE01","se擬音_ギャグ_リーゼント");

//窓準備
	//CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	//SetAlias("絵窓","絵窓");
	//Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
//	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateColorSP("絵窓/絵演背景", 1520, "#FFFFFF");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/bu恵那_ハルヒ_angry.png");
	Move("絵窓/絵演立絵", 0, @0, @200, null, true);
	CreateTextureEX("絵窓/絵演立絵2", 1910, center, middle, "cg/bu/bu恵那_ハルヒ_shock.png");
	Move("絵窓/絵演立絵2", 0, @0, @200, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

	Wait(32);

//動作
	MusicStart("SE01",0,700,0,1000,null,false);
	//Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 200, @0, @-100, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);


{	Shake("絵窓/絵演立絵*", 500, 15, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵演立絵*", 200, 1500, 1500, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 0, Axl2, false);
	Fade("絵窓/絵演立絵2", 200, 1000, null, true);}

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/540100150fje">
「とありゃあああああッ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100160kit">
「ゲ！　万札！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	//Zoom("絵窓", 200, 1000, 0, null, true);
	WindowAXLZoom("絵窓", "Y", 200, 0, null, true);
	Delete("@絵窓*");


//◆ＳＥ：柏手
	CreateSE("SE01","se動作_柏手");

	SetVolumeEX("@xbgm*", 200, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	CreateSE("SE01","se動作_柏手");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
{
//	St("C",700, @0,@0,"bu恵那_通常_hard");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/540100170fje">
「神様神様お願いしますお願いしますお願いします……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/540100180fje">
「どうか、どうかどうか私のこのささやかな願いを……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	Shake("@StNameMR/MR*", 300, 4, 0, 0, 0, 1000, DxlAuto, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/540100190kit">
「な……なんだ、この殺気……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/540100200fje">
「なんでもないのッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	DeleteAllSt(200,true);

	SetVolumeEX("@xbgm*", 1500, 0, null);
	CreateColorEX("絵背景", 20000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);


	EndScene();
}
//next "baa2355沙紅羅.nss"
