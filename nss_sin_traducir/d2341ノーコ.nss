
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene d2341ノーコ.nss_MAIN
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
	$GameName = "2340似鳥.nss";//★エンディング中（d）
}

scene d2341ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="710">
////////////header////////////
//file name "d2341ノーコ.nss"
//title "最後のあがき"
//previous "c2340恵那.nss"

////////////footer////////////
//next "2340似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2342);}

//◆場所：半田明神_社務所_雪
	OnBG(10,"bg0604211半田明神_社務所_雪");
	FadeBG(0,true);

	FadeDelete("上背景",1000,null,true);


{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/410100010kms">
「え……！？」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d23/410100020mzh">
「なんじゃと！？」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100030fjr">
「今……なんて言ったの？」

{	SoundPlay("@xbgm25",0,450,true);
	DeleteSt("C",200,false);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100040nko">
「フウリは、いなくなった」


{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100050fjr">
「ウソでしょ……？　なんで！？
　なんでフウリちゃんが、いなくなったの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100060nko">
「フウリのおともだちが、いってた」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100070nko">
「こいびとが、みつかったって」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100080nko">
「その人のところに、むかったって」

{
//	SoundPlay("@xbgm28",0,450,true);
	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100090nko">
「だから……もうにどと、かえってこないって」


{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100100fjr">
「そんな……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100110fjr">
「そんなこと、急に言われても――」


{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100120nko">
「ごめんなさいって、つたえてって」

{	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100130nko">
「そのひとに、いわれた」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100140fjr">
「なんで……わかんない、わかんないよ！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100150fjr">
「フウリちゃん……約束したじゃない……」

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100160fjr">
「アタシたちと……ライブ、一緒にするって……」

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100170fjr">
「それなのに……なんで……」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100180nko">
「そのおともだちは、いってた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSPadd("フラッシュバック", 15000, WHITE);
	CreateColorSP("下黒", 500, BLACK);
	CreateTextureSP("フウリ", 2000, @0, @0, "cg/ev/ev2250カゴメアソビ4a.jpg");
	SetTone("フウリ", Monochrome);
	DeleteSt("C",0,true);
	Fade("フラッシュバック", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100190nko">
「フウリは、なっとくして、いったって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100200nko">
「だから、フウリのいしはそんちょうしてあげろって」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100210nko">
「かのじょのきもちを、ぶじょくするなって」


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100220fjr">
「フウリちゃん……そんなのって……」


//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100230fjr">
「そんなのって、ないよ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("フラッシュバック", 500, 1000, null, true);

	Delete("下黒");
	Delete("フウリ");
	Delete("monokuro");

//	SetVolumeEX("@xbgm*", 1000, 0, null);
	Fade("フラッシュバック", 500, 0, null, true);
	Delete("フラッシュバック");

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/d23/410100240adi">
「………………」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d23/410100250mzh">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2343);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/410100260kms">
「………………」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"buノーコb_幽霊_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100270nko">
「ミヅハ、これを」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d23/410100280mzh">
「む……これは！？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/410100290kms">
「アザナエルではないですか！　どうしてコレを！？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100300nko">
「そのともだちが、わたしにくれた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100310nko">
「フウリは、これで、じぶんのゆくさきをきめたって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100320nko">
「そう、いってた」

{	DeleteSt("C",200,false);
	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100330fjr">
「――――――っ！！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d23/410100340mzh">
「そうか」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d23/410100350mzh">
「フウリが、そう、決めたのか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/410100360nko">
「うん」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d23/410100370mzh">
「ならば、フウリの決めた、その気持ちを……
　尊重してやらねば、なるまいのう……」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d23/410100380mzh">
「のう……星？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/410100390kms">
「はい。左様でございます」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 3000, 0, null);

//★inc櫻井　鈴の立ち絵を立たせてないのはわざとです。
{	DeleteSt("ML",200,false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100400fjr">
「もじゃ……もじゃ……」

{	St("C",700, @0,@100,"bu鈴_もじゃ_angry");
	Shake("@StNameC/C*", 400, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 300, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100410fjr">
「もじゃああああああああああああああああっ！！」

//あきゅん「修正指示：鈴にビビル感じに」
//★inc櫻井　修正
{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_shock");
	Move("@StNameML/ML*", 300, @0, @-30, null, false);
	Shake("@StNameML/ML*", 300, 15, 0, 0, 0, 300, null, false);
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 300, @0, @30, Dxl1, false);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/d23/410100420adi">
「鈴ちゃん！？　あの、大丈夫――」


{
	SoundPlay("@xbgm28",0,450,true);
	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100430fjr">
「おめでたいっ！！」

{	St("C",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100440fjr">
「おめでたいじゃないの、フウリちゃんッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/d23/410100450adi">
「え！？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100460fjr">
「アタシたちへの挨拶なんか忘れるくらい、恋に心奪われちゃったんでしょチックショー！！」

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100470fjr">
「自分の気持ちに決着をつけようとした結果がコレなんでしょ！？」

{	St("C",700, @0,@0,"bu鈴_シリアス_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100480fjr">
「ええ、わかったわ！
　だったら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100490fjr">
「男になびいちゃったのを後悔するくらい！
　思いっきり、素晴らしいイベントにしてやるわよッ！」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/d23/410100500adi">
「そ、そうね！　たとえふたりでも――」


//◆ＳＥ：電話

{	SetVolumeEX("@xbgm*", 1000, 0, null);
	CreateSE("電話", "seメカ_携帯_電子音01");
	MusicStart("電話", 0, 1000, 0, 1000, null,false);
	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100510fjr">
「あ、もしもし？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：電話先不要、演出面白いんですけどね……」
//★inc櫻井　修正

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：電話越し
//【そに子】
<voice name="そに子" class="そに子" src="voice/d23/410100520snk">
『鈴ちゃん、ごめんなさいっ！！』


{	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//◆音声指示：電話越し
//【そに子】
<voice name="そに子" class="そに子" src="voice/d23/410100530snk">
『今、勢いがつきすぎて……隅田川の方まで来てしまいました～！！』

{	SetVolumeEX("@xbgm*", 1000, 0, null);}
//◆音声指示：電話越し
//【そに子】
<voice name="そに子" class="そに子" src="voice/d23/410100540snk">
『時間に、間に合いそうにありません……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//◆音声指示：電話越し
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/d23/410100550mso">
『すいませんっしたッ！！』
{WaitAddText();}<BR>

//◆音声指示：電話越し
//◆音声指示：同時
//▼べー：音声系記述をみそ→ブーへ修正
//【ブー】
//<voice name="ブー" class="ブー" src="voice/d23/410100560buu">
//『すいませんっしたッ！！』


</PRE>
	SetText();
	AddText(1,"『すいませんっしたッ！！』","みそ","d23/410100550mso",false,false,1000);
	AddText(2,"『すいませんっしたッ！！』","ブー","d23/410100560buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100570fjr">
「ああ……うん、わかったわ」

{	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100580fjr">
「色々予定が変わったから、事故に遭わないように気をつけて来てね」


//◆音声指示：電話越し
//【そに子】
<voice name="そに子" class="そに子" src="voice/d23/410100590snk">
『は、はい～』



//◆ＳＥ：電源落とす
{	CreateSE("電源落とす", "seメカ_携帯_電子音01");
	MusicStart("電源落とす", 0, 1000, 0, 1000, null, false);
	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/d23/410100600adi">
「………………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//※下倉注：この台詞削除
//【似鳥戴斗】
//<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/d23/410100610nki">
//「………………」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d23/410100620mzh">
「………………」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/d23/410100630kms">
「………………」

{	DeleteSt("ML",200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/d23/410100640adi">
「ど……どうしましょう？」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/d23/410100650adi">
「鈴ちゃんひとりじゃ、ライブなんて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm20_noeff",0,450,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	Shake("@StNameC/C*", 200, 6, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100660fjr">
「ふふふふ……ふふ……」

{	St("C",700, @0,@0,"bu鈴_通常_happy");
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100670fjr">
「ふは――――っはっはっは！！」

{
//	SoundPlay("@xbgm20_noeff",0,450,true);
	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100680fjr">
「こんなこともあろうかとッ！！
　アタシは恵那ちんに、奥の手を授かってるのよ！！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/d23/410100690mzh">
「奥の手……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100700fjr">
「そう！　会場のみんなには申し訳ないけどッ！」

{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/d23/410100710fjr">
「今日のライブは、内容変更よッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndFileBlackOut(20000,2000);

	EndScene();
}
