
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2330ノーコ.nss_MAIN
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
		$GameName = "2338ノーコ.nss";
	}else{
		$GameName = "e2338ノーコ.nss";
	}
}

scene 2330ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1050">
////////////header////////////
//file name "2330ノーコ.nss"
//title ""
//previous "2320ノーコ.nss"

////////////footer////////////
//next "ノーコ"（"flkagome5" = false） "e2338ノーコ.nss"
//next "ノーコ" "2338ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2330);}


//◆場所：秋葉原_万世橋_雪
	OnBG(10,"bg0104300秋葉原_万世橋_雪");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu似鳥_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100010ntn">
「はは……妄想パワー、恐るべしだな」

{	St("MR",700, @0,@0,"buノーコb_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100020nko">
「おしえて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100030nko">
「あなたは、なにもの？」

{	SoundPlay("@xbgm25",0,450,true);
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100040ntn">
「オレは太四郎。フウリの許嫁だ」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100050nko">
「たしろう……てがみに、なまえがのってた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100060ntn">
「フウリへの手紙を読んだのか……」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100070nko">
「なぜ、こんなことを？」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100080nko">
「フウリは、このままほうっておくとしぬ――」

{	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100090ntn">
「アザナエルが叶えるのは、本当の望みだ」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100100ntn">
「もしもフウリが、本当に、心から、望むことなら、オレはそれを叶えてやる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100110ntn">
「それが、オレが彼女にしてやれる……
　唯一のことなんだ……」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100120nko">
「かのじょがいのちをうしなっても？」

{	St("ML",700, @0,@0,"bu似鳥_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100130ntn">
「黙れ！」

{	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100140ntn">
「オレがどんな気持ちで……フウリを送り出したか……
　君にわかって、たまるか……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2331);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100150ntn">
「双一親分から、フウリがいるって話を聞いて、オレは秋葉原にやってきた」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100160ntn">
「しばらく様子を観察したんだが……
　確かに見た目は、そんなに変わっていない」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100170ntn">
「明るく振る舞い、笑顔で、ちょっと大食らいで。
　記憶の中のフウリと、よく似てる」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100180ntn">
「けど――時々、見せるんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100190ntn">
「こっちが、ゾッとするような寂しげな顔を。
　まるで、そのまま薄くなって消えてしまうみたいな」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100200ntn">
「昔は、もっと明るいヤツだったのに。
　過去の幻影に惑わされ、一歩も前に進めない」

{	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100210ntn">
「オレは、苦しむ彼女を見ていられなかった」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100220ntn">
「早く、過去から解放してやりたい――そう思ってた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2332);}


//	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100230ntn">
「でもオレは、自分の頭に銃を突きつけたあの涙を見て、あの笑顔を見て、思ったんだ」

{	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100240ntn">
「既に彼女の心は、貫太に全部持って行かれたんだって」

{	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100250ntn">
「だったらいっそ、彼女の願いを最後まで叶えてやるのがオレの役目だって」

{	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100260nko">
「あなたがしぬべき」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100270nko">
「あなたはこわかっただけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100280nko">
「じぶんがきずつきたくなかっただけ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100290nko">
「いいひとのふりをしていたいだけ」

{	St("MR",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100300nko">
「くそくらえ」

{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100310nko">
「わたしは、フウリをたすけにいく」

{	St("ML",700, @0,@0,"bu似鳥_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100320ntn">
「それはおまえのエゴだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100330ntn">
「そういうおまえの行動が、彼女を傷つけたんだろ！」

{	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100340nko">
「そうよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100350nko">
「こわい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100360nko">
「わたしは、こわい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100370nko">
「フウリをまた、きずつけたらどうしよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2333);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100380nko">
「フウリにきょぜつされたら、どうしよう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100390nko">
「そうおもう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100400nko">
「でも――」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100410nko">
「フウリは、わたしをたすけようとしてくれたから」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100420nko">
「フウリは、わたしのともだちだから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100430nko">
「だから、わたしはいかなきゃならない」

{	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100440ntn">
「おまえは、フウリを殺しかけたんだろ？」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100450ntn">
「許してもらえると、思ってるのか？」

{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100460nko">
「わからない。でも、だからこそ、あやまりたい」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100470ntn">
「フウリは、里を捨ててやってきたんだ。
　いまさら帰る場所なんてない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",700, @0,@0,"buノーコb_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100480nko">
「でも――フウリには、たくさんともだちがいる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100490nko">
「みんなが、フウリのかえりをまってる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100500nko">
「だから、どうしても、とりもどしたい」

{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100510nko">
「たしろう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100520nko">
「とおして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2334);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100530ntn">
「でも――」

{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100540nko">
「フウリがすきなんでしょう？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100550nko">
「だったら――フウリのほんとうののぞみより」

{	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100560nko">
「ほんとうのしあわせのほうが、だいじ」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100570nko">
「それが、あいでしょう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100580ntn">
「愛だなんて――」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100590nko">
「あなたは、フウリを、あいしてる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100600nko">
「だからあなたはまぼろしのなか――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100610nko">
「わたしに『あいしてる』って、うそをつけなかった」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100620ntn">
「ああ、ああ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100630ntn">
「僕って、バカなのかな」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100640nko">
「バカはしななきゃなおらない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100650nko">
「わたしがころす？」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100660ntn">
「え……？」

{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100670nko">
「じょうだん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100680nko">
「しっぱいは、だれにでもある」

{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100690nko">
「でも、きっと、やりなおせる」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100700ntn">
「でも、そんな資格……」

{	St("MR",700, @0,@0,"buノーコb_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100710nko">
「あなたにできることをやればいい」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100720ntn">
「オレに出来ること？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2335);}


//	TextBoxDelete(150);

	SetVolume("@xbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100730nko">
「…………？」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100740ntn">
「ん？　どうした？」

{	St("MR",700, @0,@0,"buノーコb_幽霊_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100750nko">
「おと」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100760nko">
「おとが、きこえる！」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100770ntn">
「川の向こうから……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//	TextBoxDelete(150);

//◆ＥＶ："ev/ev1930みそロケボーダッシュ！.txt" 差分Ｂ
	CreateSE("SE01","se特殊_ロケボー");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetFrequency("SE01", 10, 1500, Dxl3);

	CreateTextureEX("絵背景", 1000, -250, -150, "cg/ev/ev1930みそロケボーダッシュb.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetBlur("絵背景", true, 2, 500, 80, false);

	MoveFTP3("@絵背景", 2000, 6, 5);

	Zoom("絵背景", 300, 1500, 1500, Dxl1, false);
	Fade("絵背景", 300, 1000, null, true);
	DeleteAllSt(0,true);
	WaitKey(2000);
	SetVolume("SE01", 1000, 0, null);

	Zoom("絵背景", 500, 2000, 2000, Axl1, false);
	Shake("絵背景", 60000, 2, 1, 0, 0, 1000, Dxl1, false);
//	FadeDelete("絵背景", 500, null, true);
	Fade("絵背景", 500, 0, null, true);

	MoveFTP3stop();
	Delete("絵背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/300100780mso">
「ぎゃああああああああああ――――ッ！！」

//◆音声指示：遠くから
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/300100790snk">
「ひ―――――――――――――――ッ！！」

//◆音声指示：遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/23/300100800buu">
「火薬の量、間違えたあああ――――ッ！！」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100810nko">
「みそブーと……ニコちゃん？
　えなのさくせんどおり――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2336);}


//	TextBoxDelete(150);

	SoundPlay("@xbgm03",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("MR",700, @0,@0,"buノーコb_通常_rage");
	FadeSt("MR",200,true);}
<voice name="ノーコ" class="ノーコ" src="voice/23/300100820nko">
//【ノーコ】
「じゃない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100830nko">
「とおりすぎる。
　フウリをたすけるには、ニコちゃんもいないとだめ」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100840ntn">
「マズい……のか？」

{	St("MR",700, @0,@0,"buノーコb_通常_rage");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100850nko">
「たしろう、おねがい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100860nko">
「さんにんをたすけて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100870nko">
「はんだみょうじんにつれていって」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100880ntn">
「でも――」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100890nko">
「わたしは、フウリをたすける」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100900nko">
「あなたは、さんにんをたすける」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100910nko">
「それが、わたしたちにいまできること」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100920ntn">
「…………」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300100930nko">
「フウリに、しあわせを」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100940ntn">
「……わかった。任せろ」

{
	CreateSE("SE02","se戦闘_風切り音10");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameML/ML*", 200, @-40, @0, Axl3, false);
	DeleteAllSt(200,true);}
　言うが早いか、太四郎は万世橋から飛び降りる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2337);}


//	TextBoxDelete(150);
	CreateSE("SE01","se特殊_ロケボー");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetFrequency("SE01", 10, 1500, Dxl3);

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev1930みそロケボーダッシュb.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetBlur("絵背景", true, 2, 500, 80, false);

	MoveFTP3("@絵背景", 2000, 6, 5);

	Zoom("絵背景", 300, 1100, 1100, Dxl1, false);
	Fade("絵背景", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/300100950mso">
「おいコラ！　危ねーぞッ！！」

//【そに子】
<voice name="そに子" class="そに子" src="voice/23/300100960snk">
「ど、どいて下さあああいいいッ！！」

//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300100970ntn">
「広がれ、百畳敷ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	CreateSE("SE03","se動物_タヌキ_腹鼓01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	SetVolume("SE01", 1000, 0, null);

//おがみ：音声：同時再生

/*
//※下倉注：以下追記
//◆音声指示：同時
//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/300100980mso">
「ぎゃああああああああああ――――ッ！！」

//※下倉注：以下追記
//◆音声指示：同時
//◆音声指示：遠くから
//【そに子】
//<voice name="そに子" class="そに子" src="voice/23/300100990snk">
//「ぎゃああああああああああ――――ッ！！」

//※下倉注：以下追記
//◆音声指示：同時
//◆音声指示：遠くから
//【ブー】
//<voice name="ブー" class="ブー" src="voice/23/300101000buu">
//「ぎゃああああああああああ――――ッ！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//※下倉注：以下追記
//◆音声指示：同時
//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/23/300100980">
「ぎゃああああああああああ――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――





	TextBoxDelete(150);

	Zoom("絵背景", 500, 2000, 2000, Dxl1, false);
	Shake("絵背景", 60000, 2, 1, 0, 0, 1000, Dxl1, false);
//	FadeDelete("絵背景", 500, null, true);

	Fade("絵背景", 500, 0, null, true);

	MoveFTP3stop();
	Delete("絵背景");

//◆ＳＥ：もにゅっ！
	CreateSE("SE01","se擬音_ギャグ_もにゅ");
	CreateSE("SE02","se擬音_ギャグ_ぽにょぽにょ");
	MusicStart("SE01",0,1500,0,1000,null,false);
	Wait(400);
	MusicStart("SE02",0,1500,0,1000,null,false);
	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("C",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300101010nko">
「つかまえた……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300101020nko">
「……さすがたぬき」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【太四郎（似鳥戴斗）】
<voice name="太四郎（似鳥戴斗）" class="似鳥戴斗" src="voice/23/300101030ntn">
「こっちは任せろ！」

{	St("C",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300101040nko">
「……おねがい」

{	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/300101050nko">
「わたしは――フウリのところへ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndScene();
}
