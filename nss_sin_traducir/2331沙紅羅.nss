
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2331沙紅羅.nss_MAIN
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
	$GameName = "2340沙紅羅.nss";
	//$GameCircle=false;

}

scene 2331沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1330">
////////////header////////////
//file name "2331沙紅羅.nss"
//title "河原屋双一"
//previous "2330沙紅羅_千秋_恵那.nss"

////////////footer////////////
//next "沙紅羅" "2340沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2331);}


//◆場所：籠_内部
	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE10","se動作_走る02_l");
	MusicStart("SE10",0,450,0,1000,null,true);
	CreateSE("SE11","se動作_走る02_l");
	MusicStart("SE11",0,450,0,1200,null,true);
	Wait(2000);
	SetVolume("SE10", 1000, 0, null);
	SetVolume("SE11", 1000, 0, null);





//双六、沙紅羅のやりとり強化[text0010]～【優先度３】//β版（千代子
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　千秋と恵那、ユージローが去り、籠には双六と沙紅羅、ふたりだけが残される。

{
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);
	SoundPlay("@xbgm26",0,450,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100010ksr">
「……来ると思ってたぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100020ksr">
「まさか右腕、折られるとは思わなかったがな」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100030skr">
「ごめんなさい」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100040skr">
「でも――双六さんのしたことは、許せない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100050ksr">
「はは、純情だな」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100060skr">
「なんであんなことを？
　恵那を人質にとって、それで――！」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100070ksr">
「別に、本気で犯そうなんて思っちゃいねぇよ」

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100080ksr">
「オレは平次と、カゴメアソビがしたかった。
　だからアイツを怒らせるため、わざとああしたんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100090ksr">
「だが――ここに来たのは、おまえだった」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100100ksr">
「オレの知り合いに、神様がいる。
　おまえが知ってる神様とは、別人だけどな」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100110ksr">
「元々数学の天才だったらしい。
　人の運命を操るのが趣味って変人だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100120ksr">
「この街のことならなんでも知ってる。
　今日、この街で起きた事件も全部、アイツのせいだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2332);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("ML",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100130ksr">
「唯一計算に入ってなかったのが、おまえだ」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100140ksr">
「だから、オレの希望だった」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100150skr">
「アタシが……希望？」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100160ksr">
「そこに惚れたのかもな」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100170ksr">
「で――どうなんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100180ksr">
「アザナエルを撃つ覚悟は、出来たか？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100190skr">
「…………」

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100200ksr">
「なんだ？
　そのために、ここに来たんじゃなかったのか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100210ksr">
「病院で、弟、見て来ただろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100220skr">
「…………」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100230ksr">
「見られなかったのか？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100240skr">
「病院の前で、モジャモジャのおっさんに会いました」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100250skr">
「あの名探偵が、さらわれたって」

{	St("ML",700, @0,@0,"bu双六a_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100260ksr">
「平次のとっつぁんが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100270ksr">
「コレも全て、双一親分の計算のうち……か？」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100280ksr">
「で、どうする？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100290ksr">
「アザナエルは、撃たない？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100300skr">
「わからないです」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100310skr">
「アタシは、どうすればいいのか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2333);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100320ksr">
「自分の命が惜しいのか？
　このまま弟を死なせていいのか？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100330skr">
「命なんて、惜しくないです！
　マーくんを死なせたくなんか、ない！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100340skr">
「でも――アタシは約束したんです」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100350skr">
「マーくんに、絶対、どーじんしを持って行くって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100360skr">
「東京まで来て、会おうと思えばいつでも会えたはずなのに、後回しにして――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100370skr">
「どーじんしを手に入れてからだって、自分に言い訳して、それで、死に目にも会えないなんて」

{	St("MR",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100380skr">
「アタシ……最悪です。
　姉だって名乗る資格なんてない」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100390skr">
「そう思ったら、アタシ――」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100400skr">
「カゴメアソビで、願いを叶える自信、なくて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100410ksr">
「……なあ、沙紅羅」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100420ksr">
「おまえ、言ったよな」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100430ksr">
「一度や二度失敗したからって、全否定するのは酷すぎるって」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100440ksr">
「失敗したら、そこで終わりか？
　やり直すことは、できないか？　って」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100450ksr">
「これが、その答えか？」

{	St("MR",700, @0,@0,"bu沙紅羅_放心_lost");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100460skr">
「…………」

{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100470ksr">
「失ったものは、もう二度と帰ってこない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);



{	ClockPass(2334);}

	TextBoxDelete(150);
	DeleteAllSt(200,true);


//※北原メモ：「双六の右手がおれました」ＥＶあるいは、演出素材を作って、その後ＢＵで右手で銃を構えている双六を登場させる。プレイしている側はそこゼッタイ突っ込むんで、そこを逆手に取った演出ができると面白いかと。


//◆演出指定：銃を構える

	CreateTextureEX("絵背景10", 900, 300, Middle, "cg/bg/bg0802100籠_内部_通常.jpg");
	Zoom("絵背景10", 0, 2000, 2000, null, true);
	SetShade("絵背景10", MEDIUM);

	CreateTextureEX("絵背景100", 1000, -143, -233, "cg/bu/l/bu双六a_銃構え_x01.png");
	CreateTextureEX("絵背景300", 1200, -123, -233, "cg/bu/l/bu双六a_銃構え_x03.png");

	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景10", 3000, 500, @0, Dxl1, false);
	Move("絵背景100", 3000, -123, @0, Dxl1, false);
	Fade("絵背景10", 300, 1000, null, false);
	Fade("絵背景100", 300, 1000, null, true);

//bu双六a_銃構え
//窓

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100480skr">
「……アタシを、撃つんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
	Fade("絵背景300", 500, 1000, Dxl1, false);
	Fade("絵背景100", 1000, 0, Axl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100490ksr">
「撃ってやろうか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100500ksr">
「一か八か、おまえの本当の望みを知るために」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100510skr">
「…………」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100520ksr">
「おい、まだ気付かないか？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100530skr">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainSP("揺用", 15000);
	Delete("絵背景*");

	St("ML",700, @0,@0,"bu双六a_銃構え");
	FadeSt("ML",0,true);

	FadeDelete("揺用", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100540ksr">
「オレの右手」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);
	DeleteSt("ML",0,true);
	CreateColorEX("フラッシュ", 6000, "Black");

	Fade("フラッシュ", 0, 300, null, true);
	CreateTextureEX("絵背景100", 5000, Center, Middle, "cg/img/img沙紅羅双六の腕をへし折る.jpg");
	Fade("絵背景100", 0, 1000, null, true);


	Fade("フラッシュ白",200,0,null,true);
	Wait(300);
	Fade("フラッシュ白",200,1000,null,true);

	Delete("絵背景100");
	Delete("フラッシュ");

	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",0,true);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100550skr">
「あ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100560skr">
「折れた手……治ってる？」

{	St("ML",700, @0,@0,"bu双六a_銃構え");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100570ksr">
「オレは、カゴメアソビをしたことがある」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2335);}


	TextBoxDelete(150);



//※下倉注：ここは無音 → イメージ音楽 の流れの方がスムーズなのでＢＧＭ修正
//	SetVolumeEX("@xbgm21", 2000, 1000, null);
//	Wait(2000);

//	SetVolumeEF("@xbgm21", 1000);

	PrintGO("上背景", 5000);
	FadeDelete("上背景", 1000, null, true);

	Wait(500);


	PrintGO("上背景", 5000);
	CreateTextureSP("絵背景", 120, Center, Middle, "cg/img/img戦後の秋葉原.jpg");

	FadeDelete("上背景", 1000, null, true);

	SoundPlay("@xbgm21",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100580ksr">
「昔々の、大昔」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100590ksr">
「日本をまだＧＨＱが統治していた頃の話だ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100600ksr">
「ラジオ屋が無理矢理集められた、ガード下の更に下」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100610ksr">
「旧地下鉄万世橋駅で、世にも珍しい賭博が行われていた」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100620ksr">
「日本で最初に営業を始めた地下鉄、銀座線」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100630ksr">
「営業開始は昭和の２年。本来なら浅草から新橋まで一気に営業したかったんだが、資金が足りなかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100640ksr">
「でまあ、とりあえず上野まで営業しちまって、そっから先は順次開通していくことにしたわけだ」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100650ksr">
「それが神田川をくぐる前、この万世橋の下にも、暫定の地下鉄駅が造られた」

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100660ksr">
「当時ここは市電のターミナルでその駅は結構便利だったらしいんだがな、線路が川をくぐっちまえばお払い箱よ」


//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100670ksr">
「地下鉄万世橋駅は、２年にも満たずその役割を終えた」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	PrintGO("上背景", 5000);
	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]

//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100680ksr">
「はずだった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100690ksr">
「第二次世界大戦を終えて、この遺構に目をつけたのが、ＧＨＱだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2336);}

	PrintGO("上背景", 5000);
	CreateTextureSP("絵背景", 120, Center, Middle, "cg/img/imgアザナエルb.jpg");

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100700ksr">
「戦争の余韻が残る日本」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100710ksr">
「人々は皆、ようやくやってきた自由と平和に満足していたか？」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100720ksr">
「もちろん、そういう人間もいただろう。
　もしかしたら、大多数だったかもしれねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100730ksr">
「だがな、戦場を忘れられない男たちがいた」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100740ksr">
「頭上を行き交う銃弾のスリルに、心を奪われた馬鹿どもが、山ほどいた」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100750ksr">
「平和な日本に自分の居場所を見いだせない男たち」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100760ksr">
「奴らは地下に潜ったのさ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100770ksr">
「電子部品を扱う露天商が集められた、秋葉原」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100780ksr">
「未来への第一歩が踏み出された電気の街のその下で、戦争の傷跡がジクジクと疼いて、膿んでいた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 5000);
	CreateTextureSP("絵背景g", 1000, Center, Middle, "cg/img/imgアザナエル.jpg");
	SetTone("絵背景g", Monochrome);
	CreateTextureSP("絵背景", 1001, Center, Middle, "cg/img/imgアザナエル.jpg");

//	SoundPlay("@xbgm14",2000,450,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100790ksr">
「進駐軍と財閥の要人が見守る中、命知らずのならず者たちが、命のルーレットを回す」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100800ksr">
「生きて莫大な金を手にするか――
　死んで無となり消え果てるか――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100810ksr">
「夢うつつを行き交う一晩の狂乱。
　禍福を糾える縄――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100820ksr">
「生か死か――希望か、絶望か」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100830ksr">
「数え切れない数の人間の運命を定め、血と欲望を浴びたアザナエルは、やがて不思議な力を持つようになる」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100840ksr">
「そのトリガーを引き、生き残ったひとりは夢が叶う」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100850ksr">
「命を懸けたギャンブルは、恐怖と羨望の意を込めて、やがて呼ばれるようになる」

{	FadeDelete("絵背景", 500, null, false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100860ksr">
「――カゴメアソビ、ってな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 3000, 0, null);


{	ClockPass(2337);}

	TextBoxDelete(150);

	PrintGO("上背景", 5000);
	FadeDelete("上背景", 500, null, true);

	PrintGO("上背景", 5000);

	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);

	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100870ksr">
「やがて、有力者が命知らずの若者のパトロンとなり、身代わりとして自らの夢を叶えさせるようになった」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100880ksr">
「高度経済成長は、カゴメアソビによってもたらされた。
　――なんて噂も、まことしやかに囁かれてる」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100890ksr">
「信じるも信じないも、おまえの自由」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100900ksr">
「けど、河原屋一家がどの組織の傘下にも収まらず、奇跡的に秋葉原を押さえていられるのは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100910ksr">
「河原屋双一がカゴメアソビの勝者で、不老不死の身体を持つからだ」

{
//	SetVolume("@xbgm14", 1000, 0, null);
	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100920skr">
「双六さん、もしかして――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310100930skr">
「あなたが……河原屋双一？」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100940ksr">
「オレにはな、沙紅羅」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100950ksr">
「やり直ししか、ないんだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	SoundPlay("@xbgm14_pia",1000,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100960ksr">
「どんなことをしても死なない。
　死のうとしても、すぐに生き返る」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100970ksr">
「年月が経っても、河原屋双一だけは年を取らない」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100980ksr">
「怪しまれるのを避けるため、双六って名前を変えて、もう一度人生をやり直そうとしたが……このザマだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310100990ksr">
「別人になることは出来ない。
　変わることは出来ない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	PrintGO("上背景", 5000);
	FadeDelete("上背景", 500, null, true);

	PrintGO("上背景", 5000);

	CreateTextureSP("絵背景a", 120, Center, Middle, "cg/img/imgアザナエルb.jpg");
	SetTone("絵背景a", Monochrome);

	CreateTextureSP("絵背景b", 120, Center, Middle, "cg/img/imgアザナエルマズル弾なし.png");
	Zoom("絵背景b", 0, 750, 750, null, true);
	SetTone("絵背景b", Monochrome);
	Request("絵背景b",AddRender);

	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101000ksr">
「あの日、あの時、命を懸けてトリガーを引いたあの瞬間の光景が、脳の奧の奧の奧にこびりついて離れない」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101010ksr">
「銃声が。最後に肺から漏れる呻きが。
　割れんばかりの歓声が。心臓の鼓動が」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101020ksr">
「どこへ逃げても、オレの頭の中にはこの籠がある。
　どこへ逃げても、死者の視線がオレを刺す」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2338);}

	TextBoxDelete(150);


	PrintGO("上背景", 5000);
	FadeDelete("上背景", 500, null, true);

	PrintGO("上背景", 5000);

	OnBG(10,"bg0802100籠_内部_通常");
	FadeBG(0,true);

	St("ML",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("ML",200,true);

	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101030ksr">
「そんなオレが、今さら幸せを望めるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101040ksr">
「オレは、ずっとこのままだ」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101050ksr">
「やり直すには、遅すぎるんだよ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101060skr">
「そんなこと――やり直すのに、遅いって――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101070skr">
「遅すぎるなんて――ない――」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101080ksr">
「おまえは、自分のその言葉、信じられんのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101090skr">
「…………」

{	St("ML",700, @0,@0,"bu双六a_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101100ksr">
「信じてくれよ！　なあ……」

{	St("ML",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101110ksr">
「オレも……オレも……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101120ksr">
「やり直せるって……信じたかったんだ……！！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101130skr">
「双六さん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101140ksr">
「だが、今――」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101150ksr">
「夢は覚めた。希望は消えた」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101160ksr">
「オレたちが出会うには、遅すぎたのさ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101170skr">
「でも――」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101180ksr">
「お別れだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2339);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101190ksr">
「ほら、やるよ」

{	CreateSE("SE01","se動作_銃渡す");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101200skr">
「アザナエル――」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101210ksr">
「撃つ覚悟が出来たら、撃てばいい。
　撃てなかったら、ミヅハに届ければいい」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101220skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"bu双六a_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101230ksr">
「――救ってやりたいんだろ？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101240skr">
「双六さんは……それで良いんですか？」

{	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101250ksr">
「惚れた女が悩んでるんだ」

{	St("ML",700, @0,@0,"bu双六a_通常_smile");
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101260ksr">
「だったらそれを助けてやるのが、男の務め――」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101270skr">
「双六さん――」

{	SetVolume("@xbgm*", 2000, 0, null);
	St("ML",700, @0,@0,"bu双六a_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101280ksr">
「沙紅羅」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指定：サングラスを取る

	CreateSE("SE01","se戦闘_刃物構える");
	MusicStart("SE01",0,600,0,1200,null,false);

	Wait(300);


	CreateTextureEX("絵背景10", 1000, 300, -280, "cg/bg/bg0802100籠_内部_通常.jpg");
	Zoom("絵背景10", 0, 2000, 2000, null, true);
	SetShade("絵背景10", MEDIUM);

	CreateTextureEX("絵背景100", 1100, Center, InBottom, "cg/bu/l/bu双六b_通常_x02.png");
	CreateTextureEX("絵背景200", 1200, Center, InBottom, "cg/bu/l/bu双六b_通常_x01.png");

	Fade("絵背景10", 500, 1000, null, false);
	Fade("絵背景100", 500, 1000, null, false);
	Move("絵背景10", 1000, @0, 280, Dxl1, false);
	Move("絵背景100", 1000, @0, -91, Dxl1, false);
	Move("絵背景200", 0, @0, -91, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101290ksr">
「おまえなら、まだ、やり直せる」

{	Fade("絵背景200", 300, 1000, Dxl1, true);
	Fade("絵背景100", 0, 0, Axl1, true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101300ksr">
「幸せになれよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101310skr">
「…………あ、あの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：サングラスをかける

	CreatePlainSP("揺用", 15000);
	Delete("絵背景*");

	FadeDelete("揺用", 500, null, true);

	CreateSE("SE01","se戦闘_刃物構える");
	MusicStart("SE01",0,600,0,1200,null,false);
	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/23/310101320ksr">
「あばよ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/310101330skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	DeleteAllSt(200,true);

	PrintGO("上背景", 5000);
	FadeDelete("上背景", 1000, null, true);

	EndScene();
}
