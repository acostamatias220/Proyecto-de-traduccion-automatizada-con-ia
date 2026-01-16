//★ inc遠藤＞櫻井君
// スレッドに記述した基本事項は書きません。
// 演出について、なんか「絵を表示しただけ」で面白くないので
// baa2330似鳥_ノーコ_h.nss
// あたりを参考に動きを付けて下さい。


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bab2340千秋_恵那_h.nss_MAIN
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
	$GameName = "bab2350千秋_恵那.nss";//★エンディング中（bab）

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#bab2340千秋_恵那_h=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene bab2340千秋_恵那_h.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="3660">
////////////header////////////
//file name "bab2340千秋_恵那_h.nss"
//title "秘めたる想い"
//previous "bab2330千秋_恵那.nss"

////////////footer////////////
//next "bab2350千秋_恵那.nss"

////////////body////////////

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

//■再定義定型文
	PrintBG("上背景", 30000);

	ClockTime(2340);


//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	ClockTime(2340);

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	//リコ背景抹消
	RecoIn();
}
//========================================================

//inc久保田　全体的に粗い部分を手を加えました
	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100010kms">
「ミヅハノメ様……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100020mhn">
「星……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ミヅハ歌門キス.txt" 差分Ａ

	ClockDelete(1000,false);
	CreateTextureEX("絵100big", 2000, @-550, @0, "cg/ev/l/ev2330ミヅハ歌門キスa_l.jpg");
	Move("絵100big", 1000, @0, @-200, Dxl1, false);
	Fade("絵100big", 1000, 1000, null, true);

	SoundPlay("@xbgm29",0,450,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100030mhn">
「はむ……ん……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100040kms">
「んぁ……んん…………」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100050mhn">
「んん……ん……ちゅ」

{	CreateTextureEX("絵100", 2001, @0, @0, "cg/ev/ev2330ミヅハ歌門キスa.jpg");
	Fade("絵100", 1000, 1000, null, true);
	Delete("絵100big");}


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100060mhn">
「――はは」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100070kms">
「な……なんですか？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100080kms">
「私のキスが、変？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100090mhn">
「いや……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100100mhn">
「随分と、初心な接吻じゃのうと思うての」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100110kms">
「――――！！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100120mhn">
「まあ、星はこちらの道一筋じゃったから。
　道理かもしれんのう」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100130kms">
「な、なにを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100140mhn">
「本当の接吻とはの、星」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100150mhn">
「こういうものを、言うのじゃぞ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100160kms">
「え――あむっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2341);


	TextBoxDelete(150);

//★inc櫻井　舌もっと拡大する？　ユーザーはそれで興奮するか否か。性癖の問題？　

	CreateTextureEX("絵100big", 2010, @-550, @-200, "cg/ev/l/ev2330ミヅハ歌門キスa_l.jpg");
	Fade("絵100big", 1000, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100170mhn">
「ぁん……んちゅっ、はむ……ん……んん……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100180kms">
「ん……んん……んちゅ……ん……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100190mhn">
「んちゅっ、ぁむ……ん……ちゅっ、んちゅっ……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100200kms">
「ぁ……んはぁっ、ん……ん……」


{	FadeDelete("絵100big",500,null,false);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100210mhn">
「んちゅっ……ん……ふふふ。
　どうじゃ、星。参考になったかの？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100220kms">
「ん……ぁ……はぁ……はぁ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100230mhn">
「ん？　あまりの良さに、聞こえておらぬか？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100240kms">
「そ、そんなこと――！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100250kms">
「思い出しただけで、熱くなるような、口づけでした」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100260mhn">
「おぬしばかりが愉しむ気か？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100270mhn">
「久しぶりなのじゃ。
　できれば、わらわも愉しませて欲しいのじゃがのう」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100280kms">
「ぁ……」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100290kms">
「は、はい！　それでは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateTextureEX("絵100big", 2010, @-550, @-200, "cg/ev/l/ev2330ミヅハ歌門キスa_l.jpg");
	Fade("絵100big", 1000, 1000, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100300kms">
「んむ……んちゅ……ん……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100310mhn">
「ふ……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100320kms">
「ん……んちゅっ、んっ……ちゅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	FadeDelete("絵100big", 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100330mhn">
「ふふ……まだまだじゃのう」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100340kms">
「そ、そんな……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100350mhn">
「おぬし、男のものを見たことはあるか？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100360kms">
「な、何を突然――」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100370mhn">
「男のものを見たことはあるかと聞いておる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2342);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100380kms">
「そ……それは……一応……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100390mhn">
「家族のものか？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100400kms">
「…………」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100410mhn">
「図星じゃな。
　ならば当然、<RUBY text="こういん">口淫</RUBY>は未経験じゃの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100420kms">
「こう……いん？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100430mhn">
「おとこの一物を、口に含むことじゃ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100440kms">
「そんなこと、当たり前――」


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100450mhn">
「ほれ、わらわの舌を男のいちもつと思って舐めてみろ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100460kms">
「ん――」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100470mhn">
「なんじゃ？　恥ずかしいか？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100480kms">
「んん――ん！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100490kms">
「んちゅ……んちゅ、んん……んちゅぅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	CreateTextureEX("絵100big", 2010, @-550, @-200, "cg/ev/l/ev2330ミヅハ歌門キスa_l.jpg");
	Fade("絵100big", 1000, 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

　突き出されるミヅハノメの舌を、歌門の唇が覆った。

　緩やかな曲線をなぞりとるように、なんども行き来する。



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100500kms">
「んちゅ……んっ、んちゅぅ……んじゅっ！
　はむ……んちゅ、んちゅっ、ちゅっ、ちゅ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100510kms">
「ちゅばっ、んちゅっ、じゅっ――
　ぁむ……ん……んちゅ……んんん…………ッ！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100520mhn">
「ん……んん……ん……ちゅ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("絵100big", 1000, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100530mhn">
「ふふ……良いぞ、星。その調子じゃ」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100540mhn">
「わらわもだんだん、興奮してきたぞ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100550kms">
「ほ、ほんとうですか？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100560mhn">
「うむ、<RUBY text="まこと">真</RUBY>じゃ」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100570mhn">
「その証拠に……ほれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2343);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ミヅハ歌門キス.txt" 差分Ｂ


	CreateTextureEX("絵200", 2010, @0, @0, "cg/ev/ev2330ミヅハ歌門キスb.jpg");
	Fade("絵200", 300, 1000, null, true);
	Delete("絵100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100580kms">
「え……？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100590mhn">
「こら！　そちらを見てはならん」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100600mhn">
「わらわと唇を合わせながら――ちゅっ」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100610mhn">
「あてがった手にどのような感触がするか、口にしてみよ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100620kms">
「手の、感触を……ですか？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100630mhn">
「できぬか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100640kms">
「え、いや、それは……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100650mhn">
「わらわの愛が、欲しくないのか？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100660kms">
「いえ、そんな！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100670kms">
「でもこれは、男の人の――」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100680mhn">
「神通力をもってすれば、このようなこと容易いわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100690mhn">
「愛しき星のためならば、一物のひとつ生やすことに、なんのためらいがあろうか。のう？」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100700kms">
「ミヅハノメ様……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100710mhn">
「さあ、星。
　おぬしの手の中で、わらわのものはどうなっておる？」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100720kms">
「ええと……私の……手の中で……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100730mhn">
「接吻は？」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100740kms">
「あ……」


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100750mhn">
「わらわのここを舐めるように、舌を舐めてみよ」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100760kms">
「は……はい」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100770kms">
「んちゅ……ん……ん……
　ミヅハノメ様の、硬い、ちゅ、一物が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100780kms">
「むちゅっ、んちゅ……ちゅううっ……
　私の手の中で……鼓動を……ぁふぅ……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100790mhn">
「むちゅ……ん……わかるか星？
　どんどん、猛ってきているのが」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100800kms">
「はい、どんどん……硬く、熱く……なって……
　ちゅっ、ん……んん……んんん……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100810mhn">
「これが、おぬしのはじめてを奪うのじゃぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2344);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100820kms">
「…………はい」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100830mhn">
「怖いか？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100840kms">
「い、いいえ！　ただ――」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100850mhn">
「ただ？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100860kms">
「あまりのいとおしさに、気を失なわないか心配で……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100870mhn">
「……<RUBY text="う">愛</RUBY>いやつめ」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100880mhn">
「しかしのう」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100890mhn">
「<RUBY text="う">愛</RUBY>いやつだからこそ、見たい景色があるのじゃ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100900kms">
「見たい……景色？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆ＥＶ："ev/ev2330ミヅハ歌門潮吹き.txt" 差分Ａ

	CreateSE("SE02","se動作_衣擦れ");
	MusicStart("SE02",0,700,0,1000,null,false);
	
	CreateTextureEX("絵300big", 2020, @0, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きa_l.jpg");

	Fade("絵300big", 300, 1000, null, true);
	Delete("絵200");
	CreateTextureSP("絵300big02", 2010, @-700, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きa_l.jpg");
	CreateTextureSP("絵300", 2000, @0, @0, "cg/ev/ev2330ミヅハ歌門潮吹きa.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100910kms">
「――――！！」

{	Move("絵300big", 10000, @-700, @0, null, false);
	FadeDelete("絵300big",500,null,true);}

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100920mhn">
「ふふ、顔を真っ赤にしおって」


{	FadeDelete("絵300big02",1000,null,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100930mhn">
「どうじゃ？　このような格好、誰かに見られたことは？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100940kms">
「――――！！」

　歌門は、顔を真っ赤にして首を横に振る。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100950mhn">
「聞くまでもなかったか」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100960mhn">
「しかし……おかしなことよのう」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100970mhn">
「おぬしのここは、これから何が起こるか、知っておるようじゃ」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400100980mhn">
「シミができて……向こう側まで透けて見えるぞ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400100990kms">
「――――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101000kms">
「そ――そんな――、恥ずかし――ぁあっ！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101010mhn">
「ほれほれ、何を恥ずかしがることがある？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101020kms">
「あッ、いや……そこ、触ると……ああっ！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101030mhn">
「なんじゃ。下着越しに触っただけでこれか」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101040mhn">
「<RUBY text="うぶ">初心</RUBY>かと思えば、意外と淫乱じゃのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2345);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101050kms">
「そんな……いやっ、感じやすい……だけで……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101060mhn">
「しとどに濡らしておいて、よくもまあ……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101070kms">
「――――ッ！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101080mhn">
「では、中も拝見するとするかのう」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101090kms">
「中も……ですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101100mhn">
「おやおや。
　ここまで来て、中を見せてはくれぬと言うのか？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101110kms">
「いや、でも――」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101120mhn">
「下着をずらして、その脇から入れろと？」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101130mhn">
「いやしかし、それもいやらしい――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101140kms">
「そ、そのようなことはッ！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101150mhn">
「では、脱がしてよいのだな？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101160kms">
「そんな……あッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ミヅハ歌門潮吹き.txt" 差分Ｂ
//◆演出指示：パンツ脱がし
	CreateTextureEX("絵400big", 2030, @0, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きb_l.jpg");
	Fade("絵400big", 1000, 1000, null, true);
	Delete("絵300");

	CreateTextureEX("絵400big02", 2100, @-700, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きb_l.jpg");

	CreateTextureEX("絵400", 2000, @0, @0, "cg/ev/ev2330ミヅハ歌門潮吹きb.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101170kms">
「――――！　――――！」

{	Fade("絵400big02", 500, 1000, null, true);
	Delete("絵400big");}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101180mhn">
「のう、星よ」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101190mhn">
「やはり、脱がして正解だったかもしれんのう」


{	Fade("絵400", 0, 1000, null, false);
	FadeDelete("絵400big02",500,null,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101200kms">
「な、何を――！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101210mhn">
「しかし、これほど濡れているのじゃ。
　おぬし、風邪を引いてしまう――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2346);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101220kms">
「ぅぅぅ――――ッ！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101230mhn">
「はは、冗談じゃ冗談」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101240mhn">
「しかし、これまた可愛らしい色をしておるのう……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101250kms">
「――――！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101260mhn">
「ふ――っ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101270kms">
「ぁぅっ！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101280mhn">
「ふふ……息を吹きかけただけなのに。
　感じやすいというのは、真のようじゃ」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101290mhn">
「では、早速」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101300kms">
「ぇ……？　ぁぁっ！　あ――ぁはっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＥＶ："ev/ev2330ミヅハ歌門潮吹き.txt" 差分Ｃ

	CreateTextureEX("絵500big", 2040, @-700, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きc_l.jpg");
	Fade("絵500big", 1000, 1000, null, true);
	Delete("絵400*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101310mhn">
「ん？　どうした、星？
　何をされているのか、言ってみよ」


{	CreateTextureEX("絵500big02", 2050, @0, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きc_l.jpg");
	Fade("絵500big02", 1000, 1000, null, true);
	Delete("絵500big");}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101320kms">
「ミヅハノメ様の……指が……ぁあっ！」

{	Move("絵500big02", 5000, @-400, @-400, null, false);}
　星のクリトリスを、ミヅハの指先が執拗になで回す。




//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101330mhn">
「指が、どうした？　気持ちいいのか？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101340kms">
「ぁ……ん……んん……よ、よく、わからないです。
　ただ――ああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101350kms">
「こんな、感じ――はじめて――！」



{	CreateTextureEX("絵500", 2060, @0, @0, "cg/ev/ev2330ミヅハ歌門潮吹きc.jpg");
	Fade("絵500", 1000, 1000, null, true);
	Delete("絵500big02");}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101360mhn">
「おぬしはわからぬつもりでも、身体はわかっておるぞ」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101370mhn">
「ほれ。おぬしの突起が、どんどんと大きくなっておる」

//★inc櫻井　表情変化としてbを使用。
{	CreateTextureEX("絵400big", 2070, @0, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きb_l.jpg");
	Fade("絵400big", 500, 1000, null, true);
	Delete("絵500*");}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101380kms">
「ぁあっ！　ん――んん――ん――！」


{	CreateTextureEX("絵500big", 2070, @-700, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きc_l.jpg");
	Fade("絵500big", 500, 1000, null, true);
	Delete("絵400*");}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101390mhn">
「しかも、こっちの方は大洪水じゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	CreateTextureEX("絵200big", 2080, @-700, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きb_l.jpg");
	Fade("絵200big", 500, 1000, null, true);
	Delete("絵500*");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101400mhn">
「水神のわらわの力あればこそかのう？」


{	CreateTextureEX("絵500", 2090, @0, @0, "cg/ev/ev2330ミヅハ歌門潮吹きc.jpg");
	Fade("絵500", 1000, 1000, null, true);
	Delete("絵200big02");}

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101410kms">
「ん……ぁあっ、ん――――！
　んんっ、んっ、ん、んんん――？」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101420mhn">
「どうした？　気をやりそうか？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101430kms">
「わ、わかりませんッ、ただ――んぁっ！
　身体が――勝手に、んっ、んんっ、んんん――――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2347);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101440mhn">
「まだじゃ」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101450kms">
「ぇ……？」


//★inc櫻井　なんだか陵辱ゲームっぽい視点になっているような……NGでしたら調整します。

{	CreateTextureEX("絵500big02", 2100, @-500, @-500, "cg/ev/l/ev2330ミヅハ歌門潮吹きc_l.jpg");
	Fade("絵500big02", 1000, 1000, null, true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101460mhn">
「おぬしには、こちらで達してもらわねばのう」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101470kms">
「ぇ？　ぁっ、んん――――ッ！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101480mhn">
「ほら、人差し指がゆっくりと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101490kms">
「い――いや、あ――いやあっ！！」


{	FadeDelete("絵500big02",500,null,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101500mhn">
「ん？　星、これは嫌か？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101510kms">
「嫌……です……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101520kms">
「私……はじめては……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101530kms">
「ミヅハノメ様のあそこに、破って欲しい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101540mhn">
「わらわを誰と心得る？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101550mhn">
「水神ミヅハノメ様じゃぞ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ミヅハ歌門潮吹き.txt" 差分Ｄ

//★inc櫻井　ミヅハの指が入る、という状況を出すために↑の指示とは違ったCGを表示しています。

	CreateTextureEX("絵500big02", 2100, @-500, @-500, "cg/ev/l/ev2330ミヅハ歌門潮吹きc_l.jpg");
	Fade("絵500big02", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101560mhn">
「破らぬように、優しく……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101570kms">
「ぁぅ……ぁ……ぁ……ん……！！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101580mhn">
「優しく、おぬしをいかせてみせようぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵600", 2200, @-500, @-500, "cg/ev/l/ev2330ミヅハ歌門潮吹きd_l.jpg");
	Fade("絵600", 300, 1000, null, true);
	Delete("絵500big");
	#ev2330ミヅハ歌門潮吹きd = true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360a]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101590kms">
「んぁ……ん……ん、んん…………！！」

{	CreateTextureEX("絵200big", 2300, @-700, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きb_l.jpg");
	Fade("絵200big", 500, 1000, null, true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101600mhn">
「ほう。１本でも随分ときついのう。
　どれ……ゆっくりと、出し入れするぞ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101610kms">
「んぁっ、あぁ、あ――あ！　あ！　ああっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("絵200*",500,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370a]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101620mhn">
「良く濡れておるし……意外と伸縮自在じゃの」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101630mhn">
「では、早速２本目を――」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101640kms">
「えっ、ぁ……あんっ！
　ちょっと――まだ――ああああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＥＶ："ev/ev2330ミヅハ歌門潮吹き.txt" 差分Ｇ
//※下倉注：2010/11/29追加
	CreateTextureEX("絵600追加OGM", 2320, @-500, @-500, "cg/ev/l/ev2330ミヅハ歌門潮吹きg_l.jpg");
	Fade("絵600追加OGM", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370b]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101650mhn">
「んんん――！　流石にキツイか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2348);


//	TextBoxDelete(150);

	CreateTextureEX("絵600big", 2350, @0, @0, "cg/ev/l/ev2330ミヅハ歌門潮吹きd_l.jpg");
	Fade("絵600big", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101660kms">
「はぅっ――ん――んん――！！
　んんっ！　ん――んんん――」

{	FadeDelete("絵600big",500,null,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101670mhn">
「ほれ、聞こえるか？
　おぬしの中が、こんなにいやらしい音を立てておるぞ」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101680kms">
「そんな――んっ、んぁっ、あっ！　あああッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateTextureEX("絵600", 2360, @0, @0, "cg/ev/ev2330ミヅハ歌門潮吹きg.jpg");
	Fade("絵600", 500, 1000, null, true);
	Delete("絵600追加OGM");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101690mhn">
「大きな声を立ておって。気持ちいいのじゃな？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101700kms">
「そんなぁっ！
　わ……わ、わかりませ――んんんッ！！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101710mhn">
「ならばすぐに、わかるようにしてやる」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101720kms">
「え？　ミヅハノメ様……？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101730mhn">
「ゆくぞ。気を失わぬよう、気をつけろ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101740kms">
「え？　な、ちょっと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ミヅハ歌門潮吹き.txt" 差分Ｅ

	CreateTextureEX("絵700", 2400, @0, @0, "cg/ev/ev2330ミヅハ歌門潮吹きe.jpg");
	Fade("絵700", 300, 1000, null, true);
	Delete("絵600");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101750mhn">
「ほれ。ほれほれほれ――！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101760kms">
「や！　あ！　ぁあっ！　あっ！　あっ！　あっ！！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101770mhn">
「なんじゃこの嫌らしい穴は。
　少し動かしただけで、ぐねぐねと吸い付いてきよるぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101780kms">
「ああっ！　だめっ！　いや！　あ！　あああッ！！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101790mhn">
「ここか？　ここじゃな？
　おぬし、ここがいいのであろ？」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101800kms">
「いやっ！　ちが――ああああああっ！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101810mhn">
「わらわに嘘をつくか。嘘をつくならば――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2349);

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101820mhn">
「お仕置きじゃ」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101830kms">
「――――――――――ッ！！！！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101840mhn">
「せり上がってきているのを感じるであろ？
　ああ、このままでは本殿を汚してしまうのう」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101850kms">
「だめ――ッ！　それは――それはなりません――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101860mhn">
「しかし、もうおぬしには止められぬぞ。
　諦めてわらわに身を任せるがよい」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101870kms">
「んぁ――ッ、ん、んん――――！！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101880mhn">
「どうした？　我慢は身体に毒じゃぞ。
　ああ、それとも……そうじゃのう」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101890mhn">
「我慢すればするほど、気持ちいいと言うからのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101900kms">
「そんな――ッ！　殺生な――んぁッ！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101910mhn">
「ほれ、よだれなど垂らして……もう我慢も辛かろ？
　私の指で、気をやるがよい」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101920kms">
「よ――よろしいのッ――ですか――ッ？」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101930mhn">
「構わん。ほれ、わらわに合わせるのじゃぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101940kms">
「は――は、はい――ッ！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101950mhn">
「気持ちよかろ？　ほれ、ほれほれほれほれ！」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101960kms">
「――――ッ！！　――――ッ！！　――――ッ！！」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101970kms">
「気持ち、いい――気持ちいい――です！
　ミヅハノメ様――いって、いい――れす、か？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400101980kms">
「ああっ、あっ！　ぁあああっ！　ああ、ああああ」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400101990mhn">
「ゆけ」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102000kms">
「ミヅハノメ――さま――ああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	ClockTime(2350);

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ミヅハ歌門潮吹き.txt" 差分Ｆ

//◆演出指示：潮吹き
//▼べー：ＳＥ欠番につきコメントアウト
//	CreateSE("SE01","se人体_潮吹き");
//	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("白フラ", 15000, "WHITE");
	Fade("白フラ", 300, 1000, null, true);
	CreateTextureEX("絵800big", 2500, @-600, @-600, "cg/ev/l/ev2330ミヅハ歌門潮吹きf_l.jpg");
	Fade("絵800", 0, 1000, null, true);
	Delete("絵700");
	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	CreateTextureEX("絵800", 2600, @0, @0, "cg/ev/ev2330ミヅハ歌門潮吹きf.jpg");
	Fade("絵800", 0, 1000, null, true);
	Fade("白フラ", 1500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102010kms">
「あぁあぁあぁあぁっ！　すご……ああっ！
　いやああっ！　止まらない……とまらないっ！」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102020kms">
「ああっ！　ぁあっ！　あっ！　あああああああ！
　気持ち……良くて……ああっ、あ……あ……ああっ」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102030kms">
「はぁっ……はぁっ……はぁ……はぁ……ん……くぅ」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102040mhn">
「ふふ……こんなに濡らしおって」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102050mhn">
「流石に水神といえども、いやはやこの量には――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureSP("揺れ背景", 2400, Center, 0, "cg/bg/bg0607100半田明神_拝殿_通常.jpg");
	FadeDelete("絵800*",1000,null,true);
	Delete("絵500*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102060kms">
「ミヅハノメ様――」


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102070mhn">
「ん……？　きゃっ！」

{	CreateSE("SE02","se人体_倒れる04");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(80);
	Shake("揺れ背景", 300, 0, 7, 0, 0, 1000, Dxl3, false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102080kms">
「もう……我慢なりません」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102090mhn">
「我慢ならぬと――いや、しばし待て」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102100kms">
「待ちません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102110kms">
「ミヅハノメ様には、意地悪ばかりされています」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102120kms">
「だから、今夜ばかりは、私が――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ミヅハ歌門対面座位.txt" 差分Ａ

//◆演出指示：挿入

//あきゅん「修正指示：切り替え少し雑なので丁寧に」
//inc久保田　修正しました。

	CreateTextureEX("絵900big", 3070, @-1020, @0, "cg/ev/l/ev2330ミヅハ歌門対面座位a_l.jpg");
	CreateTextureEX("絵900big２", 3070, 0, 0, "cg/ev/l/ev2330ミヅハ歌門対面座位a_l.jpg");
	Move("絵900big", 2000, @0, @-20, null, false);
	Shake("@絵900big", 1000, 3, 2, 0, 0, 1000, Axl1, false);
	Fade("絵900big", 1000, 1000, null, false);
	Delete("揺れ背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102130kms">
「ぁぅっ！　ぁ……あ……ああ……あああッ！！」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102140kms">
「あ……ん……ん……ん……ん……
　んん……ん……ん……！！」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102150kms">
「んあぁっ！　んぁっ、んん……
　ん……んっ、ん……ん、んんん…………！！」


{	Move("絵900big２", 15000, @-100, @0, null, false);
	Fade("絵900big２", 500, 1000, null, true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102160mhn">
「星！」

{	CreateTextureSP("絵900", 3050, @0, @0, "cg/ev/ev2330ミヅハ歌門対面座位a.jpg");
	Delete("絵800");
	FadeDelete("絵900big*",500,null,true);}

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102170kms">
「んぁっ、あ……はい」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102180mhn">
「まったく、馬鹿者が！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102190mhn">
「はじめてなのであろ？　そんなに急かずともよい」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102200mhn">
「わらわが、おぬしを優しく導いてやるでな」




//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102210kms">
「ぁ……はい……。お願い……いたします」




//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102220mhn">
「とはいうものの――」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102230mhn">
「わらわの優しさは、厳しさに似ておっての」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2351);


//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102240kms">
「きび……しさ？」




//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102250mhn">
「おぬしに合わせても、苦しみが長引くだけじゃ」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102260mhn">
「突くぞ」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102270kms">
「え……ぁあぅんっっ！！」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102280kms">
「ぁぅっ！　ぁくっ！　ぁっ！　ぁっ、ぁ…………！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵900big", 3070, -1020, @0, "cg/ev/l/ev2330ミヅハ歌門対面座位a_l.jpg");
	Fade("絵900big", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102290kms">
「つぅっ！　いた……ぅくぅっ！　ぅ……！！」

{	CreateTextureEX("絵900big02", 3070, @0, @0, "cg/ev/l/ev2330ミヅハ歌門対面座位a_l.jpg");
	Fade("絵900big02", 500, 1000, null, true);
	Delete("絵900big");}

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102300mhn">
「星、しばしの我慢じゃ！」


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102310mhn">
「わらわも、本当は辛いのじゃぞ」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102320mhn">
「じゃが……おぬしのことを思えばこそ。わかるな？」



{	FadeDelete("絵900big02",1000,null,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102330kms">
「は――はぃっ！　ミヅハノメ様のっ！　気持ちが！
　痛いほどッ！　伝わって――んくぅううっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102340mhn">
「ほれ、目を閉じるな。わらわの顔を見よ」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102350kms">
「顔を……？」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102360mhn">
「どうじゃ？　わらわは、どんな顔をしている？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102370kms">
「どんなって、その、ミヅハ、ノメ、様は……」



//◆ＥＶ："ev/ev2330ミヅハ歌門対面座位.txt" 差分Ｂ

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//あきゅん「修正指示：ギャグっぽいので窓修正で」
//inc久保田　修正しました
	TextBoxDelete(150);

//窓01



	CreateTextureEX("絵1000big２", 3070, -200, 0, "cg/ev/l/ev2330ミヅハ歌門対面座位b_l.jpg");
	Move("絵1000big２", 15000, @200, @0, null, false);
	Fade("絵1000big２", 1000, 1000, null, true);
	CreateTextureSP("絵1000", 3060, 0, 0, "cg/ev/ev2330ミヅハ歌門対面座位b.jpg");
	Delete("絵900");
/*
	CreateWindow("絵窓", 15000, 50, 0, 300, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 15500, -350, -250, "cg/ev/l/ev2330ミヅハ歌門対面座位b_l.jpg");

	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	
	CreateTextureEX("絵1000big", 3100, @-800, @-500, "cg/ev/l/ev2330ミヅハ歌門対面座位b_l.jpg");
	Fade("絵1000big", 1000, 1000, null, false);
	Delete("絵900");

	Move("絵窓/絵演背景", 5000, @0, @200, null, false);
*/



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102380kms">
「私の、顔を、まっすぐ……んはぁっ……
　まっすぐ、見つめて……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102390kms">
「すごく……その……んくぅっ、ん……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102400mhn">
「なんじゃ？　どんな表情じゃと、訊いておるのだぞ？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102410kms">
「上気していてッ、満足げで……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeDelete("絵1000big２",1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102420kms">
「いやらしいっ、目つきを、しています……ぁんッ！」




//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102430mhn">
「よかろう。ならば――んんっ！！
　わらわから見た、おぬしの顔も、教えてやる」



{	CreateTextureEX("絵1100big", 3070, @-1020, @0, "cg/ev/l/ev2330ミヅハ歌門対面座位b_l.jpg");
	Move("絵1100big", 15000, @0, @-100, null, false);
	Fade("絵1100big", 1000, 1000, null, false);}

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102440mhn">
「目をとろけさせて……唇を半開きにして……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102450kms">
「ぇ……そ、そんな……ぁぁっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102460mhn">
「意識は定まらず……わらわのなすがまま……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102470kms">
「いや……恥ずかしい……です……」

{	CreateTextureSP("絵1000", 3000, 0, 0, "cg/ev/ev2330ミヅハ歌門対面座位b.jpg");
	FadeDelete("絵1000big",1000,null,false);}

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102480mhn">
「おやおや、よく言うものじゃ」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102490mhn">
「さっきから、わらわは動いておらんぞ」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102500kms">
「ぁあっ、ん……ぇ……うそ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2352);


//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102510mhn">
「形のよい胸を激しく揺らし……
　自らこのように腰を振っておいて……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102520mhn">
「今更、恥ずかしいも何もあったものではなかろうて」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102530kms">
「ぁぅっ、う……そ、そんな……
　そんなこと……あっ、ありま……せん」


{	FadeDelete("絵1100big",1000,null,false);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102540mhn">
「良かろう。わらわは黙っておる。
　おぬしの好きなように、動くが良い」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102550kms">
「私の……好きなように……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102560mhn">
「ほれ、遠慮するでない。
　わらわを気持ちよくしてたもれ」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102570kms">
「は、はい。
　では私が、誠心誠意、お仕えさせていただきます」





//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102580kms">
「んちゅっ、ん、んん――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102590mhn">
「んむ――ちゅ――んちゅっ、ちゅ――」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102600kms">
「んちゅ……はぁ……はぁ……はぁ……
　口づけの度に、どんどん硬く――」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102610mhn">
「ぅ……ぅぅ、仕方なかろ。
　おぬしのそこが火照って、わらわも――」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102620kms">
「こうですか？　こう？　こうですね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＥＶ："ev/ev2330ミヅハ歌門対面座位.txt" 差分Ｃ

//あきゅん「修正指示：引きで差分変えすると分かりづらいので変化箇所のアップ等で切り替えの意味合いを強調」
//inc久保田修正しました。

	CreateTextureEX("絵1050big１", 3500, @0, @0, "cg/ev/l/ev2330ミヅハ歌門対面座位b_l.jpg");
	Fade("絵1050big１", 300, 1000, null, true);
	CreateTextureEX("絵1100big１", 3500, @0, @0, "cg/ev/l/ev2330ミヅハ歌門対面座位c_l.jpg");

	Fade("絵1100big１", 500, 1000, null, true);
	Delete("絵1000");
	CreateTextureEX("絵1150", 3500, @0, @0, "cg/ev/ev2330ミヅハ歌門対面座位c.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102630mhn">
「はぁっ！　ん……」


{
	CreateTextureEX("絵1050big２", 3500, @-1020, @0, "cg/ev/l/ev2330ミヅハ歌門対面座位b_l.jpg");
	CreateTextureEX("絵1100big２", 3500, @-1020, @0, "cg/ev/l/ev2330ミヅハ歌門対面座位c_l.jpg");
	Fade("絵1050big２", 300, 1000, null, true);
	Fade("絵1100big２", 300, 1000, null, true);
	FadeDelete("絵1100big１",500,null,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102640kms">
「ぁ……んんっ、この角度が……よろしいのですね？」


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102650mhn">
「ぅ……ぅむ、これはたまら――んっ！」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102660kms">
「もっと――きつく――！
　ミヅハノメ様が、心地よくなるように――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵1150", 0, 1000, null, true);
	FadeDelete("絵1100*",300,null,false);
	Delete("絵1050*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102670kms">
「ぁっ！　んぁっ！　ぁっ！　ぁっ　あ――
　ああっ！　あっ！　あああああ、あ――――！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102680mhn">
「な……こら、星！
　そんな……動くと、コラ！　離――んむっ！」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102690kms">
「んちゅ――んっ、んぁっ！　んっ！　ん、んん！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102700mhn">
「んちゅっ！　ん――ば、ばかっ、やめ……んんっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2353);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102710kms">
「んちゅっ、んっ！　んあっ！　またッ！
　私、また――ミヅハノメ様ッ！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102720mhn">
「ばかっ、やめ！　あ……あっ！
　駄目、漏れて――いやっ、あ――ああ――あ――」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102730mhn">
「あああああああああああああ――――ッ！！！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ミヅハ歌門対面座位.txt" 差分Ｄ

//◆演出指示：ミヅハ早撃ちマック

	Fade("白フラ", 300, 1000, null, true);

	CreateTextureEX("絵1200", 3500, @0, @0, "cg/ev/ev2330ミヅハ歌門対面座位d.jpg");
	Fade("絵1200", 300, 1000, null, true);
	Delete("絵1100");
	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	Fade("白フラ", 1500, 0, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102740kms">
「んんっ、んっ、んっ、ん、ん、んん……？」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102750mhn">
「あぁ……ぁ……ぁぁ……ぁ……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102760kms">
「あ……れ？　ミヅハノメ様？」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102770mhn">
「う……うううう……」

{	CreateTextureEX("絵1200big１", 3500, @0, @0, "cg/ev/l/ev2330ミヅハ歌門対面座位d_l.jpg");
	Fade("絵1200big１", 500, 1000, null, true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102780mhn">
「ば、馬鹿者！　この、馬鹿者があっ！！
　わらわとて、久々なのだぞっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);
	Delete("絵1200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102790mhn">
「身勝手にするから、わらわも我慢ならず――」


{	CreateTextureEX("絵1200big２", 3500, @-1020, @0, "cg/ev/l/ev2330ミヅハ歌門対面座位d_l.jpg");
	Fade("絵1200big２", 500, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102800kms">
「す……すみません……
　私も、つい夢中に……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102810mhn">
「くそう……まさか、手玉に取られてしまうとは……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102820mhn">
「ええいっ！！
　このままでは、引き下がれぬッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ミヅハ歌門バック.txt" 差分Ａ



	CreateTextureEX("絵1300", 4600, @-600, @-300, "cg/ev/l/ev2330ミヅハ歌門バックa_l.jpg");
	Move("絵1300", 5000, @0, @300, null, false);

	Fade("絵1300", 1000, 1000, null, true);

	CreateTextureSP("絵1350", 4500, @0, @0, "cg/ev/ev2330ミヅハ歌門バックa.jpg");





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102830kms">
「ああぁっ！！」


{	FadeDelete("絵1300",2000,null,false);
	Delete("絵1200*");}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102840mhn">
「今度はわらわが、おぬしを達させてみせようぞ！！」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102850kms">
「ぁあっ、んっ、んぁっ、んんんんッ！
　すごっ、いっ、まだっ、出したばかりなのに、硬く――」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102860mhn">
「おぬしこそ、ほれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102870mhn">
「乳首をこのように硬くして――」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102880kms">
「ああっ！　ミヅハノメ様――
　指先で――そのように、こねくり回されては――」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102890kms">
「身体を……痺れるような、快感が……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102900mhn">
「いわずとも、わかるでのう。ほれっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]


//【歌門星】

<voice name="歌門星" class="歌門星" src="voice/bab23/400102910kms">
「ああっ！　いやっ！　あっ！　あっ！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102920mhn">
「どうじゃ？
　後ろから突かれると、また違うであろ？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102930kms">
「はぁあっ、あっ！　なに、これ――
　おおきいのにっ、押しこまれ――ああっっ！！」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102940kms">
「すごっ、すごい――さっきと、動きが――
　ああっ、全然、ちがう――ううっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102950mhn">
「はは、このように尻をひくつかせて……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102960kms">
「ああっ！　あっ！　あっ！　駄目ッ！
　ミヅハノメ様――怖いっ！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102970mhn">
「怖い？　姿が見えぬと、怖いというか？」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400102980mhn">
「おぬしはわらわを、感じておらんというか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2354);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400102990kms">
「そ、そういうことでは……ありませんけど……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103000mhn">
「大丈夫じゃ。見えなくとも、感じるじゃろう？」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103010mhn">
「この声を――」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103020kms">
「はいっ！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103030mhn">
「この感触を――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103040mhn">
「はぁっ、ん――わらわを――感じるか？」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103050kms">
「感じ――ますッ！　ミヅハノメ様をッ！
　奥のッ！　奥で――！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103060mhn">
「ならば、安心して身を任せるのじゃ」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103070mhn">
「さすれば、思い切り、気持ちよくしてやるからのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103080kms">
「ミヅハノメ様――」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103090kms">
「お願いします――
　私を、どうか、あなた様の思うがままに――」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103100mhn">
「ういやつよ――のうっ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＥＶ："ev/ev2330ミヅハ歌門バック.txt" 差分Ｂ

	CreateTextureEX("絵1360big", 5000, -1023, 0, "cg/ev/l/ev2330ミヅハ歌門バックa_l.jpg");
	Fade("絵1360big", 300, 1000, null, true);

	CreateTextureEX("絵1400big", 5000, -1023, 0, "cg/ev/l/ev2330ミヅハ歌門バックb_l.jpg");
	Fade("絵1400big", 300, 1000, null, true);
	Delete("絵1350*");
//あきゅん「修正指示：差分変えをモヤモヤさせない、変化箇所の強調」
//inc久保田修整しました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103110kms">
「んぁっ！　あああああああああっ！！」

{	CreateTextureEX("絵1360big２", 5000, -329, 0, "cg/ev/l/ev2330ミヅハ歌門バックa_l.jpg");
	Fade("絵1360big２", 300, 1000, null, true);
	CreateTextureEX("絵1400big２", 5000, -329, @0, "cg/ev/l/ev2330ミヅハ歌門バックb_l.jpg");
	Fade("絵1400big２", 500, 1000, null, true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103120mhn">
「んはぁっ、ん……どうじゃ？　深いじゃろ？」


{	CreateTextureEX("絵1400", 5000, @0, @0, "cg/ev/ev2330ミヅハ歌門バックb.jpg");
	Fade("絵1400", 500, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103130kms">
「ああっ！　ふかッ、いッ！
　私のッ！　奥のッ！　一番んんッ！　奥まで――！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103140mhn">
「そうじゃ！
　星よ、おぬしの身体、わらわがもらい受けたっ！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103150mhn">
「全てを、わらわの色に、染めてやるっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103160mhn">
「わらわ以外のことを考えられぬよう――
　おぬしの頭を全てっ！　わらわで埋め尽くしてやるっ」

{	CreateTextureEX("絵1400big", 5000, -1023, 0, "cg/ev/l/ev2330ミヅハ歌門バックb_l.jpg");
	Fade("絵1400big", 300, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103170kms">
「ああ……なんという……幸せな……お言葉……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103180kms">
「しかし……もう、私の頭は……」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103190kms">
「疾うの昔にミヅハノメ様に埋め尽くされておりまする」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	CreateTextureEX("絵1400big２", 5000, -329, @0, "cg/ev/l/ev2330ミヅハ歌門バックb_l.jpg");
	Fade("絵1400big２", 500, 1000, null, true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103200mhn">
「――――ッ！！」


{	CreateTextureEX("絵1400", 5000, @0, @0, "cg/ev/ev2330ミヅハ歌門バックb.jpg");
	Fade("絵1400", 500, 1000, null, true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103210kms">
「ああああああああああッッ！！」




//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103220kms">
「あああっ！　ああっ！　すごいっ！　
　すごくて――すごすぎて――ああっ！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103230mhn">
「わらわも――よい、よいぞっ！
　おぬしが、気持ちよくて――ううっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103240mhn">
「すぐにでも――気をやってしましそうじゃ」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103250kms">
「くださいっ！
　一滴残らず――私に、注いでくださいっ！！」




//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103260mhn">
「忘れるでないぞ……！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103270mhn">
「ずっと、ずっと、わらわを――んんんんっ！！
　忘れてくれるなよ――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(2355);


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103280kms">
「は、はいっ！　ぁあっ！　ぁ――んくぅっ！　私――
　ミヅハノメ様を、ミヅハノメ様を――ああああっ！！」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103290kms">
「絶対――ぜったいっ、忘れません！」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103300kms">
「ああっ、愛しております！
　心の底から、愛しておりますッ！！」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103310mhn">
「わらわもじゃ、星――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103320mhn">
「はぁ――はぁ――んん――！
　では――そろそろ、ゆくぞ――」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103330mhn">
「おぬしの中に――わらわの――！
　わらわの証拠を、刻み込むぞッ！！」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103340kms">
「ぁっ！　はいっ！　ください！
　私にッ！　ミヅハノメ様をッ！　くださいッ！！」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103350mhn">
「んくぅっ、んっ、ん――ん――ん――
　んあっ、あっ！　あっあっ！　あっ！！」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103360kms">
「ぅくぅっ！　ぅっ、ぅあっあっ――――
　ぁぁっ！　あっ！　あっ！　あっ！　ああああ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
/*
//◆音声指示：同時
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103370mhn">
「んくぅぅぅぅぅぅ――――――ッ！！！！」

//◆音声指示：同時
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103380kms">
「ぁぁぁぁぁぁああああああああッ！！！！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//◆音声指示：同時
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103370mhn">
「んくぅぅぅぅぅぅ――――――ッ！！！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【歌門星】
//<voice name="歌門星" class="歌門星" src="voice/bab23/400103380kms">
//「ぁぁぁぁぁぁああああああああッ！！！！」

</PRE>
	SetText();
	AddText(1,"「んくぅぅぅぅぅぅ――――――ッ！！！！」","ミヅハ","bab23/400103370mhn",false,false,1000);
	AddText(2,"「ぁぁぁぁぁぁああああああああッ！！！！」","歌門星","bab23/400103380kms",true,true,1600);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev2330ミヅハ歌門バック.txt" 差分Ｃ
//◆演出指示：絶頂

//▼べー：ＳＥ欠番につきコメントアウト
//	CreateSE("SE02","se人体_絶頂射精");
//	MusicStart("SE02",0,700,0,1000,null,false);

	Fade("白フラ", 300, 1000, null, true);
	CreateTextureEX("絵2500", 5500, @0, @0, "cg/ev/ev2330ミヅハ歌門バックc.jpg");
	Fade("絵2500", 300, 1000, null, true);
	Delete("絵1*");
	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	Fade("白フラ", 1500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103390mhn">
「んくぅっ、ぅ――ん――ん――」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103400kms">
「ぁ……ぁぁ……はぁっ……はぁ……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103410kms">
「ん……ん、んん…………ん…………」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103420mhn">
「はぁ……はぁ……ん……星よ……
　わらわを……しかと、身体に刻み込んだな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103430kms">
「ん……は……はい……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103440kms">
「私の……中に……ミヅハノメ様が……はっきりと……」

//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103450mhn">
「泣くでない。泣くでない、星よ」



//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103460kms">
「は……はい……私……泣いてなど……」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103470mhn">
「すまぬ、星。わがままばかりで、本当に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	FadeDelete("絵*", 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103480kms">
「構いません」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103490kms">
「私は、神に仕えるもの」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103500kms">
「これをいただいただけで、私は――」


//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103510kms">
「天にも昇る、気持ちでございます」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}
//============================================

//※下倉注：ここ、時間経過入れてください 2010/11/12
//あきゅん「修正指示：間が弱い、エロ余韻を消す」
//inc久保田　修整しました。

	SetVolume("@xbgm*", 1400, 0, null);
	WaitKey(1500);

	CreateColorEX("黒", 20000, "BLACK");
	Fade("黒", 2500, 1000, null, true);

	ClockPass(2358);

	Wait(1500);
	FadeDelete("黒",1500,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
{	St("ML",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103520mhn">
「それでは……そろそろ時間かの」


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103530kms">
「……はい」


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103540mhn">
「泣くな、星。
　この姿ではないが、わらわはいつもおぬしの側にいる」


{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103550kms">
「……はい」


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103560mhn">
「だから、泣くなと言っておろう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103570kms">
「すみません……」

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103580kms">
「私の……ミヅハノメ様への想いが、止まりません……」


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103590mhn">
「そうか……」


{	St("ML",700, @0,@0,"buミヅハノメ_通常_hard");
	GodFadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103600mhn">
「では――ゆくぞ」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103610mhn">
「今、わらわは神の力を以てアザナエルを放ち――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	ClockPass(2359);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]


//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103620mhn">
「廃墟と化したこの秋葉原を――」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103630mhn">
「大禍で命を失ったものたちを――」



//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103640mhn">
「再び、元の姿へと還す」




{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu歌門_通常_think");
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/bab23/400103650kms">
「ミヅハノメ様……」


{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buミヅハノメ_通常_normal");
	FadeSt("ML",200,true);}
//【ミヅハノメ】
<voice name="ミヅハノメ" class="ミヅハ" src="voice/bab23/400103660mhn">
「――さらばじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SetVolume("@xbgm29", 1000, 0, null);

	CreateColorEX("黒幕", 20000, "BLACK");
	Fade("黒幕", 2000, 1000, null, true);


//◆演出指示：かちっ！　トリガーを引く
//あきゅん「修正指示：暗転で止まるのは分かりづらいです、ハンマーコック下げるまでで止める」

//★ inc櫻井　仮SE
	CreateSE("SE03","se銃_構える");
	MusicStart("SE03",0,700,0,1000,null,false);

	Wait(500);

//あきゅん「修正指示：ここは表現曖昧に」

//inc久保田　この近辺修整、調整しました。

//★ inc櫻井　ユーザーに引き金を引かせる？　意図が伝わりにくい上にバグっぽく思われるかもしれないので、不要なら削除します。

//	WaitKey();

//★ inc櫻井　アザナエルに銃声がないようなら削除します。

//	MusicStart("SE03",0,0,0,1000,null,false);

//	CreateSE("SE04","se銃_銃声01");
//	MusicStart("SE04",0,700,0,1000,null,false);

//	WaitKey();


	EndScene();
}
