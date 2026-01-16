
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2230沙紅羅_似鳥.nss_MAIN
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
	$GameName = "c2233沙紅羅_似鳥_フウリ.nss";
//	$GameCircle=false;

}


scene c2230沙紅羅_似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="550">
////////////header////////////
//file name "c2230沙紅羅_似鳥.nss"
//title "百野殺駆"
//previous "2230カゴメアソビ3.nss"

////////////footer////////////
//next "沙紅羅" "c2233沙紅羅_似鳥_フウリ.nss"
//next "似鳥" "c2233沙紅羅_似鳥_フウリ.nss"



////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2230);}

//◆場所：あにのあな_屋上
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);


//あきゅん「修正指示：カゴメアソビＣＧは使用しない」
//★inc櫻井　修正


//★inc櫻井　カゴメアソビCG使用不可のため、上背景消去法をFadeDeleteへ

	FadeDelete("上背景",500,null,true);

//◆ＳＥ：屋上の扉を開ける
	CreateSE("扉開ける", "se動作_屋上ドア開ける");
	MusicStart("扉開ける", 0, 700, 0, 1000, null, false);

	St("C",700, @100,@0,"bu沙紅羅_通常_shout");
	Move("@StNameC/C*", 200, @-100, @0, Dxl3, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100010skr">
「ノーコッ！！　似鳥ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：発砲音はＮＧ、ただ倒れる演出のみで」
//★inc櫻井　修正
//★inc櫻井　bb2220流用
	TextBoxDelete(150);

	CreateColorEXadd("フラッシュ", 15000, WHITE);
	Fade("フラッシュ", 300, 1000, null, true);
	CreateColorEX("フラッシュ赤", 15100, RED);
	Fade("フラッシュ赤", 300, 1000, null, true);
	Delete("フラッシュ");

	DeleteSt("C",0,true);

	CreateSE("ブシュー", "se戦闘_血しぶき01");
	MusicStart("ブシュー", 0, 700, 0, 1000, null,false);

	Wait(1500);

//★inc櫻井　印象付けのため、SE音量1000に

	CreateSE("倒れる", "se人体_倒れる04");
	MusicStart("倒れる", 0, 1000, 0, 1000, null,false);
	CreateColorSP("下黒", 200, BLACK);

	CreateTextureSP("死体", 1000, 100, -450, "cg/bu/l/buノーコa_通常_normal_x03.png");
	Request("死体", Smoothing);
	Rotate("死体", 0, @0, @0, @+45, null, false);
	SetShade("死体", MEDIUM);

	FadeDelete("フラッシュ赤",1500,null,true);

//◆ＳＥ：カゴメアソビ失敗
//★inc櫻井　印象付けのため、SE音量1000に

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400040nki">
「ノーコ……ノーコ……！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/22/300400050nki">
「聞こえるか……？　ノーコ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100020nki">
「…………」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100030skr">
「似鳥……ノーコ……」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c22/300100040mrp">
「――ッ！　マズい！」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c22/300100050mrp">
「死体を映しちゃ……」

　ミリＰが慌てて、横たわるノーコからカメラを逸らす。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//★inc櫻井　bb2220流用


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, Dxl1, "cg/data/slide_04_01_1.png", true);


	Delete("死体");
	Delete("下黒");

	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	DrawDelete("黒幕１", 500, 100, Dxl1, "slide_04_01_0", true);


//あきゅん「修正指示：ノーコ立ち絵を使用しないで背景演出でやる」
//あきゅん「修正指示：枠演出不要」
//★inc櫻井　修正

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100060nki">
「う……うう……う……うううう……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100070nki">
「ノーコ……ノーコ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100080nki">
「なあ……うそだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：金色に光って消えていくノーコの身体

//	SoundPlay("@xbgm24", 0, 1000, true);

	CreateSE("消滅", "se擬音_ノーコ消滅");
	MusicStart("消滅", 0, 1000, 0, 1000, null, false);

	CreateTextureEXadd("光", 100, @0, @0, "cg/data/circle_12_00_1.png");
	Fade("光", 1000, 200, null, true);

	nooko_flash();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100090nki">
「え……？　おい、身体……？」

　似鳥が抱きしめるノーコの身体は、ゆっくりと輪郭がぼやけ、透けていく。

{	Fade("光", 1000, 500, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100100nki">
「や……やめろよ、おい！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100110nki">
「ノーコ！　行くな！　行くなって！」

{	Fade("光", 1000, 800, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100120nki">
「バカ！　待てよ！
　聞け！　言うこと聞けって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("光", 500, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100130nki">
「コラおい！　おいってば！！」

{	Fade("光", 500, 300, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100140nki">
「ノーコ……！　ノーコ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100150nki">
「ノーコ――――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	nooko_flashDelete(1500,false);
	Fade("光", 1500, 0, null, true);
	Delete("光");

//	SetVolume("@xbgm*", 1000, 0, null);
	SetVolume("消滅", 1000, 0, null);

//cono：カッターが落ちる演出を追加

	CreateColorEX("絵色100", 1500, "BLACK");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0303100あにのあな_屋上_通常.jpg");
	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/img/l/imgカッター刃元b_x01.png");
	SetBlur("絵背景200", true, 2, 500, 30, false);
	SetShade("絵背景100", MIDEUM);
	Zoom("絵背景100", 0, 3000, 3000, null, true);

	Move("絵背景100", 0, @0, @-100, null, true);
	Move("絵背景200", 0, @0, @100, null, true);

	Fade("絵背景100", 200, 1000, null, false);
	Fade("絵背景200", 200, 1000, null, false);
	Rotate("絵背景200", 50000, @0, @0, @820, Dxl1,false);

	Move("絵背景100", 2100, @0, @-100, null, false);

	Move("絵背景200", 1000, @-50, @-100, Dxl3, true);
	Move("絵背景200", 1000, @-50, @100, Axl2, false);
	Wait(500);
	Fade("絵色100", 500, 1000, null, true);
	SetVolumeEX("SE*", 500, 0, null);

//◆ＳＥ：カラン！　カッターナイフが落ちる
	CreateSE("カッター落ちる", "se戦闘_カッター_転がる");
	SoundEffect("カッター落ちる","Echo",100,50,300,300);
	MusicStart("カッター落ちる", 0, 1000, 0, 1000, null,false);

	Wait(1000);

	CreateTextureEX("カッター", 2000, @0, @0, "cg/img/imgカッター刃元b.jpg");
	Fade("カッター", 500, 1000, null, true);

	Delete("絵背景*");

	CreateTextureEX("絵背景100", 100, Center, -440, "cg/bg/bg2401100空_上空_通常.jpg");
	SetBlur("絵背景100", true, 2, 500, 50, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　ノーコの姿が消え、代わりにカッターナイフが落ちる。

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100160skr">
「似鳥……大丈夫か？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100170nki">
「……なんでだよ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100180nki">
「なんで……手遅れなんだよ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100190nki">
「本当に大切な物がなにか、やっとわかったのに……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100200nki">
「なんで、なんで――」

{	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, false);
	FadeDelete("カッター",300,null,false);
	Move("絵背景100", 700, @0, 0, Dxl1, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100210nki">
「なんでこうなっちまうんだよおおおお――ッ！！」

{	DeleteSt("C",200,true);}
　似鳥は落ちたナイフを握りしめ、夜空に絶叫した。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：時間経過

	CreateColorEX("黒", 20000, BLACK);
	Fade("黒", 1500, 1000, null, true);

//◆時間：ジャンプ
{	ClockPass(2232);}

//あきゅん「修正指示：時間経過でトランジはなしで、暗転ゆっくり」
//★inc櫻井　修正
//★inc櫻井　似鳥の立ち絵なしはワザとです。


	Delete("絵背景*");
	Wait(1000);
	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

//あきゅん「修正指示：環境空気感を出して、ＳＥいれ」
//★inc櫻井　修正

	CreateSE("SE01", "se環境_風_l");
	MusicStart("SE01", 700, 700, 0, 1000, null,true);

	FadeDelete("黒",1500,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100220nki">
「ううっ……うっ……うううううう……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100230nki">
「ノーコ……ノーコ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100240nki">
「どうして……どうして、いなくなっちまうんだよ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100250nki">
「せっかく、現実の存在になれて……なのに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100260nki">
「なんで、戻らなきゃならなかったんだ……？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100270nki">
「アイツはただ……オレから、愛されたかっただけで……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100280skr">
「でもアイツは、愛されちゃいけないことを知った」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100290skr">
「自分が、この世界にいてはならない存在だってことに気付いた」

//★ inc櫻井　ここで似鳥が顔をあげたという感じで
{	DeleteSt("C",200,false);
	St("ML",700, @0,@60,"bu似鳥_通常_angry");
	FadeSt("ML",200,false);
	Move("@StNameML/ML*", 300, @0, @-60, DxlAuto, true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100300nki">
「そ、そんなわけ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100310skr">
「ノーコは、おまえののーないかのじょだろ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100320skr">
「アイツは、おまえの本当の望みを知ってたんだよ」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100330nki">
「オレの、本当の望みは――」

//あきゅん「修正指示：絵的にもスクリプトにも何したいか不明、整理してわかりやすく」
//★inc櫻井　「ノーコと一緒にいたいと頭の中で考えつつ、言い出せない」
//という形にしようとしたのですが、伝わらないようなので削除。立ち絵演出に修正。
{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100340nki">
「本当の、望みは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//★inc櫻井　崩れ落ちる場所を早めました。

	CreateSE("倒れる", "se人体_倒れる04");
	MusicStart("倒れる", 0, 1200, 0, 1000, null,false);
	Move("@StNameML/ML*", 300, @0, @60, DxlAuto, false);
	DeleteSt("ML",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100350nki">
「う……うう……う……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100360skr">
「おまえはもう、ノーコを卒業したんだ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100370skr">
「おまえはもう、一人で歩いて行かなきゃなんねぇんだ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100380skr">
「なあ、そうだろ似鳥？」

{	DeleteSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100390nki">
「…………」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100400nki">
「わかんない……わかんないよ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100410skr">
「嘘でもいいんだ。頷いとけ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100420skr">
「今日から、そうやって生きてかなきゃなんねぇんだ」

{	DeleteSt("C",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c22/300100430nki">
「…………」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100440skr">
「さあ、ボーッとしてないで――」

{	DeleteSt("C",200,false);}
//◆演出指定：拡声器
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/c22/300100450fjr">
『もじゃもじゃ――――――――――ッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolume("SE*", 1000, 0, null);

{	St("C",700, @0,@40,"bu沙紅羅_通常_surprise");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100460skr">
「え？　今の音、なに！？」

{	St("MR",700, @30,@0,"buミリＰa_通常_hard");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c22/300100470mrp">
「……鈴ちゃんの声？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100480skr">
「スズ？」

{	St("MR",700, @0,@0,"buミリＰa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c22/300100490mrp">
「いや、第一宇宙速度のリーダーでね。
　色々考え事をすると、頭がもじゃじゃに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100500skr">
「もじゃもじゃ？」

{	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c22/300100510mrp">
「もじゃもじゃ気になる……
　やっぱり１回、見てこないと……」

{	St("MR",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c22/300100520mrp">
「マズいところ映っちゃったから。
　スタッフにも一応声、かけてきたいし……」


{	St("MR",700, @-40,@40,"buミリＰa_ショータイム_happy");
	Move("@StNameMR/MR*", 200, @40, @-40, Dxl3, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/c22/300100530mrp">
「うん！　ここでこうしてる場合じゃないわ！
　それじゃ、バイなら～」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

//あきゅん「修正指示：出ていく時にＳＥでフォロー」
//★inc櫻井　修正
//　　　　　扉から離れていないと想定してドアを開けるSEにしています。

	CreateSE("SE", "se動作_屋上ドア開ける");
	MusicStart("SE", 0, 700, 0, 1000, null, false);

	Move("@StNameMR/MR*", 300, @150, @0, Dxl3, false);
	DeleteSt("MR",200,false);

	Wait(500);

	St("C",700, @-80,@0,"bu沙紅羅_通常_surprise");
	Move("@StNameC/C*", 200, @80, @0, Dxl3, false);
	FadeSt("C",200,true);

	CreateSE("SE01", "se環境_風_l");
	MusicStart("SE01", 700, 1000, 0, 1000, null,true);
	Request("SE01", Lock);

	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 3600);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100540skr">
「いやいや！　もう少しゆっくりしていっても――
　って、ミリＰ！？」

{	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/c22/300100550skr">
「あーあ。行っちゃった――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);
//★inc櫻井　即次のファイルへ飛ぶので風のSEを切っていません。

	EndScene();
}
