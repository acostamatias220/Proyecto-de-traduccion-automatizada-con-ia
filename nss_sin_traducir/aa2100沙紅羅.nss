
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2100沙紅羅.nss_MAIN
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
	$GameName = "aa2110沙紅羅.nss";
//	$GameCircle=false;

}

scene aa2100沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1270">
////////////header////////////
//file name "aa2100沙紅羅.nss"
//title "それでもブーはやってない"
//previous "aa2050沙紅羅_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "aa2110沙紅羅.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆時間：ジャンプ

{	ClockPass(2101);}

	CreateTextureSP("絵演背景赤", 20, Center, Middle, "cg/bg/bg2502300信号機_見上げ_赤標識無.jpg");
	CreateTextureEX("絵演背景青", 21, Center, Middle, "cg/bg/bg2502100信号機_見上げ_青標識無.jpg");


//◆場所：パチンコ屋_正面
	OnBG(10,"bg2301100パチンコ屋_正面_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, null, "slide_01_03_0", true);

	CreateSE("SEL01","se動作_集団走る");
	MusicStart("SEL01",2000,700,0,1000,null,true);

	SoundPlay("@xbgm03",0,450,true);

//※下倉注：ジャブルさんの仕業だ！ で追記したいねー  2010/11/25

	Wait(1000);

	Fade("絵演背景青", 100, 1000, null, true);

	Wait(1000);

	Delete("絵演背景赤");
	FadeDelete("絵演背景青", 300, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("L",700, @-50,@0,"bu平次_御用だ_angry");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa21/000200010fjh">
「今度こそは逃がさんぞっ！　待てええええええい！」

{
	DeleteSt("L",200,false);
	St("R",700, @-50,@0,"bu沙紅羅_通常_shout");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200020skr">
「誰が待つかあッ！！」

{	DeleteSt("R",200,false);
	St("L",700, @-50,@0,"buみそa_通常_shout");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200030mso">
「ぬおおおおおお！！」

{	DeleteSt("L",200,false);
	St("R",700, @-50,@0,"buブーa_通常_shock");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200040buu">
「畜生ッ！　さっきからオレたち逃げっぱなしだし！」

{	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200050buu">
「なんか、ヤケに信号に助けられてる気はするけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆場所：スパコン館_裏面
	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @-50,@0,"bu沙紅羅_通常_pain");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200060skr">
「どこか逃げ場は――」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーa_通常_hard");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200070buu">
「姐さんッ！　この扉、鍵が開いてますぜ！」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200080mso">
「廃ビル……か？」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200090skr">
「よし！　とりあえず避難だ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(2102);}


//◆場所：スパコン館_通路
	CreateSE("SE01","se動作_屋上ドア開ける");
	MusicStart("SE01",0,700,0,1000,null,false);
	SceneOut(5000, 300, "slide_01_01_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);
	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：扉越し
{
//	St("C",700, @-50,@0,"bu平次_御用だ_shout");
//	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
//	FadeSt("C",200,true);
}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/aa21/000200100fjh">
「御用だ御用だ御用だ御用だ――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 4000, 0, null);
	SetVolumeEX("@xbgm*", 2000, 0, null);

	WaitKey(1000);

	CreateColorEX("上背景", 5000, "#000000");
//	PrintGO("上背景", 5000);
	Fade("上背景", 2000, 1000, null, true);
	Wait(1000);

//◆演出指定：時間経過

	DeleteAllSt(0,true);
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200110">
「「「ふう……」」」

//◆音声指示：同時
//【みそ】
//<voice name="みそ" class="みそ" src="voice/aa21/000200120mso">
//「ふう……」

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/aa21/000200130buu">
//「ふう……」

</PRE>
	SetText();
	AddText(1,"「ふう……」","沙紅羅","aa21/000200110skr",false,false,1000);
	AddText(2,"「ふう……」","みそ","aa21/000200120mso",false,false,1000);
	AddText(3,"「ふう……」","ブー","aa21/000200130buu",false,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200140skr">
「なんとか、助かったみたいだな」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200150skr">
「ったく、あのモジャモジャホントしつけぇ……」

{
	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200160mso">
「ってそんなことより姐さんッ！
　別れてた間、特にお変わりありませんでしたか？」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200170skr">
「ん、ああ、別にないけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200180buu">
「電話繋がらないから心配したんですよ！」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200190skr">
「あー、わりーわりー！
　ケータイの電池が切れちゃってさー！」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200200mso">
「そんなところだろうと思いました」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200210buu">
「で、同人誌は見つかりましたか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200220skr">
「ん、ああそうだ！　忘れてた！
　フウリに聞かなきゃわかんねーじゃねーか！」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200230mso">
「フウリって……？」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200240skr">
「あの番組で、一緒のチームだったんだけど。
　終わったら、どーじんしの場所を教えてもらうはずで」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200250skr">
「けど――こうなっちまったら、顔出しづらいな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2103);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{
	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200260mso">
「あ……あ、姐さんッ！
　そんなことになってるとは――つゆ知らず！」

{
	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200270buu">
「姐さん、すいませんっした！」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200280mso">
「オレたちが紛れ込んだせいで、姐さんの邪魔を――」

{
	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200290skr">
「はは、気にすんなおまえら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	SoundPlay("@xbgm07_noint",0,450,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200300skr">
「どーじんしなんて、いつでも手に入る。
　だが、おまえらの代えはねぇ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200310skr">
「おまえらはアタシの家族――いや、それ以上！」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200320skr">
「百野殺駆頭、月夜乃沙紅羅――
　濡れ衣で苦しんでるおまえら、見捨てたりできるかぁ！」

{
	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーa_通常_cry");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200330buu">
「姐さんっ！！
　うおーいおいおい！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{
	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_cry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200340mso">
「うおーいおいおい！」

{
	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_泣き_cry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200350skr">
「おーいおいおいおいおい……」


{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーa_通常_happy");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200360buu">
「さすが姐さん……かっこいいや……」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200370mso">
「一生……ついていきますッ！！」


{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200380skr">
「おうよ！　アタシについてこいッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{
//	SetVolumeEX("@xbgm*", 1500, 0, null);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200390skr">
「ところでおまえら、なんで追いかけられてたんだ？」

{
	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーa_通常_sad");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200400buu">
「いや、それが実は……」

{
//	SoundPlay("@xbgm04",0,450,true);
	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200410mso">
「なんだかよくわかんねぇけど、オレたちが殺人犯だっていうんです」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200420skr">
「さ――殺人犯！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200430skr">
「おまえら、なんてことをしやがった――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200440skr">
「アタシは……そんなコに育てた覚えはねぇぞ……ッ！」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_fear");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200450mso">
「いやいやまさか、そんな！
　殺人なんてしてませんよ！　なあ、ブー？」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200460buu">
「もちろんです！
　あいつらの勝手な勘違いですから！」


{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200470skr">
「本当に、悪さはしてねぇんだな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200480mso">
「姐さん！　家族って言ってたじゃないですか！
　その家族を疑うんですか！？」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200490skr">
「家族だから、疑うんだよ」

{
//	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("C",200,true);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200500skr">
「なあ、ブー？」

{
	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200510buu">
「え？　あははははは、嫌だなあ」

//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200520buu">
「ぼくたちがわるいことするわけないじゃないですか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2104);}

	TextBoxDelete(150);
	DeleteSt("R",200,false);

//	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
//	FadeSt("C",200,true);


//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 160, 256, false);
	SetAlias("絵窓","絵窓");
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/fu/fu沙紅羅_通常_hard.png");
	Zoom("絵窓/絵演立絵", 0, 2000, 2000, null, true);
	Request("絵窓/絵演立絵", Smoothing);
	Move("絵窓/絵演立絵", 0, @0, -440, null, true);
	Request("絵窓/絵演立絵2", Smoothing);

	CreateSE("SE01","se擬音_ギャグ_キラーン01");

//動作
	Fade("絵窓/絵演立絵", 0, 1000, null, true);
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵窓/絵演立絵*", 200, @0, @-100, Dxl2, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130a]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200530skr">
「ふぅん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200540skr">
「じゃあ聞くけど、そのポケットからはみ出してるの」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200550skr">
「なんだ？」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーa_通常_shock");
	SetComic(@400,@-100,17);
	FadeComic();
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200560buu">
「え？　あ！　やべっ！　いやそのこれはええとホラ！
　ハンケチですよ！　ハンカチーフ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteComic();
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200570skr">
「ＯＫ。んじゃあそのハンカチーフで、ダラダラ流れてる顔の汗拭いてみようか」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200580buu">
「え？　いや、やだなあ汗なんてあはははははは……」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200590skr">
「かいてるよな？　ダラダラだよな？」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200600mso">
「かいてます。ダラダラです」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200610skr">
「ほら、ブー！　遠慮せずに行け！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{
//	SetVolumeEX("@xbgm*", 300, 0, null);
	DeleteSt("C",200,false);
	St("C",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200620buu">
「う……う……」

{
//	SoundPlay("@xbgm03",0,450,true);
	St("C",700, @0,@0,"buブーa_通常_shout");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 500, 0, 10, 0, 0, 500, null, false);
	}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200630buu">
「こうなりゃヤケだッ！！
　うおおおおおおおおおおおおおッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @0, @60, Axl1, false);
	DeleteAllSt(200,true);

//◆演出指示：ミヅハのパンツを頭に被る

	CreateAXLWindowEX("絵窓", "X",1600, 128,768, false);
	WindowAXLZoom("絵窓", "X",0, 0, null, true);
//	CreateTextureSP("絵窓/絵背景", 1400, 0, Middle, "cg/bg/bg0501300スーパーノヴァ_正面_ガラス補修.jpg");
//	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
//	CreateColorSPadd("絵窓/絵演色", 1530, "#FFDDFF");

	CreateColorSP("絵窓/絵演色", 1510, "#FFDDFF");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

	SetShade("絵窓/絵背景", HEAVY);
	Zoom("絵窓/絵背景", 0, 2000, 2000, null, true);

	CreateSE("SE01","se擬音_ギャグ_リーゼント");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTexture("絵窓/ブー", 1540, 160, @200, "cg/bu/buブーb_通常_shout.png");
	SetAlias("絵窓/恵那","絵窓/ブー");
	Move("絵窓/ブー", 200, 160, 0, null, false);
	WindowAXLZoom("絵窓", "X",300, 1000, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200640buu">
「変！　身！」

{
//	DeleteSt("R",200,false);
//	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200650skr">
「なにが変身じゃいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	SetVolumeEX("@xbgm*", 1500, 0, null);
	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,1400,0,1000,null,false);
	Shake("@絵色白*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	CreateColorSP("絵色白", 1700, "#FFFFFF");
	Delete("@絵窓*");
	Wait(50);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	DeleteSt("C",200,false);
	St("R",700, @-100,@0,"buブーb_通常_shock");
	Move("@StNameR/R*", 300, @100, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200660buu">
「ノー！　あー！　いやー！　ダメー！」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200670skr">
「っていうかどこで盗んだ！？」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーb_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200680buu">
「盗んだんじゃありません！」

{
//	St("C",700, @0,@0,"buブーa_通常_normal");
//	FadeSt("C",200,true);
	}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200690buu">
「一回り大きくなって帰ってきたんです！」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200700skr">
「知るか！　っていうかなんで被る！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2105);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーb_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200710buu">
「コレには<RUBY text="きょうだい">義兄弟</RUBY>の契りが」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	Shake("@StNameC/C*", 300, 8, 0, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200720skr">
「なにが契りだこのド変態ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,1400,0,1000,null,false);
	CreateColorSP("絵色白", 710, "#FFFFFF");

//	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 0, 10, 0, 0, 1000, Dxl1, false);

	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	DeleteSt("C",0,true);
	Wait(50);
	Delete("絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
{
	St("R",700, @0,@0,"buブーb_通常_shock");
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 600, 0, 10, 0, 0, 500, null, false);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200730buu">
「ぎゃあああああああ！！」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200740mso">
「あ、姐さん！　そのくらいにしてやって下さい……」

{	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200750mso">
「別にブーも、好きで盗んだワケじゃないんです」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200760skr">
「ん？　どういうことだ？」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200770mso">
「実は、オレもコレを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("イベント1", 10000, Center, @0, "cg/img/img縞パン.jpg");
	Fade("イベント1", 500, 1000, null, true);
	DeleteSt("L",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{
//	DeleteSt("L",200,false);
//	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
//	FadeSt("C",200,true);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200780skr">
「な……なな！　それは、今日のラッキーアイテム！？」

{
//	DeleteSt("C",200,false);
//	St("L",700, @0,@0,"buみそa_通常_sad");
//	FadeSt("L",200,true);
	}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200790mso">
「へ？　ラッキー？」

{
//	DeleteSt("L",200,false);
//	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
//	FadeSt("C",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200800skr">
「何故それを！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	St("L",700, @0,@0,"buみそa_通常_sad");
	FadeSt("L",0,true);
	Fade("イベント1", 500, 0, null, true);
	Delete("イベント1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【みそ】

<voice name="みそ" class="みそ" src="voice/aa21/000200810mso">
「いや、実はバックギャモンってエロい店で、店内を物色してたときに、突然銃を持ったガキが飛び込んできて」

{	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200820mso">
「んで、一方的に犯人扱いするもんだから、とりあえず全力で逃げ出したってわけで……」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200830skr">
「なるほど――そういうことか」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200840skr">
「ってことは、本当に人殺ししたわけじゃねぇんだよな？」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーb_通常_shout");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200850buu">
「も、もちろんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200860skr">
「いよっしゃ！　わかった！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200870skr">
「んじゃこれから、間違って持ってきたそれを返しに――」

{	DeleteSt("C",200,false);
	CreateSE("SE02","se動作_ドア開ける04");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("L",700, @-50,@0,"buロクローa_通常_shout");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000200880rkr">
「おいなんだ！　うるさいぞッ！！」

{	St("L",700, @0,@0,"buロクローa_通常_angry");
	FadeSt("L",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000200890rkr">
「こっちは撮影中――」

{	St("L",700, @0,@0,"buロクローa_通常_shout");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000200900rkr">
「あああああああッ！！」

{	St("L",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("L",200,true);
}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000200910rkr">
「よくぞいらっしゃいました！」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200920skr">
「…………ん？」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_hard");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000200930mso">
「誰だ、てめー？」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000200940buu">
「姐さん、知り合いですか？」

{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200950skr">
「あ……あれ？　なんか、見覚えが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("L",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000200960rkr">
「憶えててくれましたか！」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200970skr">
「確か、ええと……その……クロウとか……なんとか」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("L",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000200980rkr">
「ロクローです！　ロクロー！
　いやあ！　決心してくれましたか！」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000200990skr">
「決心？」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buロクローa_通常_smile");
	FadeSt("L",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000201000rkr">
「そんなしまぱんまで用意してくれちゃって！
　この学園セットをご覧あれ！」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000201010skr">
「え？　学園……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2106);}


//◆場所：スパコン館_スタジオ
	SceneOut(5000, 1000, "blind_01_00_0");
	DeleteAllSt(0,true);
	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
	FadeBG(0,true);


	CreateSE("SE01","se動作_ドア開ける06");
	MusicStart("SE01",0,700,0,1000,null,false);
	SceneIn(1000, "blind_01_00_1");

//	CreateSE("SE02","seガヤ_AV_l");
//	MusicStart("SE02",0,400,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/aa21/000201020e14">
「ぁああっっ！！」

//◆ＳＥ：キラーン！
{
	CreateSE("SE01","se擬音_ギャグ_エロセンサー");
	SetComic(@200,@-200,7);
	St("R",700, @0,@0,"buブーb_通常_shout");
	FadeSt("R",200,true);
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeComic();
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000201030buu">
「この声は――！」

{	DeleteComic();
	DeleteSt("R",200,true);}
//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/aa21/000201040e14">
「お……おまえらッ！
　あたいをこんな目に遭わせて……」

//【バイトＢ】
<voice name="バイトＢ" class="その他女声" src="voice/aa21/000201050e14">
「ケンジが……ぁんっ！
　黙っちゃ――いないんだからッ！」

{	St("R",700, @0,@0,"buブーb_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000201060buu">
「レディースＡＶ撮影会！？」

{	St("R",700, @0,@0,"buブーb_通常_ero");
	FadeSt("R",200,true);
	Shake("@StNameC/C*", 1000, 0, 5, 0, 0, 500, null, false);
}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000201070buu">
「ってことはももももももしや伝説のＡＶ男優――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("R",700, @0,@0,"buブーb_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000201080buu">
「ＴＡＭＡのＡＶ男優のロクローさん！？」

{
//	SetVolumeEX("@SE02*", 1500, 0, null);
//	SetVolumeEX("@xbgm*", 500, 0, null);
//	SoundPlay("@xbgm32",0,450,true);
	DeleteSt("R",200,true);

	CreateSE("SE01","se擬音_ギャグ_じゃじゃーん");
	St("C",700, @0,@0,"buロクローa_通常_shout");
	CreateTextureEX("絵効果背景", 100, Center, Middle, "cg/ef/ef_カット汎用01.jpg");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵効果背景", 0, 1000, null, true);
	DrawTransition("絵効果背景", 200, 0, 1000, 100, null, "cg/data/circle_13_00_0.png", false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000201090rkr">
「その通りッ！！」

{
//	St("C",700, @0,@0,"buロクローa_通常_normal");
//	FadeSt("C",200,true);
	}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000201100rkr">
「インスピレーションが来たのです！
　私は目覚めたのです！」

{
//	St("C",700, @0,@0,"buロクローa_通常_normal");
//	FadeSt("C",200,true);
	}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000201110rkr">
「パロディＡＶの次に来るもの――それはッ！！」

{
//	St("C",700, @0,@0,"buロクローa_通常_normal");
//	FadeSt("C",200,true);
	}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000201120rkr">
「レディースＡＶだとっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：木刀で殴る沙紅羅

//	SetVolumeEX("@xbgm*", 500, 0, null);
	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,1400,0,1000,null,false);
//	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);
	Delete("絵効果背景");
	Delete("絵色白");
	DeleteSt("C",200,false);
	BGPlainShake(50, 300, -4, 8, 0, 0, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000201130skr">
「目覚めんな！」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buロクローa_通常_cry");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000201140rkr">
「ふげっ！」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000201150skr">
「なにが！　レディース！　ＡＶだッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2107);}

	CreateSE("SE01","se戦闘_打撃音01");
	CreateTextureEX("絵効果背景", 1000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Zoom("絵効果背景", 0, 1100, 1100, null, true);

	CreateSE("SE02","se戦闘_打撃音01");
	Zoom("絵効果背景", 0, 1100, 1100, null, true);

	Wait(16);
	Fade("絵効果背景", 0, 1000, null, true);

	DeleteAllSt(0,true);

	MusicStart("SE01",0,700,0,1100,null,false);
	Fade("絵効果背景", 500, 0, null, false);
	Zoom("絵効果背景", 2000, 1300, 1300, null, false);
	BGPlainShake(50, 500, 6, 8, 0, 0, 1000, Dxl1, true);


	Rotate("絵効果背景", 0, @0, @-180, @0, null,true);
	Fade("絵効果背景", 0, 1000, null, true);
	MusicStart("SE01",0,700,0,1100,null,false);

	Fade("絵効果背景", 500, 0, null, false);
	Zoom("絵効果背景", 2000, 1300, 1300, null, false);
	MusicStart("SE02",0,700,0,900,null,false);
	BGPlainShake(50, 500, -6, 8, 0, 0, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buロクローa_通常_cry");
	FadeSt("L",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000201160rkr">
「ぎゃっ！　いやッ！　やめて！」

{	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000201170skr">
「アタシは！　そんな！
　尻軽あばずれビッチじゃねぇんだよ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_打撃音01");
	CreateTextureEX("絵効果背景", 1000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Zoom("絵効果背景", 0, 1100, 1100, null, true);

	CreateSE("SE02","se戦闘_打撃音01");
	Zoom("絵効果背景", 0, 1100, 1100, null, true);

	Wait(16);
	Fade("絵効果背景", 0, 1000, null, true);

	DeleteAllSt(0,true);

	MusicStart("SE01",0,700,0,1100,null,false);
	Fade("絵効果背景", 500, 0, null, false);
	Zoom("絵効果背景", 2000, 1300, 1300, null, false);
	BGPlainShake(50, 500, 6, 8, 0, 0, 1000, Dxl1, true);


	Rotate("絵効果背景", 0, @0, @-180, @0, null,true);
	Fade("絵効果背景", 0, 1000, null, true);
	MusicStart("SE01",0,700,0,1100,null,false);

	Fade("絵効果背景", 500, 0, null, false);
	Zoom("絵効果背景", 2000, 1300, 1300, null, false);
	MusicStart("SE02",0,700,0,900,null,false);
	BGPlainShake(50, 500, -6, 8, 0, 0, 1000, Dxl1, true);

	St("C",700, @0,@0,"buロクローa_通常_shout");
	St("C",700, @0,@0,"buロクローa_通常_pride");
	Shake("@StNameC/C*", 300, 0, 8, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);
	FadeStPro("C", 200, 2000);

	SetVolumeEX("@xbgm*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0275]
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000201180rkr">
「あぅっ！　ああっ！　あれっ！？」

{	AgainSt("C",700, @0,@0,"buロクローa_通常_pride");
	St("C",700, @0,@0,"buロクローa_通常_smile");
	CreateSE("SE01","se擬音_ギャグ_きゃるーん");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetComic(@0,@0,4);
	Move("@Comic*", 0, @100, @-180, null, true);
	FadeComic();
	CreateSound("SE目覚め", SE, "sound/bgm/xbgm92.ogg");
	MusicStart("SE目覚め",0,700,0,1000,null,false);
	FadeSt("C",200,true);}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000201190rkr">
「なんか……叩かれているうちに……
　新しい感覚に目覚めてきたぞ！」

{
	DeleteComic();
	DeleteSt("L",200,false);
	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("C",200,true);
	SetVolumeEX("SE*", 100, 0, null);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000201200skr">
「永遠に眠れッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,false);
	CreateSE("SE01","se戦闘_打撃音01");
	MusicStart("SE01",0,1400,0,1000,null,false);

//	Shake("@OnBG*", 300, 0, 10, 0, 0, 500, null, false);

	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);

	BGPlainShake(50, 500, 0, 8, 0, 0, 1000, Dxl1, false);
	Delete("絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("L",700, @0,@0,"buロクローa_通常_cry");
	FadeSt("L",200,true);
	Shake("@StNameL/L*", 300, 0, 10, 0, 0, 500, null, false);
	Move("@StNameL/L*", 300, @0, @100, Dxl2, false);
	DeleteSt("L",200,true);
	}
//【ロクロー】
<voice name="ロクロー" class="ロクロー" src="voice/aa21/000201210rkr">
「ふぎゃああああああああっ！」

{	CreateSE("SE01a","se人体_倒れる03");
	MusicStart("SE01a",0,700,0,1000,null,false);
	St("R",700, @0,@0,"buブーb_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000201220buu">
「死んだ……？」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_normal");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aa21/000201230mso">
「ああ、死んだな」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーb_通常_shock");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000201240buu">
「そんな、ＡＶ界の新しい光が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
{	DeleteSt("R",200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000201250skr">
「うし！　んじゃ、コレ返しに行くぞ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aa21/000201260skr">
「ブー、道案内を！」

{	DeleteSt("C",200,false);
	St("R",700, @0,@0,"buブーb_通常_normal");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aa21/000201270buu">
「は……はい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(2000);

	EndScene();
}
