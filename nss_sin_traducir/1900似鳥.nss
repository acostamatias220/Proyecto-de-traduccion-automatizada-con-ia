
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1900似鳥.nss_MAIN
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
	$GameName = "1920似鳥_ノーコ_フウリ.nss";
	//$GameCircle=false;

}

scene 1900似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="2070">
////////////header////////////
//file name "1900似鳥.nss"
//title "人生劇場"
//previous "1840似鳥_ノーコ_h.nss"

////////////footer////////////
//next "似鳥" "1920似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	ClockDelete(0,true);


{	ClockTime(1900);}


//◆場所：泰然堂大学病院_正面
	OnBG(10,"bg1401100泰然堂大学病院_正面_通常");
	FadeBG(0,true);

	Wait(1500);

	CreateEffect("ネガポジ", 1400, 0, 0, 1024, 576, "Sepia");
	SetAlias("ネガポジ","ネガポジ");
	CreateColorSPover("絵回想色100", 1400, "#DDAA44");
	Fade("絵回想色100", 0, 500, null, true);

//	CreateColorSPmul("絵色100", 2500, "#99FF00");

	if($LFlag_NowFile=="1840似鳥_ノーコ_h.nss"){
	Fade("上背景", 2000, 0, null, true);
	}else{
	Fade("上背景", 0, 0, null, true);
	}

	FadeDelete("上背景", 0, null, true);

	SoundPlay("@xbgm25",0,450,true);

	Wait(500);

//おがみ：β調整済み


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500010e13">
「なあ、おまえ今楽しい？」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500020nki">
「な……なんだよ急に」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500030e13">
「だから、おまえは楽しく生きてるかって聞いてんだ。
　こんな時間まで居残りで研修させられてさ」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500040nki">
「知るか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500050e13">
「なあ、少しは将来真面目に考えろよ。
　単位も取れてねーんだろ？」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500060e13">
「せっかく医大に入ったんだろ？
　毎日こんな遅くまで勉強してさ」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500070e13">
「親に入れてもらった大学、ドロップアウトか？」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500080nki">
「親は関係ねーだろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500090e13">
「でもさあ、今は今しかないんだぜ？」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500100nki">
「言われなくても知ってる」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500110e13">
「じゃ、訊くけどさ。
　おまえ、このまま医者になる気？」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500120e13">
「それとも、夢とかあるわけ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500130nki">
「夢――？」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500140nki">
（そりゃ、まあないわけじゃないけど……）

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500150nki">
（でもさ、普通言えないだろ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500160nki">
（そんな……馬鹿げた夢）

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500170e13">
「へぇ……やっぱりあるんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1901);}


	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500180nki">
「悪いかよ！」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500190e13">
「夢を叶えるにも、先立つものが必要だよな」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500200e13">
「で、相談なんだが……」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500210e13">
「一緒に小遣い、稼がないか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 500, 1000, null, true);

	Wait(500);

//◆場所：似鳥マンション_リビング
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(0,true);

	Fade("絵色100", 500, 0, null, true);
	Delete("絵色100");

	CreateColorEX("絵色100", 1500, "BLACK");


	Wait(300);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500220nko">
「どうしたの？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500230nki">
「……なんでもない」

{	DeleteAllSt(200,true);
	Fade("絵色100", 500, 500, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500240nki">
（友人に話をされるまでは、自分が株で儲けようとするなんて、想像したこともなかった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500250nki">
（身の回りの人間にはいなかったが、株取引が元で借金を背負った話は、ネットで何度も読んでいた）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500260nki">
（そもそもが学生で、元手もそう多くはない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500270nki">
（最初はもちろん、断ろうと思った）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500280nki">
（でも……）

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	Fade("絵色100", 300, 0, null, false);
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500290nki">
「夢……か」

{	DeleteAllSt(200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500300nki">
（金なんかなくても、授業の合間に同人活動くらいできる）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500310nki">
（将来自分のマンガで暮らしていけるなんて信じちゃいないし、医者になるチャンスを捨てるなんて馬鹿げてる）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵色100", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500320nki">
（そう言い訳して、何となく毎日を過ごし――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500330nki">
（マンガをまともに描くこともしないまま――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500340nki">
（授業からは徐々に遅れだし――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1902);}

	TextBoxDelete(150);

	Wait(200);

//◆場所：秋葉原_蔵前橋通り
	OnBG(10,"bg0106100秋葉原_蔵前橋通り_通常");
	FadeBG(0,true);

//◆ＳＥ：車

	Fade("絵色100", 1000, 0, null, true);
	Delete("絵色100");
	Wait(500);

	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500350nki">
「え……おまえ、車買ったの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500360e13">
「まあね」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500370e13">
「この前、ニヤ動がテレ洋と提携しただろ。
　その影響がガツンと来てさ」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500380e13">
「２０００万くらい利益が出たんだよなあ……」

{	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500390nki">
「２０００万……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500400e13">
「ところでおまえ、最近どうよ？」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500410e13">
「相変わらず、マンガ描いてんのか？」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500420nki">
「え、いや、オレは……」

{	DeleteAllSt(200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500430e13">
「ふふーん」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/19/000500440e13">
「ま、いいや。なんか用事があったら連絡してくれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 800, 1000, null, true);


{	ClockTime(1903);}


//◆場所：秋葉原_万世橋

	OnBG(10,"bg0104111秋葉原_万世橋_通常");
	FadeBG(0,true);

	Wait(300);

	Fade("絵色100", 800, 0, null, true);
	Delete("絵色100");
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500450nki">
「いやだ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500460nki">
「オレ……このまま……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500470nki">
「このままじゃ……」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500480nki">
「だめなんだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 800, 1000, null, true);


//◆場所：似鳥マンション_リビング
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(0,true);

//◆演出指定：ずっとテレビがついている

	CreateTextureSP("ノイズ100", 1000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("ノイズ100", 0, 1005, 1005, null, true);

	$ローテートナット名１ = @ノイズ100;

	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");

	Request("プロセス２", Start);



	Fade("絵色100", 800, 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500490nki">
「本当に……賛成か？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500500nko">
「そばにいたい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500510nko">
「がっこうはとおい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500520nko">
「いえならいっしょ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500530nko">
「ずっと……ずっと、にとりといっしょ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500540nki">
「そうか……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500550nki">
「うん、そうだよな」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500560nko">
「がっこうなんて、やめよう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500570nko">
「かわることなく」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500580nko">
「ふたりで、えいえんに……えいえんに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);




//◆演出指定：たっぷり時間をかけて
	Fade("絵色100", 2000, 1000, null, true);

	Delete("ノイズ100");
	Request("プロセス２", Stop);

	Wait(300);

//あきゅん「素材：imgネットトレードＰＣ画面」
	CreateTextureSP("絵効果", 100, Center, Middle, "cg/img/imgネットトレードＰＣ画面.jpg");

	Fade("絵色100", 2000, 500, null, true);
	Delete("プロセス２");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500590nki">
（そうしてオレは、ネットトレードを始めた）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500600nki">
（翌年の授業料を先行投資してのスタート）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500610nki">
（元手、たった１０万円から始めた取引が、あっという間に１００万円になった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500620nki">
（大学に行くのも忘れて、パソコンの画面にはりついた）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500630nki">
（数字の波を泳ぎ――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500640nki">
（専門書を読みあさり――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500650nki">
（テレビの専門家をせせら笑い――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500660nki">
（ネットの掲示板の怪情報に踊らされ――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500670nki">
（半年後には、１０万円が５００万円になった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500680nki">
（その頃には、退学処分を受けてもどこ吹く風）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵色100", 500, 1000, null, true);
	Delete("絵効果");

	OnBG(10,"bg1303100似鳥マンション_玄関_通常");
	FadeBG(0,true);

	Wait(300);

	Fade("絵色100", 500, 0, null, true);


	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500690nki">
「アホくせ」

{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500700nki">
「大学行って何になんだ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500710nki">
「真面目に働くとか、ありえねーだろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1904);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Fade("絵色100", 500, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500720nki">
（朝起きて、シャワーを浴び、たっぷりと朝飯を食って、トイレを済ませる）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500730nki">
（パソコンに向かい、ネットで情報収集）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500740nki">
（ブラウザでネットトレードのサイトを開き、デュアルディスプレイに専ブラを立ち上げる）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500750nki">
（９時から１５時までが勝負）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500760nki">
（それが終わると……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：エロシーン
	Fade("絵色100", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500770nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500780nko">
「わたしを」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500790nko">
「ころして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev1840ノーコ同人誌再現正常位d.jpg");

	Fade("絵色100", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500800nko">
「ぁっ、ん……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500810nko">
「ぁぅっ！　ぁっ、ぁ――ッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500820nki">
（ノーコが身体を求めてくる）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500830nki">
（求められるがまま、オレは彼女を抱く）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500840nki">
（毎日、何度も、何度も）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 500, 1000, null, true);
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500850nki">
（夜はネットゲーをして）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500860nki">
（行きつけの画像掲示板に顔を出して）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500870nki">
（ネットの知り合いとお絵かきチャットとかしてみたり）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500880nki">
（心にもないお世辞をやりとりしたりなんかして）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500890nki">
（でも、そんなお世辞で意外と心は満たされて）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1905);}


	TextBoxDelete(150);

//おがみ：β調整済み
//あきゅん「素材：imgスカイプシーンa」

/*
//◆演出指定：以下、チャット演出

大刀刃那：これ未見？？ http://gazou.niyadou.com/pb/ga38904
2birds：何コレ？


//◆演出指定：画像まとめサイト「殺っちゃえ！　ノーコさんまとめスレ」


2birds：すげ！こんなのできてんだ
大刀刃那：今結構人気出てるみたいだし
大刀刃那：色んな掲示板で見かけるですよ
2birds：マジで？とうとうオレの時代？
大刀刃那：この調子だったらコミマで一攫千金！
2birds：コミマか……
2birds：でも、あんまりいい思い出ないんだよなー
大刀刃那：行ける行ける！
大刀刃那：今の2birds氏なら600部とか余裕っしょ！
2birds：いや、さすがにそこまでは……
大刀刃那：どうかな？
大刀刃那：オレっちも手伝うナリよー
2birds：ん？　そか？
2birds：じゃあ冬コミとか、いっちょやってみっかな
*/

	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(0,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/imgスカイプシーンa.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Wait(300);

	Fade("絵色100", 500, 0, null, true);

	WaitKey(1300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500900nki">
（ネットでもちょっとした時の人で）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500910nki">
（正直、調子に乗っていた）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);


	Fade("絵色100", 1000, 1000, null, true);

	Delete("絵背景100");
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500920nki">
（破局は、秋に訪れた）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：似鳥マンション_リビング
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(0,true);

	Delete("絵回想色100");
	Delete("ネガポジ");

	Fade("絵色100", 1000, 0, null, true);
	Wait(300);

	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500930nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500940nko">
「おきて」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@100,"bu似鳥_通常_sigh");
	Move("@StNameC/C*", 400, @0, @-100, Dxl1, false);
	FadeSt("MR",400,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500950nki">
「ん……んん……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500960nko">
「はやく」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500970nki">
「な……なんだよ、うるさいな……」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000500980nki">
「あたまいたい……きのう……のみすぎ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000500990nko">
「たいへん」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501000nki">
「ん？　大変って？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501010nko">
「きんゆうきき」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501020nki">
「は……？」

{	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501030nki">
「……何このニュース？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501040nki">
「オレが寝てる間に何が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SoundPlay("@xbgm12",0,450,true);


	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 500, 1000, null, true);
	DeleteAllSt(200,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501050nki">
（それが、いわゆる世界金融危機ってやつで）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501060nki">
（オレも当然、その影響をモロに受け――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501070nki">
（損失を補うべく博打を打って、更に傷口を広げたりした）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501080nki">
（で、結局貯金はゼロ――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501090nki">
（どころか、ほんのちょっとマイナった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501100nki">
（オレの借金生活は、そこから始まる）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1906);}

	TextBoxDelete(150);

	Fade("絵色100", 500, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501110nki">
（最初はほんの出来心だった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501120nki">
（次に勝てば、すぐに返せる）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501130nki">
（そんな甘い考えのまま、ダラダラと時だけが過ぎ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501140nki">
（いくつものカードローンを転々とハシゴして）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501150nki">
（借りては返し、返しては借り――の綱渡り）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501160nki">
（今更外に出て働く気にもなれないまま、借金は徐々にかさんでいく）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Fade("絵色100", 500, 0, null, true);

	St("C",700, @0,@0,"bu似鳥_通常_lost");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501170nki">
「死にたい……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501180nko">
「だいじょうぶ」

{	St("C",700, @0,@0,"buノーコa_幽霊_smile");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501190nko">
「しぬときはいっしょ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501200nki">
「……ありがとう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Fade("絵色100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501210nki">
（全然、大丈夫じゃないのはわかっていた）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501220nki">
（でも、その時のオレは、ノーコから離れられなかった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501230nki">
（離れてしまえば、何かが変わってしまう）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501240nki">
（オレが、オレじゃなくなってしまう）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501250nki">
（ずっと、しがみついていた）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501260nki">
（そして――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	Fade("絵色100", 500, 500, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501270nki">
「オレは、河原屋組に世話になることになる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1907);}

	Fade("絵色100", 500, 0, null, true);

	St("ML",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501280ksr">
「おまえ、プーか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501290nki">
「プーっていうか……ネットトレーダーというか……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501300ksr">
「オレたちに借金してんだろ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501310nki">
「それは……でも、その……」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501320nki">
「それも、投資というか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_sigh");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501330ksr">
「投資？」

{	St("ML",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501340ksr">
「なんか、将来の夢でもあんのか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501350nki">
「………………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501360ksr">
「ケッ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501370ksr">
「夢も持てねぇクソ野郎か」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501380nki">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501390ksr">
「まあいいや」

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501400ksr">
「てめぇの職業がなんだろうと、期日までに耳を揃えて金を返してもらえりゃ、オレはなんの文句もねぇんだ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501410nki">
「も、もちろんお金は――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501420ksr">
「ただし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501430ksr">
「利息は毎月、耳を揃えて払ってもらうからな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501440nki">
「は、はい！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501450ksr">
「もし、払えなかったら……」

{	St("ML",700, @0,@0,"bu双六a_横向き_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501460ksr">
「ベーリング海へ３ヶ月のご招待」

{	St("ML",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/19/000501470ksr">
「それが嫌だったら、まともな仕事に就くんだな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 1000, 1000, null, true);

//あきゅん「素材：imgスカイプシーンb」

/*
2birds：で、今月の返済のメドが立たないわけだが
大刀刃那：(ノ∀｀)アチャー
2birds：どうしよう・・・
大刀刃那：バイトは？
2birds：オレ無理
大刀刃那：やる前から無理ってゆーな！
大刀刃那：なんかその先人から借りられないですか？
大刀刃那：2000万の車とか乗ってたんでしょ？
2birds：それが音信不通
2birds：借金して首吊ったとかいう噂も
大刀刃那：マジで？　南無……
大刀刃那：でも、今月はコミマだべ？
大刀刃那：300部とかはけたら余裕で返せる予感
2birds：やっぱりそれかな
大刀刃那：それしかないっしょ！
2birds：でも、まだ原稿できてないんだよね
大刀刃那：(； ･`д･´) ﾅ､ﾅﾝﾀﾞｯﾃｰ !! (`･д´･ (`･д´･ ;)
*/

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/imgスカイプシーンb.jpg");
	Fade("絵背景100", 0, 1000, null, true);





//◆場所：似鳥マンション_リビング
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(0,true);

	Fade("絵色100", 1000, 0, null, true);
	Delete("絵色100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501480nki">
（とにかく、原稿をあげなければならない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501490nki">
（原稿が上がらなければ、本が出ない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501500nki">
（本が出なければ、借金が返せない）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501510nki">
（いや、ただ本ができるだけじゃ駄目なのだ）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501520nki">
（今日中に入稿できないと、印刷所に割増料金を取られてしまい――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵背景100", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501530nko">
「ちゅっ、ちゅばっ、ちゅるるぅぅ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501540nko">
「んちゅっ、んん――れろれろれろ――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501550nki">
「……おい」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501560nki">
「なにやってんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1908);}

	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev1840ノーコフェラチオa.jpg");
	Fade("絵背景100", 500, 1000, null, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501570nko">
「ふぇはちお」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501580nki">
「やめろ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501590nko">
「どうして？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501600nko">
「きらい？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501610nki">
「嫌いじゃない」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501620nki">
「だけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501630nko">
「ちゅっ、ちゅば――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501640nki">
「バカ！　やめろって――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501650nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501660nko">
「くわえたら」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501670nko">
「にとりはかたくて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501680nko">
「わたしのここは」

//◆ＳＥ：くちゃくちゃ
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501690nko">
「こんなおとするよ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501700nki">
「――――ん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501710nko">
「いらない？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501720nki">
「――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(100);

	CreateTextureEX("絵背景２", 1300, 0, 0, "cg/ev/ev1840ノーコフェラチオb.jpg");
	CreateColorEX("絵色100", 1500, "BLACK");

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_抱く");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeFF("絵背景２",0,0,500,0,0,Dxl1,false);
	Fade("絵背景２", 500, 1000, null, true);


	Fade("絵色100", 500, 1000, null, true);

//	Delete("ネガポジ");
//	Delete("絵回想色100");
	Wait(1000);

	Delete("絵背景２");
	Delete("絵背景100");
//◆場所：ビッグサイト_正面
	OnBG(10,"bg2001111ビッグサイト_正面_通常");
	FadeBG(0,true);
	CreateEffect("ネガポジ", 300, 0, 0, 1024, 576, "Sepia");
	SetAlias("ネガポジ","ネガポジ");

	Fade("絵色100", 800, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501730nki">
（そして――）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501740nki">
（５００部以上の在庫を残して、冬コミは終わった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501750nki">
（半年前、一時的に流行ったキャラを、憶えてくれている客はほとんどいなかった）

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501760nki">
（あれだけ応援してくれたはずの大刀刃那ですら、顔を出してはくれなかった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：ここから、似鳥の姿は変わらず、ただ背景だけが変わっていくような火通常演出で

	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501770nki">
「どうして……だ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501780nki">
「どうして、こうなった？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501790nki">
「オレはどこで、間違えたんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501800nki">
「同人誌で借金を返そうとしたところ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501810nki">
「河原屋組に借金をしたところ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501820nki">
「ネットトレードで失敗したところ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(500,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501830nki">
「両親の反対を押し切って大学をやめたこと？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501840nki">
「ノーコが某掲示板で評判になったところ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501850nki">
「株で一攫千金を狙ったところ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501860nki">
「マンガ家の夢を諦めきれなかったところ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1909);}

{	OnBG(10,"bg1401100泰然堂大学病院_正面_通常");
	FadeBG(500,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0425]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501870nki">
「知り合いにネットトレードを勧められたところ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501880nki">
「泰然堂大学に入ったところ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501890nki">
「両親の言いなりで大学受験をしたところ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501900nki">
「かすかな反抗心から、マンガ家の夢を持ったところ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501910nki">
「高校時代に同人誌を出したところ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵色100", 1500, "BLACK");

//おがみ：曲とめる
	SetVolumeEX("@xbgm*", 100, 0, null);
	Fade("絵色100", 100, 1000, null, true);

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501920nki">
「彼女と――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵色200", 500, "BLACK");


	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);

	Fade("絵色100", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0432]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501930nki">
「ノーコと、出会ったところ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Delete("絵色100");


//◆場所：似鳥マンション_リビング
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(0,true);


	SoundPlay("@xbgm24",0,450,true);

	Fade("絵色200", 1000, 0, null, true);
	Delete("絵色200");

	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000501940nko">
「わたし？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"fu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501950nki">
「そうだ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501960nki">
「おまえが、悪いんだ」

{	St("C",700, @0,@0,"fu似鳥_ラッパー_rage");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501970nki">
「おまえがオレの側にいるから！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501980nki">
「だから、オレはこんな目に！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"fu似鳥_通常_pain");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000501990nki">
「ああ……痛い……痛い……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000502000nki">
「おまえがいなけりゃ、オレはもっとまっとうに――」

{	St("C",700, @0,@0,"fu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000502010nki">
「まともな、生き方が――」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000502020nko">
「ほんとうにできたの？」

{	St("C",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000502030nko">
「わたしのせいにするの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000502040nko">
「そうやってじぶんをまもるの？」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000502050nko">
「うらぎりものだから」

{	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/000502060nko">
「だましているから」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/000502070nki">
「騙して……いる……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 0, 0, null);
	TextBoxDelete(0);

	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,1100,0,1000,null,false);


	CreateColorEXadd("絵色100", 15000, "WHITE");
	Fade("絵色100", 150, 1000, null, true);

	DeleteAllSt(0,true);
	Delete("ネガポジ");
	CreateColorSP("絵色200", 14000, "BLACK");

	Wait(1000);

	FadeDelete("絵色100", 2000, null, true);
	SetVolumeEX("SE*", 1000, 0, null);
	Wait(2000);

	EndScene();
}


function RotetoLoop1()
{
	while(1){
	Rotate($ローテートナット名１, 0, @180, @0, @0, null,true);
	Wait(24);
	Rotate($ローテートナット名１, 0, @180, @0, @0, null,true);
	Wait(24);
	Rotate($ローテートナット名１, 0, @0, @180, @0, null,true);
	Wait(24);
	Rotate($ローテートナット名１, 0, @0, @180, @0, null,true);
	Wait(24);
	}
}
