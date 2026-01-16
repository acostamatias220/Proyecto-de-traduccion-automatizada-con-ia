
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2300フウリ.nss_MAIN
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
	$GameName = "c2310沙紅羅_フウリ.nss";
	//$GameCircle=false;

}

scene c2300フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1160">
////////////header////////////
//file name "c2300フウリ.nss"
//title "やっぱり肉まんです"
//previous "c2250フウリ.nss"

////////////footer////////////
//next "フウリ" "c2310沙紅羅_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//	SoundPlay("@xbgm25", 0, 450, true);


{	ClockPass(2302);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

//★ inc櫻井　フウリ茫然自失状態と思われるので、表情を変えていません。
	CreateSE("SEL01","se環境_風と葉っぱ_l");
	MusicStart("SEL01",2000,500,0,1000,null,true);

	Wait(500);

	FadeDelete("上背景", 1000, null, true);


{	St("L",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100010wfu">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100020wfu">
「ノーコちゃんも、消えてしまいました」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100030wfu">
「…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100040wfu">
「人生は……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100050wfu">
「きびしいです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("L",700, @0,@0,"fuフウリ_通常_sad");
	FadeSt("L",300,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100060wfu">
「つらくて……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100070wfu">
「もう、このままやっていく自信が――」


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100080fjr">
「ありゃりゃ。そんなこと言っちゃう？」

{	DeleteSt("L",200,true);
	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100090wfu">
「あ！」

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100100wfu">
「あ、あ、あああああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}

	SetVolumeEX("@SE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100110wfu">
「鈴ちゃん！」


{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100120fjr">
「あー！　もう！」

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100130fjr">
「こんなときにフウリちゃんまでそんな沈んだ顔！
　勘弁してよー！」

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100140fjr">
「きっついのはアタシひとりで充分なんだか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100150wfu">
「ああ……ああ……あああああ……」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100160fjr">
「え？　フウリちゃん？　フウリちゃん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreatePlainSP("揺用", 2005);
	Request("揺用", Smoothing);
	SetBlur("揺用", true, 2, 400, 50, false);

	DeleteAllSt(0,true);

//	Request("@StNameC/C*", Smoothing);
//	Zoom("@StNameC/C*", 180, 1200, 1200, Dxl3, false);
//	Zoom("*BG*", 180, 1200, 1200, Dxl3, false);
//Wait(60);
//あきゅん「修正指示：抱きつくような演出と音の追加、抱擁音に合わせて雑踏音消して下さい」
//★inc櫻井　修正
//★ inc遠藤 さらに改
//嶋：さらに改

//◆ＥＶ："ev/ev2300フウリ鈴と抱擁号泣.txt" 差分Ａ
	CreateTextureEX("絵背景100", 1000, -256, Middle, "cg/ev/m/ev2300フウリ鈴と抱擁号泣_m.jpg");
	CreateTextureEX("絵背景200", 900, -422, -258, "cg/ev/l/ev2300フウリ鈴と抱擁号泣_l.jpg");
	CreateTextureEX("絵背景300", 900, 0, -258, "cg/ev/l/ev2300フウリ鈴と抱擁号泣b_l.jpg");

	CreateTextureEX("CG01", 500, @0, @0, "cg/ev/ev2300フウリ鈴と抱擁号泣.jpg");
	CreateTextureEX("CG01b", 501, @0, @0, "cg/ev/ev2300フウリ鈴と抱擁号泣.jpg");
//	Zoom("CG01b", 0, 1060, 1060, null, false);


	CreateSE("抱擁", "se動作_抱く");
	SetVolume("SEL01", 1000, 0, null);

	Fade("絵背景100", 0, 1000, null, true);
	Move("絵背景100", 2000, 0, @0, Dxl1, false);
	Zoom("揺用", 1000, 2000, 2000, Dxl1, false);

	Wait(300);

	MusicStart("抱擁", 0, 700, 0, 1000, null);
	FadeDelete("揺用", 500, null, true);
//	Fade("絵背景200", 0, 1000, null, true);
	Fade("CG01", 0, 1000, null, false);
//	Fade("CG01b", 0, 500, null, true);
//	Zoom("CG01b", 1500, 1000, 1000, null, false);
//	Shake("CG01b", 1500, 12, 8, 0, 0, 400, Axl1, false);

	FadeDelete("絵背景100", 1000, null, false);
	FadeDelete("CG01b", 1300, null, true);
	DeleteSt("C",0,true);

	SoundPlay("@xbgm28",1000,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100170wfu">
「ひぐっ、うきゅっ、う……すずちゃああああああん！！」

{	Move("絵背景200", 10000, @0, -134, Dxl1, false);
	Fade("絵背景200", 500, 1000, null, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100180wfu">
「うわああああああああああああああああああああん」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100190fjr">
「ちょ！　ちょっと、フウリちゃん！
　泣かないでよ」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100200wfu">
「ひぐっ、ぅぐっ、うっ、ごめ、ごめんんん……！！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100210fjr">
「そんな、突然……泣か……泣かれちゃってもさ！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100220wfu">
「すずっ、ちゃんのぉっ、顔……み、見たらっ！
　なんかっ！　安心っ、しちゃっ、てっ、ぇっ、ええっ」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100230fjr">
「も、もうっ！　泣きたいのは……こっ、こっち……
　ぅぐっ、ぐす……なんだからあああああ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2300フウリ鈴と抱擁号泣.txt" 差分Ｂ
	CreateTextureEX("CG02", 800, @0, @0, "cg/ev/ev2300フウリ鈴と抱擁号泣b.jpg");
	Fade("CG02", 0, 1000, null, true);
	FadeDelete("絵背景*",1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//嶋：同時音声_101126
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100240fjr">
「うわああああああああああああああああああああん！」

////【綿抜フウリ】
//<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100250wfu">
//「うわああああああああああああああああああああん！」

</PRE>
	SetText();
	AddText(1,"「うわああああああああああああああああああああん！」","富士見鈴","c23/000100240fjr",false,false,1000);
	AddText(2,"「うわああああああああああああああああああああん！」","綿抜フウリ","c23/000100250wfu",false,true,1500);
	TypeBeginD();//―――――――――――――――――――――――――――


	TextBoxDelete(150);


	CreateColorEX("絵色黒", 20000, BLACK);
	Fade("絵色黒", 2000, 1000, null, true);

{	ClockPass(2305);}

//◆演出指示：時間経過
//あきゅん「修正指示：時間経過でこのトランジッションは無いので、黒フェードたっぷり」
//★inc櫻井　修正

//	SetVolume("@xbgm*", 2000, 0, null);



	Delete("CG01");
	Delete("CG02");

	Wait(3000);

//	SoundPlay("@xbgm29",3000,450,true);

	FadeDelete("絵色黒",2000,null,true);


//★ inc櫻井　すぐに立ち絵表示となると趣きがないと感じるので、２クリック間は立ち絵を表示していません。
//あきゅん「修正指示：肉まんの話題中は立ち絵演出無しで」
//★inc櫻井　修正

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100260wfu">
「あむあむ……あむあむ……」


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100270fjr">
「あむあむ……あむあむ……」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100280wfu">
「おいしいです……」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100290fjr">
「うん、おいしい」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100300wfu">
「やっぱり、肉まんですね」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100310fjr">
「肉まんね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//あきゅん「修正指示：ここから立ち絵解禁」
//★inc櫻井　修正

{	St("ML",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100320wfu">
「でも、どうしてこんなに？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100330fjr">
「パンパンのビニール袋を持った女の子が、秋葉原中の肉まんを買い集めちゃったんだって」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100340wfu">
「へ？　私？」

{	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100350fjr">
「それで慌てて肉まんをつくったら、今度はつくりすぎて余ったって」

{	St("MR",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("MR",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100360fjr">
「サービスしてもらっちゃった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100370wfu">
「あは……そうだったんですか」

//★ inc櫻井　食べているところは意図的に立ち絵を立たせていません。

{	DeleteSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100380wfu">
「あむあむ……あむあむ……」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100390fjr">
「あむあむ……あむあむ……」

{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100400fjr">
「ふぅ……食べた食べた」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100410wfu">
「おなか、いっぱいです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100420fjr">
「それでね、フウリちゃん」

{	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100430fjr">
「アタシ……あなたに謝らなきゃならないことがあるの」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100440wfu">
「謝らなきゃならない……こと？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100450fjr">
「やっぱり……今日は、ライブできないかも」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100460fjr">
「ガラス、一度は直ったんだけど。
　その後また、車が突っ込んで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("MR",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100470fjr">
「それで、今度は粉々になっちゃった」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100480fjr">
「もう、大きな音は出せないんだ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100490wfu">
「そうなんですか……」


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100500fjr">
「アタシ……あんなに、大見得切って、会場を用意するとか言っておいて……全然、駄目だった」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("MR",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100510fjr">
「ごめんね、フウリちゃん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100520wfu">
「私こそ、ごめんなさい……」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100530wfu">
「ライブまでには、自分の気持ちに決着をつけようとして、でも、全然、それができなくて……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100540wfu">
「好きだった人と……もう二度と会えないって……
　そう思ったら、もう……ぜんぶ、無意味に思えて……」


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100550fjr">
「フウリちゃん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2306);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100560wfu">
「……でも、それは、一時の気の迷いでした」

{	St("ML",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100570wfu">
「昔、大切だったものはなくなってしまっても……
　ここに、今大事なものがあるから」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100580wfu">
「私がここにいることに、ちゃんと、意味があるから」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100590fjr">
「……うん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100600fjr">
「あのね、これからスーパーノヴァで、ファンのみんなに中止を説明するんだけど」

{	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100610fjr">
「正直、ちょっと怖いんだよね」

{	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100620fjr">
「一緒に、来てくれないかな？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100630wfu">
「は……はい！」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100640wfu">
「私も、一緒に行かせて下さい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100650fjr">
「ありがと」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100660fjr">
「じゃ、早速――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：ＢＧＭ流してたらここで消して雑踏音にクロスフェード」
//★inc櫻井　修正


	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1000, 0, null);

	CreateSE("SEL02","seガヤ_交通少_l");
	MusicStart("SEL02",1000,700,0,1000,null,true);

	DeleteAllSt(200,true);

	Wait(500);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155a]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100670rkr">
「お……お嬢さんたち……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/
	CreateVOICE("ロクロー","c23/000100670rkr");
	CreateVOICESE("ロクロー2","c23/000100670rkr","ロクロー");
	SoundEffect("ロクロー2","HANGAR");
	MusicStart("ロクロー",0,700,0,1000,null,false);
	MusicStart("ロクロー2",0,200,0,1000,null,false);
	$SETime = RemainTime("ロクロー");
	Wait($SETime);
	SetVolumeEX("ロクロー", 200, 0, null);
	SetVolumeEX("ロクロー2", 200, 0, null);

{	St("MR",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155b]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100680fjr">
「あれ？」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100690fjr">
「フウリちゃん、アタシを呼んだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2307);}

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100700wfu">
「いえ。呼んでませんけど」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160b]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100710rkr">
「お嬢さんッ……！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/
	CreateVOICE("ロクロー","c23/000100710rkr");
	CreateVOICESE("ロクロー2","c23/000100710rkr","ロクロー");
	SoundEffect("ロクロー2","HANGAR");
	MusicStart("ロクロー",0,700,0,1000,null,false);
	MusicStart("ロクロー2",0,200,0,1000,null,false);

	$SETime = RemainTime("ロクロー");
	Wait($SETime);

	SetVolumeEX("ロクロー", 200, 0, null);
	SetVolumeEX("ロクロー2", 200, 0, null);

	St("ML",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("ML",0,true);
	Shake("@StNameML/ML*", 300, 6, 0, 0, 0, 500, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100720wfu">
「きゅ！」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100730wfu">
「な、なんか聞こえた！？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100740fjr">
「聞こえたって、まさか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170a]
{	DeleteSt("MR",200,true);
	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100750fjr">
「トイレの方から……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	DeleteSt("MR",200,true);}

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170b]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100760rkr">
「ちょっと、お願いが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

	CreateVOICE("ロクロー","c23/000100760rkr");
	MusicStart("ロクロー",0,700,0,1000,null,false);

	CreateVOICESE("ロクロー2","c23/000100760rkr","ロクロー");
	SoundEffect("ロクロー2","HANGAR");
	MusicStart("ロクロー",0,700,0,1000,null,false);
	MusicStart("ロクロー2",0,200,0,1000,null,false);

	$SETime = RemainTime("ロクロー");
	Wait($SETime);
	SetVolumeEX("ロクロー", 200, 0, null);
	SetVolumeEX("ロクロー2", 200, 0, null);

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170c]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100770wfu">
「は、はい！　なんで――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100780fjr">
「だめッ！！　知らないの！？」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100790fjr">
「秋葉原７便所伝説のひとつ……
　『みーちゃんのひとりあそび』」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100800wfu">
「みーちゃんの……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2308);}

	TextBoxDelete(150);

//◆場所：銭形公園_トイレ正面
	OnBG(1100,"bg1702100銭形公園_トイレ正面_通常");
	CreateTextureEXadd("ドロドロ", 2500, @0, @0, "cg/ef/ef034_精神汚染.jpg");
	Zoom("ドロドロ", 0, 1200, 1200, null, false);
	DrawEffect("ドロドロ", 3600000, "HighWave", 30, 30, null);

	DeleteSt("ML",1000,false);
	Fade("ドロドロ", 1000, 1000, null, false);
	FadeBG(1000,true);

	SoundPlay("@xbgm24", 0, 450, true);
	c2300_seprocess();

//◆演出指示：これ以下のロクローの台詞、ＢＧＭ的にループ

//★ inc櫻井　ここは立ち絵なしのほうが良いと感じますので、鈴たちの立ち絵も表示していません。
//　 背景等で演出します。

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100810rkr">
「お願いします……お願いします、ご慈悲を……」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100820rkr">
「寒いんです……寒い……凍えて死にそうです……」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100830rkr">
「ああ……神様……私が悪うございました！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100840rkr">
「もうしません……悪いことなんて、もうしませんから」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100850rkr">
「どうしてだ……理不尽だ……」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100860rkr">
「なんで、オレがこんな目に……」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100870rkr">
「いやだ……オレにはまだやりたいことがあったのに……」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000100880rkr">
「助けて……誰か、助けて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

//あきゅん「β演出：音声の確認と音量調整」
//★inc櫻井　こちら私が記述したコマンドではありませんでした。
//	CreateSE("SEL01","000100810");
//	MusicStart("SEL01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100890fjr">
「アタシの友達のクラスメイトに、いじめられっ子がいたの」


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100900fjr">
「その子はちょっと変で、お化けが見えるとか言って、いつも周りを怖がらせてたんだって」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100910fjr">
「でね、周りのいじめっ子は、それがきらいで。
　トイレにモップをはさんで、閉じ込めちゃったの」


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100920fjr">
「その子が急にね、トイレの中で『みーちゃん』と話し始めたんだって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	TextBoxDelete(150);

	SceneOut(5000, 1000, "blind_01_00_0");

	Delete("ドロドロ");
	Delete("@OnBG*");

	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100930wfu">
「みーちゃん？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100940fjr">
「もちろん、だあれもいないはずなんだよ」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100950fjr">
「それでね、いじめっこはこわくなって、にげちゃったの」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100960wfu">
「え？　でも、トイレのかぎは……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100970fjr">
「かけたまま」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateColorEX("絵色黒", 20000, BLACK);
	Fade("絵色黒", 1000, 1000, null, true);

	ClockDelete(0,true);

	DeleteSt("MR",0,true);
	CreateTextureEX("トイレの中00", 2000, @0, @0, "cg/bg/bg1703200銭形公園_トイレ中_奧閉まる.jpg");
	CreateEffect("sirokuro00", 3000, @0, @0, 1024, 576, "Monochrome");

	Fade("トイレの中00", 0, 1000, null, true);

	Fade("絵色黒", 1000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000100980fjr">
「次の朝様子を見に行ったら、その子は死んじゃってたの」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000100990wfu">
「し、ししし、死んだ……？　このトイレで……？」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000101000fjr">
「そう。おぼれ死んじゃってたんだって」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000101010fjr">
「それからね、夜にひとりでここのトイレに入ると、鍵のかかった個室から、物音がするの」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000101020wfu">
「物音……！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2309);

	TextBoxDelete(150);

	CreateTextureEX("トイレの中01", 2500, @0, @0, "cg/bg/bg1704100銭形公園_トイレ個室_通常.jpg");
	CreateEffect("sirokuro01", 3000, @0, @0, 1024, 576, "Monochrome");

	Fade("トイレの中01", 1000, 1000, null, true);
	Delete("トイレの中00");
	Delete("sirokuro00");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000101030fjr">
「中に入ると、突然鍵が閉まって――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000101040wfu">
「閉まって――？」

{	CreateTextureEX("トイレの中02", 2600, @0, @0, "cg/bg/bg1704200銭形公園_トイレ個室_水没.jpg");
	CreateEffect("sirokuro02", 3000, @0, @0, 1024, 576, "Monochrome");

	Fade("トイレの中02", 1000, 1000, null, true);
	Delete("トイレの中01");
	Delete("sirokuro01");}

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000101050fjr">
「足元から、どんどん水がせり上がってきて――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000101060wfu">
「え？　ええええ――？」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000101070fjr">
「そのまま、溺れ死んじゃうんだって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(20000, 1000, "blind_01_00_0");
	Delete("トイレの中02");
	Delete("sirokuro02");

	ClockPass(2309);

	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	SetVolume("@xbgm24", 1000, 0, null);

	SceneIn(1000, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000101080wfu">
「だ、だめ――――――ッ！！」

{	Move("@StNameML/ML*", 300, @-150, @0, Axl2, false);
	DeleteSt("ML",300,true);
	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000101090fjr">
「フウリちゃん！　どこに――」

{	DeleteSt("MR",200,false);
	St("L",700, @0,@0,"stフウリ_通常_fear");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000101100wfu">
「だって、助けてあげないと！」

{	DeleteSt("L",300,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000101110fjr">
「ダメッ！　絶対危ない――待って！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteSt("MR",0,false);
	OnBG(10,"bg1703300銭形公園_トイレ中_破壊");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000101120wfu">
「だ、大丈夫ですか！？　今助けて――」


{	SetVolumeEX("SEL*", 100, 0, null);
	c2300_sedelete();
	CreateSE("開く", "se動作_ドア開ける02");
	MusicStart("開く", 0, 700, 0, 1000, null,false);
	OnBG(15,"bg1703100銭形公園_トイレ中_通常");
	FadeBG(1000,true);
	Wait(1000);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000101130rkr">
「ややややや――」

//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/c23/000101140rkr">
「やっと来た――――――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：モザイクが全面にかかる（全裸のロクロー）
//★ inc櫻井　詳細来るまで保留
//あきゅん「β演出：シェードでも良いけどモザイク画像の方が面白いので後で作成」
//★inc櫻井　では仮で以下のように演出してます。
//あきゅん「素材：efロクローモザイク」
//あきゅん「修正指示：最初はモザイクかかってないロクローbuが颯爽と登場、ばばーんと上記素材に切り替え」
//あきゅん「修正指示：最後は股間にアップしてブラックアウト」

//★inc櫻井　修正
	CreateColorEX("絵色100", 3000, "Black");


	CreateSE("扉開ける", "se動作_ドア蹴破る");
	MusicStart("扉開ける", 0, 700, 0, 1000, null, false);
	St("C",700, @100,@0,"buロクローb_通常_cry");
	Move("@StNameC/C*", 300, @-100, @0, Axl1, false);
	FadeSt("C",200,true);

	CreateSE("SE02", "se擬音_ギャグ_ドーン");
	MusicStart("SE02", 0, 700, 0, 1000, null,false);


	CreateTextureEX("ロクローモザイク", 2000, @0, @0, "cg/ef/efロクローモザイク.jpg");
	SetBlur("ロクローモザイク", true, 3, 500, 50, false);
	Fade("ロクローモザイク", 1000, 1000, null, true);

	Zoom("ロクローモザイク", 600, 5000, 5000, Dxl1, false);
	Move("ロクローモザイク", 600, @0, @-700, Dxl1, false);

	Wait(300);

	Fade("絵色100", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c23/000101150fjr">
「きゃあああああああああああああああああ」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/000101160wfu">
「き――――――――――――――ッッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	ClearWaitAll(1000, 1000);
	CreateColorSP("絵色黒", 20000, "#000000");


	EndScene();
}
