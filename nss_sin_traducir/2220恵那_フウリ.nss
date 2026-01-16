
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2220恵那_フウリ.nss_MAIN
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
	$LFlag_NowFile = "2220恵那_フウリ.nss";
	if($CharaName=="フウリ"){
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	}else{}

	$GameName = "2230カゴメ3.nss";
	//$GameName = "2230フウリ.nss";
}

scene 2220恵那_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1500">
////////////header////////////
//file name "2220恵那_フウリ.nss"
//title "真相"
//previous "2210恵那.nss"
//previous "2150フウリ.nss"

////////////footer////////////
//next "恵那" "2230恵那.nss"
//next "フウリ" "2230フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2220);}

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100010wfu">
「貫太さん……！？
　生きてる……生きてる！　生きてるッ！！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100020wfu">
「帰ってきて……くれたんですか？」

{	St("C",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100030okt">
「ああ。会いに来た」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100040wfu">
「ホントに……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100050wfu">
「夢……夢じゃ、ないんですね？」

{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100060fje">
「ええ。夢じゃないですよ。
　身体は大丈夫ですか？」

{	DeleteAllSt(200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100070wfu">
「え？　身体？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100080wfu">
「って、あ！　人間に！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100090wfu">
「――――きゅ！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100100wfu">
「きゅ――――！！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100110wfu">
「どろんぱっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：どろん！

	CreateSE("SE01","se動物_タヌキ_化ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);

//◆演出指定：フウリ、いつもの格好に
	St("C",700, @0,@+100,"buフウリ_通常_shock");
	FadeSt("C",0,true);

	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100120wfu">
「え、ええと……そのですね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2221);}

//	TextBoxDelete(150);

	SoundPlay("@xbgm10",0,450,true);


{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100130wfu">
「さっきあなたが見た物は、マボロシでした！」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100140fje">
「目の前で変身するのって、だめ押しじゃ……」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100150wfu">
「きゅ！　きゅぅぅぅ…………」

{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100160okt">
「どうやら、もう身体の方は大丈夫みたいだね」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100170wfu">
「あ……私、ノーコちゃんにやられて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100180wfu">
「うう……じごうじとく……」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100190wfu">
「でも、ノーコちゃんはどうなってしまったのですか？」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100200fje">
「今、半田明神にいると思います。
　ミヅハちゃん……上手く追い返せてるといいけど」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100210wfu">
「追い返せる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100220fje">
「彼女、アザナエルを使おうとしてるんです」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100230wfu">
「もしかして……願いを叶えようとしてるのですか？」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100240fje">
「アザナエルのこと、知ってるんですか？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100250wfu">
「ノーコちゃんが言ってました。
　願いを叶える銃だって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2222);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100260wfu">
「元々は妄想の存在だったけど、その銃のおかげで、現実の存在になれたって」

{	St("C",700, @0,@0,"bu恵那_一休_hard");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100270fje">
「やっぱり、そうなんだ……」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100280wfu">
「あの、すみません。ちなみにあなたのお名前は……」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100290fje">
「私の名前は富士見恵那！
　アザナエルを追いかけてる、秋葉原の名探偵です！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100300wfu">
「富士見……って、もしかして鈴ちゃんの妹さん？」

{	St("C",700, @0,@+50,"bu恵那_ハルヒ_pride");
	DeleteSt("ML",200,false);
	FadeSt("C",200,false);
	Move("@StNameC/C*", 100, @0, @-60, Dxl1, true);
	Move("@StNameC/C*", 150, @0, @+10, Axl1, true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100310fje">
「正解！　いつも姉がお世話になってます」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100320wfu">
「あ、はい。こちらこそ……」

{	St("C",700, @0,@0,"bu恵那_一休_think");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100330fje">
「ちなみに貫太さんとは、どういう関係ですか？」

{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100340okt">
「まあ、なんていうか……幼馴染みかな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

//◆音声指示：むっ！　怒った感じの声
{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100350wfu">
「――――」

{	St("C",700, @0,@0,"bu恵那_一休_think");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100360fje">
「不満があるみたいですね」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100370wfu">
「貫太さん！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100380wfu">
「私と、貫太さんは、ちっぽけで――
　でも、そんなちっぽけな私たちが、会えたんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100390wfu">
「運命だと、思いませんか？」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100400okt">
「そういう考え方もあるかもしれないけど……」

{	SetVolume("@xbgm*", 1000, 0, null);
	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100410wfu">
「え……？」

{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100420okt">
「………………」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100430wfu">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2223);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100440fje">
「あの……ふたりとも……？」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100450fje">
「どうしちゃったんですか？」

{	St("ML",700, @0,@0,"buフウリ_前のめり_hard");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100460wfu">
「じ――――」

{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100470okt">
「な、なんだい？　フウリ」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100480wfu">
「あなたは、本当に……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100490wfu">
「貫太さん……？」

{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100500okt">
「な……なにを言ってるんだい？」

{	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100510okt">
「僕は見ての通り、織田貫太」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//	CreateTextureEX("絵背景100", 100, Center, InBottom, "cg/fu/fuフウリ_通常_hard.png");
//	CreateSE("SE01","se動物_タヌキ_腹鼓03");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	Shake("絵背景100", 500, 3, 0, 0, 0, 1000, null, false);
//	Fade("絵背景100", 300, 1000, null, true);

	shima_taiko(2000,"cg/yur/yurIF背景01.png","cg/yur/yurIF背景02.png");
	Wait(1000);
	shima_taikopon();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆ＳＥ：ぽこぽこぽこぽこ
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100520wfu">
「――――――」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100530okt">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：ぽこぽこぽこぽこ
	CreatePlainSP("絵板写", 5000);
	CreateSE("SEP01","se動物_タヌキ_腹鼓01");
	CreateProcessEX("絵太鼓ぽんぽこ", "shima_taikoprocess01");

	MusicStart("SEP01",0,700,0,1000,null,true);
	shima_taikopon02();
	Fade("@絵太鼓st03", 0, 0, null, true);
	Fade("@絵太鼓背景02", 0, 0, null, true);
	FadeDelete("絵板写", 100, null, false);
	Wait(2000);
	SetVolumeEX("SEP01", 200, 0, null);
	shima_taikopon();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100540wfu">
「――――――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	shima_taikoDelete();

	SetComic(@0,@0,10);
	Move("@Comic*", 0, @0, @-240, null, true);
	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",200,true);
	FadeComic();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132b]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100550okt">
「………………なに？」

{	DeleteComic();
	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100560fje">
「あの……フウリさん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2224);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100570wfu">
「おかしいです！
　貫太さん……もしかして……」

{	SoundPlay("@xbgm10",0,450,true);
	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100580wfu">
「記憶喪失？」

{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100590okt">
「いやいや、記憶は普通に――」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100600wfu">
「ならば――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100610wfu">
「あなたは、ズバリ！」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100620wfu">
「貫太さんではありません！　偽物ですッ！」

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100630fje">
「な、なに言ってるの！？」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100640fje">
「貫太さんは貫太さん！
　私もちっちゃいころから、お世話になったんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100650fje">
「私が見間違えるはずないですもんね、貫太さん！」

{	St("MR",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100660okt">
「ああ、もちろんさ」

{	St("C",700, @0,@0,"bu恵那_通常_shy");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100670fje">
「まだいたいけな少女だった私に手出しして、っていうか手どころかあんなところやこんなところを出して――」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100680wfu">
「え！？　え！？　え！？」

{	St("C",700, @0,@0,"bu恵那_通常_shy");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100690fje">
「初めてを捧げたひとのこと、間違えるはずないじゃない。
　――ね、貫太さん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2225);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_通常_smile");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100700okt">
「そんなことも、あったかな……あははははは……」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100710wfu">
「そ、そんな……うそ……うそ……」

{	SetVolume("@xbgm*", 500, 0, null);
	St("C",700, @0,@0,"bu恵那_一休_smile");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100720fje">
「ウソ」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100730wfu">
「へ？」

{	St("C",700, @0,@0,"bu恵那_一休_pride");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100740fje">
「だから、嘘だって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

	SoundPlay("@xbgm24",0,450,true);

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100750fje">
「私の知ってる貫太さんは、すごく優しくしてくれたけど、もちろんそんな変なことはしない！」

{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100760fje">
「ってことはコイツは嘘をついてる。
　嘘ついてるってことは――」

{	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200100770fje">
「あなた、偽物でしょッ！！」

{	St("MR",700, @0,@0,"bu貫太_横向き_normal");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100780okt">
「フフ、フフフフフ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100790okt">
「よく、気付いたね」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100800wfu">
「貫太さんの名を騙る不届きものさん！
　誰ですか！　名を名乗ってください！」

{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100810okt">
「まだ気付かないのかい？
　里を出て１年も経つと……薄情になるんだね」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100820wfu">
「里の、タヌキさん……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2226);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100830okt">
「しかしまさか、今になっても彼への想いが変わらないとはね」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100840okt">
「なんていうか……滑稽だね。
　僕がせっかく、楽にしてあげようと思ったのに」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100850wfu">
「太四郎さん……ですね」

{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100860okt">
「ああ、そうだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100870okt">
「君の許嫁の、太四郎だよ」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100880wfu">
「それじゃあ……やっぱり、貫太さんは……ううっ！！」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100890wfu">
「どうして、そんな格好で！？」

{	St("MR",700, @0,@0,"bu貫太_横向き_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100900okt">
「この格好で君をフれば、諦めもつくだろう？」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100910wfu">
「そんな……ひどい……ひどいです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100920okt">
「ああ、そうだ。僕は酷いことをした」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100930okt">
「ミリＰに変身して、無理難題をふっかけて、君のデビューを失敗させようとしたのも僕だ」

{	St("MR",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100940okt">
「音楽を諦めれば、君はコイツを諦めるかと思ってね」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100950wfu">
「ちょっと……ちょっと待って下さい！」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200100960wfu">
「ということは、太四郎さんが送ってきてくれたあの訃報は、もしかして――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2227);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100970okt">
「……似たようなものだろう？」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100980okt">
「再会の約束を破った。連絡は取れない。
　探しても見つからない」

{	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200100990okt">
「これ以上過去に縛られて、いったい何になるんだい？」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101000wfu">
「縛られてなんてないです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200101010okt">
「約束したんだろう？
　もしも君が諦めきれなかったら、また会おうって」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101020wfu">
「そうです！　だから、私はずっと信じて――」

{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200101030okt">
「貫太は、約束を破るようなヤツじゃない。
　それは僕も認めよう」

{	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200101040okt">
「けど――絶対に破られないはずの約束が、破れてしまったと言うことは？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101050wfu">
「そ、それは……」

{	St("MR",700, @0,@0,"bu貫太_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200101060okt">
「フウリ。ちゃんと、現実を見よう。
　もう、認める時期なんだ」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200101070okt">
「貫太はもう、約束を守れない」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101080wfu">
「いや！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200101090okt">
「織田貫太はもう、いなくなった」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101100wfu">
「聞きたくない――」

{	St("MR",700, @0,@0,"bu貫太_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200101110okt">
「おまえの目の前から、消えたんだッ！！」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101120wfu">
「そ……そんなこと……そんなこと、ない……」

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101130fje">
「フウリさん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101140fje">
「お話……しなきゃならないことがあります」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101150fje">
「私、貫太さんのこと、知ってます」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101160wfu">
「え……ほ、本当ですか！？」

{	St("C",700, @0,@0,"bu恵那_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101170fje">
「ちっちゃい頃、お世話になりました。
　もう、１０年近く前……かな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2228);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101180wfu">
「貫太さんが東京に出た頃です！」

{	St("C",700, @0,@0,"bu恵那_通常_pride");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101190fje">
「織田貫太って名前で、免税店で働いていました。
　世界中を旅するために、お金を貯めていたって話です」

{	St("ML",700, @0,@0,"buフウリ_前のめり_smile");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101200wfu">
「間違いありません！
　私の知ってる貫太さんです！」

{	St("ML",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101210wfu">
「やっぱり、秋葉原に来てるって話は本当だったんだ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu貫太_横向き_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200101220okt">
「それで、コイツは今どこにいるんだ？」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101230wfu">
「そうです！　本物の貫太さんは――！？」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101240fje">
「貫太さんは、すごく優しい人で……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101250fje">
「迷子になったユージローを、夜遅くまで一緒に探してくれました」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeStPro("C", 200, 5500);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101260fje">
「やっと見つけた私は、嬉しくなって道路に飛び出して。
　車に、轢かれかけました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolume("@xbgm*", 1000, 0, null);

{	AgainSt("C",700, @0,@0,"bu恵那_通常_hard");
	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeStPro("C", 200, 4400);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101270fje">
「貫太さんは慌てて追いついて、私を突き飛ばした代わり、自分が車に――」

{	AgainSt2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101280wfu">
「そんな――！」

{	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101290fje">
「私も、その時は信じられませんでした」

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101300fje">
「だって、私を助けてくれたはずの貫太さんが消えて、代わりに目の前にタヌキが倒れてたんです」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101310fje">
「何が起こったのかわからないまま、そのタヌキは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St2("C",700, @0,@0,"bu恵那_哀愁_disco","cg2/",".png");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101320fje">
「死んでしまいました」

{	SoundPlay("@xbgm26",0,450,true);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101330wfu">
「うそ…………」

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101340fje">
「うそじゃありません」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101350fje">
「柳神社の端に……埋めました。
　今でも、お墓があると思います」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2229);}


//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101360wfu">
「そ、そんな……」

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101370fje">
「フウリさん、ごめんなさい」

{	St2("C",700, @0,@0,"bu恵那_哀愁_disco","cg2/",".png");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101380fje">
「私が……もっとちゃんとしていれば……」

{	St("ML",700, @0,@0,"buフウリ_胸手_shout");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101390wfu">
「うそ！　うそです！
　みんな、みんなうそつきです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101400wfu">
「私を担ごうとして、そんなことを――」

{	St2("C",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101410fje">
「柳神社に行って下さい」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/22/200101420fje">
「おたぬきさまの像の隣に、私のつくったお墓が――」

{	St("ML",700, @0,@0,"buフウリ_胸手_cry");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101430wfu">
「ひぐっ、ぅきゅ……ぅ…………」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101440wfu">
「そんなの……そんなのって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101450wfu">
「もう一度、会うって……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101460wfu">
「私の音は、貫太さんに聞こえるって……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101470wfu">
「約束……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/200101480wfu">
「約束したんです――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：フウリ、泣きながら廊下を駆け下りる
	CreateSE("SE01","se動作_走る02_l");

//	SetVolume("@xbgm*", 500, 0, null);

	MusicStart("SE01",0,600,0,1000,null,true);
	DeleteSt("ML",200,true);

	SetVolume("SE01", 5000, 0, null);

{	St("C",700, @0,@0,"bu貫太_通常_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200101490okt">
「ま――待つんだ、フウリ！」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/22/200101500okt">
「おい、待ってってば――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);



	EndScene();

}
