
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1820恵那.nss_MAIN
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
	$GameName = "1830恵那.nss";
	//$GameCircle=false;

}

scene 1820恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1480">
////////////header////////////
//file name "1820恵那.nss"
//title "クリマン消費期限偽造問題を追求せよ！"
//previous "1800恵那.nss"

////////////footer////////////
//next "恵那" "1830恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(1820);}

//◆場所：秋葉原_中央通り

	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE11",1000,700,0,1000,null,true);

//画像定義
	KoreJikenSet();

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300010fje">
「なんだか騒がしいわね……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200300020ujr">
「わう！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300030fje">
「あっちの方に人混みができてるけど、まさか――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！
	TextBoxDelete(150);

	KoreJikenStart();

	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300040fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	KoreJikenEnd(500);
	TextBoxDelete(150);

	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	KoreJikenFade(false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300050fje">
「ユージロー！　行きましょう！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_normal");
	Shake("@StNameC/C*", 200, 0, 8, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200300060ujr">
「わう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
　恵那とユージローは、人混みを掻き分け進む。

　この先にはＡＭ１１があるのだが――

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/200300070e13">
「犯人は、急になにかお化けでも見たような顔で――」

{	St("C",700, @0,@0,"bu平次_通常_cool");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200300080fjh">
「ほう、お化け！」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200300090fjh">
「ってぇことはもしや――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆ＳＥ：ぱっぱかぱー！

	CreateSE("SE01","se擬音_平次閃く");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @-100,@0,"bu平次_御用だ_angry");
	Move($C_次, 200, @100, @0, Dxl2, false);
	Shake($C_次, 200, 0, 10, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200300100fjh">
「これは事件ッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 1000, Axl3, false);
	Move("@StNameC/C*", 200, @800, @0, Dxl3, false);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]

//◆音声指示：小声
//	St("L",700, @0,@-50,"st恵那_通常_think");
//	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300110fje">
「…………行きましょう」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(1821);}


//◆場所：アキバスポット_正面
	OnBG(10,"bg0401100アキバスポット_正面_通常");
	FadeBG(0,true);
	#bg0401400アキバスポット_正面_車なし = true;

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300120fje">
「……今日は非番だったんじゃなかったっけ？」


{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300130fje">
「なのに出しゃばっちゃって。
　むしろこっちが恥ずかしい――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("SE*", 1000, 0, null);

	SoundPlay("@xbgm02",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);}
{	St("ML",700, @-100,@0,"bu村崎_通常_happy");
Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300140msi">
「ウヒョー！　恵那ちゃん！
　恵那ちゃんじゃないですかあ！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300150fje">
「あ……村崎さん」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300160msi">
「いやあ、ありがとうありがとう！
　助かりましたよぉー！　ハグしていい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300170fje">
「ダメです」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300180msi">
「やだなあ、知ってるくせにぃ！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300190fje">
「ああ、饅頭ですね」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@100,"bu村崎_通常_normal");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300200msi">
「クリマン！」

{	St("C",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300210msi">
「クリマンッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300220msi">
「クリマンですよおお！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300230fje">
「は、はぁ……」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300240msi">
「さあ、恵那ちゃんも一緒に！」

{	St("C",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300250msi">
「クリ・マ――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300260fje">
「失礼します！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300270msi">
「ああ、ゴメンゴメンごめんなさいッ！！」

{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300280msi">
「オマケに、このコンニャク缶もつけますから！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @100,@0,"bu恵那_通常_pinch");
Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300290fje">
「コンニャク缶？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300300msi">
「はい！　おでん缶に続く二匹目のドジョウとして、我々が開発したノーカロリーコンニャク！」

//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300310msi">
「略して！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

{	ClockPass(1822);}

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/objノーカロリーコンニャク.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 300, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//	St("C",700, @0,@0,"bu村崎_通常_ero");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300320msi">
「ロ・リ・コ・ン！！」


{	Move("絵オブ", 500, @0, @100, DxlAuto, false);
	Fade("絵オブ", 500, 0, null, true);
	Delete("絵オブ");
//	DeleteAllSt(200,false);
}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300330fje">
「さようなら」

{Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300340msi">
「ゴメンなさいってば！
　怒んないでくださいよぉ！」

{	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300350msi">
「恵那ちゃんのおかげで、クリマン、大人気完売間違いなし！　なんですから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300360fje">
「……タイアップにでもしてもらったんですか？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300370msi">
「鋭いですねぇ！」

//	DeleteAllSt(200,false);
//	St("MR",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("MR",200,true);
////【富士見恵那】
//<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300380fje">
//「まあ、テレビって言ってもネットの中継だから、スポンサーの縛りもそんなに厳しくないんでしょうけど」
//
//	DeleteAllSt(200,false);
//	St("ML",700, @0,@0,"bu村崎_通常_happy")
//	FadeSt("ML",200,true);
////【村崎勇】
//<voice name="村崎勇" class="村崎勇" src="voice/18/200300390msi">
//「ええ、ええ！　そこにつけ込んでやったんですよ！」
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300400fje">
「ま、現場はだいぶ混乱してるみたいね。
　イベントが決まったのも、３日前だしなあ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);}
{	St("C",700, @-50,@0,"bu村崎_通常_happy");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300410msi">
「あ！　そういえば恵那ちゃん！
　こんな話聞いたことありますか？」

//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300420msi">
「最初は『全国ゆるキャラバン』じゃなく、ナントカレスリングの『やらないか！？』を中継する予定だった」

{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300430msi">
「でもねえ、メインイベントをつとめるはずのバリーとかいう人が、秋葉原観光中にケガしちゃったらしいんです」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300440fje">
「え？　そんな話、聞いたことない――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300450msi">
「箝口令、しかれてるんですよ」

{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300460msi">
「なんでも、一般人にやられたって言うんですよ。
　しかも、メイド喫茶の店員に一撃で――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300470fje">
「弱……」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300480msi">
「まあ、その混乱があるからこそ、ゆるキャラバンの宣伝をしてもらえるわけで……へっへっへ……」

{	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300490msi">
「あ、もちろん恵那ちゃんにもね、感謝してるんですよ」

{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300500msi">
「はい、これお礼のクリマン」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);


//あきゅん「素材：objクリマン」
//あきゅん「素材：objクリマン」

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/objクリマン.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 800, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300510fje">
「あ……ありがとうございます」

{	Move("絵オブ", 800, @0, @100, DxlAuto, false);
	Fade("絵オブ", 500, 0, null, true);
	Delete("絵オブ");
}
{	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300520msi">
「オマケして１個５００円！　半額！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300530fje">
「……お金、取るんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300540msi">
「いやいや、こっちも商売なんですよー」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300550fje">
「ま、いいですけど――」

{	DeleteAllSt(200,false);}
{	SetVolumeEX("@xbgm*", 1000, 0, null);}

{	St("C",700, @0,@50,"buユージローa_通常_hard");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200300560ujr">
「ぐるるるるるる……」

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200300570ujr">
「わうわう！　わうわうわう！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300580fje">
「ユージロー？　どうしたの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

{	ClockPass(1823);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameC/C*", 300, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200300590ujr">
「がう！　がうがう！」


//◆ＳＥ：びりびりびりびり
{	CreateSE("SE01","se動作_紙破る");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	Shake("@StNameC/C*", 300, 0, 30, 0, 0, 500, Axl3, false);
	DeleteAllSt(200,true);}

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300600fje">
「ちょ、待った！ ユージローなにすんの――」


{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200300610ujr">
「わうわうわう！」

//◆ＳＥ：びりびりびりびり
{	CreateSE("SE01","se動作_紙破る");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	Shake("@StNameC/C*", 300, 0, 30, 0, 0, 500, Axl3, false);
	DeleteAllSt(200,true);
WaitKey(300);}

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300620fje">
「あ……日付？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
{	St("ML",700, @50,@0,"bu村崎_通常_fear");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300630msi">
「うわっ！　ヤバ！」

{Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);}
{	DeleteAllSt(200,true);}
{	St("C",700, @50,@0,"bu恵那_通常_shout");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300640fje">
「ちょっと、これ！　もう賞味期限――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"
//◆ＳＥ：パララー！
	KoreJikenStart();
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300650fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	KoreJikenFade(true);

//	TextBoxDelete(150);
	St("C",700, @0,@100,"bu村崎_通常_fear");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300660msi">
「し――ッ！！」


{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300670fje">
「いやいや！　マズいでしょ！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300680msi">
「そんなこと、言わないでくださいよぉ……」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300690msi">
「だってほら、しょうがないじゃないですか！
　クリスマスに売り切る予定で仕入れちゃったんですし」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300700fje">
「……秋葉原でクリスマス饅頭なんて売れませんよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1824);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300710msi">
「でしたねー。あははははは」


//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300720msi">
「でも大丈夫！
　普通賞味期限って言うのは大きくマージンを……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE05","seメカ_車_救急車サイレン_l");
	MusicStart("SE05",1000,1000,0,1000,null,true);

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：救急車


	WaitKey(2000);

	SetFrequency("SE05", 3000, 800, null);
	SetVolumeEX("SE05", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]

{	St("C",700, @0,@100,"buユージローa_通常_angry");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200300730ujr">
「わお――――ん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＥＶ："ev/ev0000恵那これは事件！？.txt"

//◆ＳＥ：パララー！

	KoreJikenStart();
	DeleteAllSt(0,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】

<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300740fje">
「これは事件！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	KoreJikenEnd(false);
	FadeSt("MR",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300750fje">
「あの救急車、ゆるキャラバンの方に行ってますよね！？」

{	DeleteAllSt(200,true);}
{	St("ML",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300760msi">
「あは、あは、あははははははははは！！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300770fje">
「ねえ、私やっぱりこれはアウトだと――」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300780msi">
「ねえねえ！　聞いてくれますか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1825);}

	SoundPlay("@xbgm24",0,450,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300790msi">
「これ、売らないと私、売られちゃうんです」

{	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300800msi">
「どうしても今日中に、あと１０万円用意しないと！」

//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300810msi">
「双一親分の堪忍袋の緒が切れて……私は……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300820fje">
「河原屋双一って――あの河原屋組から借金を？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300830msi">
「はい……あの、河原屋双一から……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300840fje">
「村崎さん！　わかってるんですか？
　双一って……あの双一ですよ！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300850fje">
「踏み倒し・夜逃げは絶対に許さず、まるで運命の行く先を知るかのように、全ての逃げ道を塞ぐ……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300860fje">
「一度目をつけられたら、後は真綿に首を絞められるようにジワジワと……」

{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"bu村崎_通常_fear");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300870msi">
「ひいいいっ！　や、やめて下さいよォ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//	St("C",700, @0,@0,"bu村崎_通常_happy");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300880msi">
「ねえ、お願いです！
　私の命を救ってください！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300890fje">
「いや……でも、そういわれても――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300900msi">
「この通り！　見逃してください……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300910fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300920msi">
「お願いですぅ……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300930fje">
「……だめです」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300940fje">
「やっぱり、このまま売らせるわけには――」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300950fje">
「でも、何か別の方法はないんですか？」

{	DeleteAllSt(200,false);}
{	St("C",700, @-50,@0,"bu村崎_通常_happy");
Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300960msi">
「……協力、してくれますかッ！？
　いや！　実は手っ取り早くお金を稼ぐ方法が！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm03",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("C",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300970msi">
「ちょっと、ね。こう１枚、写真を撮らせてもらって」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200300980msi">
「それでね、その、はいてるぱんつを……」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200300990fje">
「は……？」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200301000msi">
「いや、新しいのでもいいんだ！
　一瞬はいてもらって、それで脱げばいいんですよぉ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1826);}

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301010fje">
「な、なにを言って――！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200301020msi">
「減るモンじゃなし！　ほら、人助けだと思って！」

{	St("C",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200301030msi">
「ほら、お、お、おじさんと一緒に、写真を撮りに――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301040fje">
「ふ、ふ、ふ、ふざけ――」

{	DeleteAllSt(200,true);}
//	St("ML",700, @-700,@0,"bu平次_御用だ_angry");
//Move("@StNameML/ML*", 200, @800, @0, Dxl3, false);
//	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301050fjh">
「ふざけるなああああああああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//Move("@StNameML/ML*", 200, @800, @0, Dxl3, false);
//	DeleteSt("ML", 200,true);


//◆ＳＥ：バキィッ！！　吹き飛ばす

	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("揺用", 50, Center, Middle, "cg/bg/bg0401100アキバスポット_正面_通常.jpg");
	Shake("揺用", 500, 10, 30, 0, 0, 1000, Dxl1, true);
	//Request("揺用",Disused);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//	St("C",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200301060msi">
「ほげ――――ッ！！」

{	St("C",700, @-200,@0,"bu平次_御用だ_angry");
Move("@StNameC/C*", 200, @200, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301070fjh">
「おめぇっ！　オレの娘になんてこと言いやがる！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200301080msi">
「すんませんすんませんすんませんッ！！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu平次_通常_angry");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301090fjh">
「いくら長ぇつきあいだからってな！
　うちの娘が魅力的だからってな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301100fjh">
「ちち！　しり！　ふともも！
　最近こう、結構むっちりしてきたからってな！」

//	St("C",700, @0,@0,"bu平次_通常_normal");
//	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301110fjh">
「やっていいことと悪いことがあんだろよ！
　このスカポンタン！！」

{	SetVolumeEX("@xbgm*", 2000, 0, null);
 	CreateSE("SE10","seガヤ_街中_l");
	MusicStart("SE10",0,400,0,1000,null,true);}

{	DeleteAllSt(200,true);}

{	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("揺用", 500, 10, 20, 0, 0, 1000, Dxl1, true);
	Request("揺用",Disused);
WaitKey(500);
}


{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301120fjh">
「おい恵那、大丈夫か？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301130fje">
「……父さんこそ、頭大丈夫？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1827);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301140fjh">
「今、なんかされそうに――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301150fje">
「ほっといて」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_angry");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301160fjh">
「でもアン畜生――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301170fje">
「いいから！　ほっといてってば！」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301180fje">
「私は子供じゃない！
　自分のことくらい、自分でちゃんとできるの！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301190fjh">
「そ…………そっか」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301200fje">
「さ、行きましょユージロー」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200301210ujr">
「わぅ……」




{	DeleteAllSt(200,false);}

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301220fjh">
「どこに――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301230fje">
「半田明神。御札を納めに行ってくるの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/200301240fjh">
「千秋は――」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301250fje">
「ほっといてってば！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
WaitKey(500);

//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0295]

{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301260fje">
「もう。父さんったら、いつも出しゃばるんだから」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301270fje">
「警官なら警官らしく、普通に事情聴取してれば――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//1820千秋.nss[text0280]の恵那ルート側

{	ClockPass(1828);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//	St("C",700, @0,@0,"buユージローa_通常_normal");
//	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200301280ujr">
「わうっ！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200301290kit">
「のわっ！　ユージロー！」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301300fje">
「ん……？　どうしたのユージロー」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_驚天_shy");
	Shake("@StNameML/ML*", 300, 0, 30, 0, 0, 500, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200301310kit">
「ぎああゃっ！　恵那も！」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_pride");
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200301320ujr">
「わうわう！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	DeleteAllSt(200,false);}
{	St("MR",700, @50,@0,"bu恵那_通常_angry");
//Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301330fje">
「ちょ、やめなさい！　急に吠えたり――」

{	DeleteAllSt(200,false);}
{	St("C",700, @0,@0,"buユージローa_通常_pride");
	Shake("@StNameC/C*", 300, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200301340ujr">
「わうわうわうわうッ！！」

{	DeleteAllSt(200,false);}
{	St("L",700, @50,@0,"bu千秋_通常_fear");
Move("@StNameL/L*", 200, @-50, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/200301350kit">
「こ、こっちくんな！　あっち――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	Move("@StNameL/L*", 200, @-50, @0, Dxl1, false);
	DeleteAllSt(200,true);

//◆ＳＥ：がっしゃーん！

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se戦闘_破壊01");
	MusicStart("SE01",0,700,0,1000,null,false);

WaitKey(500);

	CreateSE("SE02","se環境_荷物崩れる");
	MusicStart("SE02",0,700,0,1000,null,false);
//◆場所：アキバスポット_正面_クリマン崩れ
	OnBG(10,"bg0401200アキバスポット_正面_クリマン崩れ");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0315]

//	St("C",700, @0,@0,"bu恵那_通常_sigh");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301360fje">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	DeleteAllSt(200,true);


//◆ＳＥ：ドンドンガッシャン！




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320a]
　犬に吠えられて逃げた先が、アキバスポットの店頭販売。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 100, -175, -516, "cg/bg/l/bg0401200アキバスポット_正面_クリマン崩れ_l.jpg");
	Move("絵演背景", 500, @0, -576, DxlAuto, false);
	Fade("絵演背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320b]
　積み上げられていたクリマンが、台と共に崩れ去る。

　アスファルトの水たまりに、大量の商品が飛び込んだ。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵演背景", 500, null, true);

{	St("C",700, @0,@200,"bu村崎_通常_cry");
Move("@StNameC/C*", 200, @0, @-200, Dxl3, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/18/200301370msi">
「ノオオオオオオオオ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	DeleteAllSt(200,true);}
{	ClockPass(1829);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0325]

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301380fje">
「ええと……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301390fje">
「これって、私たちのせい……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵ゆれ", 100, Center, Middle, "cg/bg/bg0401200アキバスポット_正面_クリマン崩れ.jpg");
	Zoom("絵ゆれ", 0, 2000, 2000, null, true);
	SetShade("絵ゆれ",MEDIUM);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	DeleteAllSt(200,false);}

{	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200301400ujr">
「わぅ……？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"fu恵那_一休_angry");
	Fade("絵ゆれ", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301410fje">
（いや……でも、待てよ）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301420fje">
（これでクリマンは売れなくなったわけで……）


{	St("C",700, @0,@0,"fu恵那_ハルヒ_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301430fje">
「事件解決！」



{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeDelete("絵ゆれ", 200, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301440fje">
「村崎さんには、別の方法でがんばってもらいましょ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301450fje">
「……ほら、ユージロー！　行くわよ」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/18/200301460ujr">
「わう！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301470fje">
（けど、さっきの女子校生どっかで見たような……）

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/200301480fje">
（ってか、なんで私の名前知ってたの……？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@SE*", 2000, 0, null);


	TextBoxDelete(150);
	DeleteAllSt(200,true);

//	PrintGO("上背景", 5000);
//	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	EndScene();
}
