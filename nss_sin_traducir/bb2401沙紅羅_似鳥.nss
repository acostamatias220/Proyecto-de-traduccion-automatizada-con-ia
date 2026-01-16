
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bb2401沙紅羅_似鳥.nss_MAIN
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

	//★エンディング中（bb）
	//★エンドロール
	PreSetRoll(0);
	TheEND(0);

	$GameName = "";
	$GameCircle=false;
	$GameClear=true;
}

scene bb2401沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="760">
////////////header////////////
//file name "bb2401沙紅羅_似鳥.nss"
//title "フライング・カータヌキ"
//previous "bb2400千秋_恵那.nss"

////////////footer////////////
//flag "flbb"
//next オシマイ

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

{	ClockPass(2355);}


//◆場所：柳神社_境内
	OnBG(10,"bg1501100柳神社_境内_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",2000,500,0,1000,null,true);

	FadeDelete("上背景", 1000, null, true);

	Wait(1500);

//◆場所：柳神社_お墓

	OnBG(10,"bg1502100柳神社_お墓_通常");
	FadeBG(2000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100010skr">
「それじゃ、埋めるぞ」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100020skr">
「いいな？」


{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/bb24/010100030okt">
「……ああ」

{	DeleteSt("MR",200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100040nki">
「よろしく、お願いします」


{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100050skr">
「よし、みそ！　ブー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100060mso">
「はいっ！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/bb24/010100070buu">
「はいッ！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeAllSt(200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100060">
「「はいっ！」」

//◆ＳＥ：スコップが土をかける
{	DeleteAllSt(200,false);
	CreateSE("SE01", "se動作_土かける");
	MusicStart("SE01", 0, 1000, 0, 1000, null,false);}
　みそブーが頷き、スコップを振るう。

　神社の一角に掘った穴――

　その中に埋められた、タヌキの身体と古いカッターナイフが、少しずつ土に埋まっていく。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SoundPlay("@xbgm25",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("R",700, @0,@0,"bu貫太_通常_sad");
	St("L",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("L",200,false);
	FadeSt("R",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/bb24/010100080okt">
「…………」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100090nki">
「…………」

{	St("R",700, @0,@0,"bu貫太_通常_cry");
	FadeSt("R",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/bb24/010100100okt">
「……ひぐっ、う……うう……」

{	St("L",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100110nki">
「ううう……うっうっうっ……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100120skr">
「コラコラコラ！
　大のオトナが泣くな泣くな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100130skr">
「おまえたちの気持ちは、よーくわかった」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100140skr">
「あいつらもきっと、天国でおまえたちを見てるって」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"bu貫太_横向き_sad");
	St("L",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("L",200,false);
	FadeSt("R",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/bb24/010100150okt">
「ぅん……ぅぅ……そうだよね……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100160nki">
「ぁり……がとう、ございます……」


{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100170skr">
「ほら！　シャッキリしな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100180skr">
「そろそろ、新しい年が始まるぞ！」


{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100190mso">
「姐さん。そういえば約束……」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100200skr">
「ん？　約束？」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bb24/010100210buu">
「今年中に、弟くんにどーじんしを届けるっていう……」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100220skr">
「ああ、それか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2356);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100230skr">
「ま、さすがにこの時間じゃ間に合わねぇだろ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100240skr">
「そもそも、同人誌が――」


{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100250nki">
「あ……あの！」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100260nki">
「もし良かったら、オレが！」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100270skr">
「え？　オレがって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100280nki">
「創った同人誌は、もう捨てられちゃったけど。
　でも、オレ、絵なら描けるから！」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100290nki">
「あの、もし良かったらリクエストを聞いて――」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100300skr">
「いやいや。もう遅いし、そこまですることねぇって」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100310mso">
「そんな、姐さん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100320skr">
「いや、ホントにいいって！」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bb24/010100330buu">
「でも、もし描いてもらえたら、喜びますよ！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100340skr">
「え……いや、でも……」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100350nki">
「お願いしますッ！！」

{
	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100360nki">
「オレ、アイツに教えられたんです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateTextureEX("同人誌", 2000, @0, @0, "cg/img/imgノーコントロール11.jpg");
	Fade("同人誌", 500, 1000, null, true);
	DeleteSt("ML",0,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("L",19010, @0,@0,"fu似鳥_通常_shout");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100370nki">
「やっぱりオレには、マンガしかないって」

{	St("L",19010, @0,@0,"fu似鳥_通常_normal");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100380nki">
「もう一回、本気で、マンガを描いてみようって」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100390nki">
「だから、最初に、アンタの弟さんのために――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteSt("L",1000,false);
	FadeDelete("同人誌",1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100400skr">
「……そっか」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100410skr">
「いや、描いてもらうのはありがてーんだけどな」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100420skr">
「もう時間も時間っつーか」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100430skr">
「そろそろ年も変わるし……顔を合わせづらい」


{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100440mso">
「でも――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bb24/010100450buu">
「姐さん！」


{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100460skr">
「アレだけ大見得切ったんだぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2357);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100470skr">
「今更、アイツに合わせる顔なんて――」


{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/bb24/010100480okt">
「まだ、時間はあるよ」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100490skr">
「でもよ、原付取りに行ってる間に――」


//あきゅん「修正指示：ＳＥ唐突に切れ過ぎ、ここはゆったり消す」
//inc久保田　調整しました。
{
	SetVolumeEX("@xbgm*", 1500, 0, null);
	SetVolumeEX("SE*", 1500, 0, null);
	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/bb24/010100500okt">
「バイクなんて、要らないさ！」


//◆演出指示：太四郎変身
{	St("C",700, @0,@0,"bu貫太_通常_shout");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/bb24/010100510okt">
「ドロンパ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：ミリＰの車になる
//あきゅん「素材：imgミリＰ車」
//あきゅん「修正指示：もう少しギャグっぽく、秘密道具ばばーんとした感じに」

//★inc櫻井　修正
//inc久保田　調整

	CreateSE("ドロンパ", "se動物_タヌキ_化ける01");
	MusicStart("ドロンパ", 0, 1200, 0, 1000, null,false);

	CreateTextureEXadd("煙", 2000, Center, middle, "cg/ef/efRec_雲a01.png");
	Move("煙", 0, @0, @400, null, true);
	Zoom("煙", 0, 1500, 1500, null, true);

	CreateColorEX("白", 2500, WHITE);

	Rotate("煙", 1000, @0, @0, @1800, null,false);
	Zoom("煙", 1000, 2000, 2000, null, false);
	Fade("煙", 100, 1000, null, false);
	Fade("白", 1000, 1000, null, true);
	Delete("煙");
	Wait(300);
	DeleteAllSt(0,true);
	CreateTextureSP("車", 2000, Center, InBottom, "cg/img/imgミリＰ車.jpg");
	Zoom("車", 0, @1500, @1500, null, true);
	Request("@車", Smoothing);
	Fade("車", 1000, 1000, null, false);
	Fade("白", 1000, 0, null, false);

	DeleteSt("MR",0,false);

	SetBlur("車", true, 3, 150, 50,false);
	CreateSE("じゃじゃーん", "se擬音_ギャグ_じゃじゃーん");
	MusicStart("じゃじゃーん", 0, 1200, 0, 1000, null,false);

	Zoom("車", 1000, @-1500, @-1500, null, true);


	Delete("白");
	Wait(1000);

//あきゅん「修正指示：以下の３セリフはカット演出を使用して各キャラの表情を見せてください」
//あきゅん「修正指示：同じ場所に出さない」
//inc久保田　修整しました。

	CreateWindow("絵窓", 3500, -440, 200, 1024, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 3505, Center, Middle, "cg/bg/bg1502100柳神社_お墓_通常.jpg");
	Rotate("絵窓", 0, @0, @0, @70, null, false);


	CreateWindow("絵窓２", 3500, 540, 0, 1024, 600, false);
	SetAlias("絵窓２","絵窓２");
	Zoom("絵窓２", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓２/絵演背景２", 3505, Center, Middle, "cg/bg/bg1502100柳神社_お墓_通常.jpg");
	Rotate("絵窓２", 0, @0, @0, @70, null, false);


	CreateTextureEX("絵マスク１", 3600, -700, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateTextureEX("絵マスク２", 3600, 1100, 0, "cg/mask/ciスラッシュ_05_00z.png");



//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 3550, @-250, middle, "cg/bu/buブーa_通常_pinch.png");
	CreateTextureEX("絵窓２/絵演立絵02", 3550, @550, middle, "cg/bu/buみそa_通常_fear.png");
	CreateTextureEX("絵窓/絵演立絵03", 3550, @0, 0, "cg/bu/bu似鳥_通常_normal.png");


//動作

	Fade("絵マスク１", 200, 1000, null, false);
	Move("絵マスク１", 200, -200, @0,Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);
	Fade("絵窓２/絵演立絵２", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ブー】
<voice name="ブー" class="ブー" src="voice/bb24/010100520buu">
「な……これは！？」

{
	FadeDelete("絵窓/絵演立絵",300,null,false);
	Fade("絵マスク１", 200, 0, null, false);
	Move("絵マスク１", 200, -700, @0,Axl2, false);
	Zoom("絵窓", 200, 1000, 0, Axl2, true);
	Fade("絵マスク２", 200, 1000, null, false);
	Move("絵マスク２", 200, 220, @0,Dxl2, false);
	Zoom("絵窓２", 200, 1000, 1000, Dxl2, true);
	Fade("絵窓２/絵演立絵02", 200, 1000, null, true);

}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100530mso">
「たたたた、タヌキが化けた！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Zoom("絵窓２", 200, 1000, 0, Axl2, false);
	Move("絵マスク２", 200, 720, @0,Axl2, false);
	Fade("絵マスク２", 200, 0, null, true);

//◆ＳＥ：促すようにクラクションが鳴る

	CreateSE("SE02", "seメカ_車_クラクション_l");
	MusicStart("SE02", 0, 700, 0, 1000, null,false);

	Wait(500);

	CreateMaskAXLSP("絵マ", 3800, 0, 0, "ciスラッシュ_07_00", true, "ciスラッシュ_07_00z");
	Zoom("絵マ*", 0, 0, 1000, null, true);
	CreateColorSP("絵マ/色", 100, "#999900");//952
	CreateTextureSP("絵マ/絵背景", 3700, 0, 0, "cg/bg/bg1502100柳神社_お墓_通常.jpg");
	CreateTextureSP("絵マ/絵立11", 3750, 134, -4, "cg/bu/bu似鳥_通常_happy.png");
	Move("絵マ/絵立11", 0, @-100, @0, Dxl1, false);
	Move("絵マ/絵立11", 300, @100, @0, Dxl1, false);
	Zoom("絵マ*", 300, 1000, 1000, Dxl1, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100540nki">
「コイツに乗れってことだな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	Move("絵マ/絵立11", 100, @100, @0, Axl1, false);
	Zoom("絵マ*", 100, 0, 1000, Axl1, true);
	Delete("絵マ*");


	Zoom("絵窓", 200, 1000, 0, null, true);
	CreateSE("SE02", "seメカ_車_クラクション_l");
	TextBoxDelete(150);
	FadeDelete("車",1000, null, true);
	Delete("車");
	Delete("絵窓");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"buみそa_通常_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100550mso">
「姐さん！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buブーa_通常_normal");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bb24/010100560buu">
「ちょ……ちょっと怖いけど、行きましょう！」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100570skr">
「……わーった！　わーったよ！
　ここまでお膳立てされといて――」

{	SoundPlay("@xbgm07",0,450,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100580skr">
「据え膳食わねば女が廃る！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buみそa_通常_smile");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100590mso">
「いよっ！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buブーa_通常_smile");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/bb24/010100600buu">
「姐さん、カッコイイ！」

{	DeleteSt("MR",200,false);
	St("L",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("L",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100610nki">
「でもなんかそれ、違うような……」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100620skr">
「いよっしゃ！　みんな乗れ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100630mso">
「ウスッ！！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/bb24/010100640buu">
「ウスッ！！」
*/



{	Move("@StNameC/C*", 300, @150, @0, Axl2, false);
	DeleteSt("C",200,true);
	St("L",700, @0,@0,"buみそa_通常_smile");
	St("R",700, @0,@0,"buブーa_通常_smile");
	FadeAllSt(200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100630mso">
「ウスッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/bb24/010100640buu">
//「ウスッ！！」

</PRE>
	SetText();
	AddText(1,"「ウスッ！！","みそ","bb24/010100630mso",false,true,1000);
	AddText(2,"「ウスッ！！","ブー","bb24/010100640buu",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

{	ClockPass(2358);}

//◆ＳＥ：車に乗る
//あきゅん「修正指示：車の扉の閉まる音を入れてください」
//あきゅん「修正指示：車に乗った演出後、車の絵に戻してカット演出で進行」
//あきゅん「修正指示：車に乗ったのに背景が……」

//inc久保田　この近辺、修整および演出強化しました。

	CreateSE("ドア閉める", "seメカ_車_ドア閉める");
	MusicStart("ドア閉める", 0, 700, 0, 1000, null,false);
	DeleteAllSt(200,false);

	CreateTextureEX("みり", 3505, Center, Middle, "cg/img/imgミリＰ車.jpg");
	Fade("みり", 500, 1000, null, false);

	CreateWindow("絵窓", 3500, 0, 96, 1024, 300, false);

	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);


//	CreateTextureSP("絵窓/絵演背景", 3505, Center, Middle, "cg/bg/l/bg1502100柳神社_お墓_通常_l.jpg");
//	SetShade("絵窓/絵演背景", HEAVY);

//キャラ準備

	CreateWindow("絵窓", 3500, -440, 200, 1024, 600, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorEX("絵窓/絵演背景", 3540, "#FFAA33");
	Fade("絵窓/絵演背景", 1000, 1000, null, true);
	Rotate("絵窓", 0, @0, @0, @70, null, false);

	CreateWindow("絵窓２", 3500, 540, 0, 1024, 600, false);
	SetAlias("絵窓２","絵窓２");
	Zoom("絵窓２", 0, 1000, 0, null, true);
//	CreateTextureSP("絵窓２/絵演背景２", 3505, Center, Middle, "cg/bg/bg1502100柳神社_お墓_通常.jpg");
	Rotate("絵窓２", 0, @0, @0, @70, null, false);

	CreateColorSP("絵窓２/絵演背景２", 3550, "#003300");

	CreateTextureEX("絵マスク１", 3600, -700, 0, "cg/mask/ciスラッシュ_05_00z.png");
	CreateTextureEX("絵マスク２", 3600, 1100, 0, "cg/mask/ciスラッシュ_05_00z.png");

	CreateTextureEX("絵窓/絵演立絵", 3550, -350, middle, "cg/bu/bu沙紅羅_後ろ向き_smile.png");
	CreateTextureEX("絵窓２/絵演立絵02", 3550, @550, middle, "cg/bu/bu似鳥_通常_happy.png");

	Fade("絵マスク１", 200, 1000, null, false);
	Move("絵マスク１", 200, -200, @0,Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);
	Fade("絵窓２/絵演立絵２", 200, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100650skr">
「似鳥も、準備はいいな！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
//	FadeDelete("絵窓/絵演立絵",300,Axl2,false);
	Fade("絵マスク１", 200, 0, null, false);
	Move("絵マスク１", 200, -700, @0,Axl2, false);
	Zoom("絵窓", 200, 1000, 0, Axl2, true);
	Fade("絵マスク２", 200, 1000, null, false);
	Move("絵マスク２", 200, 220, @0,Dxl2, false);
	Zoom("絵窓２", 200, 1000, 1000, Dxl2, true);
	Fade("絵窓２/絵演立絵02", 200, 1000, null, true);
	CreateTextureEX("絵窓/絵演立絵", 3550, -350, middle, "cg/bu/bu沙紅羅_通常_smile.png");}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100660nki">
「おう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
	Zoom("絵窓２", 200, 1000, 0, Dxl2, false);
	Move("絵マスク２", 200, 720, @0,Dxl2, false);
	Fade("絵マスク２", 200, 0, null, true);
	Fade("絵マスク１", 200, 1000, null, false);
	Move("絵マスク１", 200, -200, @0,Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);
	Fade("絵窓２/絵演立絵２", 200, 1000, null, true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151c]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100670skr">
「それじゃ、ナントカドー病院に向かって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	FadeDelete("絵窓/絵演立絵",300,Axl2,false);
	Fade("絵マスク１", 200, 0, null, false);
	Move("絵マスク１", 1000, -700, @0,Axl2, false);
	Zoom("絵窓", 200, 1000, 0, Axl2, true);
	SetBlur("みり", true, 3, 150, 200,false);
	Fade("みり", 800, 0, null, false);
	CreateTextureSP("奥の車", 3400, -189, -261, "cg/img/l/imgミリＰ車飛翔_l.jpg");
	Zoom("みり", 800, 1800, 1800, Dxl1, true);
}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151d]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100680skr">
「出ぱ――――――つッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("絵窓*/絵演背景*");
	Delete("絵窓*");
	Delete("絵マスク*");

//◆ＳＥ：エンジン音



//◆演出指示：空を飛ぶ車
//あきゅん「修正指示：車が空を飛ぶ演出を入れてください」
//inc久保田　修整しました。

	CreateSE("SEエンジン", "seメカ_車_エンジン_l");
	MusicStart("SEエンジン", 0, 1000, 0, 1000, null,false);
	Zoom("絵窓", 800, 1000, 1000, null, true);
	Shake("奥の車", 300, 10, 5, 0, 0, 300, Axl1, false);
	SetBlur("奥の車", true, 3, 150, 50,false);

	Wait(300);
	Move("奥の車", 1200, @-650, @-100, Axl2, false);
	Wait(300);


	SceneOut(5000, 1000, "slide_02_01_1");

	Delete("奥の車");
	OnBG(100, "bg2401100空_上空_通常");
	FadeBG(0, true);


	SceneIn(100, "slide_02_01_0");

	Move("@OnBG*", 500, @0, @-150, Axl2, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100690mso">
「のわあああああああッ！！？」

//【ブー】
<voice name="ブー" class="ブー" src="voice/bb24/010100700buu">
「ちょ！　ま、待った！　なんだこれ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100710nki">
「車が――空を！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateTextureEX("車", 5000, @0, @0, "cg/img/imgミリＰ車飛翔.jpg");
	Request("@車", Smoothing);
	Fade("車", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100720skr">
「空を飛んでるッ！！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//◆ＳＥ：クラクション
//◆ＳＥ：急加速
//あきゅん「修正指示：カメラが場面に残り、車が去っていくような印象を受ける演出を入れて下さい」
//あきゅん「β演出：テキスト封印、音声ＳＥでフェードアウト」
//★inc櫻井　修正
//inc久保田　調整しました。


	CreateSE("SE02", "seメカ_車_クラクション_l");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);
	Zoom("車", 16000, 1300, 1300, null, false);
	Shake("車", 16000, 7, 5, 0, 0, 300, Axl1, false);
	Wait(1000);
	CreateSE("SE04", "seメカ_車_急加速");
	MusicStart("SE04", 0, 1000, 0, 1000, null,false);

	Wait(1000);
	Move("車", 500, @-950, @0, Axl2, false);
	FadeDelete("車",300,null,false);


/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100730mso">
「ぎゃああああああああぁぁぁぁ…………！！！！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/bb24/010100740buu">
「ぎゃああああああああぁぁぁぁ…………！！！！」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb24/010100750nki">
「ぎゃああああああああぁぁぁぁ…………！！！！」

//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb24/010100760skr">
「ぎゃああああああああぁぁぁぁ…………！！！！」
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb24/010100730">
「ぎゃああああああああぁぁぁぁ…………！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	CreateTextureEXadd("キラーン", 15000, @-200, @150, "cg/ef/ef036_無我の境地.jpg");
	Zoom("キラーン", 200, 500, 0, null, false);
	Fade("キラーン", 0, 1000, null, true);
	CreateSE("SE05", "se擬音_ギャグ_キラーン01");
	MusicStart("SE05", 0, 1000, 0, 1000, null,false);

	Zoom("キラーン", 200, 500, 500, null, false);
	Rotate("キラーン", 1000, @0, @0, @360, Dxl1, false);

	FadeDelete("キラーン",1500,null,true);

	EndingReady();
	Delete("みり");
	EndScene();
}
