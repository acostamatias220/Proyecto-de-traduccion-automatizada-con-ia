
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2000千秋_恵那.nss_MAIN
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
	//$GameName = "";
	//$GameCircle=false;

	if($CharaName=="千秋"){
		$GameName = "2007千秋_恵那_ノーコ.nss";
	}else if($CharaName=="恵那"){
		$GameName = "2007千秋_恵那_ノーコ.nss";
	}else{
		$GameName = "2007千秋_恵那_ノーコ.nss";
	}

}

scene 2000千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="940">
////////////header////////////
//file name "2000千秋_恵那.nss"
//title "アッキーちゃん暴行疑惑"
//previous "1940千秋.nss"
//previous "1950恵那.nss"

////////////footer////////////
//next "千秋" "2007千秋_恵那_ノーコ.nss"
//next "恵那" "2007千秋_恵那_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);




//◆場所：スパコン館_スタジオ
	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

{	ClockPass(2000);}

	CreateSE("SE01","se動作_一歩");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @100,@0,"fu恵那_通常_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);

//事件定義
	KoreJikenSet();

	WaitKey(200);

	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400010kit">
「な……なんだ、恵那か」

{	St("MR",700, @50,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
//Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400020fje">
「ちょっと！　なんだとは失礼でしょ！？」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400030kit">
「あ、いや、ごめん――じゃなくて！
　ごめんあそばせ」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400040fje">
「ここは教室……いや、撮影スタジオ？
　っていうか私たちの学校そっくり――まさか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenStart();
	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400050fje">
「これは事件ッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenEnd(true);

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}

	SoundPlay("@xbgm11",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400060kit">
「あ、あの、恵那……様。い、いらっしゃいましー」

{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400070fje">
「…………え？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400080kit">
「急なお願いを聞いていただきまして、光栄ですわ。
　うふふふふふふ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400090fje">
「ええと……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400100fje">
「あれ？　これも、もしかして……事件？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400110kit">
「よろしかったら、お友達になってくださらない？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400120kit">
「私、こちらに来たばっかりで、ひとりだとさみしいんじゃけぇのう……」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400130fje">
「アッキーちゃん、あなた……もしかして……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400140fje">
「いいの、無理しないで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400150kit">
「え？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400160fje">
「辛かったら泣いてもいいの！」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400170kit">
「いや、なんでオレが泣くの？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2001);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400180fje">
「そう……そうよね
　本当に悲しい時って、涙さえ出ないもんね……」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400190fje">
「ここでどんな酷い目に遭ったのかは訊かないわ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400200fje">
「でも、もうそんな妙な言葉遣いをしなくていいよ」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400210fje">
「私はいつも、あなたの味方だから」

//◆音声指示：小声
{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400220kit">
「な……なんか誤解されてる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400230fje">
「はい、これ」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400240kit">
「あ……サンキュー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0064]
　恵那が千秋に下着を渡す。


{	CreateSE("SE01","se動作_布落とす");
	MusicStart("SE01",0,700,0,1000,null,false);
}
　広げてみる。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2002);}


//◆演出指示：スーパーローレグ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//◆音声指示：呆然
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400250kit">
「…………」

//◆音声指示：呆然
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400260fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SoundPlay("@xbgm11",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400270kit">
「これ……なんかすごくね？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400280kit">
「っていうかはみ出すんじゃ……」

{	St("MR",700, @0,@0,"bu恵那_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400290fje">
「ご、ごめんなさい！
　控え室の、確認しないで持って来ちゃったから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400300fje">
「あの、もっかい取ってくる――？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400310kit">
「……まあ、これでいいや。さっさと出たいし」


{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400320fje">
「…………」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400330kit">
「…………」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400340fje">
「…………」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400350kit">
「ええと、はくからそっち、向いててくれる？」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400360fje">
「あ……うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2003);}



//◆ＳＥ：衣擦れの音
{	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);
}
	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400370kit">
「……んしょ、ん……んん……ん？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400380kit">
「な……なんか、ホントに収まるか、コレ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400390fje">
「隠すべき所は、隠せるんじゃないかな？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400400kit">
「いや、でもギリギリ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolume("@xbgm*", 3000, 0, null);


{	ClockPass(2004);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//◆音声指示：遠くから
//	St("C",700, @0,@0,"buロクローa_通常_normal");
//	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/20/000400410rkr">
「しっかし、ホントになんとかならないかねぇ。
　あのレディースのおねーちゃん」

//◆音声指示：遠くから
//	St("C",700, @0,@0,"buロクローa_通常_normal");
//	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/20/000400420rkr">
「磨けばきっと、良い光を――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：ガラガラッ！　扉開く
	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @50,@0,"buロクローa_通常_normal");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/20/000400430rkr">
「ん？　おい、撮影終わってないのか？」

{	St("C",700, @0,@0,"buロクローa_通常_angry");
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/20/000400440rkr">
「もう時間だぞ。こっちも予定あんだから！」

//	SoundPlay("@xbgm11",0,450,true);}

{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400450kit">
「あ、すいません！　すぐ出ます！」

{	St("C",700, @0,@0,"buロクローa_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/20/000400460rkr">
「頼むよまったく……」

{	St("C",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/20/000400470rkr">
「あららららら、ふたりとも！
　よく見りゃかわいいですねえ！」

{	St("C",700, @0,@0,"buロクローa_通常_pride");
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/20/000400480rkr">
「何歳？
　まさか１８歳未満ってことはないですよね？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400490fje">
「な……なんですか？」

{	St("C",700, @0,@0,"buロクローa_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/20/000400500rkr">
「いやいや、ごめんなさいね。
　私、こういう者でしてね、はい」

{	DeleteAllSt(200,true);}
{	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/objロクロー名刺.png");
	Move("絵オブ", 0, @0, @100, null, true);

	Move("絵オブ", 300, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 300, 1000, null, true);
}
　手渡された名刺を、恵那は見つめる。

//	St("ML",700, @0,@0,"bu恵那_通常_think");
//	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400510fje">
「……ロクロー？」

{	Move("絵オブ", 300, @0, @100, DxlAuto, false);
	Fade("絵オブ", 300, 0, null, true);
	Delete("絵オブ");
}
{	St("MR",700, @-50,@0,"bu恵那_通常_angry");
Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400520fje">
「行くわよ、アッキーちゃん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400530kit">
「え？　恵那？」

{	St("MR",700, @50,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400540fje">
「ほら、早く！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);
Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



{	ClockPass(2005);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]
{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400550kit">
「な、なんだよ恵那！　急に話打ち切って！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400560fje">
「あの人、ＡＶ男優のロクローさんよ。
　コスプレパロディＡＶで人気なんだって」

{	St("ML",700, @50,@0,"bu千秋_朗らか_cry");
	DeleteAllSt(200,false);
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400570kit">
「へ？　エーブイ！？」

{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400580fje">
「そ。あのままいたら、スカウトされちゃってたかもね」


{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400590kit">
「…………そっか。ありがと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400600kit">
「いや待て！　でもそんなこと、なんで知ってるんだ？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400610fje">
「鈴姉ってオタクでしょ。
　ネタで、友達から借りてきたみたい」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400620fje">
「そしたら、ロクローさんの大ファンになっちゃって」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400630kit">
「一緒に見たり？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400640fje">
「……しょうがないでしょ」

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400650fje">
「鈴姉と、部屋一緒なんだし」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400660kit">
「一緒に……見たり……」

//◆音声指示：小声
{	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400670kit">
「……やべ。なんかはみ出してきた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400680fje">
「ん？　どうしたの？　スカート押さえて」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400690kit">
「な、なんでもない！」


{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400700fje">
「１回家に帰る？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400710kit">
「いや、その前にブル……
　じゃなくて、パンツ取り返さなきゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("MR",700, @-50,@0,"bu恵那_哀愁_fear");
	DeleteAllSt(200,false);
Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400720fje">
「――！？　まさかレイプされた上に下着まで！？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400730kit">
「レイプはされてないから。写真を撮られただけ」

{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400740kit">
「あ、あと下着も盗られたけど」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400750fje">
「そっか……良かった……」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400760kit">
「良くない！　盗られっぱなしじゃ、困るんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400770fje">
「ちなみに、盗んだ人の名前はわかる？」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400780kit">
「村崎のおっさんだよ、村崎！
　アイツに騙されたんだ」

{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400790fje">
「写真わざわざ撮ったのよね。
　ってことは恐らく――バックギャモンか」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400800kit">
「バックギャモン？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400810fje">
「えーと、いわゆる大人のおもちゃ屋っていうか」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400820kit">
「売る気か……！？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400830fje">
「村崎さん、お金に困ってたみたいだしね」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400840kit">
「どこだ？　どこにある？」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400850fje">
「高架下の、ジャガンナート商会の奧」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 3000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

WaitKey(500);




{	ClockPass(2006);}

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400860fje">
「私もついてってあげたいけど――」

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400870fje">
「ちょっと待って。アレ――」

{	SetVolume("@SE*", 1000, 0, null);
}
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/000400880kit">
「え？」

{	DeleteAllSt(200,true);}


{	SoundPlay("@xbgm03",3000,450,true);
	St("C",700, @0,@50,"bu恵那_ハルヒ_shock");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400890fje">
「いたああああああああああ――――！！！！」

{	DeleteAllSt(200,true);}


{	St("C",700, @0,@0,"stミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000400900mzh">
「へ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("C",700, @100,@0,"bu恵那_ハルヒ_angry");
Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400910fje">
「逃がさないわよっ！　とりゃあああッ！」


{	CreateSE("SE01","se動作_バッグ渡す");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteAllSt(200,true);
}
{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000400920mzh">
「無礼者め！　離さんか！　こらー！　掴むな恵那！」

{	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Axl3, false);
	DeleteAllSt(200,true);
	CreateSE("SE01","se動作_バッグ渡す");
	MusicStart("SE01",0,700,0,1000,null,false);
}
{	St("C",700, @0,@0,"bu恵那_通常_angry");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/000400930fje">
「あなたが逃げるからでしょ！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/000400940mzh">
「嫌じゃー！　帰りたくないー！
　星におしりペンペン――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	EndScene();
}
