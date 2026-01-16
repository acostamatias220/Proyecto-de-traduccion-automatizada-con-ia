
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1940千秋.nss_MAIN
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
	$GameName = "2000千秋_恵那.nss";
	//$GameCircle=false;

}

scene 1940千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="2370">
////////////header////////////
//file name "1940千秋.nss"
//title "男ってなんだ！？"
//previous "1930千秋.nss"

////////////footer////////////
//next "千秋" "2000千秋_恵那.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);

//◆時間：ジャンプ
{	ClockPass(1942);}

	if($PreGameName=="1930千秋.nss"){
	Wait(1000);
	FadeDelete("上背景", 500, null, true);
	}else{}
	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　レジの奥から鍵を取り出した村崎。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("@SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
　彼に連れられて千秋が辿り着いたのは――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PrintGO("上背景", 5000);

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101111スパコン館_裏面_通常");
	FadeBG(0,true);
	#bg1101100スパコン館_裏面_通常 = true;

	FadeDelete("上背景", 500, null, true);

	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",1000,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400010kit">
「……スパコン館？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400020kit">
「ここ、潰れて使われてないんじゃ――」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400030msi">
「ところが、そうでもないんですよォ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//	St("ML",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400040msi">
「前の経営会社がこの建物を閉鎖した後、私の友人のインド人が管理を任されてまして」

//	St("ML",700, @0,@0,"bu村崎_通常_normal");
//	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400050msi">
「おおっぴらに店を開くわけにはいかないんですがね。
　私的な遊技なんかには、使われているんですよォ」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400060kit">
「私的な……遊技？」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400070msi">
「さ、中へ。どうぞどうぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400080kit">
「え、いやあの……」

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400090msi">
「あらら？　このバッグの中味、要らないんですかァ？」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400100kit">
「い……要ります！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	WaitKey(1000);




//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");//bg1103100スパコン館_店内_通常
	FadeBG(0,true);


//◆ＳＥ：パチン！

//◆演出指定：電気が点いて一気に明るくなる

	SoundPlay("@xbgm24",0,450,true);

	CreateColorSPadd("絵色", 1500, "#FFFFFF");

	CreateSE("SE01","se動作_ライト点ける");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("絵黒幕");
	FadeDelete("絵色", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400110kit">
「陳列棚はそのまま……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400120msi">
「障害物があったほうが、雰囲気も出ますからね」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400130kit">
「障害物？」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400140msi">
「なんでもね、モデルガンを撃ち合って、戦争ごっこをするらしいんですよォ」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400150kit">
「え……じゃあ、オレがサバゲーを？
　でも、そんなのやったことないし……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400160msi">
「ああ、心配しないで！　そうじゃありません」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400170msi">
「あなたにやって欲しいことは、もっと別の……げへへ」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400180msi">
「さあ、地下へどうぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


{	ClockPass(1943);}

//◆場所：スパコン館_スタジオ
	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400190kit">
「え？　学校！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400200kit">
「ってかアレ？
　オレの教室、そっくり……」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400210msi">
「色々撮影もありますし。
　リアリティを重視してますからねェ」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400220kit">
「撮影……？」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400230msi">
「秋葉原にはコスプレをする人が集まるでしょう？
　写真を撮るためのスタジオも、結構需要がありまして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("MR",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400240kit">
「でも、こんな所知らなかった……」

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400250msi">
「クローズドでやってるんですよォ。
　普通の人は知らない、秘密の場・所」

{	St("MR",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400260kit">
「あ……あはははは……」

{	St("MR",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400270kit">
「つまり……写真を撮れば、ブルマーを返してもらえる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1944);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400280msi">
「写真も、撮りますねえ」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400290kit">
「それだけじゃ、ダメ……ですか？」

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400300msi">
「むはっ！」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400310msi">
「い、いい、いい！　いい！　すごくいい！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400320msi">
「そそられちゃいますね！　もよおしちゃいますね！
　先っぽから、ちょっと、漏れちゃいますね！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @-50,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400330kit">
「な……なんのこと――」

{	SetVolumeEX("@xbgm*", 3000, 0, null);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400340msi">
「どうにもこうにも！　なんでここがクローズドなのかおわかり？　ですか？　ですね？　ですよねェ！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400350kit">
「なんか、人が変わって――」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400360msi">
「大丈夫！　こわくないですよォ。ワタシ紳士。
　触ったり、弄ったり、こねくり回したりはしない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400370msi">
「ただねー、こちらも商売ですんでねー。
　ブルマーブルマーが欲しいなら、物々交換で」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400380kit">
「ぶつぶつ？」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400390msi">
「私の、この、ブルマーと――」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400400msi">
「あなたの、はいている、パンツ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵立絵", 100, Center, Middle, "cg/bu/l/bu村崎_通常_happy_x01.png");
	Move("絵立絵", 0, @0, @100, null, true);

	Move("絵立絵", 200, @0, @-100, DxlAuto, false);
	Fade("絵立絵", 200, 1000, Axl1, false);
	DeleteAllSt(200,true);

	SoundPlay("@xbgm03",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//	St("ML",700, @0,@0,"bu村崎_通常_happy");
//	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400410msi">
「ト・レ――――――――ドッ！！」

{	FadeDelete("絵立絵", 200, Dxl1, false);
	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400420msi">
「……いかがです？」

{	St("MR",700, @-50,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400430kit">
「え……」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400440msi">
「あ、ちなみにね。ここに連れてきたのはね。
　いかがわしいことをするわけではなくてね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400450msi">
「あなたがそのパンツをはいている、証・明・写・真を！」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400460kit">
「だッ、誰が写真なんか撮れるか！」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400470kit">
「帰る！」

{	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400480msi">
「あららー？　ブルマー、要らないんですか？」

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400490kit">
「ぐ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400500kit">
「いや……その、欲しい。
　欲しいけど、でも……」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400510msi">
「顔、隠します？」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400520msi">
「可愛いお顔隠れちゃうのは残念ですけどォ。
　どうしてもというなら、隠しましょう。手とかで」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400530kit">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400540msi">
「いやなら、いいんですよォ」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400550msi">
「私はこのブルマーを持って、その筋の店に……」

{	St("MR",700, @0,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400560kit">
「ぅ…………ぅぅ、ぅぅぅ……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteAllSt(0,true);

//◆時間：ジャンプ
{	ClockPass(1946);}

	WaitKey(1000);

//◆演出指定：時間経過・突然カメラフラッシュで入るイメージ・縦パンでローアングルから、が、正解かな？

//◆ＥＶ："ev1920千秋しまぱん.txt" 差分Ｃ

//Ｃ無いそうです（千代子

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵色", 1500, "#FFFFFF");

	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
	FadeBG(0,true);

	Delete("絵黒幕");
	FadeDelete("絵色", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
{	St("ML",700, @0,@50,"bu村崎_通常_ero");
	Move("@StNameML/ML*", 200, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400570msi">
「んー、いいですね、いいですねェ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400580msi">
「足もほっそりとしてて、んんー、かわいいですねェ」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400590msi">
「自分の娘がこんなんだったら、もう、大変ですねェ」

{	St("MR",700, @0,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400600kit">
「余計なこと言わないで、さっさと撮って――」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400610msi">
「んんー、そんな泣きそうな顔しないでくださいィ」

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400620msi">
「まるで私がいじめてるみたいじゃないですかァ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400630msi">
「でもねェ、そういう顔もいいんですよォ！
　そそりますよォ」

{	St("MR",700, @0,@0,"bu千秋_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400640kit">
「そそるって……なにがだよぉ……」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400650msi">
「それじゃねェ、スカートをたくしあげて！」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400660kit">
「や……やっぱり、やるのか？」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400670msi">
「やるんです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400680kit">
「……どうしても？」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400690msi">
「ブルマー、要らないんですかァ？」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400700kit">
「わかったよ！　もぅ……」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400710kit">
「い、行くぞ！」

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400720msi">
「ストップ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400730kit">
「え？」

{	St("ML",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400740msi">
「一気にあげちゃダメですよォ！」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400750msi">
「そっと、そっと、ゆっくり……ね？」

{	St("MR",700, @0,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400760kit">
「ぅぅ……帰りたいよぉ」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400770msi">
「うひゃっ！　縞ぱん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190a]
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400780msi">
「さすが！　わかってますねェ！
　需要と供給ですねェ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190b]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400790msi">
「んーいいですねェ！　絶景ですねェ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190c]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400800msi">
「ナイス尻たぶ！」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400810kit">
「尻たぶってなんだよォ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1947);}

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200a]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400820msi">
「ああ、いいですいいですよー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200b]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400830msi">
「まだ未発達で、男の子みたいなおしり！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200c]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400840msi">
「それにこの、股の間から覗くもっこりした……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200d]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400850msi">
「もっこりとした……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);

	CreateSE("SE01","seメカ_カメラ_シャッター");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色", 1500, "#FFFFFF");
	Wait(100);
	FadeDelete("絵色", 500, null, true);

{	St("ML",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200e]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400860msi">
「もっこり！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(500);

	CreateSE("SE01","seメカ_レンジ_チーン");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400870msi">
「ちょ！　な！　なに！？」

{	St("ML",700, @0,@90,"bu村崎_通常_fear");
	Shake("@StNameML/ML*", 300, 5, 0, 0, 0, 500, null, false);
	Move("@StNameML/ML*", 300, @0, @-90, Dxl1, false);
	FadeSt("ML",200,true);
	SoundPlay("@xbgm11",0,450,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400880msi">
「男！？」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400890kit">
「そ、そうだよ！」

{	CreateSE("SE02","se擬音_ギャグ_ガーン01");
	St("ML",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	MusicStart("SE02",0,700,0,1000,null,false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400900msi">
「あちゃー……」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400910msi">
「私を、騙したんですね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400920kit">
「オレがいつ、自分の事を女だって言った！？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400930kit">
「そっちが勝手に勘違いしたんだろ！？」

{	St("ML",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400940msi">
「ぐ……それを言われると、確かに……」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400950kit">
「約束は約束だからな！
　ブルマーは返してもらうぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("ML",700, @0,@0,"bu村崎_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400960msi">
「む……むむむむ……」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400970msi">
「……わかりました。私も商売人です。
　二言はありません」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400400980msi">
「撮影も、このくらいでいいでしょう」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400400990kit">
「本当か！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400401000msi">
「ただし！」

{	St("ML",700, @0,@0,"bu村崎_通常_ero");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400401010msi">
「ちゃんとパンツはいただきますよ！」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401020kit">
「わ……わかったよ」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401030kit">
「脱ぐから、あっち向いてろ！」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400401040msi">
「あー、はいはい。
　男が脱ぐところ見たって、なにも面白くないですしね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);


	CreateSE("SE01","se動作_着替え");
	MusicStart("SE01",0,700,0,1000,null,false);

//	TextBoxDelete(150);
	WaitKey(100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//◆音声指示：小声
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400401050msi">
「けどこれ、ホントに売れますかね？」

{	SetVolume("SE*", 1000, 0, null);
	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401060kit">
「知るか！　ほらよ！」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400401070msi">
「あ、どうも」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureSP("絵背景", 1500, Center, Middle, "cg/img/img縞パン.jpg");
	Zoom("絵背景", 0, 2000, 2000, null, true);

	Zoom("絵背景", 500, 1000, 1000, null, false);
	Fade("絵背景", 500, 1000, null, true);

	CreateSE("SE01","se擬音_ギャグ_寒い風");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255a]
　脱ぎ捨てたパンツを、村崎が摘む。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景", 500, null, true);

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255b]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/19/400401080msi">
「写真確認してきますんで、ちょっと待っててください」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401090kit">
「さっさとしろよな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1948);}


	SetVolume("@xbgm*", 1000, 0, null);

	DeleteAllSt(200,true);
//	TextBoxDelete(150);
	WaitKey(200);

//◆ＳＥ：扉が開いて閉まる
	CreateSE("SE01","se動作_ドア開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

WaitKey(200);

	CreateSE("SE02","se動作_ドア閉める01");
	MusicStart("SE02",0,700,0,1000,null,false);

WaitKey(1000);

	CreateTextureEX("絵ゆれ", 100, Center, Middle, "cg/bg/bg1104100スパコン館_スタジオ_通常.jpg");
	SetShade("絵ゆれ",MEDIUM);
	Zoom("絵ゆれ", 0, 2000, 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",19700, @0,@0,"fu千秋_通常_sigh");
	Fade("絵ゆれ", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401100kit">
（ったく……）

//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401110kit">
（なにが悲しくて男に写真撮られなきゃなんねーんだ！）

{	St("C",19700, @0,@0,"fu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401120kit">
（でも……ホントに顔、写ってないよな？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401130kit">
（もし写ってたら……その写真とパンツで……）

{	St("C",19700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401140kit">
（…………だめだ。考えるのはよそう）

{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401150kit">
（とにかくコレで、ブルマーは返ってくる！）

{	St("C",19700, @0,@0,"fu千秋_通常_pain");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401160kit">
「は――」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
{	Fade("絵ゆれ", 200, 0, null, false);
	DeleteAllSt(200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401170kit">
「はくちゅん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("C",19700, @0,@0,"fu千秋_通常_sad");
	Fade("絵ゆれ", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401180kit">
（うう……スカート、寒い）

{	St("C",19700, @0,@0,"fu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401190kit">
（ってか、オレノーパンだし！）

{	St("C",19700, @0,@0,"fu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401200kit">
（どうせならパンツ持ってきてって頼めばよかったな）

{	St("C",19700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401210kit">
（…………）

{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401220kit">
（しかし……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1949);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	St("C",19700, @0,@0,"fu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401230kit">
（遅くねーか？）

{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401240kit">
（ってか、写真の確認？　デジカメだろ？）

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401250kit">
（なにを確認すんだ？）

{	St("C",19700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401260kit">
（もしかして――）




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
//	DeleteAllSt(200,true);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
Delete("絵ゆれ");
	DeleteAllSt(0,true);


{	ClockPass(1950);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("C",700, @50,@0,"bu千秋_通常_worry");
Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401270kit">
「あの……」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401280kit">
「村崎……さん？」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401290kit">
「どこ行ったんですか？」

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401300kit">
「村崎さん――？」

{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401310kit">
「お――おい、村崎のおっさん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//	St("C",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401320kit">
「どこ行ったんだ！？」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401330kit">
「もしかして――」

{	DeleteAllSt(200,true);}

{	St("C",700, @0,@100,"bu千秋_頭突き_rage");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401340kit">
「お、オレを騙したのかッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0315]

　千秋は大声で呼びかける。

　だが、無人のビルに叫び声がこだまするだけ。


//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401350kit">
「ふ、ふ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm05",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("C",19700, @0,@100,"fu千秋_頭突き_rage");
Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401360kit">
「ふざけんなあああああああああああああッ！！」


{	ClockPass(1951);}




{	DeleteAllSt(200,true);}



{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401370kit">
（クソッ！　今すぐ追いかけて――）


{	St("C",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401380kit">
「……ってオレノーパンだし！」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401390kit">
（どうする！？　オレノーパンで走る？）

//	St("C",700, @0,@0,"bu千秋_朗らか_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401400kit">
（いやでもさすがにこのスカートまずいだろ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//	St("C",700, @0,@0,"bu千秋_朗らか_shock");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401410kit">
（風が吹いたら見えるだろ！　捕まるだろ！）

{	St("C",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401420kit">
（ええと……どうするどうする！？）

{	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401430kit">
（このままじゃパンツはもちろん、恵那のブルマーまで売られて……）

//	St("C",700, @0,@0,"bu千秋_朗らか_cry");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401440kit">
（そしたらもう、取り返しが……）

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401450kit">
（出るか！？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401460kit">
（出なきゃ！）

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401470kit">
（出よう！）

{	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401480kit">
（出る！）

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401490kit">
（出たい！）

{	St("C",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401500kit">
（出たいけど――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("C",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401510kit">
「うう……」


{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401520kit">
「やっぱり、無理……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1952);}



	TextBoxDelete(150);
	DeleteAllSt(200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0355]

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401530kit">
（ノーパンで、出て行くなんて……）

//	St("C",700, @0,@0,"bu千秋_通常_pinch");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401540kit">
（下着がないと、やっぱり……）

{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401550kit">
（…………）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	St("C",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401560kit">
（うう！　背に腹は代えられない！）

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401570kit">
（ここは電話で――）

{	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401580kit">
（……ダメだ）

{	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401590kit">
（７時半、とっくに過ぎてる。鈴姉は呼べない）

{	St("C",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401600kit">
（あと、頼りになりそうなのは……）

{	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401610kit">
「やっぱり……アイツだけか……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1953);}

	SetVolumeEX("@xbgm05", 1000, 300, null);

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

//◆ＳＥ：携帯電話鳴る

	CreateSE("SE01","seメカ_携帯_ダイヤル");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(1000);
	SetVolume("SE01", 10, 0, null);

WaitKey(200);
	CreateSE("SE02","seメカ_携帯_コール01_l");
	MusicStart("SE02",0,700,0,1000,null,true);

WaitKey(2000);

//◆ＳＥ：通話

	SetVolume("SE*", 10, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401620fje">
『……もしもし』

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401630kit">
「…………」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401640fje">
『もしもし……？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401650kit">
「…………」


{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401660kit">
（だ……ダメだ！　やっぱりバレるって！）

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401670kit">
（このまま電話切って――）




{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401680fje">
『あの……アッキーちゃん、だよね？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	SoundPlay("@xbgm23",2000,450,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401690kit">
「え……？　あ、うん」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401700fje">
『さっきは……ゴメンね。
　鈴姉から、みんな聞いたよ』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401710fje">
『親戚の子が来てるなんて、想像もしてなかったし』

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401720kit">
（親戚の子……？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401730kit">
（あ……もしかして、鈴姉がそう説明したのか！？）

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401740fje">
『それにさ、声が、千秋そっくりじゃない？』

//▼1950恵那.nssに併せてテキスト修正
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401750fje">
『って、言ってもわかんないか。
　自分の声って、自分じゃわかりづらいしね』

//『――って、言ってもわかんないか。
//　自分の声って、わかりづらいし……』


{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401760kit">
「あ……ああ、うん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401770fje">
『…………』


{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401780kit">
「…………」


{	ClockPass(1954);}

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401790fje">
『だから、その……』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401800fje">
『さっきは、あなたを疑っちゃって、ごめんなさい！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401810kit">
「あ、いや、そんな謝らなくても――」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401820fje">
『私がもっと、千秋を信じてあげられたらよかったの』



{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401830kit">
（な、なんだかわかんねーけど、恵那がいつもと違うぞ）

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401840kit">
（負い目があるみたいな感じだし）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
{	St("C",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401850kit">
（もしかしたら、案外楽にいける！？）


{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401860fje">
『あの、それでね！』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401870fje">
『ほら、携帯なくしたり、家で千秋とふたりっきりだったりで、大変でしょ？』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401880fje">
『だから、私にできることがあったらいつでも――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
{	St("C",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401890kit">
「お願い！　一生の、お願い！」

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401900kit">
「スパコン館、わかるよな！」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401910fje">
『スパコン館ってあの……
　潰れちゃった、スーパーコンピューター館？』


{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401920kit">
「そう、そこ！
　裏口が開いてるんだ！　それで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401930kit">
「地下１階のスタジオに、持ってきて欲しいんだ」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401940fje">
『持ってくるって……何を？』


//◆音声指示：小声で『下着』
{	St("C",700, @0,@0,"bu千秋_朗らか_lost");
	Shake("@StNameC/C*", 300, 8, 0, 0, 0, 300, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401950kit">
「…………」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401960fje">
『え？　何？　聞こえない！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401970kit">
「だから……下着……だよ」

{	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400401980kit">
「パンツ、持ってきて欲しいんだ！」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400401990fje">
『パンツ？』


//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400402000fje">
『なんで？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402010kit">
「悪いけど、急ぐんだ！
　理由は聞くな！」

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402020kit">
「お願い……できるか？」

{	DeleteAllSt(200,true);}
//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400402030fje">
『もちろん！』

//◆音声指示：電話越し
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400402040fje">
『わかった！　スパコン館ね！　すぐ行くから！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1955);}

//	TextBoxDelete(150);

//	SetVolume("@xbgm*", 1000, 0, null);




//◆ＳＥ：電話を切る
	SetVolumeEX("@xbgm05", 2000, 450, null);
	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);
WaitKey(100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402050kit">
「ふぅ……」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402060kit">
（なんだか知らないけど……助かった……）

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402070kit">
（でも、なんであんなに申し訳なさそうだったんだ？）

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402080kit">
（なんかこう……気持ちわりーな）

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402090kit">
（なにか、あったのか？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateTextureEX("絵ゆれ", 100, Center, Middle, "cg/bg/bg1104100スパコン館_スタジオ_通常.jpg");
	SetShade("絵ゆれ",MEDIUM);
	Zoom("絵ゆれ", 0, 2000, 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402100kit">
「…………うーん、わかんね」

{	St("C",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402110kit">
（考えたってしょーもないし、とにかく待ってよ）

{	DeleteAllSt(200,true);
WaitKey(1000);
}



{	St("C",19700, @0,@0,"fu千秋_通常_think");
	Fade("絵ゆれ", 200, 1000, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402120kit">
（でも……大丈夫かな……）

//	St("C",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402130kit">
（直接話したら、オレの正体がばれたりとか――）

{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402140kit">
（いや――！　疑心暗鬼になるな！　千秋！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SoundPlay("@xbgm23",1000,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//	St("C",700, @0,@0,"bu千秋_通常_shout");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402150kit">
（大丈夫！　オレならできる！）

{	St("C",19700, @0,@0,"fu千秋_朗らか_pride");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402160kit">
（できるはず！）

{	St("C",19700, @0,@0,"fu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402170kit">
（できる……よな？）

{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402180kit">
（…………ええと、設定を確認しよう）

{	St("C",19700, @0,@0,"fu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402190kit">
（オレはアッキー。千秋の親戚）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1956);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402200kit">
（生まれついての女の子）

{	St("C",19700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402210kit">
（趣味は……なんだろ？　料理？　ピアノ？）

{	St("C",19700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402220kit">
（読書もソレっぽくていいな）

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402230kit">
（愛読書はアレだ。赤毛のアンで――）

{	St("C",19700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402240kit">
（……いや待て。あんまりベタすぎてもアレだぞ）

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402250kit">
（こう、女の子らしさの中に、ひとつまみの意外性を紛れ込ませることで、リアリティーを……）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);





//◆演出指定：時間経過

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteAllSt(0,true);
Delete("絵ゆれ");

//◆時間：ジャンプ
{	ClockPass(1958);}

WaitKey(2000);
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);



{	SoundPlay("@xbgm27",1000,450,true);}




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402260kit">
「よし……決まった！」

{	St("C",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402270kit">
「オレはアッキー。千秋の親戚」

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402280kit">
「趣味は読書。愛読書は赤毛のアン」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//	St("C",700, @0,@0,"bu千秋_朗らか_happy");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402290kit">
「女の子女の子したお嬢様！」

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402300kit">
「けど、父親はヤクザ」

//	St("C",700, @0,@0,"bu千秋_通常_think");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402310kit">
「広島で破門され、今も鉄砲玉に怯えて暮らしている」

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402320kit">
「オレのおしとやかな性格は、その反動」

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402330kit">
「でも、流れる血は父に似て熱く、強きを挫き弱きを助く」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402340kit">
「そのため興奮すると、ちょっと広島弁が混じったり――」

{	St("C",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402350kit">
「ふむふむ、それからそれから……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指定：没頭して我を失ってる感じで
	SetVolume("@xbgm*", 1500, 0, null);

	DeleteAllSt(200,true);


//	PrintGO("上背景", 5000);
//	FadeDelete("上背景", 1000, null, true);

WaitKey(1500);


{	ClockPass(1959);}

//◆ＳＥ：ノック（大きめの音）

	CreateSE("SE01","se動作_ノック01");
	MusicStart("SE01",0,900,0,1000,null,false);

//	PrintGO("上背景", 5000);

//	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
//	FadeBG(0,true);

//	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0545]
{	St("C",700, @0,@0,"bu千秋_驚天_shock");
	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 0, 30, 0, 0, 500, Axl3, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/19/400402360kit">
「うひゃああッ！！」

{	CreateSE("SE02","se動作_ドア開ける01");
	MusicStart("SE02",0,700,0,1000,null,false);
}
{	DeleteAllSt(200,true);
WaitKey(500);
}
//	St("C",700, @0,@0,"bu恵那_通常_normal");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/19/400402370fje">
「え？　アッキーちゃんッ！！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　突然の大きな音に、千秋は思わず飛び上がる。

　扉を開けて飛び込んできたのは――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	EndScene();
}
