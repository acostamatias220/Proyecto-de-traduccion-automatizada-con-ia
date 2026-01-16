
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2210千秋_恵那.nss_MAIN
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
	$GameName="b2220カゴメ.nss";
}

scene b2210千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1460">
////////////header////////////
//file name "b2210千秋_恵那.nss"
//title "ネタバレ"
//previous "b2209千秋_恵那.nss"

////////////footer////////////
//next "千秋" "ba2220千秋_恵那.nss"
//next "恵那" "ba2220千秋_恵那.nss"



////////////body////////////

//■再定義定型文

	PrintBG("上背景", 30000);

//◆時間：ジャンプ
{	ClockPass(2213);}

//◆場所：小碓家_正面
	OnBG(10,"bg1601100小碓家_正面_通常");
	FadeBG(0,true);

	if($PreGameName=="b2209千秋_恵那.nss"){

	CreateColorSP("絵色演出黒", 20000, "#000000");
	FadeDelete("上背景", 0, null, true);
	DrawDelete("絵色演出黒", 1000, 100, null, "blind_01_00_1", true);

	}else{
	FadeDelete("上背景", 0, null, true);
	}


//	CreateTextureEX("絵背景100", 100, Center, middle, "cg/bg/bg1601100小碓家_正面_通常.jpg");
//	Fade("絵背景100", 0, 1000, null, true);






//◆ＳＥ：車が止まる
// SE未着
	CreateSE("SE01","seメカ_車_トラック停車");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

//あきゅん「演出：扉開閉音を入れようかと思ったが肝心の扉が無かった」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

{	St("C",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200010fje">
「ありがとうございました！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200020kit">
「ホントに……助かりました」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("R",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b22/100200030msi">
「ふたりとも、お大事に！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@@StNameR/*", 200, @50, @0, Dxl1, false);
	DeleteSt("R",200,false);

	CreateSE("SE01","seメカ_車_エンジン_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",6000,500,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200040fje">
「ふう……一時はどうなるかと思ったけど」

{	St("C",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200050fje">
「何とか帰ってこれたわね」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200060kit">
「……だな」

{	St("L",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200070kit">
「身体もずいぶん楽になったし――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200080fje">
「ちゃんと休んでおきなさいよ。寝正月は嫌でしょ？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200090kit">
「おまえ、オレの母親かよ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2214);}

//◆場所：小碓家_自室

	SetVolumeEX("SE*", 1000, 0, null);
	SceneOut(5000, 1000, "blind_01_00_0");

	OnBG(10,"bg1601100小碓家_自室_通常");
	FadeBG(0,true);

//	CreateTextureEX("絵背景100", 100, Center, middle, "cg/bg/bg1601100小碓家_自室_通常.jpg");
//	Fade("絵背景100", 0, 1000, null, true);
	DeleteAllSt(0,false);

	SceneIn(1000, "blind_01_00_1");

{	St("MR",700, @50,@0,"bu恵那_通常_happy");
	Move("@StNameMR/*", 300, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200100fje">
「お邪魔しまーす」


{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200110fje">
「なんか……この部屋に入るのって久しぶりだね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200120kit">
「……ごめん、オレ限界。
　横になるわ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200130fje">
「ちゃんと着替えてからね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200140kit">
「めんどくさい」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200150fje">
「文句言わない。
　横になる前になんか飲む？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200160kit">
「牛乳……冷蔵庫に入ってるから」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200170fje">
「オッケー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	DeleteSt("MR",200,true);
	Wait(500);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

{	St("MR",700, @50,@0,"bu恵那_一休_sigh");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200180fje">
「でも、おなか壊してるのに牛乳飲んでいいのかな？」

{	St("MR",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200190fje">
「……ま、いっか。背、伸ばさないとね」

{
	Move("@StNameMR/MR*", 300, @50, @0, Dxl2, false);
	DeleteSt("MR",200,true);
	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200200kit">
「うるせー」

{	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200210kit">
「やれやれ……と」

{
	CreateSE("SE01","se動作_衣擦れ");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"bu千秋_通常_think");
	Move("@StNameML/ML*", 500, @100, @0, Dxl2, false);
	FadeSt("ML",500,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200220kit">
「着替え着替え……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

{
	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200230kit">
「ん？」

{	St("C",700, @0,@0,"bu千秋_驚天_shy");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200240kit">
「ゲ！　マズ……」

{	CreateSE("SE01","se擬音_ギャグ_ドーン");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",19010, @0,@0,"fu千秋_通常_pinch");
	FadeSt("C",200,true);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200250kit">
「オレ、そういや女のカッコじゃん！」

{
	MusicStart("@xbgm11",0,450,0,1000,null,true);
	St("C",19010, @0,@0,"fu千秋_驚天_shock");
	FadeSt("C",200,true);
//	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200260kit">
「ってか、あー！　親戚のテイ！
　オレの部屋で寝たら、駄目じゃん！」

{	St("C",700, @0,@0,"fu千秋_朗らか_think");
	FadeSt("C",200,true);}
//【小碓千秋】

<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200270kit">
「いや、でも今更出たらそれはそれで怪しいし……」

{	St("C",19010, @0,@0,"fu千秋_驚天_shock");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200280kit">
「どどどどどどど、どうする！？」

{	St("C",19010, @0,@0,"fu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200290kit">
「い、いや待て！　落ち着けオレ！」

{	St("C",19010, @0,@0,"fu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200300kit">
「もしかしてあいつ、オレのことに気づいてない？」

{	St("C",19010, @0,@0,"fu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200310kit">
「ってことは……だ！」

{
	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",19010, @0,@0,"fu千秋_朗らか_pride");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200320kit">
「もしかしてコレ、逆にチャンスじゃね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//	DeleteAllSt(200,false);

	DeleteAllSt(200,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{
	St("MR",700, @50,@0,"bu恵那_通常_happy");
	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	FadeSt("MR",200,true);}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200330fje">
「お待たせ！」

{	DeleteAllSt(200,false);
	St("ML",700, @50,@0,"bu千秋_驚天_shock");
	Move("@StNameC/C*", 300, @-50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200340kit">
「あ、ええと、あの！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200350fje">
「ん？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200360kit">
「聞いてよ！
　千秋ったらさ、私と一緒の部屋は嫌だって」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200370fje">
「千秋が……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200380kit">
「そう！　だから、私にこのベッド貸してくれてるの」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200390fje">
「へ……へえ、そうなんだ」

{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200400fje">
「じゃあ、寝るときはここにひとり？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200410kit">
「そうそう！
　女の子と一緒の部屋に寝るわけにはいかないって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2215);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200420fje">
「ふぅん…………レディーファーストってこと？」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200430kit">
「そういうこと。
　あ、あいつ意外と優しいところもあるのよね！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200440fje">
「じゃあさ、見てみよっか」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200450kit">
「見る？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200460fje">
「千秋、まだ帰ってこないでしょ？」

{	St("MR",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200470fje">
「現場検証は探偵のたしなみ！
　早速ベッドの下辺りから――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200480kit">
「ちょ！　ストップ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200490fje">
「何？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200500kit">
「ベッドの下はマズい！　駄目！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200510fje">
「なんで？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200520kit">
「そ、そりゃあさ、ほら！　プライバシーとか」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200530fje">
「エッチな本でも隠してあるの？」

{
	DeleteAllSt(200,false);
//下seファイルが別の音に変わってしまったので差し替え
//	CreateSE("SE04","se擬音_ギャグ_ドッキーン");
	CreateSE("SE04","se擬音_ギャグ_ガーン01");
	MusicStart("SE04",0,700,0,1000,null,false);
	St("ML",700, @0,@0,"bu千秋_驚天_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200540kit">
「ちがーう！　ちがう！　違います！
　そんなもの、全然隠してありません！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200550fje">
「なんで断言できるの？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200560kit">
「え？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200570fje">
「へぇ。見たんだ、ベッドの下」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200580kit">
「あいや、そういうわけでも……」

{
	DeleteAllSt(200,false);
	CreateSE("SE02","se擬音_ギャグ_ドーン");
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);
	MusicStart("SE02",0,700,0,1000,null,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200590fje">
「プライバシー侵害！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 5, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200600kit">
「うぐ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200610fje">
「罰として！　私もベッドの下、見ちゃお！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2216);}


	TextBoxDelete(150);

//	CreateTextureEX("絵背景100", 100, Center, middle, "cg/bg/bg1601100小碓家_自室_通常.jpg");


	DeleteAllSt(200,false);
	CreateTextureEX("絵背景", 11, @-200, @-200, "cg/bg/l/bg1601100小碓家_自室_通常_l.jpg");
	Fade("絵背景", 300, 1000, null, false);
	Move("絵背景", 500, @0, @-360, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]

{
//	DeleteAllSt(200,false);
//	St("ML",700, @0,@0,"bu千秋_驚天_shy");
//	FadeSt("ML",200,true);
//	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200620kit">
「ちょ！　バカ！　やめろ！」

{
	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",19010, @0,@0,"fu恵那_一休_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200630fje">
「ん？　なんか大きなものが……」

{	St("C",19010, @0,@0,"fu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200640fje">
「コレは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);
	Fade("絵背景", 200, 0, null, true);
	St("ML",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200650kit">
「いや――――だめ――――ッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@100,"bu恵那_一休_pride");
	Move("@StNameMR/MR*", 400, @0, @-100, Dxl2, false);
	FadeSt("MR",400,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200660fje">
「どれどれ、これは……！？」

{	CreateSE("SE03","se擬音_ギャグ_セクシーボイス");
	MusicStart("SE03",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200670fje">
「『ストライプウィッチーズ？
　マジカル・ガールズ？』」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200680kit">
「魔女？　ああ、ホウキで空を飛ぶから、きっとシューティングゲームとか――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200690fje">
「１８禁マークが入ってるんですけど」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200700kit">
「ああ、それね。ほら、最近は暴力描写とかでも１８歳未満は買っちゃいけなかったりするみたいで――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200710fje">
「裏にモザイクあるんですけど」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_cry");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200720kit">
「あ、そうなんだ。クラスの人から借りたのかな！
　下田とか、名前書いてない？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆音声指示：小声
{	SetVolumeEX("@xbgm*", 3000, 0, NULL);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200730kit">
「ってか待てよ？
　あの天国の幻、もしかしてこのせい……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200740fje">
「あ、そうだ」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200750fje">
「ね、千秋ってさ、この中の誰が好きだと思う？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200760kit">
「え？　この中で？」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200770kit">
「ん……そうだなあ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200780fje">
「やっぱり、ちっちゃい子がいいのかな？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200790kit">
「そんなことは……ないんじゃないかな」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200800kit">
「まだこれから伸びる！　って信じてるみたいだし」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200810fje">
「胸は？　おっきい方がいいわけ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2217);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200820kit">
「いや、まあそりゃあるに越したことは――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200830fje">
「性格は？　髪は長い方がいいのかな？
　これには弱いなってポイントは？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200840kit">
「ちょ、ちょっと待った！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200850kit">
「おいおい恵那、おかしいぞさっきから！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200860fje">
「率直に聞くわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameMR/MR*", 500, @-100, @0, Dxl2, false);
	DeleteSt("MR",500,true);

	CreateTextureEX("絵背景", 11, @0, @0, "cg/bg/m/bg1601100小碓家_自室_通常_m.jpg");
	Move("絵背景", 0, @-100, @-100, Dxl2, true);
	Fade("絵背景", 300, 1000, null, false);
	Move("絵背景", 500, @100, @0, Dxl2, false);
	St("C",700, @0,@0,"bu恵那_通常_think");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);
	WaitAction("@StNameC/C*",null);
	Wait(50);
	Move("絵背景", 500, @0, @-40, Dxl2, false);
	Move("@StNameC/C*", 500, @0, @50, Dxl2, true);

	DeleteAllSt(200,false);

//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 128, 336, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 1000, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/m/bg1601100小碓家_自室_通常_m.jpg");
	Move("絵窓/絵演背景", 0, @-200, @0, null, true);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/bu千秋_朗らか_normal.png");
	Move("絵窓/絵演立絵", 0, @-50, @150, null, true);
	CreateTextureEX("絵窓/絵演立絵2", 1540, center, middle, "cg/bu/bu千秋_朗らか_shock.png");
	Move("絵窓/絵演立絵2", 0, @0, @150, null, true);

//動作
	WindowAXLZoom("絵窓", "Y", 300, 1000, Dxl2, false);
	Fade("絵窓/絵演立絵", 300, 1000, null, false);
	Move("絵窓/絵演立絵", 1000, @50, @0, Dxl2, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191a]
　ベッドに腰掛け、恵那は千秋を真横から見つめた。

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200870fje">
「私、千秋からどう思われてると思う？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Fade("絵窓/絵演立絵2", 0, 1000, null, false);
	Fade("絵窓/絵演立絵", 0, 0, null, false);
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191b]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200880kit">
「え？　いや、そんなのオレに訊かれても……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200890fje">
「聞かせて。あなたの考えでいいから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵背景", 300, 0, null, false);
	WindowAXLZoom("絵窓", "Y", 300, 0, Axl2, true);
	Delete("@絵窓*");
//	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200900kit">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200910fje">
「ちょっと！　なんで赤くなるの？
　別に本人に聞いてるわけじゃないんだし！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200920kit">
「そ、そうだよな、あはははははは……」

//◆音声指示：小声
{	St("MR",700, @0,@0,"bu千秋_朗らか_cry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200930kit">
「こんなカッコで……告白とかできないし……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200940fje">
「で？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200950kit">
「やっぱり、言わなきゃダメ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200960fje">
「ダーメ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200970kit">
「……はぁ」

{	St("MR",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100200980kit">
「ええと……だな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2218);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100200990fje">
「はやく！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201000kit">
「普通に考えたら、恋愛対象じゃなかったと思う」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201010kit">
「だってさ、ちっちゃい頃からずっと側にいたら、そういうこと改めて考えることなんてないし」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201020fje">
「……そっか。
　うん。それは私もわかる」

{	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201030fje">
「今日だってほら、一緒に御札を納めに行くのが当たり前だって思ってて、なんにも特別じゃなくて……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201040kit">
「でも、当たり前が当たり前じゃなくなった瞬間、違う景色が見えてきた？」

{	DeleteAllSt(200,false);
	St2("ML",700, @0,@0,"bu恵那_通常_disco","cg2/",".png");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201050fje">
「…………うん」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201060kit">
「たぶん、オレ……千秋も同じだと思う」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201070kit">
「いつもと違うところから恵那を見て、それで改めて自分の気持ちと向き合ったとき――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201080kit">
「そこで初めて、自分の本当の気持ちに気付く」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201090fje">
「本当の気持ちって？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201100kit">
「だから、その、そういうこと……」

{	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201110kit">
「ええと……」

{	St("MR",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201120kit">
「好き……なんじゃないかな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201130fje">
「ホントに？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201140kit">
「ああ。きっと、好きだと思うよ」

{	DeleteAllSt(200,false);
	MusicStart("@xbgm28",0,450,0,1000,null,true);
	St("ML",700, @0,@0,"bu恵那_哀愁_cry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201150fje">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 100, 5, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201160kit">
「お……おい、なんで泣くんだ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_cry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201170fje">
「アリガト。アリガトね、千秋」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201180kit">
「いやいや、オレは推測を言っただけで――ってオイ！」

{	St("MR",700, @0,@0,"bu千秋_驚天_shy");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201190kit">
「違うよ！　オレ千秋じゃないよ！　全然違うよ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201200fje">
「バカ千秋。ずっと前からバレてるの」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201210kit">
「は？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_cry");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201220fje">
「私のために、アザナエル、撃ってくれたんでしょ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2219);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_朗らか_shock");
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 3200);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201230kit">
「バレてた……！？
　って、なんで騙すんだよ！？」

{
	AgainSt("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201240fje">
「千秋だって、私を騙して気持ちを聞いたもん」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201250fje">
「そのお返し」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 5, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201260kit">
「わ！　ひでえ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201270fje">
「お互い様」

{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201280fje">
「ね、千秋」

{	St("ML",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201290fje">
「今度はアッキーちゃんじゃなく――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201300kit">
「好きだ」

{	St("MR",700, @0,@0,"bu千秋_頭突き_rage");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201310kit">
「恵那、オレ、おまえが好きだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201320fje">
「私……私も……」

{	St("ML",700, @0,@0,"bu恵那_感動_happy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201330fje">
「あは、なんか、すごいね」

{	St("ML",700, @0,@0,"bu恵那_感動_smile");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201340fje">
「今日の千秋、別人みたい」

{	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201350fje">
「女の子だから？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 10, 0, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201360kit">
「ち、違うッ！」

{	St("MR",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201370kit">
「これは好きでこんな格好してるワケじゃなく――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201380fje">
「鈴姉にやられたんでしょ？　想像つくわ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201390kit">
「でも――」

{	St("MR",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201400kit">
「もしかしたら、生まれ変わったのかもしれない」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201410fje">
「生まれ変わった？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	DeleteAllSt(200,false);

	CreateTextureEX("絵背景", 11, @0, @0, "cg/bg/l/bg1601100小碓家_自室_通常_l.jpg");
	Move("絵背景", 0, @-200, @-300, Dxl2, true);
	Fade("絵背景", 300, 1000, null, false);
	Move("絵背景", 1000, @200, @0, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　千秋の指が、恵那に被さる。

{	St("MR",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201420kit">
「アザナエルを撃ったとき、自分の一番大切なものはなんだろうって考えた」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201430kit">
「命をなくしても喜ばせたいひとはいるだろうかって」

{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201440kit">
「……やっと、見つけたんだ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_感動_happy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/100201450fje">
「千秋……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	Move("@StNameMR/MR*", 500, @-50, @0, Dxl2, false);
	FadeSt("MR",500,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/100201460kit">
「恵那――」

{
	DeleteAllSt(200,false);
}
　千秋が身を乗り出し、恵那は深呼吸。

　身体が近づき、そのまま――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se動作_抱く");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("@x*", 2000, 0, NULL);

//	CreateColorEX("絵背景黒", 5000, "BLACK");
//	Fade("絵背景黒", 2500, 1000, null, true);

	EndScene();
}
//next "千秋" "ba2220千秋_恵那.nss"
//next "恵那" "ba2220千秋_恵那.nss"
