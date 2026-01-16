
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2357恵那.nss_MAIN
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

	if(#RouteName=="c"){
		$GameName="c2400沙紅羅.nss";//★エンディング中（c）
	}else if(#RouteName=="d"){
		$GameName="d2400沙紅羅.nss";//★エンディング中（d）
	}
}



scene c2357恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="380">
////////////header////////////
//file name "c2357恵那.nss"
//title "厭覇薔薇"
//previous "c2351フウリ.nss"
//previous "d2345似鳥_ノーコ.nss"

////////////footer////////////
//※下倉注：ジャンプ先修正 2010/11/11
//next （flkagome3=false）"c2400沙紅羅.nss"
//next （flkagome4=false） "d2400沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2355);}



//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	SoundPlay("@xsong01", 1000, 450, true);

	FadeDelete("上背景",1000,null,true);

	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100010fje">
「はぁっ、はぁっ、はぁ……」

{	DeleteSt("MR",200,false);
	St("C",700, @150,@0,"bu平次_通常_pain");
	Move("@StNameC/C*", 1000, @-150, @0, Dxl2, false);
	FadeSt("C",600,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100020fjh">
「んん……いつつつつ……」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buユージローa_通常_hard");
	Shake("@StNameML/ML*", 300, 0, 5, 0, 0, 1000, null, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/c23/570100030ujr">
「ハッハッハッ……」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100040fjh">
「ふぅ、あぶねぇ……
　危うく溺れ死ぬところだったぜ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100050fje">
「でも、なんであんなところで爆発が……？」

{	DeleteSt("MR",200,false);
	CreateSE("走る", "se動作_走る02_l");
	MusicStart("走る", 700, 1000, 0, 1000, null,false);
	Wait(500);
	SetVolume("走る", 500, 0, null);
	St("ML",700, @-150,@0,"buジャブル_通常_shock");
	Move("@StNameML/ML*", 300, @150, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/570100060jbr">
「平次サーン！　ダイジョブデスカ？」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100070fjh">
「全然、ダイジョウブじゃねぇよ！
　もう少し、爆破のタイミングが早かったら……」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/570100080jbr">
「ゴメナサイ！　でもあれ、微調整きかないデス。
　カタジケナイ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2356);}

	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100090fjh">
「いいか？
　今度同じことやったら、ただじゃおかねぇぞ！」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/570100100jbr">
「わかったデスネ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100110fje">
「え？　ちょっと待って！」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100120fje">
「っていうか父さん、ジャブルさんの仲間？
　あの爆弾を仕込んだのは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/570100130jbr">
「ジャガンナート商会に、手に入らないものはないデス。
　私が爆弾を敷き詰めておいたのデス」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100140fje">
「なんでそんなことを……？」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/570100150jbr">
「河原屋双一の命令デスネ
　籠を壊してしまいたかったのだと思うデス」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100160fje">
「河原屋双一の……？
　でも、父さんの仲間じゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100170fjh">
「愛想が尽きたんだとさ。
　いいように使われてばっかりじゃ腹も立つさ」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100180fjh">
「しかし……本当に大丈夫か？
　河原屋組から、報復は……」

{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/570100190jbr">
「心配ないデス。もう、河原屋双一もいないデス。
　だったら私、恐れることなにもないデスネ」

{	St("ML",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/570100200jbr">
「私、そのくらいの計算はできる男。
　それより平次さんの方が心配デスネ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100210fjh">
「ん……オレか？」


{	DeleteSt("C",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("ML",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/570100220jbr">
「私、てっきり恵那さんが殺されたと思ったデス。
　だから、あんなことを――カタジケナイ」

{	DeleteSt("ML",200,false);
	St("C",700, @0,@0,"bu平次_通常_smile");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100230fjh">
「いや、いいんだ」

{	St("C",700, @0,@0,"bu平次_通常_normal");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100240fjh">
「アイツもきっと、それを望んでたんだろうよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100250fjh">
「ゆっくり……ゆっくり、眠りたいって」


{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100260fje">
（そっか……）

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100270fje">
（父さん、私が殺されたと思ったから、双六を――）

{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu平次_通常_smile");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100280fjh">
「いよぉし！
　ようやくこの街にも、平和が戻る！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2357);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu平次_通常_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100290fjh">
「これにて、一件落ちゃ――」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100300fje">
「あれッ！？」


{	DeleteSt("MR",200,false);
	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/c23/570100310fjh">
「んんん？　おい、どうした恵那？」

{	DeleteSt("C",200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100320fje">
「ジャブルさん！
　この部屋に、誰かいませんでした？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/c23/570100330jbr">
「ううん。誰もいないデスヨ」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100340fje">
「そんな、それじゃあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//あきゅん「修正指示：効果音付ける、あと死体の絵で止めない」
//★inc櫻井　修正

//★inc櫻井　死体のフラッシュバックなので、赤で

	CreateSE("SE", "se擬音_フラッシュバック");
	MusicStart("SE", 700, 700, 0, 1000, null,false);
	DeleteSt("MR",0,true);
	CreateColorEX("赤", 15000, RED);
	Fade("赤", 100, 1000, null, true);
//★inc櫻井　かつ、幻？　と思っているので曖昧な感じに。
	CreateTextureSP("赤死体", 14000, Center, @0, "cg/ev/l/ev2250千秋オブデス_l.jpg");
	Fade("赤", 300, 0, null, true);
	Wait(300);
	FadeDelete("赤*", 300, null, true);
//	SetVolume("フラッシュバック", 1000, 0, null);



	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100350fje">
「私が見たのは……幻？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//★inc櫻井　ここから恵那のみなので、センター表示
{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100360fje">
「……うん、きっとそうだ」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100370fje">
「幻……幻……」

{	DeleteSt("C",200,true);}
　恵那は、細かく震える手で、携帯電話を取る。

{	CreateSE("携帯01", "seメカ_携帯_コール02_l");
	MusicStart("携帯01", 0, 700, 0, 1000, null,false);
	St("L",19010, @0,@0,"fu恵那_哀愁_pinch");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/c23/570100380fje">
「幻だよね、千秋」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：携帯コールのまま、いつまでも繋がらずにフェードアウト
//あきゅん「修正指示：繋がらないコールの寂しさが弱い、もっと印象に残るように」
//★inc櫻井　修正　直前で恵那のfuを表示、しばらくコールののち、千秋が出ないことに戸惑いはじめるというものに。
//　　　　　　　　 少しずつコール音が大きくなり孤独感を増やすというものもいれました。

	TextBoxDelete(150);

	CreateSE("携帯02", "seメカ_携帯_コール01_l");
	MusicStart("携帯02", 0, 500, 0, 1000, null,true);

	Wait(5000);
	MusicStart("携帯02", 1000, 1000, 0, 1000, null,true);

	St("L",19010, @0,@0,"fu恵那_哀愁_sad");
	FadeSt("L",500,true);

	CreateColorEX("絵色100", 20000, "BLACK");
	Fade("絵色100", 3000, 1000, null, true);

	DeleteAllSt(0,true);

	SetVolume("@xsong01", 1000, 0, null);

	ClearWaitAll(1000, 1000);

	EndScene();

}
