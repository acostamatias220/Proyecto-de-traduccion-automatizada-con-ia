
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2330似鳥_ノーコ_h.nss_MAIN
{
//■エンディングチェック
	Ending_IsChaeck("baa");

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
	$GameName = "baa2351千秋_恵那.nss";//★エンディング中（baa）

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#baa2330似鳥_ノーコ_h=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene baa2330似鳥_ノーコ_h.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="2860">
////////////header////////////
//file name "baa2330似鳥_ノーコ_h.nss"
//title "ゆがんだあい"
//previous "baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"

////////////footer////////////
//next "baa2351千秋_恵那.nss"


////////////body////////////

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

//あきゅん「演出：暗転開始スクリプト」

//演出指示：似鳥の立ち絵をださない！とのこと。

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：似鳥マンション_リビング

	ClockPass(2320);

	OnBG(10,"bg1304300似鳥マンション_リビング_掃除後");
	FadeBG(0,true);

	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",0,true);

	if($PreGameName=="baa2300沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"){
		FadeDelete("上背景", 2000, null, true);
	}else{
		CreateColorSP("絵色黒", 20000, "#000000");
		FadeDelete("上背景", 0, null, true);
	
		TakeRatePic();//あきゅん「演出：スクリーン希望箇所」
	
		FadeDelete("絵色黒", 2000, null, true);
	}


//	St("ML",700, @0,@0,"fu似鳥_通常_worry");
//	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300100010nki">
「待たせてごめんな」

{	St2("C",700, @0,@0,"fuノーコa_通常_shock","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100020nko">
「うん……ずっと、まった」

{	St2("C",700, @0,@0,"fuノーコa_通常_pain","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100030nko">
「にとり……あいしてる？」

{
//	DeleteAllSt(200,false);
//	St("ML",700, @0,@0,"fu似鳥_通常_hard");
//	FadeSt("ML",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300100040nki">
「ああ……愛してる」

{	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100050nko">
「もういっかいいって」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300100060nki">
「愛してる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St2("C",700, @0,@0,"fuノーコa_通常_shock","cg2/",".png");
	St2("C",700, @0,@0,"fuノーコa_通常_shy","cg2/",".png");

	FadeSt("C",200,true);

	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100070nko">
「にとりが……ふふ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300100080nki">
「愛してる」

{	//★立ち絵プロセス：再定義
	AgainSt2("C",700, @0,@0,"fuノーコa_通常_shy","cg2/",".png");
	St("C",700, @0,@0,"fuノーコa_幽霊_shy");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100090nko">
「にとりが……わたしをあいしてる……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300100100nki">
「愛してる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockPass(2321);

{	St("C",700, @0,@0,"fuノーコa_幽霊_shy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100110nko">
「あいしてるんだ……あいしてる……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300100120nki">
「愛してる」

{	St2("C",700, @0,@0,"fuノーコa_通常_shy","cg2/",".png");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100130nko">
「あ……あ……ああ……あああっ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100140nko">
「だ……め……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100150nko">
「しあわせで……むねが……つまって……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100160nko">
「たって……たってられないよう……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100170nko">
「にとり……あなたとむかし……したみたいに……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100180nko">
「たくさん……たくさん……してあげる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ノーコスカートの中の戦争.txt"  差分Ａ

	CreateTextureEX("絵背景100", 2000, Center, @0, "cg/ev/ev2330ノーコスカートの中の戦争a.jpg");

	ClockDelete(1000,false);

	Fade("絵背景100",1000, 1000, null, true);

	DeleteSt("C",0,true);

	SoundPlay("@xbgm29",0,450,true);

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	ClockTime(2321);

	CreateTextureEX("絵背景100", 2000, Center, @0, "cg/ev/ev2330ノーコスカートの中の戦争a.jpg");
	Fade("絵背景100",0, 1000, null, true);

	SoundPlay("@xbgm29",0,450,true);

	//リコ背景抹消
	RecoIn();
}
//========================================================


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100190nko">
「あ……あ……あ……！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100200nko">
「にとりの……あたま……
　おしりのあいだ……はさまって……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100210nko">
「ああ……だめ……
　そんな……におい……かいだら……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100220nko">
「わたし……それだけで……んん……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100230nko">
「ねえ、もっと……もっと、ちかく……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

ClockTime(2322);


	TextBoxDelete(150);

	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100_m", 2100, Center, Middle, "cg/ev/m/ev2330ノーコスカートの中の戦争a_m.jpg");
	Move("絵背景100_m", 0, -400, -100, null, false);
	Move("絵背景100_m", 1000, -400, -200, Dxl1, false);
	Fade("絵背景100_m", 1000, 1000, null, true);
	Delete("絵背景100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100240nko">
「はな……あたって……
　がんめん……おしつけて……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100250nko">
「もっと！　ほら！　もっと！　もっと！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100260nko">
「ふふ……いきがあらいよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100270nko">
「くるしい？　くるしい？　くるしいよね？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100280nko">
「でもねにとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100290nko">
「わたしはもっと、くるしかったんだよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100300nko">
「にとりのひゃくばい、せんばい、いちまんばい、いちおくばい、むねがくるしかったよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100310nko">
「ねえ？　わかる？　わかるよね？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100320nko">
「ふふ……ふふふ……うれしい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	CreateTextureEX("絵背景100", 2101, Center, @0, "cg/ev/ev2330ノーコスカートの中の戦争a.jpg");
	Fade("絵背景100",1000, 1000, null, true);
	Delete("絵背景100_m");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100330nko">
「にとりもうれしい？　うれしいよね」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100340nko">
「そんなによだれたらして……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100350nko">
「あいえきとまざって、びしょびしょ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100360nko">
「ねえ、しただして」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100370nko">
「そう、したで、なめて――すって――ん――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2323);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100380nko">
「んん――ん――んん――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100390nko">
「わたしのにおいで、いっぱいになって――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100400nko">
「わたしいがいのにおいを、みんなおいだして――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100410nko">
「あたまのなかを、のうみそのなかを、わたしのあいでみたして、にとりはわたしのこといがいかんがえられない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100420nko">
「だって、これ、にとりはすきだもん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100430nko">
「ほら！　もっとすって！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100440nko">
「ふふ――ふふふ――ずいぶん、なれてきた――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100450nko">
「わたしも――きもちよく――なってきて――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100460nko">
「うん。いいよ。して」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100470nko">
「ゆっくり――ゆっくり、したぎをずらして――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2324);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ノーコスカートの中の戦争.txt"  差分Ｂ


	CreateTextureEX("絵背景101", 2110, Center, @0, "cg/ev/ev2330ノーコスカートの中の戦争b.jpg");
	Fade("絵背景101",1000, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景100_m");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100480nko">
「ふふ……みえなくても、わかる？　かんじる？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100490nko">
「じゅうけつして、ぬれて、びしょびしょで、いますぐにでもにとりがほしいって、うずいてる、あそこ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100500nko">
「おびえなくていいよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100510nko">
「わたしが――ぜんぶ、してあげるから」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100520nko">
「こうやって――そう、からだを――うごかして――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100530nko">
「ぜんぶ――なめあげるみたいに――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100540nko">
「やさしく――やさしく――そう――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景101_m", 2111, Center, @0, "cg/ev/m/ev2330ノーコスカートの中の戦争b_m.jpg");
	Move("絵背景101_m", 0, -200, -100, null, false);
	Move("絵背景101_m", 1000, -200, -0, Dxl1, false);
	Fade("絵背景101_m",1000, 1000, null, true);
	Delete("絵背景101");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100550nko">
「でもね、にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100560nko">
「やさしいのは、すぐにおわりでいいよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100570nko">
「だって、わたしは、こわしてほしいの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2325);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100580nko">
「にとりに、こわしてほしいの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100590nko">
「ねえ、にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100600nko">
「わたしを、こわれるくらい、して」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100610nko">
「じゃないと、こうして――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100620nko">
「あなたを、こわすよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＥＶ："ev/ev2330ノーコスカートの中の戦争.txt"  差分Ｃ

	CreateTextureEX("絵背景102", 2120, Center, @0, "cg/ev/ev2330ノーコスカートの中の戦争c.jpg");
	Fade("絵背景102",1000, 1000, null, true);
	Delete("絵背景101");
	Delete("絵背景101_m");

	CreateColorEX("白フラッシュ", 15000, "WHITE");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100630nko">
「ああっ！　もがいて――もがいて――
　そう、そう。ふふふ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100640nko">
「こわれたくなかったら――わたしを――
　きもちよく――して――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100650nko">
「ん――んんん――
　んんっ！　いいよ――そこ、びんかんで――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100660nko">
「こまかく――こうやって――んん――
　からだを、ゆすって――ああっ、ん――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100670nko">
「んん――ん――んんん――っ！
　ああ――しあわせ――しあわせ――にとり――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100680nko">
「にとり――だいすき――だから――
　もっと――もっと――もっと――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2326);


	TextBoxDelete(150);

	Fade("白フラッシュ", 300, 1000, null, true);

	Fade("白フラッシュ", 300, 0, null, true);
	Fade("白フラッシュ", 100, 1000, null, true);
	Fade("白フラッシュ", 1000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100690nko">
「ふぁっ――あっ――ああっ――！
　んぁっ、あ――あ――あああああああ――――っ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100700nko">
「ん――んん――ん――いっちゃった――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景102_m", 2121, Center, @0, "cg/ev/m/ev2330ノーコスカートの中の戦争c_m.jpg");
	Move("絵背景100_m", 0, -200, -100, null, false);
	Move("絵背景100_m", 1000, -200, -0, Dxl1, false);
	Fade("絵背景102_m",1000, 1000, null, true);
	Delete("絵背景102");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100710nko">
「でもね――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100720nko">
「おわるとおもった？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100730nko">
「まだおわらないよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100740nko">
「おわるわけないよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100750nko">
「おわりたくないよね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2327);


//	TextBoxDelete(150);

	CreateTextureEX("絵背景102", 2122, Center, @0, "cg/ev/ev2330ノーコスカートの中の戦争c.jpg");
	Fade("絵背景102",1000, 1000, null, true);
	Delete("絵背景102_m");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100760nko">
「うん、そうだよね」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100770nko">
「ほら、しただして」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100780nko">
「もっと、もっとつきだして」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100790nko">
「いりぐちを、えぐるみたいに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100800nko">
「あ――そう――そう――そうやって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100810nko">
「ん――ああっ、ん――んん――
　ほら、もっとおく――おく――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100820nko">
「ん――んんん――ん――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100830nko">
「だめ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100840nko">
「ぜんぜん、だめ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2328);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100850nko">
「いきをあらくして」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100860nko">
「つかれちゃった？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100870nko">
「つかれたなら、わたしがうごかしてあげる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100880nko">
「にげられないよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100890nko">
「いい？　からだをおさえて――いくよ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100900nko">
「せーの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateTextureEX("絵背景102_m", 2123, Center, @0, "cg/ev/m/ev2330ノーコスカートの中の戦争b_m.jpg");
	Move("絵背景100_m", 0, -200, -100, null, false);
	Move("絵背景100_m", 1000, -200, -0, Dxl1, false);
	Fade("絵背景102_m",1000, 1000, null, true);
	Delete("絵背景102");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100910nko">
「ふふ……うそ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100920nko">
「そんなにからだ、かたくしないで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100930nko">
「こわいことじゃないよ。
　すごく、きもちいいこと」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100940nko">
「だから、ほら、ちからをぬいて――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100950nko">
「いくよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2329);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ノーコスカートの中の戦争.txt"  差分Ｂ

	CreateTextureEX("絵背景103", 2130, Center, @0, "cg/ev/ev2330ノーコスカートの中の戦争b.jpg");
	Fade("絵背景103",1000, 1000, null, true);
	Delete("絵背景102");
	Delete("絵背景102_m");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100960nko">
「ん……ああ……んん……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100970nko">
「ゆっくり……ゆっくり……
　ピストン……ピストン……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100980nko">
「だんだん、はやく……
　はやく、はやく……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300100990nko">
「はやく、ふかく、はやく、ふかく。
　んん、んっ、ん――んんっ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101000nko">
「にとりの、したが、なかまで、えぐって。
　わたしの、にくが、きゅって、しまるよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101010nko">
「あ、そこ、きもち、いいよ。
　もっと、もっと、おくに、おくまで！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2330);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101020nko">
「おく！　おくだよ！　おくに、ふふっ！
　ふふふふふふ……！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101030nko">
「ねえ、にとり。フェラチオしてる、みたいっ！
　ほら！　ほらほら！　そろそろ、いくよ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101040nko">
「あ、にとり、なんか、でそう――でる――
　でちゃう――でちゃうよ――ねぇ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101050nko">
「いくよ！　いっちゃうよ！　いい？　いいよね？
　かおが、びしょびしょに、ぬれても、いいよね？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101060nko">
「だめ？　だめ？　ああっ、んふぅっ、んん――！！
　んぁっ！　んっ！　だっ、だめっていっても――！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101070nko">
「いっちゃうよ………………！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ノーコスカートの中の戦争.txt"  差分Ｄ


	Fade("白フラッシュ", 300, 1000, null, true);

	CreateTextureEX("絵背景104", 2140, Center, @0, "cg/ev/ev2330ノーコスカートの中の戦争d.jpg");
	Fade("絵背景104",1000, 1000, null, true);
	Delete("絵背景103");
	Delete("絵背景103_m");

	Fade("白フラッシュ", 300, 0, null, true);
	Fade("白フラッシュ", 100, 1000, null, true);
	Fade("白フラッシュ", 1500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101080nko">
「ぁ……ぅふ、うふふふふふふふふふ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101090nko">
「かかってる……
　いっぱい……いっぱい……かかってる……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101100nko">
「にとりの……かお……
　わたしので……びしょびしょ……だね……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101110nko">
「みんな……みんな……
　わたしに……そまっちゃった……？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101120nki">
「――ぷはぁっ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101130nki">
「はぁっ、はぁ……はぁ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2331);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101140nki">
「けほっ、けほっけほっ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101150nko">
「にとり……どう？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101160nki">
「ああ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101170nki">
「最高、だよ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101180nko">
「にとり、あいしてる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101190nki">
「ああ……愛してる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101200nko">
「でも、まだだよ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101210nki">
「くはっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2332);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ノーコ似鳥靴コキ.txt" 差分Ａ


	CreateTextureEX("絵背景105_m", 2150, Center, @0, "cg/ev/m/ev2330ノーコ似鳥靴コキa_m.jpg");
	Move("絵背景105_m", 0, 0, -280, null, false);
	Move("絵背景105_m", 4000, -510, -0, Dxl1, false);
	Fade("絵背景105_m",3000, 1000, null, true);
	Delete("絵背景104");
	Delete("絵背景104_m");
	Wait(500);

	CreateTextureEX("絵背景105", 2151, Center, @0, "cg/ev/ev2330ノーコ似鳥靴コキa.jpg");
	Fade("絵背景105",1000, 1000, null, true);
	Delete("絵背景104");
	Delete("絵背景105_m");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101220nko">
「こんどは、わたしが、あいしてあげる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景105_m", 2152, Center, @0, "cg/ev/m/ev2330ノーコ似鳥靴コキa_m.jpg");
	Move("絵背景105_m", 0, 0, -280, Dxl1, false);
	Fade("絵背景105_m", 500, 1000, null, true);
	Delete("絵背景105");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101230nko">
「ここを――こうやってね」

{
	Shake("@絵背景*", 300, 0, 5, 0, 0, 500, null, false);
}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101240nki">
「んぁあっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2333);

	TextBoxDelete(150);

	CreateTextureEX("絵背景105", 2153, Center, @0, "cg/ev/ev2330ノーコ似鳥靴コキa.jpg");
	Fade("絵背景105",500, 1000, null, true);
	Delete("絵背景104");
	Delete("絵背景105_m");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0282]

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101250nko">
「いたい？　いたい？　いたいの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101260nko">
「ごめん。くつをはいてて、わからないの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101270nko">
「でもね、いたくてもいいよね？
　いたくてもだいじょうぶだよね？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101280nko">
「だって、これ、わたしからのあいだよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101290nko">
「あいしてもらって、うれしいよね？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101300nki">
「あ……ああ、うれしい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101310nko">
「しってるよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101320nko">
「ノーコントロールの、さいしんかんにのってる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101330nko">
「こういうこと、してほしいんだよね」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101340nko">
「してほしいから、かいたんだよね」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101350nko">
「…………あれ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101360nko">
「ふふ……ふふふふふ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101370nko">
「おかしいよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景105_m", 2154, Center, @0, "cg/ev/m/ev2330ノーコ似鳥靴コキa_m.jpg");
	Move("絵背景105_m", 0, 0, -280, Dxl1, false);
	Fade("絵背景105_m", 500, 1000, null, true);
	Delete("絵背景105");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101380nko">
「わたしの、あし」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101390nko">
「くつ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101400nko">
「もちあがってきてる」

{
	Shake("@絵背景*", 300, 0, 3, 0, 0, 500, null, false);
}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101410nko">
「どっくん」

{
	Shake("@絵背景*", 300, 0, 3, 0, 0, 500, null, false);
}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101420nko">
「どっくん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101430nko">
「なんで？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101440nko">
「なんでかな？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101450nko">
「なんでわたしのあしがもちあがってるの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101460nko">
「なんで？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101470nko">
「もしかして……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101480nko">
「ふまれながら……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2334);


	TextBoxDelete(150);

	CreateTextureEX("絵背景105_m2", 2155, Center, @0, "cg/ev/m/ev2330ノーコ似鳥靴コキa_m.jpg");
	Move("絵背景105_m2", 0, -510, -0, Dxl1, false);
	Fade("絵背景105_m2", 500, 1000, null, true);
	Delete("絵背景105_m");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101490nko">
「こうふんしちゃったの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101500nko">
「へんたい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101510nko">
「へんたいさん？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101520nko">
「ふふふ……そうだね……そうだよね……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101530nko">
「あしげにされて、こうふんしちゃったんだね」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101540nko">
「うん、しってるよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101550nko">
「にまんねんまえからずっと、きまってるの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101560nko">
「うんめいなの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101570nko">
「にとりはへんたいだもんね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景105", 2156, Center, @0, "cg/ev/ev2330ノーコ似鳥靴コキa.jpg");
	Fade("絵背景105",500, 1000, null, true);
	Delete("@絵背景105_m*");

	Shake("@絵背景*", 300, 0, 3, 0, 0, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101580nko">
「こうやって！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101590nki">
「ああっ！」

{
	Shake("@絵背景*", 300, 0, 3, 0, 0, 500, null, false);
}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101600nko">
「こうやって！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101610nki">
「んくぅっ！！」

{
	Shake("@絵背景*", 300, 0, 3, 0, 0, 500, null, false);
}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101620nko">
「こうやって！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300101630nki">
「ぁはっ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101640nko">
「……されたかった？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101650nko">
「かかとでさおをぐりぐりされたり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101660nko">
「こうでふくろをぎゅってされたり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101670nko">
「つまさきでおしりをなでなでしたり」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2335);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101680nko">
「うらでさきっぽをおしつぶしたり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101690nko">
「……されたかった？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101700nko">
「されたかったんだよね？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101710nko">
「ねえ、ないてる？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101720nko">
「そんなにうれしい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101730nko">
「きもちいい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101740nko">
「あいで、きもちいい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101750nko">
「いたいのも、きもちいい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101760nko">
「いいよね？　わかるよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101770nko">
「にとり、だいすきだもんね」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101780nko">
「ねえ、にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101790nko">
「くちびる、みて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
//	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateColorSP("絵窓/絵演背景", 1520, "#FFFFFF");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 19100, -655, -35, "cg/ev/ex/ev2330ノーコ似鳥靴コキb_ex01.jpg");
	Request("絵窓/絵演立絵2", Smoothing);

//動作
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵*", 40000, -432, -326, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

//◆ＥＶ："ev/ev2330ノーコ似鳥靴コキ.txt" 差分Ｂ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101800nko">
「ここに、いれたい？」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101810nko">
「ああ……いれたいんだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101820nko">
「ここに……ちゅぅぅぅっ……ってされたい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101830nko">
「こうやって……
　ぷるぷるぷるってさきをこすらせたり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101840nko">
「こうやって……
　ほっぺたをやぶるくらいきつくつっこんだり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101850nko">
「ちゅばっ、んちゅるっ、ちゅううう……
　こうやって、つばといっしょにすいこんだり……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101860nko">
「のどのおくまでつっこんで、わたしをせきこませたり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101870nko">
「させたい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101880nko">
「だめだよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101890nko">
「そんなこと、させてあげないよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101900nko">
「にとりは、しゃせいするの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2336);



	CreateTextureEX("絵背景106_m", 2160, Center, @0, "cg/ev/m/ev2330ノーコ似鳥靴コキb_m.jpg");
//	Move("絵背景106_m", 0, -410, -100, null, false);
	Move("絵背景106_m", 0, -510, -0, null, false);

	Wait(32);
	Fade("絵窓/絵演立絵", 500, 0, Axl2, true);

	Fade("絵背景106_m", 1000, 1000, null, true);
	Delete("絵背景105");
	Delete("絵背景105_m");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101910nko">
「わたしのあしで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101920nko">
「このくちびるをみながら」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101930nko">
「このなかにぶちまけるのを、そうぞうして」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101940nko">
「わたしのくつにふまれて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101950nko">
「くつのうらに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101960nko">
「だすの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101970nko">
「ぶちまけるの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101980nko">
「しゃせいするの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300101990nko">
「それが、あいなの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102000nko">
「わたしからのにとりへの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景106", 2161, Center, @0, "cg/ev/ev2330ノーコ似鳥靴コキb.jpg");
	Fade("絵背景106",1000, 1000, null, true);
	Delete("絵背景106_m");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102010nko">
「ふふ……ふふふふふ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102020nko">
「ほら、だして……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102030nko">
「このくちびるに、だすところ、そうぞうして……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102040nko">
「くちゅっ、んちゅっ、ちゅば……んちゅうう……
　ほら、ここで……きもちいい？　いいよね……？」

{
	Shake("@絵背景*", 800, 0, 3, 0, 0, 500, null, false);
}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102050nko">
「くつのうらに、ほら！　きたないのを、だして！
　だして！　ほら、ほらほらほらほら！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102060nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102070nko">
「ださないの？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102080nki">
「いや、でも――」

[text0460]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102090nko">
「きもちよくない？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102100nki">
「そうじゃないけど――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102110nko">
「じゃあなぜ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102120nki">
「だって、最初はノーコの中で――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景106_m", 2162, Center, @0, "cg/ev/m/ev2330ノーコ似鳥靴コキb_m.jpg");
	Move("絵背景106_m", 0, -510, -0, null, false);
	Fade("絵背景106_m", 500, 1000, null, true);
	Delete("絵背景105");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102130nko">
「だめ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102140nki">
「だめって、どうして……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102150nko">
「わたしのなかは、きもちいいから。
　にとりはすぐにこしをふるの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102160nko">
「むがむちゅうで、こしをふって、こしをふって、はてる。
　すぐに、はてる。あっけなく。そうろう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102170nko">
「それでも、わたしはやめない。
　にとりはやめてくれっていうけれど、わたしはやめない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2337);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102180nko">
「せいえきとあいえきがまじって、ぐちょぐちょになって、なえかけたにとりがもういちどたくましくなって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102190nko">
「それでもまだ、まだ、まだまだまだまだ。
　おわらないの。おわらない……ふふ、おわらないんだよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102200nko">
「あんまりきもちいいと、にとりはしっしんするでしょ？
　それはいやなの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102210nko">
「あいしているから、ひとりじゃいやなの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102220nko">
「にとりのきもちいいっていうこえを、やめてくれっていうひめいを、きをうしないかけのぜっきょうを」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102230nko">
「ぜんぶ、しゃぶりつくして、あじわいつくして、あいしたいの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102240nko">
「だからね、にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102250nko">
「ここで、しゃせいしなさい」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102260nki">
「や……でも、オレは……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102270nko">
「に、と、り……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景106", 2163, Center, @0, "cg/ev/ev2330ノーコ似鳥靴コキb.jpg");
	Fade("絵背景106",500, 1000, null, true);
	Delete("絵背景106_m");

	Shake("@絵背景*", 300, 0, 3, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102280nki">
「んがあっ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102290nko">
「んちゅばっ……んん？
　わたしのあいが、わからない？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102300nko">
「それとも、わたしが、きらい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102310nki">
「そんなわけ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102320nko">
「きらい、なんだ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102330nko">
「ああ、きらい……きらいだ……にとりはわたしが……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102340nki">
「ちが――うがっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2338);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ノーコ似鳥靴コキ.txt" 差分Ｃ

	CreateTextureEX("絵背景107", 2170, Center, @0, "cg/ev/ev2330ノーコ似鳥靴コキc.jpg");
	Fade("絵背景107",1000, 1000, null, true);
	Delete("絵背景106");
	Delete("絵背景106_m");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102350nko">
「つぶそう」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102360nki">
「な……ちょっと！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102370nko">
「にとりがきらいになって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102380nko">
「うわきをしないように」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102390nko">
「わたしのものにならないなら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景107_m", 2171, Center, @0, "cg/ev/m/ev2330ノーコ似鳥靴コキc_m.jpg");
	Move("絵背景107_m", 0, -510, -0, Dxl1, false);
	Fade("絵背景107_m", 500, 1000, null, true);
	Delete("絵背景107");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102400nko">
「つぶす」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102410nki">
「そんな――ッ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102420nko">
「でも、ほんとうにわたしがすきなら」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102430nko">
「わたしへのあいのあかしに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102440nko">
「くつのうらに、しゃせいしてくれる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102450nko">
「そうだよね？　にとり」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102460nki">
「な……そんな……そんなの……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	CreateTextureEX("絵背景107", 2172, Center, @0, "cg/ev/ev2330ノーコ似鳥靴コキc.jpg");
	Fade("絵背景107",1000, 1000, null, true);
	Delete("絵背景107_m");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102470nko">
「カウントダウン、５」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102480nki">
「ちょ、待て――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102490nko">
「４、なんだ、つぶされたいの？　ほんとに？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102500nko">
「３、ほら、ぎゅううう――ぎゅううううう……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102510nko">
「２、もうすこし……もうすこし……うふふふふふ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102520nko">
「１、はい、いきとめて。いくよ。いくよ。いっちゃうよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102530nko">
「ゼ――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2339);


	TextBoxDelete(150);

//◆ＳＥ：どんっ！！


//◆ＥＶ："ev/ev2330ノーコ似鳥靴コキ.txt" 差分Ｃ
//↑差分Ｄでは？

	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,350,0,1000,null,false);
	Fade("白フラッシュ", 100, 1000, null, true);

	CreateTextureEX("絵背景108", 2180, Center, @0, "cg/ev/ev2330ノーコ似鳥靴コキd.jpg");
	Fade("絵背景108",300, 1000, null, true);
	Delete("絵背景107");
	Delete("絵背景107_m");

	Fade("白フラッシュ", 200, 0, null, true);
//	Fade("白フラッシュ", 100, 1000, null, true);
//	Fade("白フラッシュ", 1000, 0, null, true);
	Delete("白フラッシュ");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102540nko">
「あ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102550nko">
「でた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102560nko">
「ほんとにでた」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102570nko">
「わたしのくつのうらに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102580nko">
「にとり、しゃせいした」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102590nko">
「へんたい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102600nko">
「マゾ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102610nko">
「さいてい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102620nko">
「くず」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102630nko">
「でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev1840ノーコフェラチオ.txt"

	CreateTextureEX("絵背景110", 2200, Center, @0, "cg/ev/ev1840ノーコフェラチオb.jpg");
	Zoom("絵背景110", 0, 1100, 1100, Dxl2, false);
	Zoom("絵背景110", 500, 1000, 1000, Dxl2, false);
	Shake("@絵背景*", 500, 0, 10, 0, 0, 500, null, false);
	Fade("絵背景110", 500, 1000, null, true);
	Delete("@絵背景10*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102640nko">
「んちゅうううううううう――――――っ！
　ちゅばっ、んちゅっ、んちゅうううううっ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102650nko">
「ん――――んくっ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景111", 2210, Center, @0, "cg/ev/ev1840ノーコフェラチオa.jpg");
	Fade("絵背景111",1000, 1000, null, true);
	Delete("絵背景110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102660nko">
「おいしい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102670nko">
「わたしのしっている、にとりのあじ。
　んちゅっ、ん……んん……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102680nko">
「にとりは、だめなひと」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102690nko">
「クズにんげん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102700nko">
「だけど――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102710nko">
「そんなへんたいでマゾでさいていでくずなにとりがすき」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102720nko">
「そんな人をあいしてあげられるのはわたしだけ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102730nko">
「そうでしょ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102740nko">
「わたしのあいする、カイザー・オブ・ダークネス・ルシフェル」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102750nko">
「にとり、あいしてる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102760nki">
「ああ。オレも……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102770nki">
「あいしてるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	ClockTime(2340);


//◆ＥＶ："ev1840ノーコ同人誌再現正常位.txt"
	CreateTextureEX("絵背景112", 2220, -191, -484, "cg/ev/l/ev1840ノーコ同人誌再現正常位a_l.jpg");
	Move("絵背景112", 70000, -450, -165, DxlAuto, false);
	Fade("絵背景112",1000, 1000, null, true);
	Delete("絵背景111");
	Delete("絵背景111_m");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102780nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102790nko">
「まだ、だいじょうぶ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102800nki">
「ああ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102810nki">
「何回だって、愛してやる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/baa23/300102820nki">
「だって今日は、２万年ぶりの再会だろ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102830nko">
「…………うん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102840nko">
「でも、これがおわったら――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102850nko">
「さきに、すませておくことがあるよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/baa23/300102860nko">
「ばつを、あたえなきゃ」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2500, 0, null);

	CreateColorEX("絵背景", 5000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);
	Delete("@絵背景1*");

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}
//============================================

	EndScene();
}
//next "baa2351千秋_恵那.nss"
