
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bb2220沙紅羅_似鳥.nss_MAIN
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

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "ba2230沙紅羅_似鳥.nss";
	//$GameCircle=false;

}

scene bb2220沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="710">
////////////header////////////
//file name "bb2220沙紅羅_似鳥.nss"
//title "どうすれば……？"
//previous "b2213沙紅羅.nss"
//previous "b2220カゴメアソビ.nss"

////////////footer////////////
//next "沙紅羅" "ba2230沙紅羅_似鳥.nss"
//next "似鳥" "ba2230沙紅羅_似鳥.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

{	ClockPass(2220);}

//◆場所：あにのあな_屋上


//◆ＳＥ：屋上の扉を開ける
//あきゅん「修正指示：カゴメアソビＣＧは使用しない」


//★inc櫻井　修正
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

//★inc櫻井　カゴメアソビCG使用不可のため、上背景消去法をFadeDeleteへ

	FadeDelete("上背景",500,null,true);


//◆ＳＥ：屋上の扉を開ける
	CreateSE("扉開ける", "se動作_屋上ドア開ける");
	MusicStart("扉開ける", 0, 700, 0, 1000, null, false);

	St("C",700, @50,@0,"bu沙紅羅_通常_shout");
	Move("@StNameC/C*", 300, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100010skr">
「ノーコッ！！　似鳥ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：発砲音はＮＧ、ただ倒れる演出のみで」
//★inc櫻井　銃声消去
	TextBoxDelete(150);

	CreateColorEXadd("フラッシュ", 15000, WHITE);
	Fade("フラッシュ", 300, 1000, null, true);
	CreateColorEX("フラッシュ赤", 15100, "#CC0000");
	Fade("フラッシュ赤", 300, 1000, null, true);
	Delete("フラッシュ");
	Delete("絵背景２");
//	OnBG(10,"l/bg0303100あにのあな_屋上_通常_l");
//	FadeBG(0,true);
	DeleteSt("C",0,true);
	CreateSE("ブシュー", "se戦闘_血しぶき01");
	MusicStart("ブシュー", 0, 700, 0, 1000, null,false);

	Wait(1500);

//★inc櫻井　印象づけのため、SE音量1000

	CreateSE("倒れる", "se人体_倒れる04");
	MusicStart("倒れる", 0, 1000, 0, 1000, null,false);
	CreateColorSP("下黒", 50, BLACK);

	CreateTextureSP("死体", 1000, 400, @-900, "cg/bu/l/buノーコa_通常_normal_x03.png");
	Rotate("死体", 0, @0, @0, @-40, null, false);
	SetShade("死体", SEMIHEAVY);

	FadeDelete("フラッシュ赤",1500,null,true);


//◆ＳＥ：カゴメアソビ失敗
//★inc櫻井　印象付けのため、SE音量1000に

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100020nki">
「…………」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100030skr">
「似鳥……ノーコ……」


//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/200100040mrp">
「――ッ！　マズい！」


//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/200100050mrp">
「死体を映しちゃ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 500, "blind_01_00_0");

	Delete("死体");
	Delete("下黒");

	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");

//あきゅん「修正指示：ノーコ立ち絵を使用しないで背景演出でやる」
//あきゅん「修正指示：枠演出不要」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　ミリＰが慌てて、横たわるノーコからカメラを逸らす。

　彼女の顔からは、止めどなく血が流れている。

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100060nki">
「う……うう……う……うううう……」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100070nki">
「ノーコ……ノーコ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100080nki">
「なあ、うそだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：金色に光って消えていくノーコの身体
//まだBGM入れないほうが良いでしょう
//	SoundPlay("@xbgm26", 0, 1000, true);

	CreateSE("消滅", "se擬音_ノーコ消滅");
	MusicStart("消滅", 0, 1000, 0, 1000, null, false);


	CreateColorEXadd("絵色100", 1500, "YELLOW");

	CreateTextureEXadd("光", 1000, @0, @0, "cg/data/circle_12_00_1.png");
	Fade("絵色100", 1000, 300, null, false);
	Fade("光", 1000, 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100090nki">
「え……？　おい、身体……？」

　似鳥が抱きしめるノーコの身体は、ゆっくりと輪郭がぼやけ、透けていく。

{	Fade("光", 500, 1000, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100100nki">
「や……やめろよ、おい！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100110nki">
「ノーコ！　行くな！　行くなって！」

{	Fade("光", 500, 800, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100120nki">
「バカ！　待てよ！　聴け！　言うこと聞けって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2221);}

	FadeDelete("絵色100", 1500, null, false);
	Fade("光", 500, 500, null, false);

	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100130nki">
「コラおい！　おいってば！！」

{	Fade("光", 500, 300, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100140nki">
「ノーコ……！　ノーコ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100150nki">
「ノーコ――――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("光", 1500, 0, null, true);

	Delete("光");


	TextBoxDelete(150);


	SetVolume("@xbgm*", 1000, 0, null);
	SetVolume("消滅", 1000, 0, null);


//◆ＳＥ：カラン！　カッターナイフが落ちる
	CreateSE("カッター落ちる", "se戦闘_カッター_転がる");
	MusicStart("カッター落ちる", 0, 1200, 0, 1000, null,false);

	CreateTextureEX("カッター", 2000, @0, @0, "cg/img/imgカッター刃元a.jpg");
	Rotate("カッター", 0, @0, @0, @180, null,true);
	Fade("カッター", 1000, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　ノーコの姿が消え、代わりにカッターナイフが落ちた。

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100160nki">
「あ……あ……あああ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100170nki">
「おわ……った……？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100180nki">
「おわり……おわり……だ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：時間開ける
//あきゅん「修正指示：時間経過でトランジはなしで、暗転ゆっくり」

//★inc櫻井　修正

	CreateColorEX("黒", 20000, BLACK);
	Fade("黒", 1500, 1000, null, true);

	Delete("カッター");
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);


	CreateSE("風", "se環境_風_l");
	MusicStart("風", 3000, 700, 0, 1000, null, true);

//◆時間：ジャンプ
{	ClockPass(2224);}


	FadeDelete("黒",1500,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100190skr">
「似鳥……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100200skr">
「大丈夫か……？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100210nki">
「あ……はは……あはははは……」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100220nki">
「わかんね……わかんねーや……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100230nki">
「なんで……なんで、こうなっちまったんだ？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100240skr">
「似鳥……」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100250nki">
「なあ、沙紅羅……教えてくれないか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100260nki">
「オレ……いったい……どうすれば……
　どうすればよかったんだ？」

{	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100270nki">
「おまえがオレだったら――どうしてた！？」


{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100280skr">
「…………」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100290skr">
「悪ぃ。わかんねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100300skr">
「それ、やっぱり、おまえのいうとおりだわ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100310skr">
「自分で引き受けて、乗り越えて、その先を掴むべき。
　そういう悩みだわ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100320skr">
「アタシには……なにもできねぇ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100330skr">
「……すまねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2225);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100340nki">
「ああ…………」

{	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100350nki">
「…………うん」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100360skr">
「悪い」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100370nki">
「ん、いや……いい」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buミリＰb_ショータイム_angry");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/200100380mrp">
「さあさあ！　テレビ中継は中止されちゃったけど、こうしてる場合じゃないわよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100390skr">
「あ、そうだ！　やべ！
　――似鳥、アザナエル借りてくぞ！」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100400nki">
「え？　なんで――」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100410skr">
「時間がねぇ！　一緒に来いッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆場所：秋葉原_中央通り

	SceneOut(20000, 1000, "blind_01_00_0");
	SetVolume("風", 1000, 0, null);

//◆時間：ジャンプ
{	ClockPass(2226);}
	Wait(1500);

	DeleteSt("C",0,true);
	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);

	CreateSE("集団走る", "se動作_集団走る");
	MusicStart("集団走る", 1500, 700, 0, 1000, null,true);
	Wait(1000);
	SceneIn(1000, "blind_01_00_1");

	SoundPlay("@xbgm22", 0, 450, true);

//★inc櫻井　集団で動かすと少し気持ち悪いので沙紅羅が代表で動いています。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("C",700, @150,@0,"bu沙紅羅_通常_hard");
	Move("@StNameC/C*", 300, @-150, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100420skr">
「フウリが今……腹を切られて、死にかけてる」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/200100430mrp">
「フウリって……あのフウリちゃん！？
　なんで、ワケわかんない！」

//◆音声指示：小声
{	DeleteSt("MR",200,false);
	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100440nki">
「切られてって――もしかして――」

//◆音声指示：小声
{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100450nki">
「ノーコの、せい？」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100460skr">
「普通の医者には治せねぇ！
　こいつを使うしかないんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);





{	ClockPass(2227);}


//◆場所：スパコン館_裏面

	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteSt("C",200,false);
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	SetVolume("集団走る", 1000, 0, null);

	CreatePlainSP("揺用01", 50);

	SceneIn(1000, "blind_01_00_1");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/200100470mrp">
「でも、大丈夫なの？」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100480skr">
「大丈夫って、なにが？」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/200100490mrp">
「だって、さっき一発撃っちゃったってことは……」


{	SetVolume("@xbgm*", 300, 0, null);
	DeleteSt("MR",200,false);
	CreateSE("地鳴り01", "se環境_地鳴り03");
	MusicStart("地鳴り01", 0, 500, 0, 1000, null,false);
	Shake("揺用01", 300, 12, 12, 0, 0, 1000, Dxl1, true);

	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100500skr">
「ん？」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100510nki">
「なんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteSt("MR",200,false);
	CreateSE("地鳴り02", "se環境_地鳴り03");
	MusicStart("地鳴り02", 0, 700, 0, 1000, null,false);

//★inc櫻井　揺れが大きく	
	Shake("揺用01", 300, 16, 18, 0, 0, 1000, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/200100520mrp">
「地鳴り？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2228);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：大破壊
//あきゅん「修正指示：画面揺らすなどして迫力感を出してください」

//煙プロセス
	CloudZoomSmokeSubSet01EX("スモークプロセスA",2000,"cg/ef/efスモーク.png");
//	CloudZoomSmokeSubStart01EX(速度,間隔,濃度,開始拡大度,終了拡大度,角度,開始X,開始Y,移動X,移動Y,テンポ)


	SetVolumeEX("@xbgm*", 1500, 0, null);

	CreateTextureEX("絵背景EV01", 100, 0, -555, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	CreateTextureEX("絵背景破壊01", 100, -824, -150, "cg/bg/l/bg1101400スパコン館_裏面_半廃墟_l.jpg");
	Rotate("絵背景破壊*", 0, @0, @0, 20, null,true);
	Zoom("絵背景破壊*", 0, 3000, 3000, null, true);

//◆ＳＥ：大破壊
	CreateSE("SE01a","se戦闘_破壊01");
	CreateSE("SE01","se戦闘_倒壊01");
	CreateSE("SE02","se戦闘_倒壊04");

	MusicStart("SE01a",0,700,0,1000,null,false);
	Fade("絵背景EV01", 0, 1000, null, false);
	FadeF4("絵背景EV01", 1000, 1000, 1000, 0, 0, Dxl1, false);
	Zoom("絵背景EV01", 1000, 1500, 1500, Dxl2, 900);

	MusicStart("SE01",0,700,0,1000,null,false);

	Rotate("絵背景破壊*", 3000, @0, @0, 0, Axl1,false);
	Move("絵背景破壊*", 3000, -512, -570, Axl1, false);
	Shake("絵背景破壊01", 3000, 50, 0, 10, 0, 500, Dxl1, false);
	Zoom("絵背景破壊*", 3000, 1000, 1000, Axl3, false);

	Fade("絵背景破壊01", 0, 1000, null, true);
	DrawTransition("絵背景破壊01", 100, 0, 1000, 100, null, "cg/data/zzex_circle_01_00_0.png", false);

	CloudZoomSmokeSubStart01EX(2500,25,50,6500,10000,900,400,200,760,-100,Dxl1);

//	Fade("絵背景破壊02", 2000, 0, Axl1, false);
//	DrawTransition("絵背景破壊02", 3000, 1000, 0, 200, Axl2, "cg/data/worm_01_00_0.png", false);

	Wait(2700);
	MusicStart("SE02",0,1500,0,1000,null,false);
	Wait(100);
	Fade("絵背景破壊01", 0, 1000, null, true);
	Shake("絵背景破壊01", 3000, 15, 5, 0, 0, 1000, Dxl1, false);
	FadeF4("絵背景破壊01", 3000, 1000, 3000, 0, 0, Dxl1, true);

	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);


	Wait(1000);

	CloudZoomSmokeSubDelete01EX(2000);
	Move("絵背景破壊01", 1000, -512, -288, AxlDxl, false);
	Zoom("絵背景破壊01", 1000, 500, 500, AxlDxl, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0149]
{	St("C",710, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100530skr">
「え――？」

{	St("R",700, @-50,@0,"bu似鳥_通常_shock");
	FadeSt("R",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100540nki">
「うそォ――」

{	St("L",700, @0,@0,"buミリＰa_通常_shock");
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/200100550mrp">
「た――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);






//◆ＥＶ："ev/ev2220太四郎ビル大破壊.txt"
//あきゅん「修正指示：すこしもっさりしている、テンポの調整等でメリハリ付ける」
//★inc櫻井　修正


//★ inc櫻井　音声同時らしいのでコメントアウトしています。
/*
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100560skr">
「タヌキぃぃッッ！？」

//◆音声指示：同時
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100570nki">
「タヌキぃぃッッ！？」

//◆音声指示：同時
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/200100580mrp">
「タヌキぃぃッッ！？」

*/


	CreateTextureEX("タヌキ", 15000, Center, @-288, "cg/ev/l/ev2220太四郎ビル大破壊_l.jpg");
	SetBlur("タヌキ", true, 1, 500, 80, false);

	Zoom("タヌキ", 300, 500, 500, Dxl1, false);
	Fade("タヌキ", 300, 1000, null, true);
	DeleteSt("MR",0,true);
//	SetBlur("タヌキ", true, 3, 500, 50,false);

	DeleteAllSt(0,true);

	Delete("絵背景*");
	Delete("揺用01");

//別ルートとあわせました
	SoundPlay("@xbgm31", 0, 450, true);

	Wait(200);
//◆音声指示：同時



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100560">
「タヌキぃぃッッ！？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100590nki">
「ってか……でけぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	CreateSE("SE01","se戦闘_倒壊03");
	MusicStart("SE01",0,700,0,1000,null,false);

	BGPlainShake(15020, 1000, 10, 8, 0, 0, 1000, Dxl1, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【太四郎】
<voice name="太四郎" class="その他男声" src="voice/bb22/200100600tsr">
「ぐおおおおおおおおお！！」


//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/bb22/200100610mrp">
「正気を失ってる？」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100620skr">
「タヌキってことは、やっぱりフウリ……？」

//【ブー】
<voice name="ブー" class="ブー" src="voice/bb22/200100630buu">
「いや、あいつは貫太です」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("@SE01*", 1500, 0, null);
	TextBoxDelete(150);

{	ClockPass(2229);}


//◆場所：スパコン館_裏面_崩壊
	OnBG(10,"bg1101400スパコン館_裏面_半廃墟");
	FadeBG(0,true);

	St("L",700, @0,@0,"buブーa_通常_pinch");
	St("C",690, @0,@0,"bu平次_通常_hard");
	St("R",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",0,false);
	FadeSt("C",0,false);
	FadeSt("R",0,true);
	Fade("タヌキ", 300, 0, null, true);
	Delete("タヌキ");
	Wait(1000);

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100640skr">
「ブー！　みそ！　平次も！
　無事だったのか！？」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/bb22/200100650fjh">
「オレたちはな。でも――フウリは――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100660nki">
「それが――フウリか」


　みそが抱いているのは、腹を割かれ、真っ赤な血を流す一匹のタヌキの姿――

　しかしその胸は、もう呼吸をやめていた。

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_sad");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/bb22/200100670mso">
「結局、貫太の治療は間に合わなくて、それで……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	CreateSE("破壊", "se戦闘_倒壊01");
	MusicStart("破壊", 0, 1000, 0, 1000, null);
	CreatePlainSP("揺用", 50);
	Shake("揺用", 300, 12, 12, 0, 0, 1000, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100680nki">
「なあ、貫太っていうのは？
　あの大狸……なのか？」

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/bb22/200100690skr">
「ああ。フウリの古い友人だって言ってた」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/bb22/200100700fjh">
「懸命に治療したんだけど、間に合わなくてな。
　目の前でフウリが命を失って、それで――」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/bb22/200100710nki">
「やっぱり……これ……ノーコがつけた傷……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★inc櫻井　次ファイルである「ba2230沙紅羅_似鳥」でもBGM19が流れ続けたままなので、停止はしていません。

	EndScene();
}
