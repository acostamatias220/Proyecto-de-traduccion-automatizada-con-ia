
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bab2330千秋_恵那.nss_MAIN
{
//■エンディングチェック
	Ending_IsChaeck("bab");

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
	$GameName = "bab2340千秋_恵那_h.nss";//★エンディング中（bab）
}

scene bab2330千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="980">
////////////header////////////
//file name "bab2330千秋_恵那.nss"
//title ""
//previous "bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss"

////////////footer////////////
//next "bab2340千秋_恵那_h.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();

{	ClockPass(2335);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603100半田明神_境内_通常");
	FadeBG(0,true);

//※下倉注：新年前なのでガヤＮＧ
//	CreateSE("SE01","seガヤ_半田明神02_l");
//	MusicStart("SE01",3000,700,0,1000,null,true);

	CreateSE("SE10","se環境_風と葉っぱ_l");
	MusicStart("SE10",2000,300,0,1000,null,true);

	WaitKey(1000);

	if($PreGameName=="bab2300沙紅羅_千秋_恵那_似鳥_ノーコ.nss"){
	FadeDelete("上背景", 2000, null, true);
	}else{
	CreateColorSP("絵色黒", 20000, "#000000");
	FadeDelete("上背景", 0, null, true);

	TakeRatePic();//あきゅん「演出：スクリーン希望箇所」

	FadeDelete("絵色黒", 2000, null, true);
	}
//曲、いらないと思う
//	SoundPlay("@xbgm18",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/300100010kit">
「しかし、まさか御札が返ってくるなんて……」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/300100020kit">
「これも神様の御利益か？」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/300100030fje">
「でも、どういう経路でみそブーさんに渡ったんだろ？」

{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/300100040fje">
「なんかこう……今日はエコバッグの入れ替わりを辿るだけでも、頭痛が……」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/300100050kit">
「おいおい、名探偵！
　しっかりしてくれよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/300100060fje">
「わ、わかってるわよ！」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/300100070kit">
「でもま、これでおまえの願いも叶ったわけで。
　オレも一息……かな」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/300100080fje">
「うん」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/300100090fje">
「神様にも、お礼言ってこよっか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/300100100kit">
「……それがいいかもな」

{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/300100110kit">
「忙しいと悪いから、挨拶したらすぐに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//★ inc久保田　pre分けしました

	DeleteSt("ML", 200,true);

{	ClockPass(2336);}

	TextBoxDelete(150);
//◆場所：半田明神_拝殿

	SetVolumeEX("@SE*", 2000, 0, null);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	CreateSE("SE01","se動作_走る03_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	WaitKey(500);

	DrawTransition("絵色黒", 300, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);

//	CreateSE("SEL01","seガヤ_半田明神02_l");
//	MusicStart("SEL01",3000,250,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100120kms">
「ミヅハ様」

{	CreateSE("SE01","se動作_走る03_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",700, @-200,@0,"bu歌門_威圧_shout");
	FadeSt("C",500,false);
	Move("@StNameC/C*", 500, @200, @0, Dxl1, false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100130kms">
「ミヅハ様、そこにおられるのでしょう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu歌門_威圧_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100140kms">
「隠れても無駄です。
　アザナエルを再び盗み出したのは、ミヅハ様ですね」

{	DeleteSt("C", 200,false);
	Wait(100);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);
	SoundPlay("@xbgm15",0,450,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100150mzh">
「気づいてしもうたか」

{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100160mzh">
「いかにも。このミヅハノメが、失敬した」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100170kms">
「なぜです？　なぜ、この時期になって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100180mzh">
「知っておるのだろう？
　だから、ここまで来たのだろう？」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100190kms">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@xbgm15", 2000, 200, null);


//★ inc久保田　pre分けしました。

	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	DeleteSt("MR", 0,true);
	OnBG(10,"bg0604100半田明神_社務所_通常");
	FadeBG(0,true);

//	SetVolumeEX("SEL*", 1000, 700, null);
	DrawDelete("絵板写", 1000, 50, null, "slide_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//◆音声指示：小声
{	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/300100200kit">
「取り込み中？　声がなんか怖い……」

//◆音声指示：小声
{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/300100210kit">
「おい恵那、帰る――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("ML", 200,false);

//	TextBoxDelete(150);

//◆音声指示：小声

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
{	St("MR",700, @60,@0,"bu恵那_一休_think");
	Move("@StNameMR/MR*", 200, @-60, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/300100220fje">
「待って……この声！
　私の勘が正しければ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenStart();

	DeleteAllSt(0,true);


//	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
//	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//◆音声指示：小声
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/300100230fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenEnd(true);

	St("ML",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060c]
//◆音声指示：小声
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/300100240kit">
「ハァ……また始まった……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm15", 2000, 450, null);

//★ inc久保田　pre分けしました。

{	ClockPass(2337);}

	CreatePlainSP("絵板写", 5000);

	DeleteSt("ML", 0,true);
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	SetVolumeEX("SEL*", 1000, 250, null);
	DrawDelete("絵板写", 500, 50, null, "slide_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100250kms">
「しようとしていることの意味が、おわかりですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteSt("MR", 200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100260mzh">
「無論じゃ」

{
	SetVolumeEX("SE*", 5000, 0, null);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100270mzh">
「わらわは、人を救う」

{	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100280mzh">
「人を救えずして、何が神じゃ」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100290kms">
「そのために、ミヅハ様が犠牲になる必要はありません」

{	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100300kms">
「もう３０分――たったそれだけ我慢すれば、ミヅハ様はその力を取り戻す」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100310kms">
「かつての罪は禊がれるのです」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100320kms">
「しかしここでアザナエルを使えば、ミヅハ様は――」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100330mzh">
「構わん」

{	St("ML",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("ML",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100340mzh">
「わらわは今日、皆にたくさんの思い出をもらった」

{	St("ML",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("ML",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100350mzh">
「その恩に報わねば、一生後悔するであろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100360kms">
「その姿でもう１０年、アザナエルを守り続ける覚悟が？」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100370mzh">
「わらわにとって１０年など、たかがしれておる」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100380kms">
「神にとっては、そうでしょう」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100390kms">
「しかし、人にとっては――」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100400mzh">
「――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_口覆い_shy");
	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 1200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100410kms">
「――いえ。すみません」

{	AgainSt("MR",700, @0,@0,"bu歌門_通常_hard");
	St("MR",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100420kms">
「口が過ぎました。それがミヅハ様の選択ならば――」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100430mzh">
「言え」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100440kms">
「申し訳ありません」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100450mzh">
「言うのじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100460kms">
「忘れてください」

{	DeleteSt("MR", 200,true);
	CreateTextureEX("背景アップ", 100, 132, 50,"cg/bg/bg0607100半田明神_拝殿_通常.jpg");
	Zoom("背景アップ", 0, 1300, 1300, null, false);
	St("L",700, -75, 05,"buミヅハ_通常_think");
	Zoom("@StNameL/L*", 0, 1300, 1300, null, false);
	Request("@StNameL/L*", Smoothing);
	Request("背景アップ", Smoothing);
	Fade("背景アップ", 1500, 1000, DxlAuto, false);
	FadeSt("L",1500,true);
}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100470mzh">
「星よ。わらわは子供じゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100480mzh">
「もしも今日、神社を出なければ、おぬしの本当の気持ちなど、気づくことはなかっただろう」

{	St("L",700, -75, 05,"buミヅハ_通常_hard");
	Zoom("@StNameL/L*", 0, 1300, 1300, null, false);
	Request("@StNameL/L*", Smoothing);
	FadeSt("L",300,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100490mzh">
「じゃが……わらわはもう、知ってしまったのじゃ」

{	St("L",700, -75, 05,"buミヅハ_通常_smile");
	Zoom("@StNameL/L*", 0, 1300, 1300, null, false);
	Request("@StNameL/L*", Smoothing);
	FadeSt("L",300,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/bab23/300100500mzh">
「おぬしの本心を、聞かせておくれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2338);}

//	TextBoxDelete(150);

	DeleteSt("L", 1500,false);


	CreateTextureEX("背景アップ２", 110, -142, 50,"cg/bg/bg0607100半田明神_拝殿_通常.jpg");
	Zoom("背景アップ２", 0, 1300, 1300, null, false);
	St("R",700, 592, 05,"bu歌門_通常_think");
	Zoom("@StNameR/R*", 0, 1300, 1300, null, false);
	Request("@StNameR/R*", Smoothing);
	Request("背景アップ２", Smoothing);
	Fade("背景アップ２", 1500, 1000, DxlAuto, false);
	FadeSt("R",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100510kms">
「……なりません」

{	St("R",700, 592, 05,"bu歌門_通常_pride");
	Zoom("@StNameR/R*", 0, 1300, 1300, null, false);
	Request("@StNameR/R*", Smoothing);
	FadeSt("R",300,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100520kms">
「私は神に仕える身。であればこそ――」

//◆ＳＥ：変身ＳＥ

{	SetVolumeEX("@xbgm*", 2000, 0, null);
	SetVolumeEX("SE*", 2000, 0, null);
	CreateColorSPadd("白", 15000,"WHITE");
	DrawTransition("白", 500, 50, 300, 700, null, "cg/data/circle_11_00_0.png", false);
	CreateSE("SE02","se擬音_光り輝く01");
	MusicStart("SE02",0,700,0,1000,null,true);
	St("R",700, 592, 05,"bu歌門_通常_shock");
	Zoom("@StNameR/R*", 0, 1300, 1300, null, false);
	Request("@StNameR/R*", Smoothing);
	FadeSt("R",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100530kms">
「ぁ――」

{	St("R",700, 592, 05,"bu歌門_通常_shy");
	Zoom("@StNameR/R*", 0, 1300, 1300, null, false);
	Request("@StNameR/R*", Smoothing);
	FadeSt("R",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100540kms">
「この、光は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateColorEXadd("白2", 15000,"WHITE");
	Fade("白2", 500, 1000, DxlAuto, true);
	Delete("白");

	Delete("背景*");

	DeleteSt("R", 0,true);
	St("C",700, @0, @0,"l/stミヅハノメ_通常_normal_l");
	Zoom("@StNameC/C*", 0, 1000, 1000, null, false);
	Request("@StNameC/C*", Smoothing);

	CreateTextureEX("背景アップ３", 180, Center, -169,"cg/bg/bg0607100半田明神_拝殿_通常.jpg");
	Zoom("背景アップ３", 0, 1600, 1600, null, false);
	Request("背景アップ３", Smoothing);
	Fade("背景アップ３", 0, 1000, DxlAuto, false);

	Wait(16);

	Move("背景アップ３", 6500, @0, 0, null, false);
	Move("@StNameC/C*", 7500, @0, -400, null, false);
	FadeSt("C",0,true);

	SetVolumeEX("SE*", 2000, 0, null);
	Fade("白2", 500, 0, DxlAuto, true);

	Wait(3000);
	Fade("背景アップ３", 3500, 0, DxlAuto, false);
	DeleteSt("C", 3500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("C",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("C",500,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100550mhn">
「これでもならぬと言うか？」

{	DeleteSt("C", 200,false);
	St("MR",700, @0,@0,"bu歌門_口覆い_shy");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100560kms">
「ミヅハノメ様……」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100570mhn">
「良いのじゃ星。もう我慢することなどない」

{	St("ML",700, @0,@0,"buミヅハノメ_通常_smile");
	GodFadeSt("ML",200,false);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100580mhn">
「おぬしの思いの丈、好きなだけぶつけるがよい」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100590kms">
「ミヅハノメ様は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm28",3000,700,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("MR",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100600kms">
「ミヅハノメ様は、汚いです」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100610mhn">
「そうか、汚いか」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100620kms">
「卑怯です」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100630mhn">
「卑怯か。そうかもしれぬな」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shout");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100640kms">
「とぼけないでください！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100650kms">
「私がどれだけ年が明けるのを待っていたか！」

{	St("MR",700, @0,@0,"bu歌門_通常_think");
	St("MR",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("MR",200,false);
	FadeStPro("MR", 200, 1600);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100660kms">
「私が――どれだけあなたをお慕いしていたか」

{	AgainSt("MR",700, @0,@0,"bu歌門_通常_shy");}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100670kms">
「全く、全然、気づいてくださらないのですもの」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100680mhn">
「わらわには……愛というものが、よくわからなかった」

{	St("ML",700, @0,@0,"buミヅハノメ_通常_sad");
	GodFadeSt("ML",200,false);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100690mhn">
「今も、本当に理解できているのかは知らぬ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"buミヅハノメ_通常_hard");
	PlainFadeSt("ML",200,false);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100700mhn">
「じゃが、おぬしを思うと、胸が痛む」

{	St("ML",700, @0,@0,"buミヅハノメ_通常_sad");
	GodFadeSt("ML",200,false);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100710mhn">
「申し訳なくて、今すぐにでも逃げ出したくなる」

{	St("ML",700, @0,@0,"buミヅハノメ_通常_hard");
	GodFadeSt("ML",200,false);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100720mhn">
「これは――わらわが、おぬしを愛しているからか？」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100730kms">
「ミヅハノメ様――」

{	St("MR",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100740kms">
「バカ！　バカです！　ミヅハノメ様の、バカ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2339);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100750kms">
「愛など知らず、私の気持ちなどに気づかないまま、年が明けるのを待てば良かったのに……」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100760mhn">
「おぬしの気持ちは痛いほどによくわかる。
　じゃが……もう、見て見ぬふりはできぬのじゃ」

{	St("ML",700, @0,@0,"buミヅハノメ_通常_hard");
	PlainFadeSt("ML",200,false);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100770mhn">
「すまぬ、星」

{	St("ML",700, @0,@0,"buミヅハノメ_通常_smile");
	GodFadeSt("ML",200,false);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100780mhn">
「今日この日だけは、わらわのわがままを通させてくれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100790kms">
「…………ならば」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100800kms">
「ならば、ミヅハノメ様」

{	St("MR",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100810kms">
「私のわがままも……聞いてくださいますか？」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100820mhn">
「では、聞こうかの」

{	St("ML",700, @0,@0,"buミヅハノメ_通常_smile");
	GodFadeSt("ML",200,false);
	SoundPlay("@xbgm15",1000,0,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100830mhn">
「ただし、わらわは歳じゃ。耳が遠いでの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buミヅハノメ_通常_pride");
	GodFadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100840mhn">
「大きな声で、言ってくれぬと困るぞ」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100850kms">
「え……？」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100860mhn">
「で、おぬしのわがままとは、なんじゃ？」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100870kms">
「…………」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100880mhn">
「ん？　どうした？　言えぬか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100890kms">
「……意地悪」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100900mhn">
「先ほど、わらわを汚いと言ったばかりではないか」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100910kms">
「うう……」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_pride");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100920mhn">
「どうじゃ、言えぬのか？」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_口覆い_fear");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100930kms">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_smile");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/300100940mhn">
「言えぬなら、時間がないでな。もう――」

{	SetVolumeEX("@xbgm*", 1000, 0, null);
	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100950kms">
「言います！　言いますから！」

{	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100960kms">
「ミヅハノメ様……どうか……」

{	St("MR",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100970kms">
「どうか、私に……」

{	St("MR",700, @0,@0,"bu歌門_通常_shy");
	FadeSt("MR",200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/300100980kms">
「思い出を、ください」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	DeleteSt("MR", 200,true);

	St("C",700, @0,@0,"buミヅハノメ_通常_hard");
	FadeSt("C",200,true);

	WaitKey(2000);

	St("C",700, @0,@0,"buミヅハノメ_通常_smile");
	GodFadeSt("C",200,true);

	WaitKey(500);

	DeleteAllSt(500,true);

	EndScene();
}
