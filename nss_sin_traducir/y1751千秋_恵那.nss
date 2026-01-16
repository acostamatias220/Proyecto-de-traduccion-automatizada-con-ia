
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene y1751千秋_恵那.nss_MAIN
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
	if($CharaName=="千秋"){
		$GameName = "y1752千秋.nss";
	}else if($CharaName=="恵那"){
		$GameName = "y1752恵那.nss";
	}

	//$GameName = "";
	//$GameCircle=false;
}

scene y1751千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="500">
////////////header////////////
//file name "y1751千秋_恵那.nss"
//title ""
//previous "y1750恵那.nss"

////////////footer////////////
//next "千秋" "y1752千秋.nss"
//next "恵那" "y1752恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 2000, "#000000");

{	ClockTime(1752);}

//◆場所：銭形公園_全景_夕
	OnBG(10,"bg1701200銭形公園_全景_夕");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);
	FadeDelete("絵色黒", 2000, null, true);

	SoundPlay("@xbgm28",0,450,true);

//【富士見恵那（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100010fec">
「私、探偵になる！！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100020ktc">
「……え？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100030fec">
「だから、探偵になるの！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100040fec">
「探偵になって、推理をして、どんな難事件も解決！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100050fec">
「それで……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【富士見恵那（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100060fec">
「父さんの代わりに母さんをさがす！
　貫太さんもさがすの！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100070ktc">
「へえ……恵那、えらいなあ……」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100080fec">
「でしょ！？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100090ktc">
「でも、さ。あんまり無理しちゃだめだぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【富士見恵那（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100100fec">
「無理？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100110ktc">
「だって恵那はホラ、危ないところにだってすぐ飛び込んじゃうだろ？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100120fec">
「そうしないと犯人捕まらないし！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100130ktc">
「でも、恵那がケガしたら意味ないよ」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100140fec">
「そ、それは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1753);}

	//TextBoxDelete(150);

//【富士見恵那（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100150fec">
「…………うん、ありがと」



//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100160ktc">
「ね、恵那。目、つぶって」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100170fec">
「目？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100180ktc">
「いいから、ほら」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100190fec">
「な……なに企んでるのよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【小碓千秋（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100200ktc">
「なにも企んでないって！　ホラ！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100210fec">
「う……うう……」


//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100220fec">
「ひゃっ！　ちょっと、今手に――」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100230ktc">
「置いただけだって！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100240fec">
「だから、なにを？！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【小碓千秋（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100250ktc">
「プレゼント」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100260fec">
「プレゼント……？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100270ktc">
「目、開けていいよ」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100280fec">
「う……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1754);}

//あきゅん「素材：imgタヌキの携帯ストラップ」
	CreateTextureEX("絵演", 2100, Center, Middle, "cg/img/imgタヌキの携帯ストラップ.jpg");
	Fade("絵演", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100290fec">
「た……タヌキ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【小碓千秋（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100300ktc">
「の、携帯ストラップ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100310ktc">
「恵那が探偵になりたいって思ったの、あのタヌキのお葬式をしてからだろ？」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100320fec">
「…………うん」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100330fec">
「あのタヌキ……わたしの命を、守ってくれたから」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100340ktc">
「きっとあれは、恵那の守り神様だったんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【富士見恵那（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100350fec">
「守り神様……？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100360ktc">
「で、柳神社に行ったらさ、売ってたから。
　買っちゃった」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100370ktc">
「しかも、おそろい」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100380fec">
「おそろい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1755);}

	FadeDelete("絵演", 500, null, true);

	//TextBoxDelete(150);


//【富士見恵那（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100390fec">
「あ、あ、あのさ！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100400fec">
「あ、あ、ああ……ありがとね！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100410ktc">
「うわ！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100420fec">
「な……なに？」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100430ktc">
「恵那がお礼とか言ったし！　別人みたい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【富士見恵那（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100440fec">
「わ、悪かったわね！
　私だってね！　お礼くらい言うわよ！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100450ktc">
「ふーん。そうなんだ」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100460fec">
「そうに決まってるでしょ！
　大事に……大事にするからね！」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100470fec">
「千秋も、大事にしなさいよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【小碓千秋（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100480ktc">
「わかったよ」

//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/510100490fec">
「携帯かってもらったら、ちゃんとつけなさいよ！」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/510100500ktc">
「わかったわかった！　わかったってば！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演", 100, 50, 190, "cg/img/imgタヌキの携帯ストラップ.jpg");
	Request("絵演", Smoothing);
	Zoom("絵演", 0, 3000, 3000, null, false);
	Fade("絵演", 500, 1000, null, true);

	WaitAction("絵演", null);

	WaitKey(2000);

	//TextBoxDelete(150);
	//EndScene();
}
