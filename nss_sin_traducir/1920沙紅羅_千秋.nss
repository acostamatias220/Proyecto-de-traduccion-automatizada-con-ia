
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1920沙紅羅_千秋.nss_MAIN
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
	if($CharaName=="沙紅羅"){
		$GameName = "1930沙紅羅.nss";
	}else if($CharaName=="千秋"){
		$GameName = "1930千秋.nss";
	}else{
		$GameName = "1930沙紅羅.nss";
	}

}

scene 1920沙紅羅_千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1790">
////////////header////////////
//file name "1920沙紅羅_千秋.nss"
//title "ドンガ・バチョの罠"
//previous "1910沙紅羅_千秋.nss"

////////////footer////////////
//next "沙紅羅" "1930沙紅羅.nss"
//next "千秋" "1930千秋.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1920);}

//◆場所：ショウビル_正面
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

	Wait(1000);

	CreateSE("SE02","se動作_走る02_l");
//	CreateSE("SE10","seガヤ_交通少_l");
	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE02",0,700,0,1000,null,true);
	MusicStart("SE11",2000,700,0,1000,null,true);

	Wait(1000);


	FadeDelete("上背景", 500, null, true);

	SetVolumeEX("SE02", 1000, 0, null);

	Wait(500);

	St("MR",700, @+100,@0,"bu千秋_通常_sigh");

	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500010kit">
「はぁっ、はぁっ、はぁっ……」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500020kit">
「ようやく……振り切ったか……？」

//◆音声指示：息を切らして
{	St("ML",700, @+50,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500030skr">
「おい……コラぁっ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500040skr">
「アタシを……置いて……逃げるんじゃ……ねえよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500050skr">
「このバッグ……欲しいんじゃ……なかったのか？」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500060kit">
「あ……すいません……」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500070skr">
「ってか……おまえ逃げ足ははえーのな」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500080kit">
「いつも、あのバカ犬から追いかけられてるから……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500090skr">
「まあいいや。それよりほら！
　さっさととーじんぼー」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500100kit">
「同人誌です」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500110skr">
「そう！　それ！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500120kit">
「焦んなくても、今日は年越し営業なんで」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);
//	SetVolumeEX("SE11", 2000, 0, null);
//	SetVolumeEX("SE11", 2000, 700, null);

	SetVolumeEX("SE*", 2000, 0, null);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(200,true);

{	ClockPass(1921);}

	SoundPlay("@xbgm24",0,450,true);

//◆場所：あにのあな_正面_停電
	OnBG(10,"bg0301211あにのあな_正面_停電");
	FadeBG(0,true);
	CreateTextureSP("絵背景BG", 100, Center, 0, "cg/bg/bg0301211あにのあな_正面_停電.jpg");

	#bg0301200あにのあな_正面_停電 = true;

//	Move("@OnBG02", 0, @0, -1150, null, true);



	DrawDelete("黒幕１", 500, 100, null, "blind_01_00_1", true);

	Wait(500);
	Move("@絵背景BG", 3000, @0, -1150, AxlDxl, true);
	Wait(500);

	St("C",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500130skr">
「おおおお……！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500140skr">
「ここに……ずっと追い求めた、どーじんしが！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500150skr">
「ん？　アレ？
　も、もしやコレは――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500160skr">
「すとらいぷういっちーず！」

{	St("C",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500170skr">
「す……す……すげえ！
　もしかして……コレが、運命！？」

{
	DeleteAllSt(200,true);

	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500180kit">
「なんかひとりで盛り上がってるみたいだけど……」

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500190kit">
「なんか、店の様子がおかしくないか？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指定：とらのあな内部から阿鼻叫喚の声が聞こえる
	CreateSE("SE01","seガヤ_客暴動_l");
	MusicStart("SE01",1000,700,0,1000,null,true);

	CreateWindow("win01", 1500, 0, 100, 1024, 376, false);

	CreateTextureEX("win01/絵背景100", 100, Center, Middle, "cg/bg/bg0302211あにのあな_店内_停電.jpg");
	Zoom("win01/絵背景100", 0, 1200, 1200, null, true);
	Fade("win01/絵背景100", 0, 1000, null, true);

	Shake("win01/絵背景100", 1000, 10, 10, 0, 0, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/200500200e07">
「うおおおおおお！！」

{	Shake("win01/絵背景100", 500, 3, 2, 0, 0, 1000, null, false);}
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/200500210e08">
「それはオレの本だあああ！！」

{	Shake("win01/絵背景100", 500, 3, 5, 0, 0, 1000, null, false);}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/200500220e09">
「ＵＲＹＹＹＹＹＹ！！」

{	Shake("win01/絵背景100", 500, 10, 1, 0, 0, 1000, null, false);}
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/200500230e10">
「殺してでも奪い取る！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 1000, 0, null);

	FadeDelete("win01/絵背景100", 500, null, true);
	Delete("win01");

	Wait(300);

//	SoundPlay("@xbgm24",0,600,true);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500240skr">
「た……確かになんか、殺伐としてるというか……
　近寄りがたいオーラがひしひしと……」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500250kit">
「電気ついてない……停電？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500260skr">
「そういや、さっき地震あったもんな」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500270kit">
「あの揺れで、電気系統がイカれた……？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500280skr">
「え？　普通停電だったら休業だろ？」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500290kit">
「師匠。あなたは、オタクを甘く見ています」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500300kit">
「年に２度の祝祭――
　コミマに人生を懸けるあいつらです」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500310kit">
「停電ごときでその歩みを止めるワケがないんです」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500320skr">
「そ……そういうもんなのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("ML",200,true);

	CreateSE("SE01","se環境_風低音_l");
	CreateSE("SE01","se環境_風_l");

	MusicStart("SE01",1500,1500,0,1000,null,false);
	MusicStart("SE02",1500,1500,0,1000,null,false);

	Move("@OnBG02", 2000, @0, -106, AxlDxl, true);
//◆演出指定：恐ろしげに待ち受けるあにのあな正面

	Wait(1500);

	SetVolumeEX("SE*", 1000, 0, null);


	Move("@OnBG02", 1000, @0, -1150, AxlDxl, true);

	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500330skr">
「……なんか、スゲー禍々しく見えてきたな」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500340kit">
「正直、行きたくないです」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	SetVolumeEX("@xbgm*", 3000, 0, null);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500350skr">
「だが――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500360skr">
「それでも――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500370skr">
「アタシたちは行かなきゃなんねー」


{	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500380kit">
「いってらっしゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	St("MR",750, @0,@+10,"bu千秋_朗らか_happy");

	CreateSE("SE01","se擬音_ギャグ_もにゅ");

	FadeSt("ML",200,false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StNameMR/MR*", 200, @0, @-10, Dxl1, false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 1, 0, 0, 0, 1000, null, false);

//◆ＳＥ：むぎゅ：首掴む


	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE11",2000,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500390skr">
「おまえも来んだよ！」

{	St("MR",750, @0,@0,"bu千秋_驚天_shock");
	DeleteSt("ML", 200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500400kit">
「いやいやいや！　無理！　無理ですって！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500410skr">
「このバッグ、欲しいんだろ？　修行だと思って！」

{	St("MR",750, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500420kit">
「でもこの中、なんか酸っぱいし！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500430skr">
「うぐ……確かにそれは嫌だな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("MR",750, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500440kit">
「それにホラ、電気がないと本探せないでしょ？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500450skr">
「弟子よ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500460skr">
「おまえ……なかなか気が利くな！」

{	St("MR",750, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500470kit">
「褒められてもあんまり嬉しくない……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500480skr">
「いよっしゃ！　懐中電灯！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("SE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500490skr">
「電気屋に、突撃だッ！」

{	St("MR",750, @0,@0,"bu千秋_驚天_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500500kit">
「え？　いやちょっと――うわああああああ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);


{	ClockPass(1922);}
//	SetVolumeEX("@xbgm*", 500, 0, null);

	TextBoxDelete(150);

	CreateSE("SE10","se動作_集団走る");
	MusicStart("SE10",200,700,0,1000,null,true);


	Move("@StNameML/ML*", 400, @-1000, @0, Axl1, false);
	Move("@StNameMR/MR*", 400, @-1000, @0, Axl1, false);

	Wait(300);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(200,true);

	Delete("絵背景BG");
	OnBG(100,"bg0201112秋葉原駅_正面_通常");
	FadeBG(0,true);

	DrawDelete("黒幕１", 300, 100, null, "blind_01_00_1", true);


//◆演出指定：秋葉原中の電気屋を駆け回る

	St("C",700, @100,@0,"bu沙紅羅_後ろ向き_shout");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500510skr">
「電気屋！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1923);}

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-100, @0, Axl1, false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

	OnBG(100,"bg1101111スパコン館_裏面_通常");
//	OnBG(100,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);
	#bg1101100スパコン館_裏面_通常 = true;

	St("C",700, @100,@0,"bu沙紅羅_通常_shout");

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500520skr">
「電気屋あ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1923);}


	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-100, @0, Axl1, false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100,"bg0101111秋葉原_裏通り_通常");
//	OnBG(100,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	DeleteAllSt(0,true);


	St("C",700, @100,@0,"bu沙紅羅_通常_rage");

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500530skr">
「電気屋ああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-100, @0, Axl1, false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(200,true);


{	ClockPass(1924);}

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	SetFrequency("SE10", 3000, 500, AxlDxl);
	SetVolumeEX("SE10", 3000, 0, Axl2);
	Wait(1500);
//	CreateSE("SE12","seガヤ_交通少_l");
	CreateSE("SE11","seガヤ_街中_l");
//	MusicStart("SE12",2000,1200,0,1000,null,true);
	MusicStart("SE11",2000,700,0,1000,null,true);

	DrawDelete("黒幕１", 1000, 100, null, "slide_01_01_1", true);

	St("ML",700, @-50,@0,"bu沙紅羅_頭かき_think");
	Move("@StNameML/ML*", 200, @+50, @0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500540skr">
「な、なんでだよ！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500550skr">
「なんで懐中電灯が売り切れてんだッ！？」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500560kit">
「わかんないですけど……
　もしかして、これは妨害工作！？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500570skr">
「ん？　弟子よ、どういう意味だ？」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500580kit">
「みんな懐中電灯を持って、あにのあなに突撃してるわけですよね」

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500590kit">
「逆に、秋葉原中の電灯を買い占めれば……？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500600skr">
「どーじんしを、独占できる……！？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500610skr">
「おまえ名探偵だな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500620kit">
「知り合いが推理ばっかりするんで、ついオレも……」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500630skr">
「けど、となると困ったぞ……
　もう、電気屋はないのか？」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500640kit">
「大晦日だし、閉まるところは閉まっちゃってて……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500650skr">
「電気屋じゃなくていい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500660skr">
「どこか、懐中電灯を売ってそうな店は――？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500670kit">
「売ってそうな店……？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500680kit">
「あ――」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500690kit">
「あった！」

{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	DeleteSt("MR",200,true);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500700skr">
「どらあああああああああッ！！」

{
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE11", 1000, 0, null);
	SetVolumeEX("SE12", 1000, 0, null);

	Move("@StNameML/ML*", 200, @-500, @0, Axl1, false);
	CreateColorSP("黒幕１", 6000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500710skr">
「よっしゃ！　懐中電灯は――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);


//	SetVolumeEX("SE*", 1000, 0, null);

	Wait(2000);

{	ClockPass(1925);}

	CreateSE("SE11","seガヤ_ガバチョのテーマ_l");
	MusicStart("SE11",0,700,0,1000,null,true);


//◆場所：ドンガ・バチョ_家電売り場
	OnBG(10,"bg1801111ドンガ・バチョ_家電売り場_通常");
	FadeBG(0,true);
	#bg1801100ドンガ・バチョ_家電売り場_通常 = true;

	CreateSE("SE01","seガヤ_客暴動_l");
	MusicStart("SE01",1000,700,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	Wait(500);

//◆演出指定：オタクのバーゲンセールだぜ


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/200500720e07">
「うおおおおおお！！」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/200500730e08">
「それはオレの懐中電灯だあああ！！」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/200500740e09">
「ＵＲＹＹＹＹＹＹ！！」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/200500750e10">
「殺してでも奪い取る！！」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500760skr">
「な……なんだこりゃ……」

{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500770kit">
「争奪戦になってる……？」

{	St("C",700, @-150,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500780skr">
「バッキャロー！
　ここまで来て、怖じ気づいてなんかいられるか！」

{	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @150, @0, Dxl1, true);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500790skr">
「うおおおおおおおおおおお！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @+200, @0, Dxl1, false);
	DeleteSt("C",200,true);

//◆ＳＥ：ドカスカバキン


	CreateSE("SE01","se戦闘_殴打連続01");
	MusicStart("SE01",0,1200,0,1000,null,true);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg1801111ドンガ・バチョ_家電売り場_通常.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);
	SetShade("絵背景", HEAVY);
	#bg1801100ドンガ・バチョ_家電売り場_通常 = true;


	MoveFTP3("@絵背景", 1500, 12, 15);

	St("ML",700, @0,@0,"fu沙紅羅_通常_surprise");
	FadeSt("ML",0,true);

	Shake("@StNameML/ML*", 400, 5, 10, 0, 0, 500, null, false);
	Fade("フラッシュ白",100,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500800skr">
「ふがっ！」

{	Fade("フラッシュ白",0,1000,null,true);

	DeleteAllSt(0,true);

	St("MR",700, @0,@0,"fu沙紅羅_通常_pinch");
	FadeSt("MR",0,true);

	Shake("@StNameMR/MR*", 400, 10, 5, 0, 0, 500, null, false);
	Fade("フラッシュ白",100,0,null,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500810skr">
「ひげっ！」

{	Fade("フラッシュ白",0,1000,null,true);

	DeleteAllSt(0,true);

	St("ML",700, @0,@0,"fu沙紅羅_通常_angry");
	FadeSt("ML",0,true);

	Shake("@StNameML/ML*", 400, 10, 10, 0, 0, 500, null, false);
	Fade("フラッシュ白",100,0,null,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500820skr">
「ぬごおおおっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("フラッシュ白",0,1000,null,true);

	DeleteAllSt(0,true);
	MoveFTP3stop();
	Delete("絵背景");

	SetVolumeEX("SE01", 500, 0, null);


	Fade("フラッシュ白",300,0,null,true);

	St("C",700, @+50,@0,"bu沙紅羅_頭かき_think");

	Move("@StNameC/C*", 500, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆音声指示：ぼろぼろになって
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500830skr">
「ぅぅ……イタタタタタ……」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500840skr">
「なんだあいつら！？
　あんなひょろひょろのナリしてるくせに！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500850skr">
「目が血走って、理性も失って……野獣か？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500860kit">
「本能に忠実っていうか……命懸けですから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"bu沙紅羅_通常_pinch");
	DeleteAllSt(200,false);

	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500870skr">
「クソ。真正面から向かっても無駄……か」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500880skr">
「どうする？　どうすればいい？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500890skr">
「さすがに木刀で殴りかかるわけにはいかねーし……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500900skr">
「カツアゲ……」

{	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500910kit">
「いやいやいや！　犯罪はだめでしょ！　ね？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500920skr">
「わ、わかってるって！　ただ言ってみただけ――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500930skr">
「っていうかアタシ、財布落としたからカネが――」

{	DeleteSt("ML",200,true);}
　ポケットに手を突っ込んで、沙紅羅の動きが止まる。

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500940skr">
「あれ？　なんだ？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500950skr">
「ポケットに、なんか入って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1926);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500960skr">
「な！　こ……コレは、まさか！」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200500970kit">
「ん？　どうしたんですか？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500980skr">
「おい、弟子！　来い！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200500990skr">
「あいつらを追い払う大作戦、思いついた！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501000kit">
「大作戦……でも、どうやって？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501010skr">
「ズバリ！　今日のラッキーアイテムを使う」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501020kit">
「な、なんか嫌な予感が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE11", 1000, 0, null);
	DeleteAllSt(200,true);


	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",500,1000,null,true);

	DeleteSt("C",200,true);

	Wait(1000);
//	SetVolumeEX("SE11", 3000, 700, null);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

//◆演出指定：時間経過


{	St("C",700, @0,@50,"bu千秋_通常_sigh");

	Shake("@StNameC/C*", 400, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 400, @0, @-50, Dxl1, false);

	FadeSt("C",400,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501030kit">
「な……なんでオレが、こんなカッコを……？」

{	SoundPlay("@xbgm32",0,450,true);
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501040skr">
「文句あっか？」

{	St("MR",700, @0,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501050kit">
「な、ないです！　ないけど……ううっ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501060skr">
「泣くな泣くな。可愛いぞ」

{	St("MR",700, @0,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501070kit">
「ほ、ほっといてください！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501080skr">
「ついでにコレ、使うか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 1500, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵背景100", 0, @0, @100, null, true);
	Move("絵背景100", 300, @0, @-100, Dxl2, false);
	Fade("絵背景100", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　沙紅羅はエコバッグをひょいと差し出す。

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501090kit">
「つ、使いません！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501100skr">
「でも、使えばその寂しい胸が――」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501110kit">
「は？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501120skr">
「いや、だってこの中にはでっかい饅頭が……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501130kit">
「そんなもの、入ってません！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501140skr">
「え？　じゃあ何が――」

{	FadeDelete("絵背景100", 300, null, true);
	St("C",700, @0,@50,"bu千秋_通常_fear");

	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501150kit">
「だ！　だから開けちゃ駄目ですって！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501160skr">
「わ、わかったよ！　わかったけど……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm32", 1000, 300, null);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"fu沙紅羅_通常_think");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆音声指示：小声
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501170skr">
「饅頭じゃなくて、そんなに大切って……
　いったい、どんだけ価値のある物なんだ？」

{	St("C",700, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//◆音声指示：小声
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501180skr">
「まさかコイツの中には、とんでもない価値のある……
　カネとか、金とか、あと、宝石とか……」

{
	SetVolumeEX("@xbgm32", 1500, 450, null);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501190skr">
「あ！　そうだ！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501200skr">
「おい弟子！　カネ、貸してくれよ」

{
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501210kit">
「……は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501220skr">
「アタシ、来る途中財布落としちゃってさ。
　万引きするわけにもいかねーだろ」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501230kit">
「な、なんでオレが金まで貸さなきゃ――！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501240skr">
「まあまあ。コレも授業料だと思って……」

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501250kit">
「こ、この……！」

{	DeleteAllSt(200,true);}
　千秋は投げ出すように、沙紅羅に千円札を手渡す。

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501260skr">
「サンキュー！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501270skr">
「そいじゃ、早速……」

{	SetVolumeEX("@xbgm*", 1000, 0, null);
	Wait(200);
	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	Shake("@StNameML/ML*", 200, 0, 8, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @50, @0, AxlDxl, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501280skr">
「め、め、めくらせてもらうぜ！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501290kit">
「え？　めくる？」

{	St("ML",700, @50,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 0, 5, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @50, @0, AxlDxl, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501300skr">
「あ、アタシもホントはこういうこと、嫌なんだぞ！」

{	St("ML",700, @100,@0,"bu沙紅羅_通常_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501310skr">
「嫌だけど……これもすべて……どーじんしのため……」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @50, @0, AxlDxl, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501320kit">
「え？　いやいや、なんか鼻息……！」

{	St("ML",700, @100,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @150, @0, AxlDxl, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501330skr">
「ちぇすとーッ！！」

{	St("MR",700, @50,@0,"bu千秋_驚天_shy");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeQ($MR_次,0,0,200,0,50,Dxl1,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501340kit">
「きゃああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1927);}

	TextBoxDelete(150);

//◆ＥＶ："ev/ev1920千秋しまぱん.txt" 差分Ａ
//◆ＳＥ：きゃるーん！　ってかんじのＳＥ
//◆演出指定：それまでの背後のざわつきが「シン」となる

	DeleteAllSt(200,true);



	CreateTextureEX("絵背景100BG", 100, Center, 0, "cg/bg/bg1801111ドンガ・バチョ_家電売り場_通常.jpg");
	Request("絵背景100BG", Smoothing);
	Zoom("絵背景100BG", 0, 2000, 2000, null, true);
	SetShade("絵背景100BG", HEAVY);

	CreateTextureEX("絵背景100PNG", 1000, -685, 0, "cg/ev/l/ev1920千秋しまぱんa_l_千秋のみ.png");
	Request("絵背景100PNG", Smoothing);
	Rotate("絵背景100PNG", 0, @0, @0, @45, null,true);

	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Move("絵背景100BG", 1500, @0, -250, Dxl1, false);
	Move("絵背景100PNG", 1500, @0, -800, Dxl1, false);
	Fade("絵背景100BG", 500, 1000, null, false);
	Fade("絵背景100PNG", 500, 1000, null, true);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　店内に響き渡る、千秋の悲鳴。

　引きずられるように、店内の空気が静まりかえり――

//◆音声指示：遠くへ
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501350skr">
「今なら！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501360skr">
「アッキーちゃんのスカートめくり放題らしいぜ！」

//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/200501370e07">
「なん……だと？　スカートをめくり放題？」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/200501380e08">
「しまぱんを……見放題？」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/200501390e09">
「食べ放題？」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/200501400e10">
「割り箸も……割り放題？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501410skr">
「ＹＥＳ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501420kit">
「ＮＯ！　ＮＯ！　ＮＯ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 1500, center, middle, "cg/ev/l/ev1920千秋しまぱんa_l.jpg");
	SetBlur("絵背景100", true, 2, 500, 50, false);
	Request("絵背景100", Smoothing);

	SoundPlay("@xbgm11",0,450,true);

	CreateSE("SE10","seガヤ_客暴動_l");
	MusicStart("SE10",500,1500,0,1000,null,true);


	Move("絵背景100BG", 500, @0, 0, Axl1, false);
	Move("絵背景100PNG", 500, @0, 0, Axl1, false);
	Fade("絵背景100", 500, 1000, null, false);
	Move("絵背景100", 500, -512, -288, Dxl1, false);
	Zoom("絵背景100", 500, 500, 500, Dxl1, true);
	CreateTextureEX("絵背景1000", 1000, Center, Middle, "cg/ev/ev1920千秋しまぱんa.jpg");
	CreateTextureEX("絵背景2000", 1001, Center, Middle, "cg/ev/ev1920千秋しまぱんa.jpg");
	Fade("絵背景1000", 0, 1000, null, true);
	Fade("絵背景2000", 0, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景100PNG");
	Delete("絵背景100BG");


	Shake("絵背景2000", 300, 2, 1, 0, 0, 1000, null, false);

	SetVolumeEX("SE10", 5000, 700, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/200501430e07">
「うおおおおおお！！」

{	Shake("絵背景2000", 300, 1, 3, 0, 0, 1000, null, false);}
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/200501440e08">
「それはオレのしまぱんだあああ！！」

{	Shake("絵背景2000", 300, 4, 2, 0, 0, 1000, null, false);}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/200501450e09">
「ＵＲＹＹＹＹＹＹ！！」

{	Shake("絵背景2000", 300, 3, 5, 0, 0, 1000, null, false);}
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/200501460e10">
「殺してでも奪い取る！！」

{	Shake("絵背景2000", 1000, 7, 5, 0, 0, 1000, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501470kit">
「きゃああああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Delete("絵背景1000");
	FadeDelete("絵背景2000", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　懐中電灯に群がっていた男たちが、目標を千秋に変える。

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501480skr">
「よっしゃ！
　やっぱり奴ら、正常な判断力を失ってやがる」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501490skr">
「今のうち、今のうち……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	DeleteSt("C",200,true);

	Wait(300);
	St("C",700, @-50,@0,"bu沙紅羅_通常_happy");
	Move("@StNameC/C*", 200, @+50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501500skr">
「イシシシシ！　懐中電灯ゲット！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1928);}

	TextBoxDelete(150);

	CreateTextureEX("絵背景PAN100", 1000, Center, Middle, "cg/ev/ev1920千秋しまぱんa.jpg");
	CreateTextureEX("絵背景PAN200", 1000, Center, Middle, "cg/ev/ev1920千秋しまぱんb.jpg");
	Request("絵背景PAN*", Smoothing);
	Zoom("絵背景PAN*", 0, 1120, 1120, null, true);
	SetBlur("絵背景PAN100", true, 1, 500, 200, false);


	MoveFTP3("@絵背景PAN*", 2000, 6, 5);
	Fade("絵背景PAN100", 300, 1000, null, true);
	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501510kit">
「きゃああああ！　だめええええええ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501520kit">
「し、師匠ー！　責任とって、助けてー！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501530skr">
「はいはい。ったく、しょーがねーなー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　沙紅羅は売り場に並んでいたメガホンを手に取り――

//◆音声指示：メガホン
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501540skr">
「こほん！　あー、あー！」

//◆音声指示：メガホン
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501550skr">
「みんな！　よく聞いてくれッ！」

//◆音声指示：メガホン
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501560skr">
「おまえたちはひとつ、大きな勘違いをしている！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆演出指定：静まりかえる　→　位置修正
//	SetVolumeEX("@xbgm11", 500, 1, null);
//	SetVolumeEX("SE10", 500, 0, null);
//	Wait(500);
//	MoveFTP3stop();

//	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//◆音声指示：メガホン
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501570skr">
「そこにいるヤツ、実は――」

//◆音声指示：メガホン
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501580skr">
「女じゃないッ！　男なんだよッ！」

{	SetVolumeEX("@xbgm11", 500, 1, null);
	SetVolumeEX("SE10", 500, 1, null);
	Wait(500);
	MoveFTP3stop();
}

//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/200501590e07">
「なん……だと……」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/200501600e08">
「こいつが……女装、野郎？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501610kit">
「そ、その通りだよぉ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501620kit">
「だから、ね？　もう乱暴しないで……」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/200501630e09">
「うそだッ！！」

//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/200501640e10">
「証拠を見せろッ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501650kit">
「きゃあああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＥＶ："ev/ev1920千秋しまぱん.txt" 差分Ｂ　もっこり股間見え
//手前で定義しています。
	CreateSE("SE01","se人体_倒れる04");
	CreateSE("SE02","se擬音_ギャグ_ドッキーン");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景PAN200", 500, 10, 10, 0, 0, 1000, Dxl2, false);
	Fade("絵背景PAN200", 500, 1000, null, true);

	Wait(300);

	MusicStart("SE02",0,700,0,1000,null,false);
	Move("絵背景PAN200", 200, @0, @-200, Dxl2, false);
	Zoom("絵背景PAN200", 200, 1800, 1800, Dxl2, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/200501660e07">
「もっこりしている！？」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/200501670e08">
「詐欺だ！　こんなに可愛いのに……男だと？」

//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/200501680e09">
「だが、それがいい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 500, 700, null);
	SetVolumeEX("@xbgm11", 500, 450, null);
	Move("絵背景PAN200", 200, @0, @200, Dxl2, false);
	Zoom("絵背景PAN200", 200, 1200, 1200, Dxl2, true);
	SetBlur("絵背景PAN200", true, 1, 500, 200, false);
	MoveFTP3("@絵背景PAN*", 2000, 6, 5);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0322]
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/200501690e10">
「わぁい！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501700kit">
「な！　ちょ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501710kit">
「きゃああああああああああああ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1929);}

	TextBoxDelete(150);

	Fade("絵背景PAN100", 0, 0, null, true);
	Fade("絵背景PAN200", 500, 0, null, true);

	MoveFTP3stop();

	Delete("絵背景100");
	Delete("絵背景200");

	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501720skr">
「３分の１くらい加速した……？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501730skr">
「なんか……おかしくね？」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501740skr">
「………………」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501750skr">
「世の中には……不思議なことがあるもんだ……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501760skr">
「弟子よ！　グッドラック！！」

//◆音声指示：遠くから
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/200501770kit">
「いやあああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※下倉注：ここ切り替え無しでテンポ良く行って下さい 2010/11/19

	SetVolumeEX("SE*", 700, 0, null);
	SetVolumeEX("@xbgm*", 700, 0, null);

	TextBoxDelete(150);

//◆ＳＥ：チーン。レジの音


	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteSt("C",200,true);

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",500,1000,null,true);

	Wait(1000);
	CreateSE("SE01","seメカ_レジ_キャッシャー");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/19/200501780e14">
「お会計７８０円になります」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/200501790skr">
「あ、袋要らねーから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

	EndScene();
}
