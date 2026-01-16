
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1910沙紅羅_千秋.nss_MAIN
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

	if($CharaName=="沙紅羅"){
		$GameName = "1920沙紅羅_千秋.nss";
	}else if($CharaName=="千秋"){
		$GameName = "1920沙紅羅_千秋.nss";
	}else{
		$GameName = "1920沙紅羅_千秋.nss";
	}

}

scene 1910沙紅羅_千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1720">
////////////header////////////
//file name "1910沙紅羅_千秋.nss"
//title "ヤンキーちゃんと女装くん"
//previous "1900沙紅羅.nss"
//previous "1900千秋.nss"

////////////footer////////////
//next "沙紅羅" "1920沙紅羅_千秋.nss"
//next "千秋" "1920沙紅羅_千秋.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);


	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",1000,1200,0,1000,null,true);

	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

{	ClockPass(1910);}

//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 200, null, true);

	Wait(1500);
	SetVolumeEX("SE01", 500, 0, null);


{	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300010kit">
「スト――――ップ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300020skr">
「なんだよ。うっせーチビだな」

{
//	SoundPlay("@xbgm11",0,450,true);

	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300030kit">
「ぜぇっ、ぜぇっ、はぁっ、はぁっ！」

{	St("MR",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300040kit">
「おっ、おっ、おっおっおまえ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300050kit">
「そのバッグ、誰からもらった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300060skr">
「おまえには関係ね――」

{	SetVolumeEX("@SE*", 1000, 0, null);
	St("MR",700, @0,@0,"bu千秋_頭突き_rage2");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	SoundPlay("@xbgm11",0,450,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300070kit">
「関係あるッ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300080skr">
「む……」

{	St("MR",700, @0,@0,"bu千秋_気合い_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300090kit">
「教えろ！　誰から！　もらった？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300100skr">
「いや、歩いてたら突然、変なオッサンに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	FadeQ($MR_次,0,0,200,10,50,Dxl1,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300110kit">
「変なオッサン！！」

{	St("MR",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300120kit">
「そのバッグ、元々オレのだ！」

{	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300130kit">
「だから、返せ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300140skr">
「いや、でもアタシも猛烈に腹が減ってるわけで――」

{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300150kit">
「ぬわあああああっ！　ストップ！　駄目！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300160kit">
「開けたら大変！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300170skr">
「大変ってなんだよ？」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300180kit">
「そこにはその……お、オレにとって貴重なものが！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300190skr">
「貴重なもの？　でも、中ただの――」

{	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300200kit">
「ああああ！　バカ！　開けんなって！」

{
	SetVolumeEX("@xbgm*", 500, 0, null);

	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300210skr">
「…………バカ？　だと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(1911);}



//◆ＳＥ：木刀風を切る
	CreateSE("SE01","se戦闘_風切り音08");

//◆演出指定：木刀構え
	St("ML",700, @0,@0,"bu沙紅羅_木刀_hard");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeQ($ML_次,0,0,200,0,50,Dxl1,false);
	FadeSt("ML",200,true);

	Wait(500);

	SoundPlay("@xbgm31",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300220skr">
「あのよ、おチビちゃん。
　人に頼みがあるときは、どう口を利くんだ？」

{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	FadeQ($MR_次,0,0,200,-10,30,Dxl1,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300230kit">
「ぼ、木刀……？」

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300240skr">
「喝雄不死っちゅーんだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＳＥ：ブオン！　木刀振る
	CreateSE("SE01","se戦闘_風切り音08");

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	DeleteSt("ML",0,true);


	MusicStart("SE01",0,1000,0,1000,null,false);

	St("MR",700, @-20,@100,"bu千秋_驚天_shock");
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @20, @-100, Dxl2, false);
	FadeSt("MR",200,false);

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//	SoundPlay("@xbgm07_noint",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300250kit">
「ひゃうっ！」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300260kit">
「あ……あの……
　もしかして……コスプレとかじゃなく？」

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300270skr">
「この虎が、パチモンに見えっか？」

{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300280kit">
「…………ひっ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300290skr">
「どうだ？　おチビちゃん」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300300skr">
「もうちょっとちゃんとしたものの言い方って、あると思わねーか？」

{	St("MR",700, @0,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300310kit">
「すいませんでしたッッ！！！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300320kit">
「わ、わたくしそのあのちょっと頭に血が上っておりまして、だからその見境ないというか――」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300325kit">
「実のところあなたの格好にも、
　全然気付いておりませんで！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300330kit">
「ですからその全てわたくしの不徳の致すところではありますが――」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300335kit">
「しかし、その、よろしければ、そのバッグをわたくしめに返していただけないかと存じ上げ候です！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300340skr">
「断る！」

{	St("MR",700, @0,@0,"bu千秋_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300350kit">
「すいませんでしたッ！！　失礼しますッ！！」

{	Move("@StNameMR/MR*", 200, @50, @0, Axl1, false);
	DeleteSt("MR",200,true);
	St("ML",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300360skr">
「逃げるんじゃねぇッ！！」

{	St("MR",700, @-50,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);

	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300370kit">
「ひえっ！！」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300380kit">
「な……なにか、まだ御用ですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

//	CreateSE("SE11","seガヤ_交通_l");
//	MusicStart("SE11",3000,700,0,1000,null,true);

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300390skr">
「諦めんのか？」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300400kit">
「え？」

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300410skr">
「コレ、おまえにとって貴重なモンなんだろ？」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300420kit">
「は……はい、いちおう……」

{	St("ML",700, @0,@0,"bu沙紅羅_木刀_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300430skr">
「それを、諦めんのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1912);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300440skr">
「ただ怒鳴られただけで、諦めていいようなモンなのか？」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300450kit">
「そ……それは、その……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	SoundPlay("@xbgm07",0,450,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300460skr">
「ウシ！　アタシについてこい」

{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300470kit">
「は……はい？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300480skr">
「ついてこいって言ってんだよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300490kit">
「な……なんで？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300500skr">
「弟子にしてやる」

{
//	SetVolumeEX("SE*", 1000, 0, null);

	St("MR",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300510kit">
「で、弟子？」

{
//	SoundPlay("@xbgm23",0,450,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300520skr">
「このバッグの中味、欲しいんだろ？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300530skr">
「もしもアタシの下で修行して、ちゃーんと諦めない心を手に入れることができたら、バッグの中味、やるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300540kit">
「ほ……本当ですか！？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300550skr">
「女に二言はねぇよ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300560skr">
「ま、最初の言葉遣いは悪くなかったからな」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300570skr">
「あの男勝りな言葉が似合う、粋な女にしてやるぜ！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300580kit">
「粋な……女？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//▼べー：音声タグ修正
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300590skr">
「お、なんだ？　そういうのは嫌か？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300600skr">
「まあ確かに、男の服もそこそこ似合うかも……」

{
//	SetVolumeEX("@xbgm*", 500, 0, null);

	St("MR",700, @0,@0,"bu千秋_頭突き_rage");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300610kit">
「ちが――――――うっ！！」

{	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300620kit">
「オレは、男です！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300630skr">
「へ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SoundPlay("@xbgm11",0,450,true);

{	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300640kit">
「だから！　オレは！　男！　オス！」

{	St("MR",700, @0,@0,"bu千秋_驚天_shy");
	FadeQ($MR_次,0,0,200,5,30,Dxl1,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300650kit">
「って……やべ！　ばらしちゃった！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300660skr">
「ちょ！　待て！　じゃあなにそのカッコ？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300670skr">
「シュミ？」

{	St("MR",700, @0,@0,"bu千秋_頭突き_rage");
	DeleteAllSt(200,false);
	FadeQ($MR_次,0,0,200,10,50,Dxl1,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300680kit">
「違います！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300690skr">
「ジツエキか……」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeQ($MR_次,0,0,200,0,50,Dxl1,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300700kit">
「それも違うし！　実益ってなんですか！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300710skr">
「いやあ……さすが東京秋葉原。世界は広いぜ」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300720kit">
「うやむやにまとめないで！」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300730kit">
「オレがこの格好してるのにはなあ、色々ワケが――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1913);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300740skr">
「はいはいわかったわかったから」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300750skr">
「人にはみんな、事情があるよな……」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300760kit">
「誤解したまま同情しないで！　一番嫌だし！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300770skr">
「じゃ、このバッグの中味も、その事情絡みなんだろ？」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300780kit">
「あ――はい。そんなところ、です」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//	TextBoxDelete(150);

//◆音声指示：小声
{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300790skr">
「しかし、そんなでかいまんじゅうだとはなあ……」

//◆音声指示：小声
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300800skr">
「てっきり一口サイズだとばっかり――」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300810kit">
「……まんじゅう？」

//◆音声指示：小声
{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300820skr">
「さすがに詰め物無しじゃ、胸が寂しいのはわかる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300830kit">
「は？　さっきからいったい何の話――」

{
//	SetVolumeEX("@xbgm*", 500, 0, null);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300840skr">
「って、無駄話で脂ぎってる場合じゃねぇ！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300850kit">
「脂ぎってる？」

{
//	SoundPlay("@xbgm07_noint",0,450,true);

	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300860skr">
「おまえ、ここら辺の人間か？
　だったら知ってるだろ？　とーじんぼー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300870kit">
「とーじんぼー？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300880skr">
「わざわざコミックスーパーがあるからってビッグ斎藤まで行ったんだけどよ、もうやってねーって言うし」

{	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300890kit">
「同人誌が欲しくて、コミックマートのために、ビッグサイトに行った？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300900skr">
「うお！　さすが弟子！
　アタシの通訳になれんぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300910kit">
「嬉しくないです！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300920skr">
「じゃ、アキバガイドよろしく！　弟子！」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300930kit">
「……せめて、名前で呼んでもらえますか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300940skr">
「お、そうかアタシは沙紅羅。おまえは？」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300950kit">
「……アッキーです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300960skr">
「へぇ！　見た目通りの可愛い名前じゃねぇか！」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300970kit">
「う、ううう！
　源氏名だし、見た目なんてどうだって――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100300980skr">
「おーよッ！！」

//◆ＳＥ：ドン！　胸を叩く
{
	SetVolumeEX("SE*", 2000, 0, null);

	CreateSE("SE01","se戦闘_打撃音05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	DeleteAllSt(300,true);

	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100300990kit">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　沙紅羅は大きな音を立て、自分の胸を叩き――

{
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301000skr">
「人間、名前でも身体でもねー」

//◆ＳＥ：トントン
{	CreateSE("SE01","se動作_軽く叩く");
	MusicStart("SE01",0,1000,0,1000,null,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301010skr">
「大切なのは、ココ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301020skr">
「――だろ？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301030kit">
「あ……は、はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@xbgm*", 2000, 0, null);

{	ClockPass(1914);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}


//	SoundPlay("@xbgm02",0,450,true);

	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE11",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301040skr">
「そいじゃ、どーじんし探しに出発だ！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301050kit">
「いや、出発って言っても、すぐそこなんですけど……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301060kit">
「ちなみに本の名前は？　サークル名もわかりますよね？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301070skr">
「『つーばーど』の……ええと、なんだっけ？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301080skr">
「大暴投！　みたいな。ノーカンじゃなくて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301090kit">
「ノーコン？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301100skr">
「そう、それだ！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301110skr">
「『ノーコントロール』の『１１』とか言ってたんじゃなかったっけな……」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301120kit">
「適当すぎる……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301130kit">
「ホントに探せるのか？
　なんか、心配になってきた……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301140skr">
「しっかしまあ、大晦日なのにすげえ人だなぁ」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301150kit">
「大抵はコミマ帰りですから」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301160kit">
「わざわざ上京してきた奴らも多いし、家に戻る前に秋葉原でオフ会……とかもあるみたいですけど」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301170skr">
「おふ……かい？」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301180kit">
「インターネットで出会った友達とリアルで会うこと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301190skr">
「おお！　インターネット！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301200skr">
「知ってるぞ！　ケータイとかで見るヤツだろ！」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301210kit">
「……まあ、そんな感じです」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301220skr">
「ちぇっ！
　なんだよさっきから、辛気くせー顔しやがって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301230skr">
「アタシが一生懸命話してやってんだからさ、もーちょっとまともに返事しろよ！　テメーは雪山か？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301240kit">
「ゆきやま？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301250skr">
「……ったく、コレだから都会のお坊ちゃんはよ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301260skr">
「雪はよ、音をキューッと吸い込むわけ！
　だから雪の日とか、全然遠くの音が聞こえねーの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
//	FadeSt("ML",200,true);

	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301270skr">
「で、アタシはそういうのが大ッ嫌い――
　うおっ！　なんだあれ！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301280kit">
「ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);


{	ClockPass(1915);}

//◆演出指定：イタバイク絵

	CreateSE("SE01","seメカ_痛バイ_空ぶかし");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/img/imgイタバイク駐車.jpg");
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301290skr">
「すっげ！　やっべ！
　バリカッケー！！　ってか乗りてー！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301300kit">
「そ……そうですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵背景100", 300, null, true);

	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301310skr">
「だってさ、これで街中走るんだろ？
　ってか、むしろこれで走ってきたんだろ？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301320skr">
「マジでスゲーよ！　<RUBY text="かぶ">傾</RUBY>いてるよ！
　見入るわー。ハンパなく見入るわー」

{	Move("@StNameML/ML*", 200, @-50, @20, Axl1, false);
	DeleteSt("ML",200,true);
	Wait(200);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301330e05">
「あ、あの……失礼！」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301340kit">
「え？　オレですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301350e05">
「よかった……ダベッターで『ヤンキーコスプレ目撃！』って情報があったから、慌てて駆けつけたんです」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301360e05">
「おたずねしますが……
　もしやそこの人のお知り合い？」

{	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301370kit">
「知り合いっていうか、なんていうか……」

{	DeleteSt("C",200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301380e05">
「あの、これ、良ければ返しておいていただけますか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(1916);}
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objヘルメットa.png");
	Move("絵背景100", 0, @0, @100, null, true);

	Move("絵背景100", 800, @0, @-100, Dxl2, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301390kit">
「ヘルメット……？　なんで？」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301400e05">
「ええと……自分も正直理解不能な状況で戸惑いを隠しきれないのですけれども……」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301410e05">
「ビッグサイトの前で、同人誌を破かれちゃって。
　その代金の代わりに、ヘルメットを」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301420kit">
「説明されても……意味がわからない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);

	FadeDelete("絵背景100", 500, null, true);
	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301430e05">
「でも、自分が持ってても不毛なんで。
　知り合いなら、後で渡しておいてもらえますか？」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301440kit">
「いや、本人に直接手渡し――」

{	DeleteSt("C",200,true);
	St("ML",700, @-20,@50,"bu沙紅羅_前のめり_happy");
	Move("@StNameML/ML*", 200, @20, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301450skr">
「すげー！　すごすぎる！　またがりてぇ！
　いいかな？　ちょっとだけ、いいかな？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301460skr">
「やっべ！　ちょっと涎出てきた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Move("@StNameML/ML*", 200, @-20, @50, Axl1, false);
	DeleteSt("ML",200,true);

	Wait(200);

{	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301470kit">
「――は、できそうにないか」

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301480kit">
「わかりました！」

{	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301490kit">
「コレも、弟子の務め。
　あのバッグを返して貰うためならば……」

{	DeleteSt("C",200,true);}
　力なく頷いて、千秋がヘルメットを受け取ろうと手を差し出したその瞬間――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1917);}


//◆ＳＥ：びゅん！

//◆演出指定：タヌキ足元走る：ここら辺の演出は、1910ノーコ_フウリ.nssと同じにする
//嶋：仮
//	SetVolumeEX("@xbgm*", 1000, 0, null);
	CreateSE("SE01","se動物_タヌキ_走る_l");
	MusicStart("SE01",300,700,0,1000,null,true);

//おがみ：タヌキ画像これでいいの？
	CreateTextureEX("絵背景１", 2000, 1024, Middle, "cg/obj/objタヌキ小走り.png");
	FadeXH5("絵背景１",300,1000,1000,-2024,-30,null,true);

	Wait(1000);

	SetVolumeEX("SE01", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301500e05">
「え？」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301510kit">
「今のは……？」

{	DeleteSt("C",200,true);}
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301520e05">
「なにか、走っていったような……」

　と、黒い影の進行方向を見つめるふたり。

　の、後方から近づく新たな影。

{

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("R",700, @0,@0,"buユージローa_通常_normal");
	Shake("@StNameR/R*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	Move("@StNameR/R*", 200, @-100, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/100301530ujr">
「わうわうわうわうっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("C",700, @0,@100,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);

	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301540kit">
「げ！　ユージロー！」

{	SetVolumeEX("SE11", 500, 0, null);
	SoundPlay("@xbgm03",0,450,true);
	St("MR",700, @50,@0,"buユージローa_通常_angry");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/100301550ujr">
「わう――――ん！」


//◆ＳＥ：がぶっ！　犬に噛まれる
{
	CreateSE("SE02","se戦闘_切断01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @-50, @0, Axl1, false);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301560kit">
「ぎゃ――――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 1000, null, false);
	Move("@StNameC/C*", 200, @-150, @0, Axl1, false);
	DeleteAllSt(200,true);

//◆ＳＥ：ピュー！　ヘルメットが飛び、地に落下
	CreateSE("SE01","se擬音_ギャグ_落下");
	CreateSE("SE02","se動作_バッグ落とす");
	CreateSE("SE03","se戦闘_打撃音04");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/objヘルメットa.png");

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景100", 200, 1000, null, false);
	Move("絵背景100", 600, @0, @-100, Dxl2, true);
	Move("絵背景100", 800, @0, @750, Axl2, true);
	Delete("絵背景100");


	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,500,0,1000,null,false);
	CreatePlainSP("揺用", 2005);
	Shake("揺用", 300, 5, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 300, 0, null, true);
	Delete("揺用");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301570e05">
「あ……ヘルメット！」

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/100301580ujr">
「わうわうわうわう！」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301590kit">
「ちょ！　やめろ！　噛むな！」

{	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301600kit">
「ってかなんでオレを狙う！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301610kit">
「なんか違うの追っかけてただろ今まで！」

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-150, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/19/100301620ujr">
「わうわうわうわう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_切断01");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("L",700, @+100,@0,"bu千秋_通常_pain");
	DeleteAllSt(200,false);
	Shake("@StNameL/L*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	Move("@StNameL/L*", 200, @-100, @0, Dxl1, false);
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//◆音声指示：走り去りながら
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/100301630kit">
「ぎゃっ！　いでで！　やめろってばー！」

{
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameL/L*", 200, @-100, @0, Axl1, false);
	Shake("@StNameL/L*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	DeleteAllSt(200,true);
	SetVolumeEX("SE01", 2000, 0, Axl1);

	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301640skr">
「お、おい！　弟子！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301650skr">
「どこ行くんだ！　ちゃんと案内しろよ！」

//◆ＳＥ：走り去る
//◆音声指示：走り去りながら
{
	CreateSE("SE02","se動作_走る02_l");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameC/C*", 400, @-100, @0, Axl1, false);
	DeleteSt("C",400,true);
	SetVolumeEX("SE02", 3000, 0, Axl1);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/100301660skr">
「待て！　待てってばオイ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolumeEX("@xbgm*", 2000, 0, null);
	SetVolumeEX("SE*", 2000, 0, null);

	Wait(2500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301670e05">
「……また、置いていかれてしまった」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301680e05">
「ヘルメットも落ちたし――」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301690e05">
「あ、マズい。傷ついてる……」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301700e05">
「シールでも貼りますか……？」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301710e05">
「そういえば、このバイク見てたみたいですけど」

//【オタクＡ】
<voice name="オタクＡ" class="その他男声" src="voice/19/100301720e05">
「アニメとか、好きなんでしょうか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



	EndScene();

}
