
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2220千秋_恵那.nss_MAIN
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
	$GameName="ab2230カゴメ.nss";
}

scene ab2220千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1000">
////////////header////////////
//file name "ab2220千秋_恵那.nss"
//title "神様はどこに……？"
//previous "ab2210千秋.nss"
//previous "ab2200恵那.nss"

////////////footer////////////
//next "千秋"（"flkagome1b" = true） "aba2401千秋_フウリ.nss"
//next "恵那"（"flkagome1b" = true） "aba2400恵那.nss"

//next "千秋"（"flkagome1b" = false）"abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "恵那"（"flkagome1b" = false） "abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"




////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2220);}

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu貫太_通常_lost");
	FadeSt("C",0,true);

	FadeDelete("上背景", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100010okt">
「死んだ……？」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100020okt">
「な……なんで……」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100030okt">
「冗談……だろう？」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100040okt">
「なあ……フウリ。聞こえるだろ？」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100050okt">
「声、聞こえるよな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SoundPlay("@xbgm26",0,450,true);

	CreateTextureEX("絵背景１", 1000, Center, Middle, "cg/ev/ev2150ユージロー転倒b.jpg");
	Fade("絵背景１", 1000, 1000, null, true);
	

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100060okt">
「オレをずっと、探してたんだろ？」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100070okt">
「やっと……やっと会えたんだぞ！」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100080okt">
「なあ！　返事してくれよ！」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100090okt">
「聞いてくれ……聞いてくれよ……」


//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100100okt">
「そんな……笑顔で……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2221);}


	TextBoxDelete(150);

	St("C",700, @0,@0,"bu貫太_通常_cry");
	FadeSt("C",0,true);

	Fade("絵背景１", 1000, 0, null, true);
	Delete("絵背景１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/ab22/200100110okt">
「ううっ……う……う……」


{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100120kit">
「そんな……駄目……なのか？」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100130kit">
「自分は生き返らせられても――」

{	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100140fje">
「そうよ！　貫太さんは生き返れた――」


{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100150fjh">
「――――」


　平次は、静かに首を振る。


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100160fjh">
「そっとしておいてやるんだな」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100170fje">
「でも……」

{	St("C",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100180fjh">
「ふたりとも、家に帰ってろ」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100190fjh">
「こういうのは、慣れてんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("R",700, @0,@0,"bu恵那_哀愁_shock");
	St("L",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100200fje">
「…………」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100210kit">
「…………」


{	St("C",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100220fjh">
「嬢ちゃん」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100230kit">
「お……オレ？」


{	St("C",700, @0,@0,"bu平次_通常_cool");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100240fjh">
「恵那、家まで送ってやってくれるか？」


{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100250fje">
「だ、大丈夫よ。私ひとりで――」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100260fjh">
「無理すんな。な？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100270fje">
「…………」

{	St("C",750, @-160,@0,"buユージローa_通常_sad");
	Move("@StNameC/C*", 500, @60, @0, DxlAuto, false);
	FadeSt("C",500,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/200100280ujr">
「くぅん……」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100290fje">
「ユージローも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2222);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",650, @-60,@0,"bu千秋_朗らか_normal");
	DeleteSt("C", 200,false);
	Move("@StNameML/ML*", 200, @60, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100300kit">
「行こう、恵那」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100310fje">
「……うん」

{	St("ML",650, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100320kit">
「オヤジさん、後は頼んだぞ！」

{	St("C",700, @0,@0,"bu平次_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100330fjh">
「おう、任せろ」

{	St("MR",700, @0,@0,"buユージローa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 200, 0, 5, 0, 0, 500, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab22/200100340ujr">
「わうわうっ！」


{	St("C",700, @0,@0,"bu平次_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100350fjh">
「おう！　ユージローも、よろしくな！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteAllSt(0,false);
	Delete("@OnBG*");
	WaitKey(1000);


{	ClockPass(2223);}


//※下倉注：ここ、bg1102100スパコン館_通路_通常 に：済

//◆場所：スパコン館_裏面
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

//	SoundPlay("@xbgm25",0,450,true);



//あきゅん「修正指示：以降の恵那の表情、ロストはやり過ぎなので調整して下さい」
//※lostが使用されていた３箇所をshockに修正しました（mngw 11/18）

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]


{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100360kit">
「…………」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100370fje">
「…………」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 30000);

	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,300,0,1000,null,true);


//◆時間：ジャンプ

{	ClockPass(2226);}

//※下倉注：ここ　秋葉原_中央通り → bg1101300スパコン館_裏面_電柱折れ に：済

	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100380kit">
「……ゴメン」


{	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100390kit">
「もうちょっと早く、迎えに行けてたら――」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100400fje">
「…………」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100410fje">
「ねえ、アッキーちゃん」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100420fje">
「神様って……いないのかな」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100430kit">
「え……」


{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100440fje">
「結局、ミヅハちゃんも、間に合わなかったし……」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100450fje">
「貫太さんは、あんなだし……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100460fje">
「私は……母さんから……」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100470kit">
「恵那――」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100480kit">
「おい恵那！　しっかり――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：大破壊
//	SetVolumeEX("@xbgm*", 0, 0, null);
	SetVolumeEX("SE*", 300, 0, null);

	CreateSE("SE01","se戦闘_爆発03");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);



	Shake("@OnBG*", 1000, 5, 5, 0, 0, 500, null, false);
	Fade("絵色白", 1000, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("R",700, @0,@0,"bu恵那_哀愁_worry");
	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100490fje">
「え？」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100500kit">
「た――」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

{	ClockPass(2228);}


//◆ＥＶ："ev/ev2220太四郎ビル大破壊.txt"

	CreateTextureEX("絵背景２_l", 1000, Center, Middle, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	Move("絵背景２_l", 0, -500, -300, Dxl1, false);
	Fade("絵背景２_l", 500, 1000, null, false);
	Move("絵背景２_l", 1000, -500, 0, Dxl1, true);

	DeleteAllSt(200,false);
	Delete("@OnBG*");

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	CreateSE("SE02","se戦闘_爆発01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("絵背景２", 1000, Center, Middle, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	Move("絵背景２", 0, 0, 0, Dxl1, false);
	Zoom("絵背景２", 0, 2000, 2000, null, true);
	Fade("絵背景２", 0, 1000, null, true);


	Shake("絵背景２", 1000, 10, 10, 0, 0, 500, null, false);
	Zoom("絵背景２", 1000, 1000, 1000, Dxl2, false);
	Fade("絵色白", 500, 0, null, true);
	Delete("絵色白");
	Delete("絵背景２_l");

	SoundPlay("@xbgm22",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0119]
//◆音声指示：同時
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100510fje">
「タヌキぃぃッッ！？」
{WaitAddText();}<BR>

//◆音声指示：同時
//【小碓千秋】
//<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100520kit">
//「タヌキぃぃッッ！？」

</PRE>
	SetText();
	AddText(1,"「タヌキぃぃッッ！？」","富士見恵那","ab22/200100510fje",false,false,1000);
	AddText(2,"「タヌキぃぃッッ！？」","小碓千秋","ab22/200100520kit",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100530kit">
「な……なんでタヌキが！？」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100540kit">
「フウリさんは、でも死んだんじゃ――」


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100550fje">
「もしかして……貫太さん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：咆吼の振動や衝撃は的な勢いを入れてください」
//※私の作業前にすでに命令が設置されていました。（mngw 11/18）
/*
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ab22/200100560tsr">
「ぐおおおおおおおおお！！」
*/

	CreateVOICE("その他男声","ab22/200100560tsr");
	MusicStart("その他男声",0,1100,0,1000,null,false);

	CreateSE("SE01","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,500,0,1200,null,false);
	EffectZoomadd(2000, 500, 500, "cg/ef/ef034_精神汚染.jpg", false);
	BGPlainShake(1010, 2000, 8, 30, 0, 0, 1000, Dxl2, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100570kit">
「正気、失ってる！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01", 4000, 0, null);

	TextBoxDelete(150);

//※下倉注：ここで背景を bg1101400スパコン館_裏面_半廃墟 に（スパコン感からタヌキが出たことを強調）：済

	CreateMovieEX("ムービー１", 800, Center, Middle, true, true, "dx/mvk100.ngs");
	Request("ムービー１", AddRender);
	Zoom("ムービー１", 0, 3000, 3000, null, true);
	Fade("ムービー１", 0, 1000, null, true);

	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("C",0,true);

	WaitAction("@絵演背景自動生成振動", null);

	Fade("絵背景２", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100580kit">
「マズい！　逃げ――」


{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100590kit">
「おい恵那！　どこに行く！」

{	DeleteAllSt(200,true);
	St("ML",700, @120,@0,"bu恵那_ハルヒ_shock");
	Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100600fje">
「中に父さんがッ！！」

{	St("MR",700, @0,@0,"bu千秋_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100610kit">
「あの中に！？　おい、冗談じゃ――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(0);

//◆ＳＥ：大破壊
	CreateSE("SE01","se戦闘_爆発03");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);
	Delete("@OnBG*");

	CreateTextureSP("絵背景２", 1900, Center, Middle, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	Fade("絵背景２", 0, 1000, null, true);
	Wait(16);

//	Shake("絵背景２", 500, 5, 5, 0, 0, 500, null, false);
	BGPlainShake(2010, 2000, 5, 20, 0, 0, 1000, Dxl1, false);
	Fade("絵色白", 500, 0, null, true);
	Delete("絵色白");

	CreateVOICE("その他男声","ab22/200100620tsr");
	MusicStart("その他男声",0,1500,0,1000,null,false);

	Wait(1000);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ab22/200100620tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

//	TextBoxDelete(150);

	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);

	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("MR",0,true);

	WaitAction("@絵演背景自動生成振動", null);

	SetVolumeEX("その他男声", 500, 700, null);
	Fade("絵背景２", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100630kit">
「ま……マジであの中に入るの！？」

{	St("MR",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100640kit">
「う……うう……うッ！」

{	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	Shake("@StNameMR/MR*", 300, 0, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100650kit">
「ああッ！　クソおおッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE01", 4000, 0, null);
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,true);


	TextBoxDelete(150);


	SceneOut(5000, 300, "slide_01_01_0");


{	ClockPass(2229);}

//※下倉注：背景を bg1102200スパコン館_通路_半崩壊 に：済


//◆場所：スパコン館_通路
	OnBG(10,"bg1102200スパコン館_通路_半崩壊");
	FadeBG(0,true);
	WaitKey(500);

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @120,@0,"bu恵那_哀愁_worry");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100660fje">
「父さん！　父さんッ！！」


{	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,true);
	St("ML",700, @120,@0,"bu千秋_通常_normal");
	Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100670kit">
「オヤジさん！　いるかッ！？」

{	Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,true);
	St("MR",700, @120,@0,"bu恵那_哀愁_pinch");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100680fje">
「どこ？　どこに――」


//◆演出指定：ビル揺れる

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);


//◆ＳＥ：大破壊
	CreateSE("SE01","se戦闘_爆発03");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);

	CreateTextureEX("絵背景２", 1000, Center, Middle, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	Fade("絵背景２", 0, 1000, null, true);

//	Shake("絵背景２", 2500, 10, 10, 0, 0, 500, null, false);
//	Shake("絵背景２", 500, 5, 5, 0, 0, 500, null, false);
	BGPlainShake(1010, 2500, 10, 30, 0, 0, 1000, Dxl1, false);
	Fade("絵色白", 500, 0, null, true);
	Delete("絵色白");

	CreateVOICE("その他男声","ab22/200100690tsr");
	MusicStart("その他男声",0,1500,0,1000,null,false);
	Wait(1000);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ab22/200100690tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/

//	TextBoxDelete(150);

	OnBG(10,"bg1102200スパコン館_通路_半崩壊");
	FadeBG(0,true);

	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",0,true);

	WaitAction("@絵演背景自動生成振動", null);

	SetVolumeEX("その他男声", 500, 750, null);
	Fade("絵背景２", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100700kit">
「ダメだ！　ビル、もう限界だよ！」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100710kit">
「オレたちだけでも逃げよう！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100720fje">
「でも！」

{	St("ML",700, @0,@0,"bu千秋_気合い_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100730kit">
「みんな死んだら、意味ないって！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100740fje">
「わかってる！　わかってるけど！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_cry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100750fje">
「それでも、父さんは、私の父さんなの――ッ！」


{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100760kit">
「…………」


{	DeleteAllSt(200,false);
	SetVolumeEX("SE01", 4000, 0, null);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100770fjh">
「おい……聞こえるか？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100780fje">
「……父さん！？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@60,"bu平次_落ち込み_pain");
	Move("@StNameC/C*", 1000, @0, @-60, DxlAuto, false);
	FadeSt("C",1000,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100790fjh">
「ったく……しょうもねぇやつだな……」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100800fje">
「な！？　脚――」


　暗闇に隠れるように横たわる平次の脚は、瓦礫にえぐられ真っ赤に塗れていた。


{	St("C",700, @0,@0,"bu平次_落ち込み_pain");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100810fjh">
「貫太がでかくなったとき、やられちまった」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100820fje">
「アッキーちゃん！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100830kit">
「わかってる！」

{	St("MR",700, @0,@30,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 500, @0, @-30, DxlAuto, false);
	Shake("@StNameMR/MR*", 500, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",500,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100840fje">
「ん……しょ、んん……ん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @0,@30,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 500, @0, @-30, DxlAuto, false);
	Shake("@StNameML/ML*", 500, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100850kit">
「ふんぐ……ぐぐ……」

{	St("ML",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200100860kit">
「くそ……重い……」

{	St("C",700, @0,@0,"bu平次_落ち込み_pain");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100870fjh">
「オレを置いて逃げろ！」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100880fjh">
「……って言っても、聞かねぇか」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100890fje">
「当たり前でしょ！」


{	St("MR",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100900fje">
「私、だって、まだ――父さんを、誤解してて！
　誤解してばっかりで――」

{	St("C",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100910fjh">
「オレを――許してくれるのか？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100920fje">
「許さないッ！」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100930fje">
「今まで嘘ついてた分！　嘘ついて、嫌われてた分！
　ちゃんと、ちゃんと、好きになってあげるんだから！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100940fje">
「そうなるまで――
　幸せになるまで、死なせてなんてあげないっ！！」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100950fjh">
「バカ野郎」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100960fjh">
「おまえたちはずっと、オレを支えてくれたんだよ……」


//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab22/200100970fjh">
「側にいるだけで……幸せだったんだよ」


{	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab22/200100980fje">
「父さん……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(0);

//◆演出指定：一際大きな叫び声

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);


//◆ＳＥ：大破壊
	CreateSE("SE01","se戦闘_爆発03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景２", 500, Center, Middle, "cg/ev/ev2220太四郎ビル大破壊.jpg");
	Zoom("絵背景２", 0, 1100, 1100, null, true);
	Fade("絵背景２", 0, 1000, null, true);

	Shake("絵背景２", 3000, 5, 5, 0, 0, 500, null, false);
	Fade("絵色白", 1000, 0, null, true);
	Delete("絵色白");

	CreateVOICE("その他男声","ab22/200100990tsr");
	MusicStart("その他男声",0,1500,0,1000,null,false);
	Wait(1000);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/ab22/200100990tsr">
「ぐおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/



	TextBoxDelete(150);

	OnBG(10,"bg1102200スパコン館_通路_半崩壊");
	FadeBG(0,true);

	SetVolumeEX("太四郎*", 400, 700, null);
	Fade("絵背景２", 200, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("ML",700, @0,@0,"bu千秋_頭突き_rage");
	Shake("@StNameML/ML*", 200, 0, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab22/200101000kit">
「恵那！　危ない――ッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：瓦礫に辺りが包まれる
//◆演出指定：ふたり死亡

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);
	SetVolumeEX("SE01", 4000, 0, null);

//◆ＳＥ：大破壊
	CreateSE("SE03","se戦闘_爆発03");
	MusicStart("SE03",0,700,0,1000,null,false);
//	Shake("@OnBG*", 5000, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 5000, 0, 0, 10, 60, 1000, Dxl1, false);
	Shake("@StNameML/ML*", 5000, 10, 10, 0, 0, 500, null, false);

	CreateColorEXadd("絵色白", 20000, "WHITE");
	Fade("絵色白", 3000, 1000, null, true);

	DeleteAllSt(0,false);
	Delete("@OnBG*");
	Delete("ムービー*");

	WaitKey(3000);

	SetVolumeEX("@SE*", 5000, 0, null);

	CreateColorEX("絵色黒", 20010, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

	Delete("絵色白");

	WaitKey(2000);
	SetVolumeEX("SE03", 3000, 0, null);
	WaitKey(1000);


	EndScene();
}
