
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2115沙紅羅_フウリ.nss_MAIN
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
	$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";

}

scene 2115沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1120">
////////////header////////////
//file name "2115沙紅羅_フウリ.nss"
//title "ＡＤ、最後の願い"
//previous "2111沙紅羅_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"
//next "フウリ" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	SoundPlay("@xbgm30",0,450,true);

{	ClockPass(2115);}


//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100010wfu">
「そ、そうです……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100020wfu">
「ここで諦めちゃ、だめ……」

{	St("C",700, @0,@0,"fuフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100030wfu">
「貫太さんに……見つけてもらうためには……」

{	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100040wfu">
「はああああ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＳＥ：腹鼓
{	St("C",700, @0,@0,"fuフウリ_前のめり_smile");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,200,0,30,Dxl1,false);
	FadeSt("C",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100050wfu">
「ぽん！」

{	St("C",700, @0,@0,"fuフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100060wfu">
「うっ！」

{	St("ML",700, @0,@50,"bu沙紅羅_頭かき_sigh");
	DeleteSt("C",200,false);
	Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100070skr">
「自爆！？」

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100080ktt">
「いや……」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100090wfu">
「気合い、入りました！」

{	St("C",700, @0,@0,"fuフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100100wfu">
「食べ！　ます！」

{	St("C",700, @0,@0,"fuフウリ_前のめり_smile");
	FadeQ($C_次,0,0,200,0,30,Dxl1,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100110wfu">
「はむ！」

{	St("C",700, @0,@0,"fuフウリ_胸手_think");
	FadeQ($C_次,0,0,200,0,30,Dxl1,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100120wfu">
「ん……ん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1201200ＵＰ＋_屋外セット_炎上.jpg");
	SetShade("絵背景100", HEAVY);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Move("絵背景100", 0, @-50, @0, null, true);

	Move("絵背景100", 300, @50, @0, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);


{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100130skr">
「いいぞ！　その調子だッ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100140skr">
「もう少し！　もう少――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100150skr">
「おい弟子！　おまえもちょっとは応援――」

{	St("MR",700, @0,@50,"bu千秋_通常_cry");
	DeleteSt("ML",200,false);
	Move("@StNameMR/MR*", 400, @0, @-50, Dxl1, false);
	FadeSt("MR",400,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100160ktt">
「ぅ……ぅぅ……っ！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100170skr">
「え？　な……なんで泣く？」

{	St("MR",700, @0,@0,"bu千秋_通常_cry");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100180ktt">
「泣いてなんてないやいッ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100190skr">
「いやいやいや、泣いて……まあいいや！
　ほら、てめーも応援しやがれ！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100200ktt">
「お……おう！」

{	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100210ktt">
「フウリ！　頑張れー！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100220skr">
「そうだ！　フウリいっちまえ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：歓声
	CreateSE("SE10","seガヤ_歓声_l");
	MusicStart("SE10",300,700,0,1000,null,true);

	Fade("絵背景100", 300, 0, null, true);
	Delete("絵背景100");



{	St("MR",700, @0,@0,"buミリＰb_通常_happy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100230mrp">
『会場からは沸き上がる歓声！』

//◆音声指示：スピーカー越し
{	St("MR",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100240mrp">
『さあ、いよいよこんにゃくも少なくなり――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

{	St("C",700, @0,@0,"fuフウリ_通常_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100250wfu">
「最後の――」

{	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100260wfu">
「ひとくち――」

{	St("C",700, @0,@0,"fuフウリ_胸手_think");
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,200,0,30,Dxl1,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100270wfu">
「はむ……」

{	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($C_次,0,0,200,0,30,Dxl1,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100280wfu">
「んぐ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@xbgm*", 1000, 0, null);
	SetVolume("SE*", 1500, 0, null);

	DeleteAllSt(200,true);


	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
{	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100290wfu">
「うん！」

{	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100300wfu">
「ごちそうさまでした……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

//◆ＳＥ：歓声
	CreateSE("SE11","seガヤ_大歓声_l");
	MusicStart("SE11",500,700,0,1000,null,false);

	Wait(1000);

	SetVolume("SE11", 5000, 0, Axl2);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100310skr">
「いよっしゃ！　よくやっ――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"fuフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100320wfu">
「うきゅぅぅぅぅぅぅ……」

{
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @0, @+100, Dxl1, false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, null, false);
	DeleteSt("C",200,true);
	St("ML",700, @-50,@50,"fu沙紅羅_通常_surprise");
	Move("@StNameML/ML*", 200, @50, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100330skr">
「うお！　大丈夫かフウリ！？」

{
	SoundPlay("@xbgm28",0,450,true);
	St("MR",700, @0,@0,"fuフウリ_胸手_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100340wfu">
「は、はひー」

{	St("MR",700, @0,@0,"fuフウリ_胸手_worry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100350wfu">
「少し休めば、大丈夫ですー」

{	St("ML",700, @0,@0,"fu沙紅羅_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100360skr">
「あー、ほらほら！　しっかりしろ！」

{	DeleteSt("ML",200,true);}
　崩れ落ちるフウリの身体を抱き留めて、沙紅羅は呟く。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2116);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100370wfu">
「私……頑張りましたよ……ね？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"fu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100380skr">
「ああ、よくやった」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"fuフウリ_前のめり_smile");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100390wfu">
「えへ……えへへへ……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100400wfu">
「貫太さん……見てくれたかな……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"fu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100410skr">
「貫太……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"fu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100420skr">
「おまえの恋人か？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"fuフウリ_前のめり_smile");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100430wfu">
「えへへ……ふたりとも……そうしそうあいで……」

{	St("MR",700, @0,@0,"fuフウリ_胸手_smile");
	Shake("@StNameMR/MR*", 200, 3, 0, 0, 0, 1000, null, false);
	Move("@StNameMR/MR*", 200, @0, @100, Axl1, false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100440wfu">
「なのに……なんで……わか……れて…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);


	Shake("@StNameMR/MR*", 200, 3, 0, 0, 0, 1000, Axl1, false);
	Move("@StNameMR/MR*", 200, @0, @100, Axl1, false);
	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,1000,0,1000,null,false);


	CreatePlainSP("揺用", 2005);
	Shake("揺用", 1000, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1000, 0, null, true);
	Delete("揺用");

	St("ML",700, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100450skr">
「フウリ……？
　おい、フウリ、フウリ――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(600);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100460wfu">
「ぐぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE10","seガヤ_歓声_l");
	MusicStart("SE10",1000,300,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@50,"bu沙紅羅_頭かき_think");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100470skr">
「寝たのかよ！！」

//◆音声指示：スピーカー越し
{	DeleteSt("C",200,true);
	St("MR",700, @0,@50,"buミリＰb_通常_normal");
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100480mrp">
『とまあ、今日最高潮の盛り上がりを見せた秋葉原！
　しかし、コレで番組が終わったわけじゃないわよ！』

{	St("ML",700, @0,@0,"buＡＤ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/150100490adi">
「あの……ホントにやるんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：小声
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100500mrp">
「今更なに言ってんの！？」

//◆音声指示：小声
{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100510mrp">
「大丈夫、あの小さい身体の女の子でしょ。
　結構引っ張れるわ！」

{	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/150100520adi">
「でももしかしたら、っていうかほぼ確実に、若原Ｄ入院の原因――」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100530mrp">
「ん？　なんの話？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buＡＤ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/150100540adi">
「い、いえ……何でもありません！」

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100550mrp">
「ほら、早く支度なさい！」

{	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/150100560adi">
「は、はい！」

//◆音声指示：スピーカー越し
{	DeleteSt("ML",200,true);
	St("C",700, @50,@50,"buミリＰb_通常_shout");
	Move("@StNameC/C*", 200, @-50, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100570mrp">
『さあ、とうとう秋葉原チームは３人目！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100580mrp">
『秋葉原のライブハウス「スーパーノヴァ」でアルバイト中、アッキーちゃんの登場よ！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100590mrp">
『小さな身体の彼女の前に並べられたのは――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	LcPro_b2115kurimantower();

{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0144]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100600mrp">
『巨大な、巨大なクリマンタワーッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2117);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");
	SetShade("絵背景100", HEAVY);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Move("絵背景100", 0, @-50, @0, null, true);

	Move("絵背景100", 300, @50, @0, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100610ktt">
「…………」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100620ktt">
「なあ、沙紅羅さん」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100630skr">
「なんだよ」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100640ktt">
「もしオレが、ここで食べなかったら――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100650skr">
「やらせか！？
　そんなの、アタシが許さねーぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolume("SE*", 3000, 0, null);


	St("C",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100660ktt">
「いや、そうじゃなくて……フウリは……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150100670wfu">
「むにゃむにゃ……もうたべられない……」

{
	SoundPlay("@xbgm25",0,450,true);
	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100680ktt">
「フウリは恋人のこと、忘れますかね？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100690skr">
「恋人のこと？」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100700ktt">
「フウリが目立とうとしてるのって、行方不明になった恋人に自分の姿を見せたいからなんです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100710ktt">
「ここで優勝できなかったら、もう諦めがつくかなって」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100720skr">
「だからこいつ……あんな根性出して……
　嫌いなこんにゃくも、気合いで食った？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100730skr">
「ううっ、う……な、なかなか……
　根性あるじゃねぇか！」

{	St("ML",700, @0,@0,"bu沙紅羅_泣き_cry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100740skr">
「おーいおいおい……
　おーいおいおいおい……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100750ktt">
「え、沙紅羅さん？　泣いてんのか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100760skr">
「バッキャロー！
　これに泣かずしていつ泣くんだよ！」


{	St("ML",700, @0,@0,"bu沙紅羅_泣き_cry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100770skr">
「二度と会えないかもしれない男に会いたくて、一縷の望みを託してテレビまで出て……くぅぅぅ――っ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100780skr">
「おし、決めたッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100790skr">
「弟子よ！
　絶対に優勝して、フウリを恋人に会わせてやるぞ！」

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100800ktt">
「で、でもですね。例えばですよ。
　もしその恋人が死んでたりしたら――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100810skr">
「あんだけ根性入れてコンニャク食ったんだ。
　今更中途半端に諦められっかよ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100820skr">
「諦めるにしても、悔いのないようにしてやんねーとな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("@xbgm*", 5000, 0, null);

	CreateSE("SE05","seガヤ_歓声_l");
	MusicStart("SE05",5000,700,0,1000,null,true);

{	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100830ktt">
「ん……そっか」

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100840ktt">
「沙紅羅さん、ありがとう」

//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100850ktt">
「オレ、吹っ切れました」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100860skr">
「ん、そかまあなんだかわかんねーけど……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100870skr">
「思いっきり、ブチかましてやれ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100880ktt">
「はい！」

//◆音声指示：スピーカー越し
{	DeleteAllSt(200,true);
	Fade("絵背景100", 300, 0, null, true);
	Delete("絵背景100");

	St("C",700, @0,@0,"buミリＰb_通常_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100890mrp">
『アッキー選手、沙紅羅選手に活を入れてもらうと、クリマンに手を――』

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"fu千秋_気合い_hard");
	FadeQ($C_次,0,0,200,0,30,Dxl1,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100900ktt">
「いただきます！」

//◆ＳＥ：ひょいひょいひょい
{
	SetVolume("SE05", 1000, 0, null);
	DeleteAllSt(200,true);

	CreateSE("SE01","se動物_タヌキ_腹鼓01");
	CreateSE("SE02","se擬音_ギャグ_ひょいひょい");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,500,0,2000,null,true);

	Wait(800);
	SetVolume("SE*", 200, 0, null);
	Wait(200);
	St("C",700, @0,@0,"fu千秋_気合い_shout");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100910ktt">
「ごちそうさま！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100920skr">
「え？」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/150100930adi">
「は？」

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100940mrp">
『なに？』

{	DeleteAllSt(200,true);
	St("C",700, @0,@100,"fu千秋_朗らか_happy");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/150100950ktt">
「これで優勝！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2118);}

	DeleteSt("C",200,true);

	Wait(500);

//◆ＳＥ：歓声

{	St("C",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100960mrp">
『うそ……こんな……呆気なく……』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_pinch");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100970mrp">
『あ、呆気ないが……しかし、しかし！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150100980mrp">
『秋葉原チーム、優勝――――ッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：大歓声
	CreateSE("SE02","seガヤ_大歓声_l");
	MusicStart("SE02",500,700,0,1000,null,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg1201200ＵＰ＋_屋外セット_炎上.jpg");
	SetShade("絵背景100", HEAVY);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Move("絵背景100", 0, @-50, @0, null, true);

	Move("絵背景100", 300, @50, @0, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);


{	St("ML",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150100990skr">
「すっげ――――――――――ッ！！」

{	St("MR",700, @0,@50,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150101000wfu">
「ふぁ……へ？　なになに？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/150101010skr">
「優勝だ！　アタシたちのチームの、優勝だよ！」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/150101020wfu">
「な、なんですとー！」

//◆音声指示：小声
{	DeleteAllSt(200,true);
	Fade("絵背景100", 300, 0, null, true);
	Delete("絵背景100");
	St("MR",700, @0,@0,"buミリＰb_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150101030mrp">
「ちょっと！　は……早すぎる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buＡＤ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//◆音声指示：小声
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/150101040adi">
「そ、それじゃまた似鳥さんに連絡を――」

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//◆音声指示：小声
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150101050mrp">
「だめよ！　絶対に話は振らない！」

{	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//◆音声指示：小声
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/150101060adi">
「どうして？」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//◆音声指示：小声
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150101070mrp">
「そりゃ、約束しちゃったんだもの」

{	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//◆音声指示：小声
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/150101080adi">
「けど、それじゃどうやって？」

{	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//◆音声指示：小声
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150101090mrp">
「どうやってって、そりゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 1500, 0, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

{	ClockPass(2119);}

/*
	CreateTextureEX("絵背景10", 500, Center, Middle, "cg/bg/bg1202200ＵＰ＋_セット上_暗闇.jpg");
	Fade("絵背景10", 100, 1000, null, true);
	Fade("絵背景10", 0, 0, null, true);
	Fade("絵背景10", 100, 1000, null, true);
	Fade("絵背景10", 0, 0, null, true);
	Fade("絵背景10", 100, 1000, null, true);
	Fade("絵背景10", 0, 0, null, true);
	Fade("絵背景10", 100, 1000, null, true);
*/
//◆演出指定：フォン、マイクがハウり、辺りが暗闇に音いる
	CreateSE("SE00","se環境_ハウリング");
	MusicStart("SE00",0,700,0,1000,null,false);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg1202200ＵＰ＋_セット上_暗闇.jpg");
	Fade("絵背景", 2000, 1000, null, true);

	OnBG(10,"bg1202200ＵＰ＋_セット上_暗闇");
	FadeBG(0,true);

	Delete("絵背景");

	Wait(500);

{	St("C",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("C",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/150101100mrp">
「ちょっと照明！　何やって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


	Wait(500);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	CreateSE("SE02","se擬音_光迸る");
	MusicStart("SE01",0,1500,0,250,null,false);
	MusicStart("SE02",0,700,0,900,null,false);


//◆演出指定：暗闇から浮き出るように
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	CreateColorSP("絵色100", 500, "BLACK");

	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",0,true);

	CreatePlainSP("浮出用", 1500);
	Request("浮出用", AddRender);
	Delete("絵色100");
	CreateTextureSP("絵背景200", 800, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	DrawTransition("絵背景100", 1500, 1000, 0, 100, null, "cg/data/random_01_00_0.png", false);
	Fade("絵背景100", 1500, 0, null, true);
	Fade("絵背景200", 500, 0, null, false);

	SetVolume("SE*", 2000, 0, null);

	Fade("浮出用", 500, 0, null, true);

	OnBG(10,"bg1203200ＵＰ＋_セット裏_暗闇");
	FadeBG(0,true);

	Delete("浮出用");
	Delete("絵背景*");

	Wait(800);


{	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100810nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100820nko">
「にとりは、どこ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();


}
