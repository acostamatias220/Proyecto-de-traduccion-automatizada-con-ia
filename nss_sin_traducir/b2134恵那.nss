
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2134恵那.nss_MAIN
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
	$GameName = "b2140千秋_恵那.nss";
	//$GameCircle=false;

}

scene b2134恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1160">
////////////header////////////
//file name "b2134恵那.nss"
//title "譫言トラップ"
//previous "2131恵那.nss"

////////////footer////////////
//next "恵那" "b2140千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();

//◆場所：スーパーノヴァ_控え室
	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);

//あきゅん「演出："2131恵那.nss"と表情合わせています」
{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 200, null, true);

{	ClockPass(2134);}

	SetVolumeEX("@x*", 2000, 0, NULL);

	St("MR",700, @0,@50,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 1500, @0, @-50, Dxl2, false);
	Shake("@StNameMR/MR*", 1500, 4, 0, 0, 0, 300, null, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100010fje">
「ま……待って！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@50,"bu歌門_通常_shock");
	Move("@StNameML/ML*", 1500, @0, @-50, Dxl2, false);
	Shake("@StNameML/ML*", 1500, 4, 0, 0, 0, 300, null, false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100020kms">
「恵那様！？」

{	DeleteAllSt(200,false);
	MusicStart("@xbgm05",0,450,0,1000,null,true);
	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100030fje">
「私は……まだまだ、やれるわよ」

{
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100040fjr">
「頑張るじゃない」

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100050fjr">
「けど――次で終わりよッ！！」

//◆ＳＥ：カーン！
//◆ＳＥ：ドカスカバキ！！
//◆ＳＥ：カンカンカン！！
{
	CreateSE("SE01","se擬音_ゴング01");
	MusicStart("SE01",0,700,0,1000,null,false);

	WaitKey(500);

	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	Move("@StNameC/C*", 300, @0, @30, Dxl2, false);

	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100060fjr">
「大気圏突破式――
　ドロップキ――――――ック！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @0, @-150, Dxl2, false);
	DeleteAllSt(200,false);

//★ wam井野 2143恵那.nssからいただきました 10/11/19

	CreateTextureEX("絵背景", 1000, Center, Middle, "cg/ev/ev1830鈴ドロップキック.jpg");
	Zoom("絵背景", 0, 2000, 2000, Dxl2, true);
	SetBlur("絵背景", true, 2, 500, 50, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景", 200, 1000, null, false);
	Zoom("絵背景", 200, 1000, 1000, Dxl2, true);


	Zoom("絵背景", 200, 5000, 5000, Axl3, false);
	FadeF4("絵背景", 200, 1000, 3000, 0, 0, Axl3, false);

	Wait(200);
	CreateSE("SE02","se戦闘_打撃_ドロップキック01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);

	St("MR",700, @50,@0,"bu恵那_哀愁_fear");
	FadeSt("MR",0,true);
	Shake("@StNameMR/MR*", 1500, 15, 0, 0, 0, 500, null, false);

	FadeDelete("絵背景",0,null,false);
	FadeDelete("絵色", 500, null, false);

	CreateColorEXadd("絵色", 1500, "#FFFFFF");
	Fade("絵色", 300, 1000, null, true);
	CreateTextureSP("絵ゆれ", 100, Center, Middle, "cg/bg/bg0503100スーパーノヴァ_控え室_通常.jpg");
	Delete("絵背景");

	FadeDelete("絵色", 500, null, false);

	Move("@StNameMR/MR*", 500, @200, @0, Dxl2, false);
	DeleteAllSt(500,false);

	Shake("絵ゆれ", 500, 10, 20, 0, 0, 500, Axl3, true);
	Request("絵ゆれ",Disused);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100070fje">
「きゃあああっ！！！！」

{	DeleteAllSt(200,false);
	St("ML",700, @-50,@0,"bu歌門_口覆い_fear");
	Move("@StNameML/ML*", 300, @50, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100080kms">
「恵那様っ！！」


{	DeleteAllSt(200,false);
	St("R",700, @-50,@80,"bu恵那_哀愁_pinch");
	Move("@StNameR/R*", 1000, @-50, @-30, Dxl2, false);
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100090fje">
（だめだ……やっぱり押されてる！
　でも、ここで負けるわけには――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
{	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu恵那_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100100fje">
（格闘技では間違いなく、鈴姉に一日の長があるわ！
　だったら、私は――）

{
	CreateSE("SE01","se擬音_恵那閃く");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("C",19010, @0,@0,"fu恵那_一休_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100110fje">
（私は、頭脳プレイで――
　鈴姉の集中を逸らしてやる！）


{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100120fjr">
「ふふっ。さすがにこれで勝負あり――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu恵那_哀愁_pinch");
//	Move("@StNameR/R*", 1000, @0, @-50, Dxl2, false);
	FadeSt("R",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100130fje">
「ま……待った！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100140kms">
「まだ立てるんですか！？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100150fje">
「立たなきゃ、なんないのよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100160fjr">
「なぜ、そこまでして……」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100170fje">
「……正直、わかんないわ」

{	St("R",700, @0,@0,"bu恵那_通常_think");
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100180fje">
「わかんないけど……
　どうしてもやらなきゃならない気がする」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu恵那_通常_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100190fje">
「私は、アッキーちゃんを助けに行かなきゃならないの！」

{	DeleteAllSt(200,true);
	St("L",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100200fjr">
「ふふ……そう。そうなのね」

{	St("L",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100210fjr">
「いいわ。あなたがその気なら――
　とことん、相手してあげようじゃないっ！！」


{	St("L",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("L",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100220fjr">
「でえええええいっ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	CreateSE("SE01","se動作_一歩");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameL/L*", 200, @50, @0, Dxl2, false);
	DeleteAllSt(200,false);

	WaitKey(300);

	St("R",700, @50,@0,"bu恵那_ハルヒ_angry");
	Move("@StNameR/R*", 200, @-50, @0, Dxl2, false);
	FadeSt("R",200,true);
	Request("@StNameR/R*", Smoothing);
	Zoom("@StNameR/R*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameR/R*", 100, 1000, 1000, Axl2, true);

	SetVolumeEX("@x*", 10, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100230fje">
「あああああああああああっ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100240fjr">
「ん？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100250fje">
「あんなところにっ！
　ロクローさんの名刺が！？」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100260fjr">
「ちょっとー、バカ言わないでよっ。
　いくらロクロー様が好きでも、そんな見え見えの――」


{

	CreateTextureEX("イベント1", 500, Center, Middle, "cg/obj/objロクロー名刺.png");
	Move("イベント1", 0, @170, @-50, Dxl2, true);
	Move("イベント1", 300, @0, @50, Dxl2, false);
	Fade("イベント1", 500, 1000, null, true);
	WaitKey(1000);

	SetVolumeEX("@x*", 100, 0, NULL);
	CreateSE("SE01","se擬音_ギャグ_ドーン");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("ML",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("ML",200,true);
	Request("@StNameML/ML*", Smoothing);
	Zoom("@StNameML/ML*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameML/ML*", 100, 1000, 1000, Axl2, true);
}

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100270fjr">
「あれ！？　ほ、ホントに落ちてる！？」

{
	Move("イベント1", 300, @0, @50, Axl2, false);
	Fade("イベント1", 200, 0, null, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100280fje">
「隙アリ――――――ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_風切り音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameMR/MR*", 300, @-50, @0, Dxl2, false);
	DeleteAllSt(200,false);

	CreateTextureEXadd("絵背景100", 5000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	CreateTextureEX("絵背景200", 6000, Center, Middle, "cg/fu/fu恵那_一休_smile.png");
	CreateTextureEX("絵背景300", 5500, Center, Middle, "cg/ef/ef_カット汎用01.jpg");

	CreateColorEX("黒", 1000, "Black");
	CreateColorEX("白", 6000, "White");
	Fade("黒",0,1000,null,true);

	CreateSE("SE02","se戦闘_殴打連続02");
	MusicStart("SE02",0,800,0,1000,null,false);

	Fade("絵背景100",0,1000,null,true);
	Fade("絵背景100",100,0,null,true);
	Wait(200);
	Rotate("絵背景100", 0, @180, @0, @0, null,true);
	Fade("絵背景100",0,1000,null,true);
	Fade("絵背景100",100,0,null,true);
	Wait(100);
	Rotate("絵背景100", 0, @180, @0, @0, null,true);
	Zoom("絵背景100", 0, -1000, 1000, null, true);
	Fade("絵背景100",0,1000,null,true);
	Fade("絵背景100",200,0,null,true);
	Wait(200);
	Rotate("絵背景100", 0, @180, @0, @0, null,true);
	Fade("絵背景100",0,1000,null,true);
	Fade("絵背景100",300,0,null,true);
	Wait(100);
	Rotate("絵背景100", 0, @180, @0, @0, null,true);
	Fade("絵背景100",0,1000,null,true);
	Fade("絵背景100",100,0,null,true);
	Wait(100);

	Fade("絵背景300",0,1000,null,true);
	Fade("絵背景200", 0, 1000, null, true);
	Wait(50);

	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Fade("絵背景100", 0, 1000, null, true);
	Delete("絵背景300");
	Delete("絵背景200");
	Fade("黒",500,0,null,true);
	Zoom("絵背景100", 1000, 4000, 4000, Dxl2, false);
	Fade("絵背景100",1000,0,null,true);

	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
	Request("@StNameC/C*", Smoothing);
	Zoom("@StNameC/C*", 0, 1500, 1500, null, true);
	FadeSt("C",200,true);
	Shake("@StNameC/*", 1000, 15, 0, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/b21/340100290fjr">
「ふぎゃああああああッ！！」


{

	Move("@StNameC/C*", 300, @0, @50, Dxl2, false);
	DeleteAllSt(200,true);

	Delete("絵背景*");

	CreateSE("SE01","se人体_倒れる02");
	MusicStart("SE01",0,700,0,1000,null,false);

	WaitKey(1500);

	CreateSE("SE01","se擬音_ゴング02");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@50,"bu恵那_ハルヒ_angry");
	Move("@StNameC/C*", 200, @0, @-50, Axl2, false);
	FadeSt("C",200,true);

	Zoom("@StNameMR/MR*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameMR/MR*", 100, 1000, 1000, Axl2, true);

}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100300fje">
「いよっしゃあっ！！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100310fje">
「――星さん！　早く逃げましょう！」


{
	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100320kms">
「は……はいっ！」




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2135);}

//◆場所：スーパーノヴァ_正面

	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);
	OnBG(10,"bg0501100スーパーノヴァ_正面_通常");
	FadeBG(500,true);

	SceneIn(300, "slide_01_01_1");


	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,500,0,1000,null,true);



{	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100330kms">
「た、助けていただいてありがとうございます！」

{	St("ML",700, @0,@0,"bu歌門_通常_smile");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100340kms">
「恵那様……強いのですね。驚きました」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100350fje">
「いえいえ。鈴姉には全然、敵わないし」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_normal");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100360kms">
「やはり、平次様に教えてもらって？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100370fje">
「……小さくて、まだなにもわからない頃は、勝手に色々教え込まれたみたいですけど」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100380fje">
「でも、今は全然ですし！
　父さんは関係ないです」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_shock");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100390kms">
「でも、見たところ――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100400fje">
「それより早く――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);

//◆ＳＥ：どがーん！　南の方

	CreateSE("SE01","se戦闘_爆発01");
	CreateSE("SE02","se戦闘_倒壊02");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,500,0,1000,null,false);

	BGPlainShake(20, 1000, -4, 60, 0, 0, 1000, Dxl2, true);

	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]


{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100410fje">
「な、なにこの音！？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_威圧_shout");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100420kms">
「あっちです！　私は向こうへ！」


//★ wam井野 方角的に合っているかわかりませんが、絵的に左に走らせています。
//※下倉注：左でＯＫ 2010/11/25

{
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameML/*", 200, @-100, @0, Axl2, false);
	DeleteAllSt(200,true);

	SetVolumeEX("@SE01", 4000, 0, NULL);
	SetVolumeEX("@SE02", 4000, 0, NULL);


}


　歌門が、南の方角へと走り出す。

　恵那も追いかけようか一瞬迷うが――


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]



{	St("R",700, @-100,@0,"buユージローa_通常_angry");
	Shake("@StNameR/R*", 300, 0, 10, 0, 0, 500, null, false);
	Move("@StNameR/R*", 300, @100, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/340100430ujr">
「わうわうわうわうッ！」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100440fje">
「え？　ユージロー？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/340100450ujr">
「わうわう！　わうわう！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100460fje">
「呼んでるの……？」

{	St("C",19010, @0,@0,"fu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100470fje">
「やっぱり、アッキーちゃんを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]

{	DeleteAllSt(200,false);
	St("L",700, @-50,@0,"bu歌門_威圧_hard");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100480kms">
「恵那様！　来ないのですか？」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100490fje">
「あ、あの！　ごめんなさい！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100500fje">
「私、撮影現場の方へ――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100510kms">
「そうですか。では――」

{	St("ML",700, @0,@0,"bu歌門_通常_smile");
	FadeSt("ML",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/b21/340100520kms">
「幸運を」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100530fje">
「はい！」

{	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100540fje">
「ユージロー、行きましょう！」

{
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);
	Zoom("@StNameC/C*", 100, 1200, 1200, Dxl2, true);
	Zoom("@StNameC/C*", 100, 1000, 1000, Axl2, true);

}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/340100550ujr">
「わう！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);


{	ClockPass(2136);}

	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	DeleteAllSt(200,false);


	TextBoxDelete(150);

//◆場所：ＵＰ＋_屋外セット_炎上


	SceneOut(5000, 1000, "blind_01_01_0");

	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	SceneIn(1000, "blind_01_01_1");

	CreateSE("SE01","se擬音_ギャグ_寒い風");
	MusicStart("SE01",0,700,0,1000,null,false);
	$SETime = RemainTime("SE01");
	WaitKey($SETime);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]


{	St("C",700, @-50,@0,"bu恵那_通常_sigh");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100560fje">
「ひどい……」

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100570fje">
「ずいぶん、閑散として……」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/340100580ujr">
「わうわうわうわうッ！」

{	DeleteAllSt(200,true);
	St("C",19010, @0,@0,"fu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100590fje">
「あれ？　アッキーちゃん！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);

	DeleteAllSt(200,true);

	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	CreateSE("SEL01","se環境_燃える_l");
	MusicStart("SEL01",4000,500,0,800,null,true);

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]


　ユージローが駆け出した先には、ステージ上に横たわる千秋と、それを介抱する女性の姿があった。


{	St("C",700, @-50,@0,"bu恵那_哀愁_sad");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100600fje">
「泡吹いて……倒れてる！？」

{	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100610fje">
「しっかりして！　やだ！　死んじゃいや！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/340100620adi">
「あれ？　あなたは――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100630fje">
「あ……朝の？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/340100640adi">
「あの時はどうもありがとう！
　コンビニ見つかんなくて、助かりました！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100650fje">
「いえ、それはいいんですけど――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/340100660adi">
「ふたりとも知り合い？　だったらちょうどいい！」

{	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/340100670adi">
「悪いんだけど、この子任せていいかな？　お願い！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100680fje">
「ええ、いいですけど……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/340100690adi">
「ありがとうっ！　いやね、ミリＰさんがあのゴスロリ女を追いかけて中継に行っちゃって、てんてこ舞いなの！」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/340100700adi">
「あ、アッキーさんはたぶん大丈夫。
　クリマン食べて当たっただけだから」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100710fje">
「クリマンを食べた――！？
　あの饅頭、食べちゃったの！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/340100720adi">
「一応、救急車は呼んであるから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2137);}

//	TextBoxDelete(150);

	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆音声指示：遠くから
{	St("MR",700, @0,@0,"stＡＤ_通常_angry");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/b21/340100730adi">
「ホント申し訳ないけど、後はお願い！！」

{	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameMR/*", 200, @100, @0, Axl2, false);
	DeleteAllSt(200,true);}
　言うが早いか、ＡＤはこちらに背を向け走り出した。

{
//	St("C",700, @0,@0,"bu恵那_哀愁_worry");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100740fje">
「無責任……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 300, "slide_01_01_0");

	DeleteAllSt(0,false);

	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100750fje">
「なんて、文句言ってる場合じゃないわ。
　アッキーちゃんの様子を……」

{	St("C",700, @0,@0,"bu恵那_一休_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100760fje">
「ええと……呼吸はしてるし……脈も正常……」

{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100770fje">
「アッキーちゃん？　聞こえる？」

{	St("C",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100780fje">
「聞こえてるなら、返事――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,true);

{	St("C",19010, @50,@0,"fu千秋_朗らか_lost");
	Move("@StNameC/C*", 3000, @-50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//◆音声指示：譫言
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/340100790kit">
「お……オレ……死んだの……」

{
	Move("@StNameC/C*", 3000, @-50, @0, Dxl2, false);
	DeleteAllSt(200,true);

	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100800fje">
「死んでない！　死んでないからね！」

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100810fje">
「意識が混濁してる……？」

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100820fje">
「命がすぐに危ないってことはないと思うけど。
　早く、救急車……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]

{	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100830fje">
「っていうか、私と別れてからなにがあったの？」

{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100840fje">
「もしかして……ゆるキャラバンに出たとか？
　そんなちっちゃい身体で？」

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100850fje">
「女の子なのに、無理するから――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteAllSt(200,false);

{	ClockPass(2138);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆音声指示：譫言
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/340100860kit">
「女々しいとかゆーな……」


//◆音声指示：譫言
{
//	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
//	FadeSt("C",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/340100870kit">
「オレは男だ……」


{	St("C",19010, @0,@0,"fu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100880fje">
「……………………」

{	St("C",19010, @0,@0,"fu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100890fje">
「今の譫言、なに？」

{	St("C",19010, @0,@0,"fu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100900fje">
「まさか――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	KoreJikenStart();


//	MusicStart("@xbgm08",0,700,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{
//	St("C",700, @0,@0,"bu恵那_哀愁_worry");
//	St("C",700, @0,@0,"bu恵那_一休_smile");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100910fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	SoundPlay("@xbgm08_noint",0,450,true);


	TextBoxDelete(150);


//	SetVolumeEX("@x*", 2000, 0, NULL);

	St("C",700, @0,@0,"bu恵那_一休_shy");
	Shake("@StNameC/C*", 2000, 10, 0, 0, 0, 2, AxlDxl, false);
	KoreJikenFade(false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100920fje">
「……いやいやいやいや、ないない」

{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100930fje">
「さっき私、ちゃんと確認したわけで」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100940fje">
「男の子だったらあるべき物が、ついてなかったわけで」

{	St("C",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100950fje">
「そういうわけで、そういうわけ――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("R",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/340100960ujr">
「わぅぅ……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100970fje">
「…………あれ？」

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100980fje">
「お、おかしいわ！」

{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340100990fje">
「隙あらばスカートに頭を突っ込んだり身体にまたがったりしようとするあのユージローが！　ユージローが！」

{
	CreateSE("SE01","se戦闘_刃物02");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101000fje">
「発情していない！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	KoreJikenStart();

	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101010fje">
「これは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2139);}

	TextBoxDelete(150);

	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	KoreJikenEnd(false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101020fje">
「……あれ？」


{	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101030fje">
「よく見ると……なんか……」

{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101040fje">
「股間……盛り上がってない？」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,false);



//窓準備
	CreateAXLWindowEX("絵窓", "Y", 1600, 140, 300, false);
	WindowAXLZoom("絵窓", "Y", 0, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef_カット汎用01.jpg");
	Zoom("絵窓/絵演背景", 0, 2500, 2500, null, true);
	Move("絵窓/絵演背景", 0, @0, @0, null, true);
	SetShade("絵窓/絵演背景", MEDIUM);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1530, center, middle, "cg/bu/bu千秋_驚天_shy.png");
	Move("絵窓/絵演立絵", 0, @-50, @-500, null, true);
	Zoom("絵窓/絵演立絵", 0, 2500, 2500, null, true);
	Request("絵窓/絵演立絵", Smoothing);


//動作
	Fade("絵窓/絵演立絵", 200, 1000, null, false);
	WindowAXLZoom("絵窓", "Y", 200, 1000, Dxl2, true);
	Move("絵窓/絵演立絵", 5000, @0, @-160, Dxl1, false);

	CreateSE("SE01","se擬音_ギャグ_セクシーボイス");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250a]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101050fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	WindowAXLZoom("絵窓", "Y",200, 0, Axl2, true);
	Delete("@絵窓*");

	St("C",700, @0,@50,"bu恵那_通常_hard");
	Move("@StNameC/C*", 300, @0, @-50, Dxl2, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101060fje">
「オーケー。わかったわ」

{	SetVolumeEX("SE*", 1000, 0, null);
	St("C",19010, @0,@0,"fu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101070fje">
「再検証が……必要ね」


{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101080fje">
「アッキーちゃん。
　女だったら、ゴメンナサイ！」

{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101090fje">
「でも、男だったら――」

{	St("C",700, @0,@0,"bu恵那_一休_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101100fje">
「っていうか、私の推理が正しかったら――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]

{	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101110fje">
「行くわよ！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/b21/340101120ujr">
「わう！」

{	DeleteAllSt(200,true);
	CreateSE("SE01","se擬音_ギャグ_ドカーン");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵背景１", 20, @0, @0, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");

	St("C",19010, @0,@150,"fu恵那_ハルヒ_angry");
	Zoom("絵背景１", 1000, 1000, 1200, DxlAuto, false);
	Move("@StNameC/C*", 2000, @0, @-150, Dxl2, false);
	Move("絵背景１", 2000, @0, @-50, Dxl2, false);
	Shake("絵背景１", 20000, 0, 10, 0, 0, 500, null, false);
	Shake("@StNameC/C*", 20000, 10, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101130fje">
「とりゃあああああッ！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@SE*", 2000, 0, NULL);

	SceneOut(20000, 150, "slide_02_00_1");


	Shake("@OnBG*", 0, 0, 0, 0, 0, 500, null, true);

	Delete("絵背景１");
	DeleteAllSt(0,false);
	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);
	Move("@OnBG*", 0, 0, 0, Dxl2, false);
	Zoom("@OnBG*", 00, 1000, 1000, DxlAuto, true);



	SceneIn(150, "slide_02_00_0");



	WaitKey(2000);


//◆ＳＥ：ぷにっ！
	CreateSE("SE01","se擬音_ギャグ_ぷに");
	MusicStart("SE01",0,700,0,1000,null,false);


//マスク準備
	CreateTextureEX("絵マ枠", 1500, 0, 0, "cg/mask/ciスラッシュ_02_00z.png");
	CreateMask("絵マ", 1100, 0, 0, "cg/mask/ciスラッシュ_02_00.png", false);
	CreateColorEX("絵マ/色", 100, "#cc3300");//952
	CreateTextureEXadd("絵マ/絵背景", 100, 0, 0, "cg/ef/ef003_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マ/絵立絵", 1000, center, -130, "cg/fu/fu恵那_ハルヒ_shock.png");//-28
	Request("絵マ/絵立絵", Smoothing);

	CreateSE("SE01a","se擬音_ギャグ_ガーン01");

//動作準備
	Rotate("絵マ/絵立絵", 0, @0, @0, -27, null, true);
	Zoom("絵マ*", 0, 2000, 2000, Dxl2, false);
	Zoom("絵マ/*", 0, 2000, 2000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{
//	St("C",700, @0,@0,"bu恵那_ハルヒ_sigh");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101140fje">
「あ……」

{
//動作
	MusicStart("SE01a",0,700,0,1000,null,false);

	Zoom("絵マ*", 200, 1000, 1000, Dxl2, false);
	Zoom("絵マ/*", 200, 1000, 1000, Dxl2, false);
	Fade("絵マ/*", 200, 1000, null, false);
	Fade("絵マ*", 200, 1000, null, true);

//	St("C",700, @0,@0,"bu恵那_ハルヒ_shock");
//	FadeSt("C",200,true);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b21/340101150fje">
「やっぱり、ついてる――！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateColorEXadd("フラッシュ白", 20000, "WHITE");

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景100", 100, Center, -450, "cg/bg/bg2401100空_上空_通常.jpg");
	Zoom("絵背景100", 0, 1100, 1100, null, true);
	Delete("絵マ/*");
	Delete("絵マ*");

	Move("絵背景100", 1000, @0, 0, AxlDxl, false);
	FadeDelete("絵板写", 300, null, true);
	Shake("絵背景100", 3000, 3, 0, 0, 0, 500, null, false);

//	Fade("フラッシュ白",2000,1000,null,false);
//	St("C",700, @0,@0,"bu千秋_通常_pain");
//	FadeSt("C",200,true);
//	Shake("@StNameC/*", 500, 5, 0, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b21/340101160kit">
「らめえええええ…………！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("フラッシュ白",500,1000,null,true);

	EndScene();
}
