
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2030ノーコ.nss_MAIN
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
	$GameName = "2040千秋_ノーコ.nss";
//	$GameCircle=false;

}

scene 2030ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1000">
////////////header////////////
//file name "2030ノーコ.nss"
//title "きこえるの？"
//previous "2020ノーコ.nss"

////////////footer////////////
//next "ノーコ" "2040千秋_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2033);}

//◆演出指定：時間経過

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

//	SoundPlay("@xsong01",0,450,true);

	CreateSE("SE10","seガヤ_AV_l");
	MusicStart("SE10",30000,400,0,1000,null,true);

	FadeDelete("上背景", 200, null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆音声指示：遠くから
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100010ujr">
「わうわう！　わうわう！」

//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100020mso">
「出口だな！　でかした犬！」

//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100030mso">
「いやあ、ライト落としたときはどうしようかと……」

//◆音声指示：遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100040buu">
「犬！　てめーがいきなり吠えるからわりーんだぞ！」

//◆音声指示：遠くから
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100050ujr">
「くぅぅ……ん」

//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100060mso">
「まあそう怒るなよ。
　コイツのおかげで、出口が見つかったわけだし、な？」

//◆音声指示：遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100070buu">
「そりゃ……まあ、そうだけど……」

//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100080mso">
「ミヅハ、大丈夫だよな……」

//◆音声指示：遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100090buu">
「オレたちにできるのは、無事を祈ることだけ……」

//◆音声指示：遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100100buu">
「まあ勝負事の神様だし、大丈夫だろ」

//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100110mso">
「その割には、姐さんの居場所外したけどな」

//◆音声指示：遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100120buu">
「ほら、さっきもなんか、オッサンとすれ違ったしさ。
　意外と人通りが多いのかもしれねぇぞ」

//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100130mso">
「そうだといいけど……うし、入るぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 2000, 0, null);


//◆ＳＥ：わさわさ、服が揺れる
	CreateSE("SE01","se動作_カーテン開ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@xbgm04",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　部屋の奥のコスプレハンガーが揺れ、そのむこうからひょっこりみそブーとユージローが姿を現す。

{	St("ML",700, @80,@0,"buみそa_通常_pinch");
	Move("@StNameML/ML*", 200, @-80, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100140mso">
「なんかいかがわしいな……」

{	DeleteAllSt(150,true);
	St("MR",700, @80,@0,"buブーa_通常_angry");
	Move("@StNameMR/MR*", 200, @-80, @0, Dxl1, false);
	FadeSt("MR",200,true);
	St("MR",700, @0,@40,"buブーa_通常_ero");
	FadeT("@StNameMR/MR*",0,0,200,0,-40,Dxl1,false);
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100150buu">
「これは……アダルティーなオモチャショップ！」

{	DeleteAllSt(150,true);
	St("C",700, @0,@40,"buユージローa_通常_ero");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100160ujr">
「ハッハッハッハ！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_オラオラ_angry");
	Shake("@StNameML/ML*", 300, 0, 20, 0, 0, 500, Dxl2, false);
	MoveEX("@StNameML/ML*", 300, 0, -50, Dxl2, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100170mso">
「おいブー、犬！　発情すんな！」

{	DeleteAllSt(150,true);
	St("MR",700, @50,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100180buu">
「そ、そんなこと言われてもよォ……ん？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SEP01","se動作_バッグ渡す");
	CreateTextureEX("絵演物", 1010, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演物", 0, @0, @120, null, true);

	MusicStart("SEP01",0,700,0,1000,null,false);
	Move("絵演物", 300, @0, @-120, Dxl1, false);
	Fade("絵演物", 300, 1000, null, true);

	Wait(500);

	FadeDelete("絵演物", 500, null, true);

{	St("MR",700, @50,@0,"buブーa_通常_angry");
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100190buu">
「おっ！　この袋、もしかして――」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_オラオラ_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100200mso">
「ん？　なんだァ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);

//◆ＳＥ：ジッパー開ける
	CreateSE("SE01","se動作_ジッパー開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

//あきゅん「素材：obj	エコバッグ_ノーコ2030a」
	CreateTextureEX("絵オブ", 1100, Center, Middle, "cg/obj/objエコバッグ_ノーコ2030a.png");
	Zoom("絵オブ", 0, 0, 1000, null, true);

	Zoom("絵オブ", 300, 1000, 1000, Dxl3, false);
	Fade("絵オブ", 200, 1000, null, true);

	Wait(300);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100210buu">
「女児パンツが返ってきたッ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100220mso">
「お、ミヅハに預けたヤツか！？」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100230ujr">
「わうわうっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵オブ", 200, null, true);

	DeleteAllSt(150,true);
	St("ML",700, @50,@0,"buみそa_通常_hard");
	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100240mso">
「ん？　ここにも同じ袋あんぞ？」

//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100250mso">
「どれどれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2034);}

	DeleteAllSt(150,true);

//◆ＳＥ：ジッパー開ける
	CreateSE("SE01","se動作_ジッパー開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

//あきゅん「素材：objエコバッグ_ノーコ2030b」
	CreateTextureEX("絵オブ", 1100, Center, Middle, "cg/obj/objエコバッグ_ノーコ2030b.png");
	Request("絵オブ", Smoothing);
	Zoom("絵オブ", 0, 0, 1000, null, true);

	Zoom("絵オブ", 300, 1000, 1000, Axl3, false);
	Fade("絵オブ", 200, 1000, null, false);

	Move("絵オブ", 300, @0, @170, null, false);
	Zoom("絵オブ", 300, 1600, 1600, Dxl3, false);

	Wait(700);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100260mso">
「なんだコレ」

//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100270buu">
「しまぱんじゃねぇかっッ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100280mso">
「しま……ぱん？
　でも、なんでこんなものが？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵オブ", 200, null, true);

	St("MR",700, @80,@0,"buブーa_通常_hard");
	Move("@StNameMR/MR*", 1000, @-80, @0, Dxl1, false);
	FadeSt("MR",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100290buu">
「オレの推理では、恐らく」

{	St("MR",700, @0,@0,"buブーa_オラオラ_angry");
	CreateSE("SEP01","se擬音_ギャグ_じゃじゃーん");
	MusicStart("SEP01",0,700,0,1000,null,false);
	Zoom("@StNameMR/MR*", 200, 1200, 1200, Axl3, false);
	Request("@StNameMR/MR*", Smoothing);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100300buu">
「女児パンツが分裂したんだ……」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	Shake("@StNameML/ML*", 200, 0, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100310mso">
「分裂！？　そ、そんなことがッ！！」

{	DeleteAllSt(150,true);
	St("C",700, @0,@30,"buユージローa_通常_angry");
	Move("@StNameC/C*", 200, @0, @-30, Dxl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100320ujr">
「わうわうわうっ！！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100330mso">
「ん？　まだ、中に何か……」

//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100340mso">
「なんだコレ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);

	CreateTextureEX("絵オブ", 100, Center, 170, "cg/obj/objエコバッグ_ノーコ2030b.png");
	Zoom("絵オブ", 0, 1600, 1600, null, false);
	Request("絵オブ", Smoothing);

	Fade("絵オブ", 200, 1000, null, false);

	Move("絵オブ", 800, @0, @-320, Dxl3, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100350buu">
「ブルマーじゃねぇかっッ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100360mso">
「ブルマー？
　でも、なんでこんなものが？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2035);}


	FadeDelete("絵オブ", 200, null, true);

	St("MR",700, @80,@0,"buブーa_通常_hard");
	Move("@StNameMR/MR*", 1000, @-80, @0, Dxl1, false);
	FadeSt("MR",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100370buu">
「オレの推理では、恐らく」

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	CreateSE("SEP01","se擬音_ニュータイプ");
	MusicStart("SEP01",0,700,0,1000,null,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100380buu">
「利子が付いたんだな……」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	Shake("@StNameML/ML*", 200, 0, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100390mso">
「利子！？　そ、そんなことがッ！！」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buユージローa_通常_ero");
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100400ujr">
「わうわうッ！！　わうわうわうわうっ！！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100410mso">
「お、そうか犬。おまえはこっちが欲しいんだな」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100420buu">
「え？　やっちまうのか？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100430mso">
「いいだろブー？　コイツは命の恩人だぜ」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buブーa_通常_smile");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100440buu">
「ちぇっ！　しょーがねーなー」

{	St("MR",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("MR",200,true);
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl3, false);
	DeleteAllSt(150,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100450buu">
「おい、犬！」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @-100, @0, Dxl3, false);
	DeleteAllSt(150,false);
	CreateSE("SE01","se動物_イヌ_走る_l");
	MusicStart("SE01",0,700,0,1000,null,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100460ujr">
「わうわうっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：ブルマー装着中

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @50,@0,"buブーa_オラオラ_shout");
	Move("@StNameC/C*", 200, @-50, @0, Dxl3, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @-50, @0, Dxl3, false);
	DeleteAllSt(150,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100470buu">
「おいコラ、動くな！
　オレが今、おまえにブルマーを……」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100480ujr">
「はっはっは！！」

{	SetVolume("SE01", 1000, 0, null);
	DeleteAllSt(150,true);
	St("C",700, @-50,@0,"buブーa_オラオラ_shout");
	Move("@StNameC/C*", 200, @50, @0, Dxl1, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @50, @0, Dxl3, false);
	DeleteAllSt(150,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100490buu">
「だから動くなって！
　あと腰！　腰の動きやめ――」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//◆音声指示：半泣き
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100500mso">
「おいブー」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@30,"buブーa_通常_hard");
	Move("@StNameMR/MR*", 200, @0, @-30, Dxl3, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100510buu">
「ん？　なんだよこっちは忙しい――」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//◆音声指示：半泣き
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100520mso">
「ブー、いいからこっち見ろって！」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100530buu">
「おいおい、なにそんなビビって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateSE("SE01","se擬音_フラッシュバック");
	MusicStart("SE01",0,1500,0,2000,null,false);


	CreateTextureEX("絵背景100", 1010, Center, Middle, "cg/img/img双六死に手.jpg");
	CreateTextureEX("絵背景200", 1020, Center, Middle, "cg/obj/obj御札.png");
	Move("絵背景200", 0, @0, @100, null, true);

	Fade("絵背景100", 300, 1000, null, true);

	Wait(500);

/*
	St("MR",700, @0,@0,"buブーa_通常_shock");
	Shake("@StNameMR/MR*", 500, 0, 20, 0, 0, 500, null, false);
	FadeSt("MR",200,false);
*/
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100540buu">
「のわああああっ！！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100550buu">
「し、死体ッ！？」

{
	Fade("絵背景100", 300, 0, null, true);
	Delete("絵背景100");
	SoundPlay("@xbgm24",0,450,true);
	Move("絵背景200", 300, @0, @-100, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, true);
/*
	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	CreateSE("SE01","se動作_紙めくる");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("ML",200,true);
*/
}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100560mso">
「しかも……御札が貼ってある……」

//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100570mso">
「なんなんだよ……！？
　呪いとか？　悪霊の祟り？」

{
	FadeDelete("絵背景200", 300, null, true);


//	DeleteAllSt(150,true);
	St("MR",700, @0,@50,"buブーa_通常_pinch");

	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);

}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100580buu">
「そ、そんなわけねーだろ」

//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100590buu">
「ん、んんー、たぶん拳銃かなんかだな」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100600mso">
「わかるのか？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100610buu">
「グロ画像なら見慣れてるかんな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);

	CreateColorEX("絵色黒１", 20, "#000000");
	Fade("絵色黒１", 1500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0149]
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100620mso">
「ぐろがぞう……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);

{	ClockPass(2036);}


//◆演出指定：うしろの暗闇から徐々に出てくる感じ
	St2("C",19000, @0,@30,"fuノーコa_通常_normal","cg2/",".png");
	Move("@StNameC/C*", 2000, @0, @-30, Dxl3, false);
	FadeSt("C",1500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100630nko">
「ブラクラ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);
	TextBoxDelete(150);

	DeleteAllSt(200,false);
	FadeDelete("絵色黒１", 200, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100640mso">
「……………………………………ん？」

{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100650mso">
「………………ブー？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100660buu">
「な…………なんだ、みそ」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100670mso">
「なんか…………いったか？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100680buu">
「いや…………オレは言ってない」

{	DeleteAllSt(150,true);
	St2("C",19000, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",500,true);
	Move("@StNameC/C*", 2000, @0, @30, Dxl3, false);
	DeleteAllSt(1500,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100690nko">
「わたしのこえ」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100700buu">
「………………おい、犬」

{	DeleteAllSt(150,true);
	St("R",700, @0,@30,"buユージローb_通常_normal");
	Move("@StNameR/R*", 100, @0, @-30, Dxl3, false);
	FadeSt("R",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100710ujr">
「わう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：ここでユージローはブルマー仮面になっているのだが立ち絵出すか相談

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100720buu">
「おまえ…………しゃべれたり、しないよな？」

{	DeleteAllSt(150,true);
	St("R",700, @0,@0,"buユージローb_通常_normal");
	FadeSt("R",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100730ujr">
「わう」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100740mso">
「犬がしゃべったわけでもない……」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100750buu">
「ってことはつまり……」

{	DeleteAllSt(150,true);
	St2("C",700, @0,@80,"fuノーコa_通常_normal","cg2/",".png");
	Move("@StNameC/C*", 1500, @0, @-80, Dxl3, false);
	FadeSt("C",1000,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100760nko">
「きこえるの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2037);}


/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100770mso">
「うぎゃあああああああああああああ！！」

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/20/300100780buu">
「うぎゃあああああああああああああ！！」

//◆音声指示：同時
//【ユージロー】
//<voice name="ユージロー" class="ユージロー" src="voice/20/300100790ujr">
「きゃうううううううううううううん！！」
*/

	DeleteAllSt(200,true);

	SoundPlay("@xbgm05",0,450,true);

	St("ML",700, @0,@0,"buみそa_通常_angry");
	St("MR",699, @-60,@0,"buブーa_通常_angry");
	St("R",2001, @0,@180,"buユージローb_通常_angry");
	Shake("@StNameML/ML*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameMR/MR*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameR/R*", 200, @0, @-100, Dxl1, false);
	FadeSt("ML",200,false);
	FadeSt("MR",200,false);
	FadeSt("R",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180a]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100770">
「うぎゃああああああああああ！！」「うぎゃああああああああああ！！」「きゃうううううううううううん！！」

</PRE>
	SetText();
	AddText(1,"「うぎゃあああああああああああああ！！」","みそ","20/300100770mso",false,false,1000);
	AddText(2,"「うぎゃあああああああああああああ！！」","ブー","20/300100780buu",false,false,1000);
	AddText(3,"「きゃうううううううううううううん！！」","ユージロー","20/300100790ujr",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

{	DeleteAllSt(150,true);
	St("MR",700, @30,@0,"buブーa_通常_angry");
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl3, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180b]
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100800buu">
「みそっ、立て！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	Move("@StNameML/ML*", 200, @0, @50, null, false);
	Shake("@StNameML/ML*", 200, 0, 20, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100810mso">
「ひえっ、腰が――腰があッ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100820mso">
「ええい！　悪霊退散悪霊退散！」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buブーa_通常_angry");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100830buu">
「おいッ！　御札返せ！　呪われるぞ！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@50,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100840mso">
「ででで、でも……指が固まって……！」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100850nko">
「うるさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buノーコa_カッター_angry");
	Move($C_今, 200, @-25, @0, Dxl3, false);
	DeleteSt("C",200,true);
//◆ＳＥ：カッターナイフ
	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	MusicStart("SE01",0,700,0,1000,null,false);
	MoveEX($C_次, 200, 0, -50, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100860nko">
「しにたい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100870mso">
「ひええええええええええええええええ！！」

//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100880buu">
「ひええええええええええええええええ！！」

*/

	DeleteAllSt(200,false);

	St("ML",700, @0,@0,"buみそa_通常_angry");
	St("MR",699, @0,@0,"buブーa_通常_angry");
	Shake("@StNameML/ML*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameMR/MR*", 200, 15, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100870">
「「ひええええええええええええええええ！！」」

{	DeleteAllSt(150,true);
	St("R",700, @0,@0,"buユージローb_通常_hard");
	Move("@StNameR/R*", 200, @-50, @0, Dxl3, false);
	FadeSt("R",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/20/300100890ujr">
「わうわうわうわうっ！」

{
	CreateSE("SE01","se動物_イヌ_走る_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	Move("@StNameR/R*", 200, @80, @0, Axl1, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);
	SetVolume("SE01", 3000, 0, null);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100900buu">
「犬！？」

{	St("MR",700, @0,@0,"buブーa_通常_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100910buu">
「そ、そうか……そっちに逃げ道が！」

{	St("MR",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/20/300100920buu">
「逃げるぜみそ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2038);}

	Move("@StNameMR/MR*", 200, @80, @0, Axl3, false);
	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);
	Move("@StNameML/ML*", 200, @80, @0, Axl3, false);
	DeleteAllSt(200,false);
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,true);
	CreateSE("SE02","se動作_走る02_l");
	MusicStart("SE02",0,700,0,1000,null,true);
	SetVolume("SE01", 3000, 0, null);
	SetVolume("SE02", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【みそ】
<voice name="みそ" class="みそ" src="voice/20/300100930mso">
「お……おう！」

　ユージローに続き、みそとブーは元来た地下通路へ。

{	DeleteAllSt(150,true);

	SetVolumeEX("@xbgm*", 1500, 0, null);

	St("C",700, @0,@-50,"buノーコa_通常_normal");
	Move("@StNameC/C*", 1000, @0, @50, Dxl3, false);
	FadeSt("C",500,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100940nko">
「…………」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100950nko">
「おかしい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100960nko">
「なぜ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100970nko">
「なぜ、にとりはいない？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100980nko">
「なぜ――」

{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300100990nko">
「わたしのこえが、とどく――？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


{	ClockPass(2039);}


//◆ＳＥ：足音
	CreateSE("SE01","se動作_歩く2人_l");
	MusicStart("SE01",2000,1200,0,1000,null,true);

	Wait(2500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/300101000nko">
「……だれかきた？」

{	Move("@StNameC/C*", 1000, @0, @-50, Dxl3, false);
	DeleteAllSt(300,false);
	SetVolume("SE01", 3000, 0, null);}
　ノーコは暗闇に身を隠し、階段下から聞こえる音にそっと耳を傾けた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);

	Wait(500);

	//おがみ：時刻表画面への推移バグ対応
	//Fade("絵色黒", 500, 0, null, true);

	EndScene();
}
