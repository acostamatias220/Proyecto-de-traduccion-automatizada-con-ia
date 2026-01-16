
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2110フウリ.nss_MAIN
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
	$GameName = "aa2120フウリ.nss";
//	$GameCircle=false;

}

scene aa2110フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="820">
////////////header////////////
//file name "aa2110フウリ.nss"
//title "テレビのむこうのあなたへ"
//previous "aa2100千秋_フウリ.nss"

////////////footer////////////
//next "フウリ" "aa2120フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2110);}

//◆場所：ＵＰ＋_セット上（前からの続き）
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",0,true);
	SoundPlay("@xbgm23",0,450,true);

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEX("スラッシュ", 1620, 700, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	CreateTextureEXadd("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef002_汎用移動.jpg");


//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵s_n", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_normal.png");
	Request("絵マスク/絵演立絵s_n", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵s_s", 1530, 450, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵s_s", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_s", 1530, 450, middle, "cg/bu/buミリＰb_通常_shout.png");
	Request("絵マスク/絵演立絵n_s", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_n", 1530, 450, middle, "cg/bu/buミリＰb_通常_normal.png");
	Request("絵マスク/絵演立絵n_n", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_h", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵n_h", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_sk", 1530, 450, middle, "cg/bu/buミリＰb_通常_hard.png");
	Request("絵マスク/絵演立絵n_sk", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Fade("スラッシュ", 200, 1000, null, false);
//	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク/絵演立絵s_n", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵s_s", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_s", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_n", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_h", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_sk", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

//	Move("絵マスク", 200, 0, 0, Dxl3, false);
//	Fade("絵マスク/絵演立絵s_n", 200, 1000, null, false);
//	Move("絵マスク/絵演立絵s_n", 200, 450, InBottom, Dxl1, true);

	FadeDelete("上背景", 0, null, true);

//前からの続き
	//▼べー：ＳＥ欠番につきコメントアウト




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100100010kit">
「あむ……あむ……あむ……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100100020kit">
「んご……んご……ごくり」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100100030kit">
「ご……ごひそうさま……れした」


//◆ＳＥ：歓声

//◆音声指示：スピーカー越し
{
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵n_s", 200, 1000, null, false);
	Move("絵マスク/絵演立絵n_s", 200, 450, InBottom, Dxl1, true);
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);
//	DeleteAllSt(200,false);
//	St("R",700, @0,@0,"buミリＰb_通常_shout");
//	FadeSt("R",200,true);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100040mrp">
『アッキー選手、一気に食べきった――――ッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);

//▼べー：ＳＥ欠番のためコメントアウト
//	CreateSE("SE02","se擬音_ゆるキャラファンファーレ");
//	MusicStart("SE02",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：スピーカー越し
{
//	St("R",700, @0,@0,"buミリＰa_通常_normal");
//	FadeSt("R",200,true);
	Fade("絵マスク/絵演立絵n_s", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵s_s", 200, 1000, Dxl1, false);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100050mrp">
『全国ゆるキャラバン決勝戦！
　ついに、決着がつきました！』

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("スラッシュ", 200, 700, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	DeleteAllSt(200,false);
	SoundPlay("@xbgm27",0,450,true);
	St("L",700, @0,@0,"buフウリ_頬手_smile");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100060wfu">
「やった！　アッキーちゃん！　やりました！」

{	St("L",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100070wfu">
「優勝！　優勝ですよ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100100080kit">
「あうあ……あうあ……あうあう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);

	CreateSE("SE01","seガヤ_ざわざわ02_l");
	MusicStart("SE01",2000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100100090adi">
「ミリＰさん、どうしましょう！」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100100100adi">
「まだ、１時間以上時間が……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100110mrp">
「そんなのわかってるわよ！」

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100120mrp">
「デザイナーはまだ捕まらないの！？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100100130adi">
「それが、捕まりません……」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100140mrp">
「あああっ、もう！」

{	St("MR",700, @0,@0,"buミリＰa_通常_shout");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100150mrp">
「とにかく、ＣＭまでインタビューで引っ張るわ！」

{
//	St("C",700, @0,@0,"buミリＰa_通常_normal");
//	FadeSt("C",200,true);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100160mrp">
「それまで代案を考えておいて！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100100170adi">
「代案って、そんな……！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@SE01*", 1500, 0, null);

	DeleteSt("ML",200,true);
//◆ＳＥ：ハウリング
//◆演出指定：ここでミリＰがマイクを持ち替えたことを表現して

	CreateSE("SE02","se環境_ハウリング");
	MusicStart("SE02",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆音声指示：スピーカー越し
{	St("C",700, @50,@0,"buミリＰb_ショータイム_happy");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100180mrp">
『それでは、優勝した秋葉原チームにインタビューを！』

//◆音声指示：スピーカー越し
{
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100190mrp">
『それじゃあ、今食べ終わったばかりのアッキーちゃん！』

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("@StNameC/C*", 200, @80, @0, DxlAuto, false);
	DeleteSt("C",200,false);
	St("R",700, @0,@0,"bu千秋_通常_sigh");
	Shake("@StNameR/R*", 300, 0, 8, 0, 0, 500, null, false);
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/100100200kit">
「うぇっ、うげ……ぅぅぅぅ……」

//◆音声指示：スピーカー越し
{	DeleteSt("R",200,false);
	St("C",700, @80,@0,"buミリＰb_通常_normal");
	Move("@StNameC/C*", 200, @-80, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100210mrp">
『は、まだちょっと大変な状態みたいなので――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2111);}



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100220mrp">
『代わりにフウリちゃん！　お願い！』

{	DeleteSt("C",200,false);
	Move("@StNameC/C*", 200, @-80, @0, DxlAuto, false);
	St("L",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100230wfu">
「きゅっ……私？　私ですか？」

{	St("L",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100240wfu">
「わ、わわわわわ……」

{
	DeleteSt("L",200,true);
}

　フウリの手に、無理矢理マイクが渡される。

{	St("C",700, @-50,@0,"buフウリ_胸手_worry");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100250wfu">
「ど……どうしよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100260wfu">
「急に話せって言われても……
　ライブでは、鈴ちゃんたちに任せっぱなしだし……」

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100270wfu">
「人前で話すのは、苦手で――」

//◆音声指示：小声
{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buミリＰa_通常_happy");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100280mrp">
「ほら、コレも試験よ！　試験！」

{	DeleteSt("R",200,true);
	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100290wfu">
「うきゅぅぅ…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C",200,true);
//	TextBoxDelete(150);

//◆ＳＥ：トントン！　マイク叩く

	CreateSE("SE01","se動作_マイク叩く");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100300wfu">
『あ、あ。聞こえますかー？』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100310wfu">
『ええと……
　皆さん、応援してくれてありがとうございました！』

//◆音声指示：スピーカー越し
{
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100320wfu">
『皆さんの応援があって、この……全国ゆるキャラバン、優勝することができました！』

//◆音声指示：スピーカー越し
{
	SetVolumeEX("@SE01*", 1500, 0, null);
	St("C",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100330wfu">
『ホントに……嬉しいです』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2112);}


//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：スピーカー越し
{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buミリＰb_通常_happy");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100340mrp">
『ものすごい、食べっぷりだったわよね！』

//◆音声指示：スピーカー越し
{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100350wfu">
『は……はい！　食べるのと、たたくのは、得意です！』

//◆音声指示：スピーカー越し
{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100360mrp">
『叩くのって？』

//◆音声指示：スピーカー越し
{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100370wfu">
『私、第一宇宙速度というバンドをやっていて……
　そこで、ドラムをやっているのです』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆音声指示：スピーカー越し
{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100380mrp">
『あ、そうなのね？
　いつも秋葉原でライブを？』

//◆音声指示：スピーカー越し
{
	DeleteSt("R",200,false);
	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100390wfu">
『そうです。
　スーパーノヴァというお店で、演奏しています』

//◆音声指示：スピーカー越し
{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100400wfu">
『実は、今日も年越しライブがあるんです』

//◆音声指示：スピーカー越し
{	CreateSE("SE01","seガヤ_沸き立つ02");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buミリＰb_通常_happy");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100410mrp">
『へぇ、すごい！
　じゃあ今度、アタシがプロデュースしちゃおうかしら？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100420wfu">
『あ……あれ？』

/*
//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("R",200,true);}
//以下ミリＰの台詞かとおもわれます
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100430wfu">
『ん？　どうしたの？』
*/

//◆音声指示：スピーカー越し
{
//	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100440wfu">
『アッキーちゃんは、どこに……？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateAXLWindowEX("絵演窓", "X", 2000, 60, 256, false);
	WindowAXLZoom("絵演窓", "X", 0, 0, null, true);

	CreateTextureSP("絵演窓/絵背景", 1010, -1690, -470, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	CreateTextureSP("絵演窓/絵立絵", 1100, -70, 0, "cg/bu/buＡＤ_通常_normal.png");

	WindowAXLZoom("絵演窓", "X", 200, 1000, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
//◆音声指示：インカム越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100100450adi">
『アッキーさん、どこかに行っちゃいました』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵演窓", "X", 200, 0, AxlDxl, true);

{	ClockPass(2113);}

//	TextBoxDelete(150);

	CreateSE("SEL01","seガヤ_ざわざわ02_l");
	MusicStart("SEL01",300,500,0,1000,null,true);

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120a]
//◆音声指示：小声
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100460mrp">
「どこかに！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵演窓", "X", 200, 1000, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120b]
//◆音声指示：インカム越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100100470adi">
『はい、必死に止めたんですけど、振り払われて』

//◆音声指示：インカム越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100100480adi">
『告白しなきゃとか、言ってて……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵演窓", "X", 200, 0, AxlDxl, true);

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//◆音声指示：スピーカー越し
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100490wfu">
『告白……ですか……』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("絵板写", 2000);
	Wait(16);
	CreatePlainEX("絵板写上", 2000);
	SetShade("絵板写上", SEMIHEAVY);
	Wait(16);
	Fade("絵板写上", 200, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆音声指示：スピーカー越し
{	St("C",19010, @0,@0,"fuフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100500wfu">
（そう……そうでした）

//◆音声指示：スピーカー越し
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100510wfu">
（約束……
　そう、私はアッキーちゃんと、約束したのです）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	Delete("絵板写");
	FadeDelete("絵板写上", 200, null, true);

	WindowAXLZoom("絵演窓", "X", 200, 1000, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134a]
//◆音声指示：インカム越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/100100520adi">
『ミリＰさん！　何か繋いで――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵演窓", "X", 200, 0, AxlDxl, true);
	Delete("@絵演窓*");

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰb_通常_pinch");
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134b]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100530mrp">
『え、ええと……それじゃ、そうね！
　残念ながら負けちゃった、他のチームにも――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆音声指示：スピーカー越し
{	SetVolumeEX("SE*", 600, 0, null);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100540wfu">
『あ、あの！』

//◆音声指示：スピーカー越し
{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100550wfu">
『この場をお借りしてお話ししたいのです』

{	ClockPass(2114);}


//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100560mrp">
「フウリちゃん……？」


//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100570wfu">
「ええと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：スピーカー越し
{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100580wfu">
「あの……」

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100590wfu">
「その……」

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100600wfu">
「ううううう……」

//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100610mrp">
「……フウリちゃん、大丈夫？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2115);}


//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆音声指示：スピーカー越し
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100620wfu">
「ここで逃げたら……だめです」

{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100630wfu">
「これも、アッキーちゃんとの約束！」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100640wfu">
「約束……そう！　約束なのです！」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 500, 0, 5, 0, 0, 500, null, false);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100650wfu">
「よおおおおおっ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

//◆ＳＥ：ぽん！　腹鼓

	DeleteAllSt(200,false);
	CreateSE("SE01","se動物_タヌキ_腹鼓03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateAXLWindowEX("絵窓", "X",1600, 128,768, false);
	WindowAXLZoom("絵窓", "X",0, 0, null, true);
//	CreateColorSP("絵窓/絵演色", 1510, "#FFFFFF0");
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");
	Zoom("絵窓/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("絵窓/キャラ", 1520, Center, InBottom, "cg/bu/buフウリ_通常_smile.png");
	SetAlias("絵窓/キャラ","絵窓/キャラ");
	Move("絵窓/キャラ", 0, @0, @96, null, true);
	WindowAXLZoom("絵窓", "X",300, 1000, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100660wfu">
「ぽん！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵窓", "X",300, 0, Dxl2, true);
	Delete("@絵窓*");
	St("R",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170b]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/100100670mrp">
「え？　なにそれ――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2116);}



	SoundPlay("@xbgm23",0,450,true);



{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}

//あきゅん「β演出：歓声のタイミング調整」
	CreateSE("SEP01","seガヤ_沸き立つ02");
	LcPro_aa2110huuri();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172a]
//◆音声指示：以下、徐々に涙ぐみながら
//◆音声指示：スピーカー越し
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100680wfu">
『私……好きな人がいました！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	if($フウリ告白 == true)	{
	}else{
	Request("@Pro", Stop);
	Delete("@Pro*");
	}
	CreateSE("SEL01","seガヤ_ざわざわ02_l");
	MusicStart("SEL01",2000,400,0,1000,null,true);
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172b]
//◆音声指示：スピーカー越し
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100690wfu">
『ずいぶん前に別れてしまって、それ以来音信不通になって、でも、ずっと、ずっと、彼のことが忘れられなくて』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2117);}


//	TextBoxDelete(150);
	Request("@Pro", Stop);
	Delete("@Pro*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100700wfu">
『いつまでも、昔のことにこだわるなって。
　今を見てなきゃいけないって』

//◆音声指示：スピーカー越し
{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100710wfu">
『そう言ってくれる人もいました』

//◆音声指示：スピーカー越し
{	SetVolumeEX("SE*", 3000, 200, null);
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100720wfu">
『私は、その通りなんだろうなあ、と思って、ふらふらして、ふらふらしながら、でも気持ちが定まらなくて』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100730wfu">
『私は、あんまり、人前に出るのは、得意じゃないです』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//◆音声指示：スピーカー越し
{	SetVolumeEX("SE*", 6000, 0, null);
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100740wfu">
『今も、こうやって話すのは、恥ずかしい……』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100750wfu">
『バンド活動を続けたのは、もちろん、仲間と一緒にいるのが楽しかったから、っていうのもあります』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100760wfu">
『ありますけど、でも、やっぱり、好きな人のことが、忘れられなかったんだなあって』

//◆音声指示：スピーカー越し
{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100770wfu">
『好きな人が、もしかしたら、私のことを見つけてくれるかなあって』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2118);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_胸手_shy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100780wfu">
『そんなかすかな願いのために、私はバンドを続けていて、そのために、この番組にも出演していました』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100790wfu">
『それが、今日、はっきり、わかりました』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100800wfu">
『織田貫太さん。見ていますか？』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100810wfu">
『私――今でも』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/100100820wfu">
『あなたのことが、好きです！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

	EndScene();
}
//next "フウリ" "aa2120フウリ.nss"
