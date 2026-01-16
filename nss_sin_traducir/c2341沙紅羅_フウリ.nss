
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2341沙紅羅_フウリ.nss_MAIN
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
	$GameName = "c2350沙紅羅_似鳥.nss";//★エンディング中（c）
}

scene c2341沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="580">
////////////header////////////
//file name "c2341沙紅羅_フウリ.nss"
//title "厭覇薔薇"
//previous "c2340恵那.nss"

////////////footer////////////
//next "沙紅羅" "c2350沙紅羅_似鳥.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2340);}

//◆音声指示：地下通路

	OnBG(10,"bg0701100地下_通路_通常");
	FadeBG(0,true);

//★inc櫻井　地下道とのことで水滴を鳴らしています。
	CreateSE("水滴", "se環境_水滴02");
	SoundEffect("水滴","SEWERPIPE");
	MusicStart("水滴", 0, 700, 0, 1000, null,true);


	FadeDelete("上背景",1000,null,true);

{	St("R",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100010wfu">
「ひええええ……
　ほんとうに、こんなところに？」

{	DeleteSt("R",200,true);
	St("R",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100020wfu">
「なんだか、いかにも何かが出てきそうで……」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100030skr">
「あれ？　なにか聞こえた……？」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buフウリ_通常_fear");
	Shake("@StNameR/R*", 300, 2, 0, 0, 0, 300, DxlAuto, false);
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100040wfu">
「ひゃっ！　ちょっと！
　怖がらせないでください！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/410100050kms">
「いずれにせよ、急ぎましょう」

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/410100060kms">
「もうそろそろ、年が変わってしまいます」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100070mzh">
「うむ。そうじゃな」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2341);}

//◆場所：地下_祭壇

	SceneOut(5000, 1000, "blind_01_00_0");

	SetVolume("水滴", 800, 0, null);

	DeleteSt("MR",0,false);

	OnBG(10,"bg0702100地下_祭壇_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");
	SoundPlay("@xbgm15", 0, 700, true);

//★inc櫻井　音楽を聞かせる意味をこめて　長めにスクロールさせています。

	Move("@OnBG*", 5000, @0, @420, null, true);

	Wait(1000);

{	St("L",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100080skr">
「そこが……祭壇？」

{	DeleteSt("L",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/410100090kms">
「結界を根こそぎ破られましたが。
　場所自体に問題はありません」

{	St("ML",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/410100100kms">
「この真上……半田明神へと集う人々の思いが、アザナエルへと集まる」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100110mzh">
「ずいぶん長かったような気もするが、これでようやく終わりじゃ」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100120mzh">
「では……フウリ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	DeleteSt("MR",200,false);
	St("R",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100130wfu">
「はい！」

{	Move("@StNameR/R*", 300, @-50, @0, null, false);
	DeleteSt("R",200,true);
	CreateSE("SE02", "se動作_銃渡す");
	MusicStart("SE02", 0, 700, 0, 1000, null,false);}
　フウリからミヅハに、アザナエルが手渡される。

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100140mzh">
「うむ……間違いなく、本物じゃな」

{	DeleteSt("MR",200,false);
	St("L",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100150skr">
「けど、まさかフウリが持ってたなんてな」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100160wfu">
「はい。返すのを、すっかり忘れていました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	St("R",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100170wfu">
「すみません……」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100180skr">
「いやいや、終わりよければ全て良し！　ってな」

{	St("L",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100190skr">
「あれ？　でもそういえば、今名探偵はなにを……」

{	SetVolume("@xbgm15", 1000, 0, null);
	DeleteSt("L",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/410100200kms">
「――静かに」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100210mzh">
「む……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("MR",200,true);

	//TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　ミヅハは厳かに、祭壇へと近づくと……


{	CreateSE("SE", "se擬音_ギャグ_ぴょこ");
	MusicStart("SE", 0, 700, 0, 1000, null);
	St("MR",700, @0,@0,"stミヅハ_通常_hard");
	Move("@StNameMR/MR*", 200, @0, @-70, null, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100220mzh">
「とりゃっ！」

{	DeleteSt("MR",200,true);}
　かけ声と共に背伸びする。

{	St("MR",700, @0,@-70,"stミヅハ_通常_sigh");
	Shake("@StNameMR/MR*", 1000000, 2, 0, 0, 0, 300, DxlAuto, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100230mzh">
「と、と……届かぬ」

{	DeleteSt("MR",200,true);
	St("L",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100240skr">
「あー、はいはい。アタシがやってやるよ」

//あきゅん「修正指示：沙紅羅では不要、通常のbuで。小さくなりすぎです」
//★inc櫻井　修正
{	DeleteSt("L",200,true);
	CreateSE("置く", "se銃_置く");
	MusicStart("置く", 0, 1000, 0, 1000, null,false);
	Wait(500);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100250skr">
「これでいいな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//あきゅん「修正指示：ここもbuで」
//★inc櫻井　修正
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100260mzh">
「うむ！　助かった！」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100270mzh">
「よーし、これで終いじゃ！
　皆の者、ここを出るぞ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆場所：半田明神_涸れ井戸_崩壊

	SceneOut(20000, 1000, "blind_01_00_0");
	DeleteSt("MR",0,false);

//◆時間：ジャンプ
{	ClockPass(2343);}
	Wait(1000);

	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	FadeBG(0,true);

	CreateSE("林", "se環境_林_l");
	MusicStart("林", 700, 500, 0, 1000, null,true);


	SceneIn(1000, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("R",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100280wfu">
「いやあ、びっくりしましたー！」

{	St("R",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100290wfu">
「まさか地下に、あんな洞窟があるなんて……」

{	DeleteSt("R",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/410100300kms">
「かつては<RUBY text="こうじ">糀</RUBY>を発酵させるための地下ムロとして、使われていたようです」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/410100310kms">
「サイババア様の話では、秋葉原の地下中に通路が張り巡らされているとか」

{	DeleteSt("ML",200,false);
	St("R",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("R",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100320wfu">
「そ、そんな秘密が……？」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100330skr">
「ってか、サイババアってだれだよ？」


{	DeleteSt("L",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/410100340kms">
「サイバーババ様です」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteSt("ML",200,false);
	St("L",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("L",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100350skr">
「説明に……なってねえ！」

{	DeleteSt("L",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100360mzh">
「しかしまあ、いずれにせよこれで一安心！」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100370mzh">
「後は願いを集めるだけ――」


{	DeleteSt("MR",200,false);
	St("ML", 700, @-100, @0,"buみそa_通常_smile");
	Move("@StNameML/ML*", 200, @100, @0, Axl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/410100380mso">
「姐さんッ！　終わりましたッ！」

{	DeleteSt("ML",200,false);
	St("MR",700, @100,@0,"buブーa_通常_happy");
	Move("@StNameMR/MR*", 200, @-100, @0, Axl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/c23/410100390buu">
「姐さんのイメージ通り出来上がりましたッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100400skr">
「仕上げは？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,true);
	St("L",700, @0,@0,"buみそa_通常_normal");
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/410100410mso">
「完璧ですッ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/c23/410100420buu">
//「完璧ですッ！」

</PRE>
	SetText();
	AddText(1,"「完璧ですッ！」","みそ","c23/410100410mso",false,false,1000);
	AddText(2,"「完璧ですッ！」","ブー","c23/410100420buu",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆音声指示：半泣き
//【みそ】
<voice name="みそ" class="みそ" src="voice/c23/410100430mso">
「姐さん、ありがとうございます！」

{	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//◆音声指示：半泣き
//【ブー】
<voice name="ブー" class="ブー" src="voice/c23/410100440buu">
「姐さんがいなかったらどうなってたことか……ううっ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100450skr">
「お前ら、安心するのはまだ早ぇぞ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100460skr">
「確か、花火あんだろ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100470skr">
「最後まで気を抜くんじゃねぇ！
　さっさと準備しに行ってこい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeAllSt(200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/c23/410100480buu">
「はいッ！」
{WaitAddText();}<BR>

////◆音声指示：同時
////【みそ】
//<voice name="みそ" class="みそ" src="voice/c23/410100490mso">
//「はいッ！」

</PRE>
	SetText();
	AddText(1,"「はいッ！」","ブー","c23/410100480buu",false,false,1000);
	AddText(2,"「はいッ！」","みそ","c23/410100490mso",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,true);
	St("R",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100500wfu">
「あ、あの、私も……」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100510skr">
「ああ、そうだったな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2344);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100520skr">
「打ち合わせ、行ってこい！
　本番、期待してるぞ！」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/c23/410100530wfu">
「は……はい、なんとか、頑張ります！」

//★inc櫻井　走り去る演出
{	CreateSE("去る", "se動作_歩く04_l");
	MusicStart("去る", 0, 700, 0, 1000, null,false);
	DeleteSt("C",200,true);
	Wait(1000);
	SetVolume("去る", 3000, 0, null);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100540skr">
「さて、残るは――」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/c23/410100550mzh">
「似鳥じゃな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/410100560kms">
「……ですね」

{	St("ML",700, @0,@0,"bu歌門_通常_think");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/c23/410100570kms">
「果たして本当に、新しい垂れ幕ができたのか……」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c23/410100580skr">
「アイツならきっと、大丈夫だって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolume("林", 1000, 0, null);

	CreateColorEX("絵色100", 15000, "Black");
	Fade("絵色100", 1000, 1000, null, true);



	EndScene();
}
