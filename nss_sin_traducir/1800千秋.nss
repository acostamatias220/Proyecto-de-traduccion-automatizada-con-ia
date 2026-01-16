
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1800千秋.nss_MAIN
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
	$GameName = "1820千秋.nss";
	//$GameCircle=false;

}

scene 1800千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1330">
////////////header////////////
//file name "1800千秋.nss"
//title "アッキーちゃん聖誕祭　～千秋は夜の蝶になる～"
//previous "y1752千秋.nss"

////////////footer////////////
//next "千秋" "1820千秋.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 490, "#000000");
	FadeDelete("上背景", 0, null, true);

//◆演出指定：真っ暗な画面で


WaitKey(1000);


{	ClockPass(1800);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600010fjr">
「こ、これは……」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600020fjr">
「なんというか……その……ものすごく……」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600030fjr">
「イケナイ香りがするわっ！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600040kit">
「どんな香りだよ！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600050fjr">
「あらー、興味あるー？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600060kit">
「え、そりゃまあ、自分のことだし、興味くらい……」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600070fjr">
「手遅れになっても知らないわよ」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600080fjr">
「目を開けたら、二度と元の世界には戻れないかも……」


//◆音声指示：ビビって
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600090kit">
「え？　何？　それ、どういう――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆ＳＥ：はらり……目隠しが外れる
	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);


//◆演出指示：１回、光が強くて色を飛ばした感じで、ＣＧが見えかけても面白いなあ

	CreateColorSPadd("絵色", 110, "#FFFFFF");
//2048x2751
	CreateTextureSP("絵背景", 100, -710, -2130, "cg/ev/l/ev1800千秋は夜の蝶になる_l.jpg");
	DrawDelete("絵色黒", 500, 1000, AxlDxl, "slide_03_00_1", false);
	FadeDelete("絵色", 1000, null, true);

//演出要ツメ（千[10/13]


{	ClockPass(1801);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：すごくビビって
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600100kit">
「あ！　な……ちょっと！」

{DrawDelete("絵背景", 300, 500, Axl1, "slide_05_00_1", false);}

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600110kit">
「やめろよ！　急に、そんな目隠し外したり――」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600120fjr">
「びっくりした顔も、いつにも増して可愛いわよん」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600130kit">
「増すってなんだよ！　まるで元々オレが――」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600140fjr">
「可愛いじゃない。男の子のままでも」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600150kit">
「う……うるさい！　オレは男だ！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600160kit">
「女の子っぽいとか言うな！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600170fjr">
「で、いつまで目つぶってるつもり？
　早くしないと、仕事の時間が来ちゃうわよー」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600180kit">
「わ、わかってるよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1802);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600190fjr">
「わかってるなら、見てみたら？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600200kit">
「言われなくてもそうするし！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600210kit">
「…………」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600220fjr">
「…………」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600230kit">
「……あの、見てもホントに大丈夫？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1803);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600240fjr">
「さあね」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600250kit">
「さあねって……」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600260fjr">
「ほら！　いつまでもウダウダしてると、アタシのドロップキック、かましちゃうわよ！」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600270kit">
「あの……ヤクザ殺しって噂の！？」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600280fjr">
「殺してないもん。骨を折ってやっただけ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600290kit">
「げえッ！　わかった、わかりました……」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600300kit">
「ふぅ……」

　大きく息を吸い込んで――目蓋を開く。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	ClockPass(1804);}


//◆ＥＶ："ev/ev1800千秋は夜の蝶になる.txt"



	PrintGO("上背景", 5000);
	//1536x2063
	CreateTextureSP("絵背景m", 101, -100, -1487, "cg/ev/m/ev1800千秋は夜の蝶になる_m.jpg");
	DrawDelete("上背景", 1000, 500, Dxl1, "slide_05_00_0", true);
	Move("絵背景m", 2080, @0, -967, DxlAuto, false);
WaitKey(2080);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600310kit">
「…………」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600320kit">
「……これ、誰？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1805);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600330fjr">
「ここ」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600340kit">
「…………」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600350fjr">
「ネームプレートに、なんて書いてある？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600360kit">
「…………」


　ちあき。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1806);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　胸元には、自分の名前が左右反転して記されていた。

{	SoundPlay("@xbgm11",0,450,true);}
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600370kit">
「ってことは、映ってるの、やっぱり、オレ？」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600380fjr">
「可愛いでしょ？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600390kit">
「う……」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600400kit">
（確かに可愛い……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);






//◆ＳＥ：ケータイカメラ「ぴろりろーん！」
	CreateSE("SE01","seメカ_携帯_カメラチャイム");
	MusicStart("SE01",0,700,0,1000,null,false);

{	ClockPass(1807);}


	//1024x1376
	CreateTextureSP("絵背景", 100, Center, -500, "cg/ev/ev1800千秋は夜の蝶になる.jpg");
	//Move("絵背景", 1500, @0, -340, DxlAuto, false);
	FadeDelete("絵背景m", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600410kit">
「ぇ？　な、ちょっと！　おい！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600420fjr">
「記念撮影～♪」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600430kit">
「嘘だろ！　脅迫材料だろ！？」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600440fjr">
「あ、その手が――」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600450kit">
「藪蛇！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1808);}

	Move("絵背景", 1000, @0, -340, DxlAuto, false);
WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600460fjr">
「嘘ウソ。そんな鬼畜な真似しないって」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600470kit">
「ホント？　ホントにホントに……？」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600480fjr">
「同人誌の資料にするだけだから、身内しか見ないし♪」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600490kit">
「鬼だ！　鬼過ぎる……！」






//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600500fjr">
「じゃ、早速仕事場に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1809);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//	St("ML",700, @-100,@0,"bu千秋_朗らか_shy");
//Move("@StNameML/ML*", 200, @100, @0, Dxl1, false);
//	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600510kit">
「ちょっと待った！　ってマズいだろさすがに本名！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600520fjr">
「そっかな？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600530kit">
「当然だろ！　恵那とか来たらどうすんだ！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600540fjr">
「あー、確かにねー」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600550fjr">
「恵那ちんにヘンタイの女装野郎だなんてバレたら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1810);}




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//	St("C",700, @0,@0,"bu千秋_通常_cry");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600560kit">
「捏造すんな！　好きでやってんじゃないし！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600570fjr">
「ま、源氏名くらいはつけてあげないとねー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	PrintGO("上背景", 5000);

	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]

　言うが早いか、バイト長の富士見鈴は、慣れた手つきで千秋の胸からネームプレートを外す。


　中の紙をひっくり返して、マジックを手に取った。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//◆ＳＥ：マジックキュッキュッキュ
//あきゅん「素材：obj千秋ネームプレートa」

	CreateSE("SE01","se環境_マジックペン");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(2000);
	SetVolume("SE01", 500, 0, null);
WaitKey(500);

	CreateTextureEX("絵オブ", 100, Center, Middle, "cg/obj/obj千秋ネームプレートa.png");
	Move("絵オブ", 0, @0, @100, null, true);
	Move("絵オブ", 500, @0, @-100, DxlAuto, false);
	Fade("絵オブ", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]
　書かれた文字は――「アッキー」。


//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600580kit">
「千秋がアッキーって……バレないか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1811);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600590fjr">
「大丈夫！　気付かれないって！」

//	St("C",700, @0,@0,"bu鈴_通常_normal");
//	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600600fjr">
「書いちゃったものはしょうがない！」

{	Move("絵オブ", 500, @0, @100, DxlAuto, false);
	FadeDelete("絵オブ", 200, null, true);}
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600610kit">
「しょうがなくない！　書き直しを要求――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 1000, 0, null);



//◆場所：スーパーノヴァ_控え室

//◆ＳＥ：着信音


	CreateSE("SE01","seメカ_携帯_メール着信_千秋_l");
	MusicStart("SE01",0,700,0,1000,null,true);
WaitKey(500);
//	PrintGO("上背景", 30000);
//	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
//	FadeBG(0,true);
	//DrawDelete("上背景", 500, 100, null, "slide_01_04_1", true);
//	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600620kit">
「あ……電話」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600630fjr">
「恵那ちんから？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600640kit">
「……別に鈴姉には関係ないだろ」

{	DeleteAllSt(200,true);}
　千秋は名前を裏返したネームプレートをポケットに入れ、それと入れ替えで携帯電話を手に取った。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	ClockPass(1812);}
//◆ＳＥ：電話
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0155]

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600650fje">
//◆音声指示：電話越し
『あ、もしもし？』

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600660kit">
「おう、なんだよ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600670fje">
//◆音声指示：電話越し
『なんだじゃないでしょ！
　人をこんなに待たせておいて！』


{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600680kit">
「だから、急用があるって言っただろ？」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600690fje">
//◆音声指示：電話越し
『そんなの許さない。
　ずっと家で待ってるって言ったでしょ』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600700kit">
「んな無茶な」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600710fje">
//◆音声指示：電話越し
『納得させるんだったら、せめて理由くらい言って』

{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600720kit">
「理由って、あの、それは……」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600730fje">
//◆音声指示：電話越し
『それは？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600740kit">
「…………」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600750fje">
//◆音声指示：電話越し
『……言えないことなの？』

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600760kit">
「まあ……」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600770fje">
//◆音声指示：電話越し
『どうしても？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600780kit">
「そういう感じ……」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600790fje">
//◆音声指示：電話越し
『はぁ……』

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600800fje">
//◆音声指示：電話越し
『なんで最初から、そう説明できないの？』

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600810kit">
「……言ったって、怒るだろ？」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600820fje">
//◆音声指示：電話越し
『怒るわよ！』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1813);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600830fje">
//◆音声指示：電話越し
『許すんだから怒るくらいさせなさいよ、バカチビ』

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600840kit">
「あ……うん」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600850kit">
「あの……ごめんなさい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600860fje">
//◆音声指示：電話越し
『……まあ、いいわ』

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600870fje">
//◆音声指示：電話越し
『アンタも困ってるみたいだし。
　今回だけは、許して――』

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600880fjr">
「お話終わった？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600890kit">
「シッ！　ちょっと静かに！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteAllSt(200,true);
	SoundPlay("@xbgm05",0,450,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600900fje">
//◆音声指示：電話越し
『な、何？　今の声――<RUBY text="すずねえ">鈴姉</RUBY>？』

{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600910kit">
「いや、あの、まさかそんな……あはははは」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600920fje">
//◆音声指示：電話越し
『誤魔化さないでバカチビ！』

//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600930fje">
//◆音声指示：電話越し
『なんで私との約束を破って、<RUBY text="すずねえ">鈴姉</RUBY>といるのよ！』

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600940kit">
「待ってくれ！
　コレには深い、ふかーいワケが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1814);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/18/000600950fje">
//◆音声指示：電話越し
『知るか！　縮んじゃえバカチビ！』

//◆ＳＥ：電話切る
{
	CreateSE("SE01","seメカ_携帯_切れる");
	MusicStart("SE01",0,700,0,1000,null,false);
Wait(200);
	CreateSE("SE02","seメカ_携帯_電話切れる01_l");
	MusicStart("SE02",0,700,0,1000,null,true);
}

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600960kit">
「おい恵那？　恵那ってば――！」

{	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600970fjr">
「切られちゃった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(200,false);}
{	St("C",700, @0,@100,"bu千秋_頭突き_rage");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000600980kit">
「おまえのせいだろ！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000600990fjr">
「あーらーら。人のせいにしちゃうんだ！
　素直になれない自分たちが悪いのにねー」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601000kit">
「素直になれない？　どういうことだよ？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601010fjr">
「さーて、どういうことでしょー？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601020kit">
「お、オレはアイツのことなんてどうも思ってないし！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601030fjr">
「でも、恵那ちんはそう思ってないという姉の勘」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601040kit">
「ありえねー！　普通にありえねー！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	St("MR",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 2700);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601050fjr">
「千秋ちゃんも罪作りな男……今は女の子だけどね」

{	AgainSt("MR",700, @0,@0,"bu鈴_通常_happy");
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601060kit">
「うっせ！　とにかく、これだけのことするんだから、ちゃんと約束守ってくれよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1815);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601070fjr">
「恵那ちんのバッグを交換すればいいんでしょ？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601080kit">
「できるんだよな？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601090fjr">
「朝飯前」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);


//◆演出指示：ずずっと近づいて

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0265]
{	St("C",700, @-100,@0,"fu千秋_朗らか_sad");
Move("@StNameC/C*", 200, @100, @, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601100kit">
「中身は見ないでくれよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1816);}

{	DeleteAllSt(200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601110fjr">
「えーと、どうしよっかなぁ……」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@-50,"bu千秋_頭突き_rage2");
	Move("@StNameC/C*", 200, @0, @100, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601120kit">
「お願いします！　この通りです！」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601130fjr">
「そこまで頼み込まれると、かえって興味が――」

{	DeleteAllSt(200,false);}
{	St("ML",700, @50,@0,"bu千秋_朗らか_shock");
Move("@StNameML/ML*", 200, @-50, @0, Dxl1, false);
	Shake("@StNameML/ML*", 200, 0, 6, 0, 0, 500, Axl3, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601140kit">
「そ、そんな……！」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601150fjr">
「冗談じょーだん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601160fjr">
「正直、この時期は人手が足りなくて困ってるから。
　猫の手どころか男の手も借りたい！」



{	St("MR",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601170fjr">
「リハが無事に終わったら、景気づけにロクロー様のイベント見に行かなきゃなんないしね！」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601180kit">
「ロクローさま？」

{	DeleteAllSt(200,false);}
{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601190fjr">
「あいや、なんでもないこっちのこと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1817);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601200fjr">
「――で、アタシはどのバッグを持っていけばいいの？」

{	DeleteAllSt(200,false);}
{	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601210kit">
「あ、うん。それなんだけど――あれ？」

{	DeleteAllSt(200,false);}
{	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//	St("C",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601220kit">
「あれ？　あれれ？　あれ？」

//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601230kit">
「ない？　ない……ない！」

{	St("C",700, @0,@50,"bu千秋_通常_cry");
Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601240kit">
「あー……家に忘れた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1818);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("C",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601250kit">
「あの、渡すのって明日でいいかな？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601260fjr">
「ダメ」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601270kit">
「え？　ダメ？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601280fjr">
「ライブが終わったら、すぐ打ち上げ旅行なの」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601290kit">
「マジでッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1819);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601300fjr">
「ま、今から取りに行けば間に合うんじゃない」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601310kit">
「まだ時間、大丈夫？」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/18/000601320fjr">
「ちゃんと７時までに帰ってきなさいよ」

{	DeleteAllSt(200,true);}
{	St("C",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/18/000601330kit">
「了解！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@xbgm*", 2000, 0, null);


{	DeleteAllSt(200,true);}

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

WaitKey(1000);

	EndScene();
}
