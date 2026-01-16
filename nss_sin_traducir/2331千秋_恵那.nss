
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2331千秋_恵那.nss_MAIN
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
	//$GameName = "";
	//$GameCircle=false;
//

	if($CharaName=="千秋"){
		$GameName = "2340千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "2340千秋_恵那.nss";
	}else{
		$GameName = "2340千秋_恵那.nss";
	}

}

scene 2331千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="880">
////////////header////////////
//file name "2331千秋_恵那.nss"
//title "ラッキーアイテム"
//previous "2330沙紅羅_千秋_恵那.nss"

////////////footer////////////
//next "千秋" "2340千秋_恵那.nss"
//next "恵那" "2340千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

//◆時間：ジャンプ
{	ClockPass(2333);}
	Wait(1000);

	CreateSE("SE01","se動作_走る01_l");
	CreateSE("SE02","se動作_走る02_l");
	SoundEffect("SE01","SEWERPIPE");
	SoundEffect("SE02","SEWERPIPE");
	MusicStart("SE01",1000,600,0,1000,null,true);
	MusicStart("SE02",1000,600,0,1000,null,true);


WaitKey(500);

	PrintGO("上背景２", 5000);

//◆場所：地下_通路_スパコン館
	OnBG(10,"bg0701500地下_通路_スパコン館");
	FadeBG(0,true);

	Delete("上背景２");
	DrawDelete("上背景", 1000, 100, null, "slide_01_03_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　携帯電話のライトを頼りに、地下通路を駆ける。

{	SetVolumeEX("@SE*", 3000, 0, null);
	SetFrequency("SE*", 2000, 300, null);
	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100010kit">
「ふ――ふぅ――」

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100020kit">
「ここまで来れば、まあ安心……かな？」

{	DeleteAllSt(200,true);}
{	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100030fje">
「千秋」

{	St("MR",700, @0,@0,"bu恵那_感動_happy");
	FadeSt("MR",200,true);
	SoundPlay("@xbgm28",0,450,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100040fje">
「助けてくれて、ありがとう……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100050kit">
「ん――いや、そんな別に改まって」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100060kit">
「ってか、そもそも助けられたのはオレの方だし。
　オレがカゴメアソビで下手こいちゃって――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100070fje">
「それも、千秋が私のためにやってくれたんでしょ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	St("ML",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 7800);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100080kit">
「いやまあそうだけど――ってあれ？
　なんかおかしく……あ！　あ！　ああっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	AgainSt("ML",700, @0,@0,"bu千秋_通常_shy");
	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100090kit">
「恵那、おまえ今オレが千秋って言わなかった！？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100100fje">
「言ったけど」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameML/ML*", 200, 0, 6, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100110kit">
「なんで！？
　なんでバレちゃったの！？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_pride");
//Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100120fje">
「ふ――名探偵富士見恵那を欺こうったって、そうは問屋が卸さないのよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_cry");
	Shake("@StNameML/ML*", 1000, 0, 0, 10, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100130kit">
「ひ、ひ、ひゃああああああ……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100140fje">
「ってなによその情けない声！
　男の子でしょ！　しっかりしなさい！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100150kit">
「だって、だって――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100160fje">
「なによ。
　好きでそんなカッコしてるわけじゃないんでしょ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100170fje">
「あ……
　もしかして女の子のカッコでコーフンしたとか？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@50,"bu千秋_頭突き_rage");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100180kit">
「な……んなわけあるかッ！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100190fje">
「えー、そう？　でも、結構似合ってる気が――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_pain");
	Shake("@StNameML/ML*", 1000, 0, 0, 10, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100200kit">
「う、うるさーい！
　鈴姉みたいなこと言うなッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100210kit">
「だ、大体なにが名探偵だよ！
　長い時間気付かなかったクセに」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100220fje">
「そ、それはしょうがないでしょ！
　あの時は、タヌキがいたんだから！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100230kit">
「タヌキ……？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100240fje">
「さすがの名探偵でも、そんな非現実的な可能性まで含めて推論するなんて不可能よ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100250kit">
「ど、どういうこと…？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolume("@xbgm*", 2000, 0, null);


	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteAllSt(0,true);

	CreateSE("SE01","se動作_歩く2人_l");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,700,0,1000,null,true);

WaitKey(1000);


//◆時間：ジャンプ
{	ClockPass(2334);}

	Wait(1000);

//◆場所：地下_地下鉄
	OnBG(10,"bg0703100地下_地下鉄_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

{	SetVolume("SE*", 3000, 0, null);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100260fje">
「まあでも、これで事件は無事解決！
　私もピンチを脱したし、千秋もちゃんと生き返った！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100270fje">
「後は沙紅羅さんがアザナエルを持ってきて――」

//	St("C",700, @0,@0,"bu恵那_通常_sigh");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100280fje">
「半田明神の準備が無事に済んで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//	St("C",700, @0,@0,"bu恵那_通常_pinch");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100290fje">
「フウリさんもちゃんと会場入りして――」

{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100300fje">
「問題は山積みだ。うう……心配になってきた」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100310kit">
「なんだか良くわかんないけどさ、なんとかなるって！
　オレも、全力で協力するからさ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100320fje">
「千秋……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"bu恵那_通常_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100330fje">
「オッケー。
　それじゃアンタの働きに、期待してるからね！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100340kit">
「おう、任せとけ！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100350fje">
「へへ……」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100360fje">
「あれ？　でも、おかしいな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//	St("MR",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100370fje">
「千秋は、カゴメアソビに失敗して死んだのよね。
　それじゃなんで双六は生き返ったの？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100380kit">
「…………あれ？」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100390kit">
「ほ、ホントだ……
　確かに双六、生きてたよな……」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100400kit">
「ま、まさか――双子の入れ替わりトリック！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2335);}

//	SetVolume("@xbgm*", 1000, 0, null);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100410fje">
「……いやいや。推理小説の読み過ぎでしょ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100420kit">
「おまえの影響だっての！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100430fje">
「でも――うん、絶対、変。
　父さんも、双六は絶対に死んでないって言ってたし」


//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100440fje">
「なんで、双六は死ななかったの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100450fje">
「おかしい……おかしい……」

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100460fje">
「あ……まさか、父さんがアザナエルを――？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100470kit">
「オヤジさんは上で待ってるよ」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100480fje">
「え……？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100490kit">
「なんか、足を痛めてたみたいで。
　わざわざ、病院を抜け出して来たみたい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100500kit">
「恵那を助けに行くってしつこく言ってたけど。
　結局、オレが代わりに行くって説得して」


//	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
//	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100510kit">
「その代わり、これを」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100520fje">
「これ……御先祖様の十手？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100530kit">
「あと、投げ銭？　も一緒にもらったんだけど。
　下りてくる途中で使っちゃった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100540kit">
「アレがなけりゃ、危うく電車に轢かれてたところだな」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100550fje">
「そ……そうなんだ」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100560kit">
「そうそう。
　まさに御守り、ラッキーアイテム！」

{	DeleteAllSt(200,false);
	St2("MR",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100570fje">
「ラッキーアイテム……か」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);
	DeleteAllSt(200,true);




	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateSE("SE01","se動作_歩く2人_l");
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,700,0,1000,null,true);

WaitKey(1000);

//◆時間：ジャンプ

{	ClockPass(2337);}
	Wait(1000);

//◆場所：地下_通路_バックギャモン
	OnBG(10,"bg0701600地下_通路_バックギャモン");
	FadeBG(0,true);
	DeleteAllSt(0,true);


	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

{	SetVolume("SE01", 3000, 0, null);}

//◆ＳＥ：ぴっぴっぴ

	CreateSE("SE02","seメカ_携帯_電子音02");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100580fje">
「…………」

{	SetVolume("SE*", 1000, 0, null);
	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100590kit">
「ん？　どうしたんだ、携帯いじって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵演物", 1010, Center, Middle, "cg/obj/obj恵那携帯ストラップ.png");
	Move("絵演物", 0, @0, @120, null, true);

	Move("絵演物", 300, @0, @-120, Dxl1, false);
	Fade("絵演物", 300, 1000, null, true);

//	St("MR",700, @0,@0,"bu恵那_通常_think");
//	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100600fje">
「確かにこのストラップのおかげで、千秋の携帯を判別できたわけだし……」

{	FadeDelete("絵演物", 500, null, true);
	St("MR",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100610fje">
「ラッキーアイテム、なのかな……？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100620kit">
「何見てるんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"bu恵那_感動_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100630fje">
「見る？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
//	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100640kit">
「おう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：携帯ぴこ
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(500);

//以下、携帯の文面
/*
差出人：ミリＰの占い情報局
件名：恋愛ＱＰ（ハート）ミリＰの恋愛占い！
はろぉ～！いつも読んでくれて感謝！毎日ビンビン、ミリオンプロデューサーＰの恋愛占いよ！今年最後のあなたの運命は――【大吉】！あなたの目の前に、とうとう待ちに待った運命の人が！こんなチャンスは二度とない！次々に襲う障害を乗り越えて、見事彼のハートをゲットしちゃおう！良いお年を！ばっはは～い！【今日のラッキーアイテム：ストラップ】
*/

	CreateAXLPhWindowEX("絵演窓", "Y", 2100, 96, 192, false);
	PhWindowAXLZoom("絵演窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵演窓/絵背景", 2010, Center, 90, "cg/obj/objIF背景_恵那.png");
	CreateTextureSP("絵演窓/絵演物", 2010, Center, 100, "cg/obj/obj恵那携帯液晶部分と占い.png");
	PhWindowAXLZoom("絵演窓", "Y", 500, 1000, AxlDxl, true);

$scrnum=1000;
$stynum=100;
$i=0;
$mvy=-22;
	while($i<19){
		$y_num=$i*$mvy+$stynum;
		Move("絵演窓/絵演物", 0, @0, $y_num, null, true);
		WaitKey($scrnum);
		$i++;
	}


	CreateTextureEX("絵背景L", 1000, -924, Middle, "cg/bg/l/bg0701600地下_通路_バックギャモン_l.jpg");
	SetShade("絵背景L",MEDIUM);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100650kit">
「え……ええと、これって……」


{	SetVolume("@xbgm*", 4000, 0, null);
	PhWindowAXLZoom("絵演窓", "Y", 500, 0, null, true);
	Delete("@絵演窓*");}
{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100660fje">
「あのさ、千秋」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100670fje">
「バックギャモンに入る前にさ。言ったよね」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100680fje">
「逃げたりしないで、ちゃんと答えるって」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100690kit">
「ああ」

{	DeleteAllSt(200,true);}
{	St("MR",19700, @0,@0,"fu恵那_感動_smile");
	Fade("絵背景L", 200, 1000, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100700fje">
「私の気持ちは、知ってるよね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2338);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//	St("MR",19700, @0,@0,"fu恵那_感動_smile");
//	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100710fje">
「じゃあ、あの……」

{	St("MR",19700, @0,@0,"fu恵那_感動_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100720fje">
「千秋から、聞きたいな」

{	Fade("絵背景L", 200, 0, null, false);
	DeleteAllSt(200,true);
	Move("絵背景L", 0, 100, @0, null, true);
}
{	St("ML",19700, @0,@0,"fu千秋_通常_angry");
	Fade("絵背景L", 200, 1000, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100730kit">
「あの……」

{	St("ML",19700, @0,@0,"fu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100740kit">
「ええと……」

{	St("ML",19700, @0,@0,"fu千秋_通常_cry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100750kit">
「その……ですね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SetVolume("@xbgm*", 2000, 0, null);

	FadeDelete("絵背景L", 200, null, false);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@50,"bu恵那_通常_shy");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100760fje">
「ちょっとちょっと！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100770fje">
「さっきまで、結構男らしいなって見直してたのに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);
{	DeleteAllSt(200,true);
}

{	ClockPass(2339);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//◆音声指示：遠くから
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/310100780fjh">
「があああああッ！！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);
	SoundPlay("@xbgm22",0,450,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100790kit">
「え――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100800fje">
「今の声――父さんッ！！？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローb_通常_hard");
	Shake("@StNameC/C*", 300, 0, 20, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/310100810ujr">
「わうわうわうっ！！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//	SoundPlay("@xbgm05",2000,450,true);


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0205]
{	St("C",700, @100,@0,"bu千秋_通常_angry");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/310100820kit">
「オヤジさん、どこに――」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@200,"buユージローb_通常_normal");
Move("@StNameC/C*", 200, @0, @-200, Dxl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/310100830ujr">
「わうっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,true);}
{	St("C",700, @100,@0,"bu恵那_ハルヒ_shout");
Move("@StNameC/C*", 200, @-100, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100840fje">
「こっちよ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
DeleteAllSt(0,true);
//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901200エレキセンター_廊下_閉店");
	FadeBG(0,true);


	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0215]

{	St("C",700, @0,@0,"buユージローb_通常_hard");
	Shake("@StNameC/C*", 300, 0, 20, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/310100850ujr">
「わうわうわうっ！！」

{	DeleteAllSt(200,true);}
{	St("C",700, @100,@0,"bu恵那_通常_shout");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/23/310100860fje">
「父さんッ！！」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/310100870fjh">
「恵那！　来るなッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//	St("C",700, @0,@0,"buジャブル_通常_normal");
//	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/23/310100880jbr">
「そう。来ない方がいい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 2000, 0, null);
	SetVolume("@SE*", 1000, 0, null);


	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 20000, "BLACK");
//	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

WaitKey(1000);
	EndScene();
}
