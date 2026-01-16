
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2110千秋_恵那.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
	}else if($CharaName=="恵那"){
		$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
	}else{
		$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
	}

//	$GameName = "";
//	$GameCircle=false;


}

scene ab2110千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1530">
////////////header////////////
//file name "ab2110千秋_恵那.nss"
//title "冤罪"
//previous "ab2100千秋_恵那.nss"

////////////footer////////////
//next "千秋" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"
//next "恵那" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();

	if($PreGameName=="ab2100千秋_恵那.nss")
	{
	SceneOut(5000, 0, "blind_01_00_0");
	}

{	ClockPass(2110);}



	CreateTextureEX("絵背景100_l", 50, Center, Middle, "cg/bg/l/bg1103100スパコン館_店内_通常_l.jpg");

//◆場所：スパコン館_店内
//	CreateTextureEX("絵背景100_m", 400, Center, Middle, "cg/bg/m/bg1103100スパコン館_店内_通常_m.jpg");
//	Fade("絵背景100_m", 0, 1000, null, true);
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//	Shake("@OnBG*", 500, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 500, 10, 8, 0, 0, 1000, Dxl1, false);

	if($PreGameName=="ab2100千秋_恵那.nss")
	{
	SceneIn(300, "circle_01_00_1");
	}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	DeleteSt("C", 102,true);
	St("C",19010, @0,@200,"fu千秋_頭突き_rage");
	Move("@StNameC/C*", 200, @0, @-200, Axl1, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300010kit">
「うおおおおお！！」

{	Fade("絵背景100_l", 200, 1000, null, false);
	DeleteAllSt(200,true);
	St("L",700, @-60,@0,"buみそa_オラオラ_pinch");
	Move("@StNameL/L*", 200, @60, @0, DxlAuto, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300020mso">
「ん？　なんだ？」

{	St("R",700, @60,@0,"buブーa_オラオラ_pinch");
	Move("@StNameR/R*", 200, @-60, @0, DxlAuto, false);
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 100, 0, 5, 0, 0, 500, null, false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300030buu">
「ってか、なんで既に泣きそう！？」


{	Fade("絵背景100_l", 200, 0, null, false);
	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu千秋_頭突き_rage");
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
//	Shake("@OnBG*", 300, 5, 5, 0, 0, 500, null, false);
	BGPlainShake(50, 500, 10, 8, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300040kit">
「お、お、お、おおおおおおお！！」

{	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300050kit">
「オレの！　オレの！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
{	Shake("@StNameC/C*", 1000, 0, 10, 0, 0, 500, null, false);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300060kit">
「オレのパンツが見たいか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Fade("絵背景100_l", 200, 1000, null, false);
	DeleteAllSt(200,true);

	St("ML",700, @0,@0,"buみそa_オラオラ_hard");
	FadeSt("ML",200,true);

	CreateSE("SE01","se擬音_ギャグ_寒い風");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	WaitKey(1000);

	SoundPlay("@xbgm11",0,450,true);

	St("ML",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300070mso">
「…………は？」

{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 6, 0, 0, 1000, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300080buu">
「ごくり……」


{	St("C",700, @0,@0,"bu千秋_頭突き_rage");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300090kit">
「み、み、みみみみ……」

{	St("C",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300100kit">
「見たかったら……見ても……いいんだぞっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300110mso">
「いきなりなんだよそれ！　罠の匂いしか――」

{
	SetComic(@0,@0,13);
	Move("@Comic*", 0, @40, @-200, null, true);
	St("MR",700, @0,@0,"buブーa_通常_ero");
	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeComic();
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300120buu">
「見たい見たい！　見たいです！」

{
	St("ML",700, @0,@0,"buみそa_通常_fear");
	DeleteComic();
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300130mso">
「ブー……」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300140kit">
「よ……よし！　じゃあ、近く」

{	DeleteAllSt(200,false);
	St("MR",700, @60,@0,"buブーa_通常_ero");
	Move("@StNameMR/MR*", 200, @-60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300150buu">
「くんくん！　くんくんくん！」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @-60, @0, DxlAuto, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300160kit">
「か……嗅ぐのはゴメン！　勘弁して！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_ero");
	CreateSE("SE01","se擬音_ギャグ_ぽにょぽにょ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("@StNameMR/MR*", 200, 0, 8, 0, 0, 500, Dxl1, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300170buu">
「くんかくんか！　くんかくんかくんか！」

{	St("C",700, @0,@0,"bu千秋_驚天_shy");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300180kit">
「ひええええええ……」

{	St("ML",700, @0,@0,"buみそa_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300190mso">
「おいブー！　馬鹿なことやってねーで――」

{	St("MR",700, @0,@0,"buブーa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300200buu">
「と、硬派なところを見せつつも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2111);}



	TextBoxDelete(0);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	CreateTextureEX("絵背景１", 650, 0, -376, "cg/bg/l/bg1103100スパコン館_店内_通常_l.jpg");
	CreateTextureEX("絵人物１", 700, -134, -273, "cg/bu/buみそa_オラオラ_pride.png");
	DeleteSt("MR",0,false);

	CreateWindow("絵ウィンドウ１", 150, 290, Middle, 2000, 2000, false);
	Rotate("絵ウィンドウ１", 0, @0, @0, 61, null, true);
	CreateTextureEX("絵ウィンドウ１/絵背景１", 2000, -512, 0, "cg/bg/l/bg1103100スパコン館_店内_通常_l.jpg");
	CreateTextureEX("絵ウィンドウ１/絵人物１", 2000, 332, 50, "cg/bu/buブーa_オラオラ_pride.png");

	CreateTextureEX("絵ウィンドウ１_スラッシュ", 2500, 0, 0, "cg/mask/ciスラッシュ_00_00z.png");


	Move("絵背景１", 0, @-60, @0, Dxl1, false);
	Move("絵人物１", 0, @-120, @0, Dxl1, false);
	Move("絵ウィンドウ１/絵背景１", 0, @130, @0, Dxl1, false);
	Move("絵ウィンドウ１/絵人物１", 0, @180, @0, Dxl1, true);

	Fade("絵背景１", 0, 1000, null, false);
	Fade("絵人物１", 0, 1000, null, false);
	Fade("絵ウィンドウ１/絵背景１", 0, 1000, null, false);
	Fade("絵ウィンドウ１/絵人物１", 0, 1000, null, false);
	Fade("絵ウィンドウ１_スラッシュ", 0, 1000, null, false);

	Move("絵背景１", 500, @60, @0, Dxl2, false);
	Move("絵人物１", 500, @120, @0, Dxl2, false);
	Move("絵ウィンドウ１/絵背景１", 500, @-130, @0, Dxl2, false);
	Move("絵ウィンドウ１/絵人物１", 500, @-180, @0, Dxl2, false);

	CreateSE("SE01","se擬音_ギャグ_エロセンサー");
	MusicStart("SE01",0,700,0,1000,null,false);


	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");


//	St("MR",700, @0,@0,"buブーa_オラオラ_pride");
//	FadeSt("MR",200,true);

//	St("MR",700, @0,@0,"buみそa_オラオラ_pride");
//	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300210buu">
「男だったら……見るよな？」

{	Shake("絵人物１", 100, 5, 5, 0, 0, 500, null, false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300220mso">
「押忍！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);
{	Fade("絵背景１", 0, 0, null, false);
	Fade("絵人物１", 0, 0, null, false);
	Fade("絵ウィンドウ*", 0, 0, null, false);
	Fade("絵ウィンドウ１/絵背景１", 0, 0, null, false);
	Fade("絵ウィンドウ１_スラッシュ", 0, 0, null, false);
	Fade("絵ウィンドウ１/絵人物１", 0, 0, null, true);
	FadeDelete("絵板写", 200, null, true);

	St("C",700, @0,@0,"bu千秋_驚天_shy");
	Shake("@StNameC/C*", 200, 10, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300230kit">
「ひいいいい！　やっぱり……怖い！」

{	St("MR",700, @0,@0,"buブーa_通常_ero");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300240buu">
「ナイス恥じらい！　満点です！」

{	St("ML",700, @0,@0,"buみそa_オラオラ_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300250mso">
「大丈夫！　オレ、侠として、今日の出来事は一生胸の奥にしまっておきます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Delete("絵背景１");
	Delete("絵人物１");
	Delete("絵ウィンドウ*");
	Delete("絵ウィンドウ１/絵背景１");
	Delete("絵ウィンドウ１/絵人物１");
	Delete("絵ウィンドウ１_スラッシュ");


//	TextBoxDelete(150);

	St("C",700, @0,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300260kit">
「そ、そんな……」

{	St("MR",700, @0,@0,"buブーa_通常_ero");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300270buu">
「全部じゃなくていいから！　先っぽだけでいいから！」

{	St("C",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300280kit">
「そ、それなんかおかしい……」

{	St("ML",700, @0,@0,"buみそa_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300290mso">
「さあさあ！　さあさあさあさあ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 300, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300300kit">
「い、い……いやああああああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);

	DeleteAllSt(200,true);
	
	St("R",700, @0,@0,"buブーa_通常_ero");
	St("L",700, @0,@0,"buみそa_通常_pride");
	FadeSt("R",200,false);
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteSt("C", 102,true);
	St("C",690, @60,@0,"bu恵那_一休_smile");
	Move("@StNameC/C*", 200, @-60, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300310fje">
「アッキーちゃん！　ナイス囮！」

{	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300320buu">
「え？　後ろ？」

{	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300330mso">
「な……さっきの！」



{	SoundPlay("@xbgm08",0,450,true);
	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,false);
	Zoom("絵背景100_l", 200, 1500, 1500, Axl1, false);
	St("C",19010, @0,@100,"fu恵那_ハルヒ_shock");
	Move("@StNameC/C*", 200, @0, @-100, Axl1, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("絵背景100_l", 300, 10, 10, 0, 0, 500, null, false);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300340fje">
「とりゃああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2112);}

	CreateSE("SE02","se戦闘_打撃音05");
	MusicStart("SE02",0,700,0,1000,null,false);


	TextBoxDelete(0);

	CreateColorSP("絵色白", 710, "#FFFFFF");

	DeleteAllSt(0,true);
	Zoom("絵背景100_l", 0, 1000, 1000, Axl1, false);

//	St("R",700, @0,@0,"buブーa_通常_pinch");
	St("ML",700, @0,@0,"buみそa_通常_pinch");
//	FadeSt("R",0,false);
	FadeSt("ML",0,true);

	Shake("絵背景100_l", 300, 10, 10, 0, 0, 500, null, false);
	Shake("@StNameML/ML*", 300, 5, 5, 0, 0, 500, null, false);
	FadeDelete("絵色白", 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]


//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300350mso">
「な、なにすんだあっ！！」


{	DeleteAllSt(200,true);
	St("MR",700, @-60,@0,"bu恵那_一休_smile");
	St("MR",700, @-60,@0,"bu恵那_一休_sigh");
	Move("@StNameMR/MR*", 200, @60, @0, DxlAuto, false);
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 6300);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300360fje">
「はっはっはっは！
　名探偵富士見恵那、アザナエルを奪か――ん？」

{
	AgainSt("MR",700, @0,@0,"bu恵那_一休_sigh");
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300370fje">
「あれ？　あれ？　あれれれれれ？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

		CreateTextureEX("絵背景300", 3000, Center, Middle, "cg/img/img縞パン.jpg");
		Zoom("絵背景300", 0, 2000, 2000, null, true);
		SetBlur("絵背景300", true, 2, 500, 50, false);

		SetVolumeEX("@xbgm*", 300, 1, null);
		CreateSE("SE03","se擬音_ギャグ_きゃるーん");
		MusicStart("SE03",0,700,0,1000,null,false);

		Fade("絵背景300", 200, 1000, null, false);
		Zoom("絵背景300", 300, 1000, 1000, Dxl2, true);

		WaitKey(1000);

		Fade("絵背景300", 500, 0, null, true);
		Delete("絵背景300");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300380fje">
「しまぱん……？」

{		St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300390fje">
「あ、アザナエルじゃないの！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300400mso">
「アザナエルってなんだよ？」

{	DeleteAllSt(200,false);
		St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300410fje">
「拳銃よ、拳銃！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300420mso">
「拳銃？　んなもん、知らねーよ。なあ、ブー？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーb_通常_smile");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300430buu">
「ああ。
　オレたちが持ってきたのは、それとコレだけだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2113);}



//	TextBoxDelete(150);

	St("C",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300440kit">
「子供の……パンツ？」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300450kit">
「でも、ええと、ほら！」

{	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300460kit">
「バックギャモンに、死体があっただろ？
　あれ、おまえたちが……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300470mso">
「だから、死体ってなんだよ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SoundPlay("@xbgm24",0,450,true);

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300480kit">
「あの店の奥にあっただろ？　双六の死体」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300490buu">
「見なかったけど。
　なあみそ、おまえ見たか？」

{	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 500, null, false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300500mso">
「いいや」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300510fje">
「そんなはずない！
　だって、私はちゃんとこの目で見たわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300520fje">
「あの部屋には死体があった！
　出口を通らないなら、どうやって死体を隠すのよ？」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_オラオラ_shock");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 100, 0, 5, 0, 0, 500, null, false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300530mso">
「あ！」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300540mso">
「そういやオレたちがあの部屋に入るとき、地下通路に人の気配したな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300550buu">
「ああ、そういやそうだっけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300560buu">
「ってことはもしかして、そいつが死体を――」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300570fje">
「ちょっと待った！
　その地下通路って、なに？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_normal");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300580mso">
「知らねーのか？
　あの店、奥の方で地下に通じる入り口があるんだぜ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300590kit">
「地下に？」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300600buu">
「結構広い地下通路で、地下鉄とかにも繋がってる。
　オレたちも危うく迷うところだったよな……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300610kit">
「そんな地下通路、あるわけ――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2114);}

	TextBoxDelete(150);

	KoreJikenStart();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300620fje">
「コレは事件！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(0,true);


	KoreJikenEnd(true);

	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("C",200,true);

//	SetVolumeEX("@xbgm*", 100, 0, null);
//	SoundPlay("@xbgm33",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300630kit">
「え！？」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300640fje">
「私、聞いたことあるかも……昔この辺りは、糀の特産地で地下ムロがたくさんあったって、サイババアが言ってた」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300650fje">
「もしかしたら、それが残ってたのかも……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300660kit">
「そう……なのか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300670fje">
「ねえ、アンタたち。ホントにやってないの？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300680buu">
「おーよ！　姐さんに迷惑をかけられっかよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300690kit">
「それじゃ、アザナエル……拳銃は？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300700mso">
「しらねーよ」

//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300710buu">
「モデルガンなら使ったけど」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300720kit">
「そ……そ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300730fje">
「そんなあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SetVolumeEX("@xbgm*", 4000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300740fje">
「やっと……探し当てたと思ったのに……」

{	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300750fje">
「なんとか、挽回できたと思ったのに……」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300760fje">
「単なる勘違い……だったの……？」



{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300770kit">
「あの……その……」

{	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300780kit">
「なんていうか……ゴメン」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("R",200,false);
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300790buu">
「なんだかわかんないけど……悪い」


//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300800mso">
「すまんかった！」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300810fje">
「え……？
　う、ううん。貴方たちが悪いわけじゃ、ないし」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300820kit">
「でも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);


{	ClockPass(2115);}

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("R",200,false);
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300830buu">
「ま、そう強がんなよ……」


//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300840mso">
「もーっと頑張れってば！」


//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300850buu">
「辛いときは辛い。泣いてもいいんだぜ……」

{	St("L",700, @0,@0,"buみそa_通常_pride");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300860mso">
「大丈夫！　明けない日はない！　笑えよ！」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300870fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100300880kit">
「…………」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300890fje">
「な……なんなのよ、アンタたち」


{	SoundPlay("@xbgm07",0,450,true);
	DeleteAllSt(200,false);
	St("L",700, @-60,@0,"buみそa_オラオラ_shout");
	Move("@StNameL/L*", 200, @60, @0, DxlAuto, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300900mso">
「我ら郡山に狂い咲く――」

{	St("R",700, @60,@0,"buブーa_オラオラ_normal");
	Move("@StNameR/R*", 200, @-60, @0, DxlAuto, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300910buu">
「暴走集団<RUBY text="もものせっく">百野殺駆</RUBY>」

{	St("L",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300920mso">
「特攻隊長・頑丈のみそ！！」


{	St("R",700, @0,@0,"buブーa_オラオラ_pride");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300930buu">
「参謀役・クラッシャー・ブー！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE03","se擬音_ギャグ_リーゼント");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);
	FadeDelete("絵色白", 200, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220a]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300940mso">
「夜露死苦ぅ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/ab21/100300950buu">
//「夜露死苦ぅ！」

</PRE>
	SetText();
	AddText(1,"「夜露死苦ぅ！」","みそ","ab21/100300940mso",false,false,1000);
	AddText(2,"「夜露死苦ぅ！」","ブー","ab21/100300950buu",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300960fje">
「…………プッ」


{	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100300970fje">
「変な奴ら」


{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buブーa_オラオラ_normal");
	St("L",700, @0,@0,"buみそa_オラオラ_normal");
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100300980buu">
「世の中がオレたちをどう思おうと気にしない！」

{	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100300990mso">
「それが、オレたちの生き様っ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301000fje">
「ああ、はいはいわかったわかった」

{
//	SetVolumeEX("@xbgm*", 4000, 0, null);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301010fje">
「落ち込んでる暇はない、ってことね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2116);}



//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/100301020mso">
「そういうこと！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100301030buu">
「ま、悩む暇があったら動けってことだな」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301040fje">
「そう、ね」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_smile");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100301050buu">
「そうそう」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301060fje">
「でもアンタ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301070fje">
「出来心だかしらないけど、もう盗みはしないこと！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/100301080buu">
「は……はい」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301090fje">
「よし！　じゃあ気を取り直して、行きましょ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_pride");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301100kit">
「おう！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);

	TextBoxDelete(150);

	PrintFadeNut("上背景", 2000, true);

	DeleteAllSt(200,false);
	Delete("@OnBG*");


	DeleteAllSt(0,true);

	WaitKey(2000);


{	ClockPass(2117);}


//◆場所：秋葉原_中央通り

	OnBG(10,"bg0103211秋葉原_中央通り_閉店");
	FadeBG(0,true);


//	SoundPlay("@xbgm04",0,450,true);

	CreateSE("SEL01","seガヤ_交通_l");
	MusicStart("SEL01",0,700,0,1000,null,true);

	FadeDelete("上背景", 2000, null, true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	DeleteAllSt(200,false);
		St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301110fje">
「しかし……とんだ回り道だったわね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301120kit">
「オレの早とちりで……ゴメン」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301130fje">
「ま、しょうがないわよ。
　あの部屋に地下道があるとか、普通思わないでしょ」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301140fje">
「まして、あの人相だし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301150kit">
「……ありがとな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301160fje">
「なーに！　困ったときはお互い様！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301170kit">
「ああ……立ち直ったみたいで、ほんとによかった……
　一時は、どうなることかと……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301180fje">
「立ち直ったって……まだ全然ショックだけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301190fje">
「でも、あのバカふたり組を見てると、落ち込んでるのが馬鹿馬鹿しくなるって言うか」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301200kit">
「その感じ、オレも何となくわかる気がする」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301210fje">
「あ、ついでにアッキーちゃんもそのケあるから」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301220kit">
「え！？　ウソォ！」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_think");
	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 1400);
	}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301230fje">
「っていうか、あー！
　なんか思い出すと思ったら、千秋だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	AgainSt("MR",700, @0,@0,"bu恵那_一休_surprise");
	St("MR",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301240fje">
「やっぱり親戚って似るのね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_think");
	Shake("@StNameML/ML*", 300, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301250kit">
「ソ、ソンナコトナイヨ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301260fje">
「ところでさ、ホントにアッキーちゃん、親戚にそっくりなコとかいない？　双子の妹とか――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301270kit">
「いやいや、いないから」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301280fje">
「ホントに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_angry");
	Shake("@StNameML/ML*", 300, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301290kit">
「ホントに！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301300fje">
「……なんか、気になるのよね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301310kit">
「いや、そりゃオレも気になるよ。
　ドッペルゲンガー？　命に関わるんだろ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301320fje">
「１回、テレビ番組に戻った方がいいのかも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);
	DeleteAllSt(200,false);


//◆ＳＥ：走る足音
	CreateSE("SE01","se動作_走る05_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(3000);
	St("C",700, @60,@0,"bu歌門_威圧_hard");
	Move("@StNameC/C*", 200, @-60, @0, DxlAuto, false);
	FadeSt("C",200,true);
	SetVolumeEX("SE01", 1500, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab21/100301330kms">
「――――ッ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301340kit">
「星さん！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301350fje">
「ちょっと、どうしたんですか！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab21/100301360kms">
「すみません！　急ぎますので――！」


{	CreateSE("SE02","se動作_走る05_l");
	MusicStart("SE02",0,700,0,1000,null,true);
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	SetVolumeEX("SE02", 5000, 0, null);
	DeleteAllSt(200,true);
	WaitKey(1000);
	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301370kit">
「血相変えて、どうしたんだろう……
　あんな取り乱した顔、見たことないような……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301380kit">
「って恵那！？　どこに――」

{	DeleteAllSt(200,false);
	St("L",700, @100,@0,"bu恵那_ハルヒ_shock");
	Move("@StNameL/L*", 200, @-100, @0, DxlAuto, false);
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301390fje">
「これは事件っ！！」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301400fje">
「追いかけるに決まってるでしょ！
　星さんの先に謎が待ってるわ！」

{	St("R",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("R",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301410kit">
「ど……どういう推理？」


{	St("L",700, @0,@0,"bu恵那_一休_smile");
	FadeSt("L",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301420fje">
「名探偵の勘よ！　行きましょう！」

{	Move("@StNameL/L*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("L", 200,true);
	St("R",700, @0,@0,"bu千秋_朗らか_sad");
	St("R",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("R",200,true);
	FadeStPro("R", 200, 1000);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301430kit">
「勘って――おい、ちょっと！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	AgainSt("R",100, @0,@0,"bu千秋_朗らか_shock");

	SetVolumeEX("SE*", 1000, 0, null);
	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteAllSt(0,true);

{	ClockPass(2118);}

//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	CreateTextureEX("絵背景400", 500, Center, Middle, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");
	Fade("絵背景400", 0, 1000, null, false);

	SceneIn(1000, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/100301440mrp">
『秋葉原チーム、優勝――――ッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","seガヤ_歓声_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	TextBoxDelete(150);

	PrintGO("上背景", 30000);

	Delete("絵背景400");

	DeleteAllSt(0,false);
	St("MR",700, @60,@0,"bu恵那_通常_hard");
	FadeSt("MR",0,true);
	Move("@StNameMR/MR*", 500, @-60, @0, DxlAuto, false);

	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0325]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301450fje">
「あ、ゆるキャラバン決着ついたんだ」


{	DeleteAllSt(200,false);
	SetVolumeEX("SE01", 2000, 200, null);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301460kit">
「そうみたいだな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301470fje">
「ん？　あれ？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301480fje">
「あそこにまた、アッキーちゃんが――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301490kit">
「え？　どこどこ？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2119);}



	DeleteAllSt(200,true);
	TextBoxDelete(150);


//◆演出指定：フォン、マイクがハウり、辺りが暗闇に音いる
//おがみ：ＳＥマイクハウリング
	SetVolumeEX("SE*", 300, 0, null);

	CreateSE("SE00","se環境_ハウリング");
	MusicStart("SE00",0,1100,0,1000,null,false);

//	SceneOut(5000, 2000, "effect_01_00_0");

	PrintGO("上背景", 30000);

	Delete("@OnBG*");
	DeleteAllSt(0,false);

	OnBG(10,"bg1201311ＵＰ＋_屋外セット_暗闇");
	FadeBG(0,true);
	#bg1201300ＵＰ＋_屋外セット_暗闇 = true;

//	SceneIn(2000, "effect_01_00_0");

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]


{	St("L",700, @0,@0,"bu千秋_通常_sad");
	St("R",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/100301500kit">
「停電？」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/100301510fje">
「なによ！？　こんな大事なときに――」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指定：暗闇から浮き出るように

	DeleteAllSt(200,true);
	TextBoxDelete(150);


//				St("C",700, @0,@60,"buノーコa_通常_sad");
//				Move("@StNameC/C*", 2000, @0, @-60, DxlAuto, false);
//				FadeSt("C",2000,true);
//
//				OnBG(10,"bg1201311ＵＰ＋_屋外セット_暗闇");
//				FadeBG(4000,true);

			OnBG(10,"bg1203200ＵＰ＋_セット裏_暗闇");
			FadeBG(2000,true);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	CreateSE("SE02","se擬音_光迸る");
	MusicStart("SE01",0,1500,0,250,null,false);
	MusicStart("SE02",0,700,0,900,null,false);

//◆演出指定：暗闇から浮き出るように
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	CreateColorSP("絵色100", 500, "BLACK");

	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",0,true);

	CreatePlainSP("浮出用", 1500);
	Request("浮出用", AddRender);
	Delete("絵色100");
	CreateTextureSP("絵背景200", 800, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	DrawTransition("絵背景100", 1500, 1000, 0, 100, null, "cg/data/random_01_00_0.png", false);
	Fade("絵背景100", 1500, 0, null, true);
	Fade("絵背景200", 500, 0, null, false);

	SetVolumeEX("SE*", 2000, 0, null);

	Fade("浮出用", 500, 0, null, true);
	Delete("浮出用");
	Delete("絵背景*");

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100810nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100820nko">
「にとりは、どこ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




	EndScene();
}
