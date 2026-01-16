
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2100千秋_フウリ.nss_MAIN
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
//	$GameName = "";
//	$GameCircle=false;

	if($CharaName=="千秋"){
		$GameName = "aa2110千秋.nss";
	}else{
		$GameName = "aa2110フウリ.nss";
	}


}

scene aa2100千秋_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1700">
////////////header////////////
//file name "aa2100千秋_フウリ.nss"
//title "突然大舞台"
//previous "aa2050沙紅羅_フウリ.nss"
//previous "aa2050千秋_恵那.nss"

////////////footer////////////
//next "千秋" "aa2110千秋.nss"
//next "フウリ" "aa2110フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2100);}

//◆場所：ＵＰ＋_セット上
	//OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);
	FadeDelete("上背景", 500, null, true);

//	SoundPlay("@xbgm16",0,450,true);
	SetVolumeEX("@xbgm*", 1500, 0, null);

	CreateSE("SEL01","seガヤ_ざわざわ_l");
	MusicStart("SEL01",4000,350,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("L",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300010kit">
「恵那も平次さんも……行っちゃった！？」

{	St("L",700, @0,@0,"bu千秋_通常_think");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300020kit">
「どうする……どっちをおいかける？」

{	St("L",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300030kit">
「ううっ、しょうがないから恵那を――！」

{	DeleteAllSt(200,false);

	St("C",700, @0,@80,"buフウリ_前のめり_hard");
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @0, @-80, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300040wfu">
「待ったー！！」

{	DeleteAllSt(200,false);

	St("L",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300050kit">
「え？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300060wfu">
「逃げちゃだめですッ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300070kit">
「な……なに？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300080wfu">
「まだ、ゆるキャラバンは終わってない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#993399");
	CreateTextureEX("スラッシュ", 1620, 600, Middle, "cg/mask/ciスラッシュ_05_01z.png");
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
	CreateTextureEX("絵マスク/絵演立絵n_sk", 1530, 450, middle, "cg/bu/buミリＰb_通常_shock.png");
	Request("絵マスク/絵演立絵n_sk", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_hp", 1530, 450, middle, "cg/bu/buミリＰb_通常_happy.png");
	Request("絵マスク/絵演立絵n_hp", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_sad", 1530, 450, middle, "cg/bu/buミリＰb_通常_sad.png");
	Request("絵マスク/絵演立絵n_sad", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Fade("スラッシュ", 200, 1000, null, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク/絵演立絵s_n", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵s_s", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_s", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_n", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_h", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_sk", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_hp", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_sad", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵s_s", 200, 1000, null, false);
	Move("絵マスク/絵演立絵s_s", 200, 450, InBottom, Dxl1, true);

	CreateSE("SE01","seガヤ_沸き立つ02");
	MusicStart("SE01",300,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000300090mrp">
『おおっと、大変ッ！』


//◆音声指示：スピーカー越し
{
//	St("C",700, @0,@0,"buミリＰb_通常_shout");
//	FadeSt("C",200,true);
	Fade("絵マスク/絵演立絵s_s", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_s", 200, 1000, Dxl1, false);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000300100mrp">
『フウリ選手、ここでステージを下りる！』

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("スラッシュ", 200, 660, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300110wfu">
「きゅっ！！　ダメ！　今のナシ！」

//◆音声指示：インカム
{
	DeleteAllSt(200,false);
	St("L",700, @-50,@0,"stＡＤ_通常_angry");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/000300120adi">
『あ！　ダメです！　一度下りたら、戻れません！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵マスク/絵演立絵n_s", 0, 0, Axl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆音声指示：スピーカー越し
{
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	DeleteAllSt(200,false);
	Fade("絵マスク/絵演立絵s_n", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000300130mrp">
『さあ、２人目のフウリ選手がギブ・アップ！』


//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵s_n", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_hp", 200, 1000, Dxl1, false);
//	St("C",700, @0,@0,"buミリＰb_通常_happy");
//	FadeSt("C",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000300140mrp">
『秋葉原チームの優勝は、３人目、アッキー選手の手に委ねられたわッ！！』


{
	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("スラッシュ", 200, 660, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300150kit">
「は？　へ？　はれ？」

{	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300160kit">
「アッキー選手って……オレ？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300170wfu">
「こ、こうなっては、仕方ないです……」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300180wfu">
「アッキーちゃん……お願いしますッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2101);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300190kit">
「お願いしますって、これ――」

{	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300200kit">
「大食い大会……？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300210wfu">
「はいっ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300220kit">
「テレビの？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300230wfu">
「はいっ！」

//◆音声指示：小声
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300240kit">
「そ、そ……そんな……」

//◆音声指示：小声
{	St("L",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300250kit">
「こんな、こんなカッコでテレビとか……テレビ？
　ウソ、ダメ……ってか今映ってる！？」

{	St("L",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("L",200,true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300260kit">
「そ、そそ……そんなの嫌だああああああああッ！！」

{	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameL/L*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300270wfu">
「あ、アッキーちゃん、待ってー！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"st千秋_通常_sad");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300280kit">
「この日のために鍛えた逃げ足――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300290wfu">
「鈴ちゃんに言いつけちゃいますよ！」

{	DeleteAllSt(200,false);
	CreateSE("SE01","seメカ_車_急ブレーキ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("L",700, @-50,@0,"bu千秋_驚天_shock");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300300kit">
「ひええええええッ！！
　す、鈴姉だけは勘弁を……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300310wfu">
「嘘ウソ、言いつけたりしませんよー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300320wfu">
「でも、次はアッキーちゃんの番なんです。
　急に逃げられては困るのです」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300330kit">
「いやだあああ！　人違いだって！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300340wfu">
「え？　でも……アッキーちゃんですよね？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300350kit">
「そうだけど、なんかよくわかんないけど、別人で！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300360wfu">
「出てくれないんですか……？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300370kit">
「こんなカッコで、出れるわけないって！
　ギブギブ！　中止！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：スピーカー越し
{
//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"buミリＰb_通常_shock");
//	FadeSt("C",200,true);
	Fade("絵マスク/絵演立絵n_hp", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
	CreateSE("SE01","seガヤ_沸き立つ02");
	MusicStart("SE01",300,1000,0,1000,null,false);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000300380mrp">
『おっと、なんということかしら！
　秋葉原チーム、まさかのギブアップ宣言！？』

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("スラッシュ", 200, 660, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300390wfu">
「アッキーちゃん……」

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300400wfu">
「どうしても、ダメですか？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300410kit">
「ってか、なんでオレが！
　大体オレ、恵那を追いかけなきゃ――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300420wfu">
「……わかりました」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300430kit">
「あ……うん。わかってくれました？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2102);}

//	TextBoxDelete(150);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("L",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300440kit">
「それじゃオレ、行きますから」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300450wfu">
「あの――」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300460kit">
「なんですか？」

{	DeleteAllSt(200,false);
	SoundPlay("@xbgm28",0,450,true);
	St("C",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300470wfu">
「こんな結果になったけど、でも、嬉しかったです」

{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300480wfu">
「アッキーちゃんが追いかけてきてくれなかったら……私、この番組に出ることもできませんでした」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300490wfu">
「私が出られないと、ミリＰさんも番組ができなくて、困ってしまって、すると恋も実らず――」

{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300500wfu">
「だから……ええと……」

{	St("C",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300510wfu">
「アッキーちゃんが、みんなを救ったのです！」

{	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300520wfu">
「ありがとうございました……！」

{	St("C",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300530wfu">
「ひぐっ、うきゅ……うう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300540kit">
「ちょっと、ちょっと待ってください！
　なんで、そんな泣いたり……」

{	St("L",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300550kit">
「優勝できないくらいで、落ち込まないでくださいよ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300560wfu">
「でも――」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300570kit">
「それともなにか、理由でも……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300580wfu">
「それは……」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300590wfu">
「…………」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300600kit">
「フウリさん！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300610wfu">
「私……好きなひとが、いたんです」

{
//	St("C",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("C",200,true);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300620wfu">
「でも、気持ちも伝えられないままわかれてしまって……だからその人と、もう一度会いたくて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300630wfu">
「でも、全然連絡が取れなくて」

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300640wfu">
「こういう全国放送で１位になれば目立つし、そうしたら、もしかして気付いてくれるかなって、それで……」


{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300650kit">
「あ……そうか」

{
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300660kit">
「それが、フウリさんがバンドを始めた理由……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolumeEX("@xbgm*", 1500, 0, null);

//◆演出指定：回想開始

	SetVolumeEX("@SE1*", 500, 0, null);
	CreateSE("SE02","se擬音_フラッシュバック");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("フラッシュ白", 4900, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);
	PrintGO("上背景", 5000);
	DeleteSt("C",0,true);
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",0,true);
	FadeBG(0,true);
	SetTone("@OnBG*",Sepia);
	SetTone("@StNameC/C*",Sepia);

	Fade("絵色", 0, 200, null, true);
	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);

{	ClockPass(2103);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000300670skr">
「逃げるんじゃねぇッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想終了

	CreateColorEXadd("フラッシュ白", 19020, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);
	PrintGO("上背景", 19030);
	DeleteSt("C",0,true);
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	SetTone("@OnBG*",null);
	SetTone("@StNameC/C*",null);
	St("C",19010, @0,@0,"fu千秋_通常_worry");
	FadeSt("C",0,true);

	CreatePlainSP("絵板写", 100);
	SetShade("絵板写", SEMIHEAVY);

	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
//◆音声指示：小声
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300680kit">
「あ……」

//◆音声指示：小声
{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300690kit">
「ここに師匠がいたら――」

//◆音声指示：小声
{	St("C",19010, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300700kit">
「逃げるなって、怒鳴りつけるだろうな」

//◆音声指示：小声
{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300710kit">
「ここに恵那がいたら――」

//◆音声指示：小声
{	St("C",19010, @0,@0,"fu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300720kit">
「女の子は泣かせるな、っていうだろうな」

{	St("C",19010, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300730kit">
「…………」

//◆音声指示：小声
{	St("C",19010, @0,@0,"fu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300740kit">
「確かにこのカッコは、恥ずかしいよ」

//◆音声指示：小声
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300750kit">
「恥ずかしいけど……でも……」

//◆音声指示：小声
{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300760kit">
「ここから逃げ出すことって、もっと恥ずかしいんじゃないのか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);

//	TextBoxDelete(150);

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("L",700, @50,@0,"buフウリ_胸手_cry");
	Move("@StNameL/L*", 300, @-50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300770wfu">
「うきゅ……うう……うううう……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300780kit">
「フウリさん、もう泣かないでください！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2104);}

//	TextBoxDelete(150);

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
	CreateTextureEX("絵マスク/絵演立絵n_sk", 1530, 450, middle, "cg/bu/buミリＰb_通常_shock.png");
	Request("絵マスク/絵演立絵n_sk", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_hp", 1530, 450, middle, "cg/bu/buミリＰb_通常_happy.png");
	Request("絵マスク/絵演立絵n_hp", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_sad", 1530, 450, middle, "cg/bu/buミリＰb_通常_sad.png");
	Request("絵マスク/絵演立絵n_sad", Smoothing);

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
	Move("絵マスク/絵演立絵n_hp", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_sad", 0, 450, InBottom, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300790wfu">
「え？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300800kit">
「あいかわらず、なんだか良くわかんないままだけど！」

{
	SoundPlay("@xbgm23",0,450,true);
	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300810kit">
「やります！　やってやります！
　オレ、大食いのバトン、受け取りますッ！！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300820wfu">
「ええっ！？　ほ――ホントですか！！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300830kit">
「男に二言はありませんッ！！」

//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵n_s", 200, 1000, null, false);
	Move("絵マスク/絵演立絵n_s", 200, 450, InBottom, Dxl1, true);

//	Fade("絵マスク/絵演立絵n_s", 230, 0, Axl1, false);
//	Fade("絵マスク/絵演立絵n_s", 200, 1000, Dxl1, false);
//	Move("絵マスク", 200, 0, 0, Dxl3, true);



	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",0,700,0,1000,null,true);

//	St("C",700, @0,@0,"buミリＰb_通常_shout");
//	FadeSt("C",200,true);
//	CreateSE("SE01","seガヤ_大歓声_l");
//	MusicStart("SE01",0,700,0,1000,null,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000300840mrp">
『あら？　ギブアップと思われたアッキー選手！
　メラメラ瞳を燃やしながらカムバック！』

//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵n_s", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_h", 200, 1000, Dxl1, false);
//	St("C",700, @0,@0,"buミリＰb_通常_hard");
//	FadeSt("C",200,true);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000300850mrp">
『小さな肩をいからせて、饅頭ピラミッドに向き合う！』

//※北原メモ：※千秋が毒まんじゅうに立ち向かうＥＶがあった方がいいかも。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("スラッシュ", 200, 660, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);

	SetVolumeEX("@SE01*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{
	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300860kit">
「コレを食いきれば、いいんですね？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300870wfu">
「ホントに……出てくれるんですか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300880kit">
「オレ、男になるって決めたんです」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000300890wfu">
「あの、さっきから男って……性転換？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300900kit">
「ち……違います！　気持ちの問題ですッ！」

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300910kit">
「オレはもう、逃げない！
　逃げないで、アイツを幸せにできる人間になるッ！！」

{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 3, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300920kit">
「いよっしゃあああ！　行くぞ！」

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300930kit">
「いただきま――――――」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300940kit">
「ちょっと待て」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2105);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　食べようとして饅頭をふたつに割った千秋だが、その断面図を見て動きが止まった。


//◆音声指示：スピーカー越し
{
//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"buミリＰb_通常_shock");
//	FadeSt("C",200,true);
	Fade("絵マスク/絵演立絵n_h", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
	CreateSE("SE01","seガヤ_沸き立つ02");
	MusicStart("SE01",300,700,0,1000,null,false);

	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000300950mrp">
『おっと！　アッキー選手、トラブルかしら？』

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("スラッシュ", 200, 660, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300960kit">
「いや、これは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：クリマンレインボー断面図を入れたい
//あきゅん「素材：imgクリマン断面図」


	SetVolumeEX("@xbgm*", 1500, 0, null);

	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("イベント1", 10000, Center, @0, "cg/img/imgクリマン断面図.jpg");
	Fade("イベント1", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235]

//◆音声指示：独り言
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300970kit">
「ホントに食べ物か……？」

//◆音声指示：独り言
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300980kit">
「なんか、虹色なんだけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("イベント1", 500, 0, null, true);
	Delete("イベント1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//◆音声指示：独り言
{	St("C",19010, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000300990kit">
「逃げるか？　逃げるか？」

//◆音声指示：独り言
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301000kit">
「いや……でもまさか、テレビで食えないものが出るわけないよな」

//◆音声指示：独り言
{	St("C",19010, @0,@0,"fu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301010kit">
「もし食中毒とかあったら、一大事だもんな……」

//◆音声指示：独り言
{	St("C",19010, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301020kit">
「それにこの饅頭、たしか村崎のおっさんも売ってたわけだし――」

//◆音声指示：独り言
{	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301030kit">
「でも、本能は逃げろって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指定：回想開始

	SetVolumeEX("@SE1*", 500, 0, null);
	CreateSE("SE02","se擬音_フラッシュバック");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("フラッシュ白", 19020, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);
	PrintGO("上背景", 19030);
	DeleteSt("C",0,true);
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",0,true);
	FadeBG(0,true);
	SetTone("@OnBG*",Sepia);
	SetTone("@StNameC/C*",Sepia);

	CreatePlainSP("絵板写", 5000);
	Request("絵板写", Smoothing);
	Zoom("絵板写", 0, 2000, 2000, null, true);

	Fade("絵色", 0, 200, null, true);
	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000301040skr">
「逃げるんじゃねぇッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想終了

	CreateColorEXadd("フラッシュ白", 19020, "WHITE");
	Fade("フラッシュ白",500,1000,null,true);
	PrintGO("上背景", 19030);
	DeleteSt("C",0,true);
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);
	SetTone("@OnBG*",null);
	SetTone("@StNameC/C*",null);
	St("C",19010, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);
	Delete("絵板写");
	Delete("フラッシュ白");
	FadeDelete("上背景", 500, null, true);


{	ClockPass(2106);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0252]
//◆音声指示：独り言
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301050kit">
「師匠……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

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
	CreateTextureEX("絵マスク/絵演立絵n_sk", 1530, 450, middle, "cg/bu/buミリＰb_通常_shock.png");
	Request("絵マスク/絵演立絵n_sk", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_hp", 1530, 450, middle, "cg/bu/buミリＰb_通常_happy.png");
	Request("絵マスク/絵演立絵n_hp", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵n_sad", 1530, 450, middle, "cg/bu/buミリＰb_通常_sad.png");
	Request("絵マスク/絵演立絵n_sad", Smoothing);

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
	Move("絵マスク/絵演立絵n_hp", 0, 450, InBottom, null, true);
	Move("絵マスク/絵演立絵n_sad", 0, 450, InBottom, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301060wfu">
「アッキーちゃん、どうしましたッ！？」

{
	SoundPlay("@xbgm23",0,450,true);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301070kit">
「あ、いや。なんでもないです」

{	St("C",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301080kit">
「なんでもないです。食べられますよ。おいしいですよ」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301090kit">
「いただきま――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);

	CreateSE("SE01","se戦闘_銀星号_精神汚染波_L");
	CreateTextureSP("絵演呪", 2010, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureEX("絵演断面", 2110, Center, Middle, "cg/img/imgクリマン断面図.jpg");
	Zoom("絵演断面", 0, 1100, 1100, null, true);
	Fade("絵演断面", 0, 500, null, true);
	DrawEffect("絵演断面", 0, "LowWave", 20, 20, null);

	Wait(16);
	MusicStart("SE01",0,1100,0,1000,null,true);
	Delete("絵板写");
	EffectZoomadd(2210, 500, 300, "cg/ef/ef034_精神汚染.jpg", true);
	Wait(16);
	CreatePlainSP("絵板写", 5000);
	Wait(16);

	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",0,true);

	Delete("絵演*");
	Fade("絵板写", 1000, 0, null, false);
	DrawDelete("絵板写", 1000, 50, null, "circle_01_00_1", true);
	SetVolumeEX("SE*", 2000, 0, null);

	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0265]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301100kit">
「ぶおえっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2107);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301110kit">
「ふがっ、ふげっ！
　げふっげふっげふっげふ――」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301120wfu">
「アッキーちゃん！」

//◆音声指示：スピーカー越し
{
//	Fade("絵マスク/絵演立絵n_s", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
	CreateSE("SE01","seガヤ_沸き立つ02");
	MusicStart("SE01",300,700,0,1000,null,false);

//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"buミリＰb_通常_shout");
//	FadeSt("C",200,true);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000301130mrp">
『アッキー選手、いきなり饅頭を吹き出しかける！』

//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵n_s", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_sk", 200, 1000, Dxl1, false);
}
{
//	St("C",700, @0,@0,"buミリＰb_通常_hard");
//	FadeSt("C",200,true);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000301140mrp">
『大丈夫！？
　食べ物を口から出すとその時点で失格よ！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@SE01*", 1500, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{
	Move("スラッシュ", 200, 660, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301150kit">
「ふげっ！　んぐー！　んぐー！　んぐー！！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301160wfu">
「アッキーちゃん！　頑張って！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301170kit">
「んぐ！　んぐ！　んぐぐぐぐ！」

//◆音声指示：な……なんでオレが……こんな目に……
{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301180kit">
「は……はんへほへは……ほんはへひ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵マスク/絵演立絵n_sk", 0, 0, Axl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301190wfu">
「アッキーちゃん！　ファイト！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301200kit">
「う……う……う……うほおおおおお！」

{	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301210kit">
「ごくっ！」

{
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301220kit">
「おえっ！　おえええええッ！！」

//◆音声指示：スピーカー越し
{
//	DeleteAllSt(200,false);
	Fade("絵マスク/絵演立絵n_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
	CreateSE("SE01","seガヤ_沸き立つ02");
	MusicStart("SE01",300,700,0,1000,null,false);
}
//	St("R",700, @0,@0,"buミリＰb_通常_shock");
//	FadeSt("R",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000301230mrp">
『アッキーちゃん、大丈夫？
　なにか、饅頭に問題が――？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("スラッシュ", 200, 660, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, true);
	DeleteAllSt(200,false);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateTextureSP("絵演背景", 20, -1024, -500, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	DrawDelete("絵板写", 200, 50, null, "blind_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//◆音声指示：小声
{	St("MR",700, @-60,@0,"buミリＰa_通常_shout");
	Move("@StNameMR/MR*", 200, @60, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000301240mrp">
「ちょっとあなた！　あの饅頭、大丈夫なの？
　どっから持ってきたのよ！？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("R",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa21/000301250adi">
「え、ええと……それがですね、その……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2108);}


	CreatePlainSP("絵板写", 5000);
	Wait(16);
	SetVolumeEX("@SE01*", 1500, 0, null);
	DeleteAllSt(0,false);
	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",0,true);
	Delete("絵演*");
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0305]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301260kit">
「だいじょうぶ！」

{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301270kit">
「オレ、実は甘いもの、大ッ嫌いなんだよねえ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵マスク/絵演立絵n_s", 0, 0, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301280wfu">
「甘い物が嫌い！？　本当ですか？
　そんな、かわいそう……」

//◆音声指示：独り言
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301290kit">
「まあ、嘘なんだけどね……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301300wfu">
「え？　何か――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301310kit">
「いやいや！　なんでもない！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	Fade("絵マスク/絵演立絵n_h", 0, 0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301320kit">
「これも男を見せるため！
　さあ、がんばるぞおおおおお！！」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301330kit">
「はむ……んむ……ん……ごぇっ、おえ、んんんん」

//◆音声指示：スピーカー越し
{
//	Fade("絵マスク/絵演立絵n_h", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵s_n", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
//	FadeSt("C",200,true);
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000301340mrp">
『甘い物が嫌いだというアッキー選手！
　本当に大丈夫なのかしら？』

//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵s_n", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_sk", 200, 1000, Dxl1, false);
}
{
//	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
//	FadeSt("C",200,true);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000301350mrp">
『放送できない画はダメだからね！
　危なかったら、ちゃんと言って頂戴！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("スラッシュ", 200, 660, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	SetVolumeEX("@SE01*", 1500, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{
	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301360kit">
「ら……らいじょーぶ、デス！」

{	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301370kit">
「はむ……んむ……んむ……おえええええええ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301380wfu">
「アッキーちゃん……すごい勢い！」

{	St("L",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301390wfu">
「あと少し……あと少しですけど……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301400kit">
「あむ……あむあむ……あむむむむ……」

{	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301410kit">
「うぇっ、うぇっ、んくくううううう……！」

{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301420kit">
「はぁっ……はぁっ……はぁっ……はぁっ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2109);}


//	TextBoxDelete(150);

	Fade("絵マスク/絵演立絵n_sk", 0, 0, Dxl1, true);


//	Fade("絵マスク/絵演立絵n_sk", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵s_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000301430mrp">
『凄まじい表情でスパート！
　残るクリマンはあとひとつ！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000301440mrp">
『他との差は遙かに開いているけれど、肝心のアッキー選手の顔が真っ青よ！』


//◆音声指示：スピーカー越し
{
	Fade("絵マスク/絵演立絵s_s", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_sad", 200, 1000, Dxl1, false);
}
{
//	St("C",700, @0,@0,"buミリＰb_通常_sad");
//	FadeSt("C",200,true);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000301450mrp">
『もしかして、競技継続は無理なんじゃ――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("スラッシュ", 200, 660, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301460wfu">
「アッキーちゃん……」

{	St("L",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301470wfu">
「もう、いいです」

{	St("L",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301480wfu">
「そんなに、無理すること、ないです」

{	St("L",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301490wfu">
「ここまで頑張ったんだから、もう――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//◆演出指定：ヘロヘロの声で
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301500kit">
「嘘です……」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301510wfu">
「え……？」

//◆演出指定：ヘロヘロの声で
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301520kit">
「そんなに苦しい顔で言われても、全然説得力ないです！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301530kit">
「好きな人が、いるんでしょう！？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301540wfu">
「いいんです……だってもう……
　今思えば、そんなのはかない望みで……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301550kit">
「ダメです！
　自分の気持ちを伝えないままじゃ、ダメです！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301560kit">
「もし、その涙が本物なら――
　自分の気持ち、伝えなきゃ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301570wfu">
「でも、私――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301580kit">
「約束して下さい！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301590kit">
「オレが最後まで食べきったら、告白するって！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301600wfu">
「でも――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301610kit">
「約束です！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301620wfu">
「約束――」

{	St("L",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301630wfu">
「……はい。わかりました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	Fade("絵マスク/絵演立絵n_sad", 230, 0, Axl1, false);
	Fade("絵マスク/絵演立絵n_s", 200, 1000, Dxl1, false);
	Move("スラッシュ", 200, 0, 0, Dxl3, false);
	Move("絵マスク", 200, 0, 0, Dxl3, true);
	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//◆音声指示：スピーカー越し
{
//	DeleteAllSt(200,false);
//	St("C",700, @0,@0,"buミリＰb_通常_shout");
//	FadeSt("C",200,true);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aa21/000301640mrp">
『秋葉原チーム、なにやら長い相談を終えて、再び目の前のクリマンに向かい合った――！』

{
	SetVolumeEX("@SE01*", 1500, 0, null);
	Move("スラッシュ", 200, 660, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301650kit">
「これをさっさと終わらせて……」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301660kit">
「一人前の男になって……」

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301670kit">
「恵那のところに、行くんだ……ッ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa21/000301680wfu">
「アッキーちゃん、頑張って――！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 1000, 0, 10, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301690kit">
「うおおおおおおおおっ！！」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/aa21/000301700kit">
「あむ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	EndScene();
}
//next "千秋" "aa2110千秋.nss"
//next "フウリ" "aa2110フウリ.nss"
