
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bb2400千秋_恵那.nss_MAIN
{
//■エンディングチェック
	Ending_IsChaeck("bb");

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
	$GameName = "bb2401沙紅羅_似鳥.nss";//★エンディング中（bb）
}

scene bb2400千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="470">
////////////header////////////
//file name "bb2400千秋_恵那.nss"
//title "フライング・カータヌキ"
//previous "bb2235沙紅羅_似鳥.nss"
//previous "bb2221千秋_恵那_h.nss"


////////////footer////////////
//next "bb2401沙紅羅_似鳥.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();

{	ClockPass(2355);}

	SoundPlay("@xbgm17",0,450,true);

//◆場所：半田明神_鳥居
	CreateTextureSP("絵背景10", 100, Center, 0, "cg/bg/bg0602112半田明神_鳥居_通常.jpg");
	Move("絵背景10", 0, @0, @-990, null, true);

	if($PreGameName=="bb2235沙紅羅_似鳥.nss"||$PreGameName=="bb2221千秋_恵那_h.nss"){
	FadeDelete("上背景", 2000, null, true);
	}else{
	CreateColorSP("絵色黒", 20000, "#000000");
	FadeDelete("上背景", 0, null, true);

	TakeRatePic();//あきゅん「演出：スクリーン希望箇所」

	FadeDelete("絵色黒", 2000, null, true);
	}



//◆演出指示：年越し直前
//	CreateSE("半田明神", "seガヤ_ざわざわ_l");
//	MusicStart("半田明神", 1000, 700, 0, 1000, null, true);

	Wait(300);
	CreateSE("se", "se動作_走る05_l");
	MusicStart("se", 0, 700, 0, 1000, null, false);

	Wait(1200);

	MusicStart("se", 500, 0, 0, 1000, null, false);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @50,@0,"bu千秋_通常_sad");
	Move("@StNameMR/MR*", 200, @-50, @0, Axl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100010kit">
「ゴメン！　間に合った！？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100020fje">
「ギリギリね」

{	St("ML",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("ML",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100030fje">
「ってかそのカッコ、やっぱりクセに――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100040kit">
「なってない！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100050fje">
「ホントに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100060kit">
「当たり前だろ！
　鈴姉に呼び出されたの知ってるクセに！」

{	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100070kit">
「忙しくて、着替える間もなく飛び出してきたんだぞ！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100080fje">
「そういうことにしとこっか」

{	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100090fje">
「でも、ライブ大丈夫だった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100100kit">
「ん……ああ。結局中止」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100110fje">
「中止？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100120kit">
「フウリさん、時間に帰ってこなかったみたいで」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100130fje">
「鈴姉、怒ってた？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100140kit">
「っていうよりも心配してた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100150kit">
「その前に、ライブのことで派手にケンカしてたし。
　もしかしたらそのせいかも、って」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100160fje">
「鈴姉も、音楽のことになるときっついからなあ……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100170kit">
「でもまあ、ロクローさんがいて助かったよ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100180fje">
「ロクローさんが？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2356);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100190kit">
「なんか良くわかんないけど、全裸で街をうろついてるところを、鈴姉が発見したんだって」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100200kit">
「で、ライブは中止してロクローさんのトークショーに」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100210fje">
「……それって、楽しいの？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100220kit">
「まあ、結構際どい話もあったみたいだし」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100230fje">
「もしかして鈴姉、ほだされてビデオに出たり……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100240kit">
「……ありそうで、怖いな」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100250fje">
「父さん、そんなの見たら血管切れて死んじゃうかも」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100260kit">
「あ、そうだ。ロクローさんと言えばさ。
　スパコン館、無くなったの知ってる？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100270fje">
「は？　壊れた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100280kit">
「もう粉々で瓦礫の山。跡形もないよ」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100290fje">
「ちょっと待って！　だって――
　私たち、つい数時間前まであそこに……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100300kit">
「急な工事があったんだって」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100310fje">
「工事？　いやいやいや！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("ML",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100320fje">
「こんな年の瀬に、しかもこの短時間で？
　そんなのあり得ないでしょ！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100330kit">
「嘘だと思うなら、見てくれば？　ホントにないから」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100340fje">
「アンタの言うとおり……ホントに消えたとすると……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2357);}


	TextBoxDelete(150);

	KoreJikenStart();

	DeleteAllSt(0,true);
//	DeleteSt("ML",0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100350fje">
「まさか、これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	KoreJikenEnd(false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100360fje">
「早速調査の必要が――！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100370kit">
「コラコラ！　最後の最後までそれかよ！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100380kit">
「ってか、もう年が明けるし。
　ちゃんとお参りしないと――」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100390fje">
「私の願いは、もう叶っちゃったんだもん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100400kit">
「願いがかなった……？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100410fje">
「ホラ千秋！　現場検証にレッツゴー！」

{	Move("@StNameML/ML*", 300, @-150, @0, Axl1, false);
	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100420kit">
「あ……おい、待てよ！　待てって！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2358);}

	TextBoxDelete(150);

//◆演出指示：背後で花火が鳴る
//★ inc遠藤 花火っぽい環境光作成。少しタイミングをずらして色を残した。

{	CreateSE("SE01","se環境_花火打ち上げ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);
	CreateSE("SE02","se環境_花火01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEXadd("花火光", 2500, @0, @0, "cg/data/circle_12_00_0.png");
	CreateColorEX("花火色100", 1500, "red");
	CreateColorEX("花火色210", 1500, "blue");
	CreateColorEX("花火色200", 1500, "green");

	Fade("花火光", 100, 1000, Axl1, false);
	Fade("花火色100", 50, 500, Axl1, true);
	Fade("花火色210", 50, 200, Axl1, true);
	Fade("花火色200", 50, 200, Axl1, true);
	Delete("花火色2*");
	Fade("花火光", 1000, 0, Axl1, false);
	FadeDelete("花火色100", 1500, null, true);
//	FadeDelete("花火光", 1000, null, true);

	St("MR",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("MR",200,false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100430kit">
「ハァ……新年もまた、こんな感じなんだろうなぁ」

{	St("MR",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100440kit">
「ま、でも――」

{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100450kit">
「それもいっか」

{	DeleteSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bb24/000100460fje">
「ほらー！　早く来なさいって！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bb24/000100470kit">
「はいはい、わかったってば！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@xbgm*", 2000, 0, null);

//	ClearFadeAll(2000, true);
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(1000);

	EndScene();
}
