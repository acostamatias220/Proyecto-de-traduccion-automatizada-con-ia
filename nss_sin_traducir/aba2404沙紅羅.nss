
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aba2404沙紅羅.nss_MAIN
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

	//★エンディング中（aba）
	//★エンドロール
	PreSetRoll(0);
	TheEND(0);

	$GameName = "";
	$GameCircle=false;
	$GameClear=true;
}

scene aba2404沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1560">
////////////header////////////
//file name "aba2404沙紅羅.nss"
//title "未来は今"
//previous "aba2403似鳥_ノーコ.nss"

////////////footer////////////
//flag "flaba"
//next  おしまい

//※↑条件分岐の書き方がよく分からないため飛び先設定未設置（mngw 10/14）


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1859);}
	Wait(1000);

//◆演出指定：原付乗りながら
	CreateColorSP("黒幕１", 20000, "BLACK");
	FadeDelete("上背景", 0, null, true);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/efバイク走行表現背景.jpg");
	MoveFFP1("@絵演背景",50);

	CreateTextureSPover("道線", 110, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	TurboBlur("@道線");

	Zoom("絵演背景", 0, 2000, 2000, null, true);

	CreateSE("SEL01","seメカ_バイク_走行_l");
	MusicStart("SEL01",2000,400,0,1500,null,true);

	WaitKey(2000);

	SetFrequency("SEL01", 3000, 1300, AxlDxl);
	//FadeDelete("上背景", 0, null, true);
	DrawDelete("黒幕１", 200, 100, Dxl1, "zzex_circle_01_00_1", false);
	Zoom("絵演背景", 200, 1100, 1100, Dxl1, true);
	Wait(1000);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100010skr">
「な……なんだったんだあのおっさん」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100020skr">
「足袋なのに、信じられねースピードだし」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100030skr">
「ったく、一難去ったらまた一難ってのはこのこと……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SEL01", 4000, 0, null);
	SceneOut(5000, 1000, "blind_01_00_0");
	
	WaitKey(100);

	MoveFFP1stop();
	Request("ProTurboBlur", Stop);
	Delete("Pro*");
	Delete("黒幕１");
	Delete("絵演背景");
	Delete("道線");

//※下倉注：ここは冒頭、ソトカンダーが落ちるところの再現なので、背景 bg1901100ショウビル_正面_通常 で。沙紅羅がバイクの上から見ている体で修正できると…… 2010/11/25

	OnBG(10,"bg1901100ショウビル_正面_通常");
	FadeBG(0,true);


	SoundPlay("@xbgm16",0,450,true);

	CreateTextureEX("絵背景スクロール１", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg.jpg");
	CreateTextureEX("絵背景スクロール２", 100, -3988, @0, "cg/ev/ex/ev0000沙紅羅原付ライダーb_exbg.jpg");

	SceneIn(1000, "blind_01_00_1");


//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演背景", 1520, Center, Middle, "cg/bg/l/bg1901100ショウビル_正面_通常_l.jpg");
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);
	Move("絵窓/絵演背景", 0, @0, @576, null, true);
	SetShade("絵窓/絵演背景", HEAVY);

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵ミリ", 10100, center, middle, "cg/bu/buミリＰa_通常_pinch.png");
	CreateTextureEX("絵窓/絵演立絵バリ", 10090, center, middle, "cg/bu/buＡＤ_通常_hard.png");
	Move("絵窓/絵演立絵ミリ*", 0, @0, @0, null, true);
	Move("絵窓/絵演立絵*", 0, @0, @70, null, true);


	CreateTextureEX("絵背景枠01", 12000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 12000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//	CutInLine02("@絵背景枠*");

//枠動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	Fade("フラッシュ白",500,0,null,true);

//キャラ動作
	Move("絵窓/絵演立絵バリ", 300, @300, @0, Dxl2, false);
	Move("絵窓/絵演立絵ミリ*", 300, @-300, @0, Dxl2, false);
	Fade("絵窓/絵演立絵ミリ", 300, 1000, null, false);
	Fade("絵窓/絵演立絵バリ", 300, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
{
//	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"buＡＤ_通常_hard");
//	FadeSt("C",200,true);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aba24/040100040adi">
「ミリＰさん、気をつけて下さいね！」

{
//	St("ML",700, @0,@0,"buミリＰa_通常_pinch");
//	DeleteAllSt(200,false);
//	FadeSt("ML",200,true);
}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/aba24/040100050mrp">
「言われなくたってわかってるわよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("絵窓", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("絵窓*");
	Delete("絵背景枠*");


	CreatePlainSP("揺用", 105);


	CreateTextureSP("絵背景ライダー", 102, center, middle, "cg/ev/ex/ev0000沙紅羅原付ライダーa_ex01.png");
	Request("絵背景ライダー", Smoothing);
	Move("絵背景ライダー", 0, -442, -800, Dxl1, false);
	Zoom("絵背景ライダー", 0, 1000, 1000, null, true);
	SetBlur("絵背景ライダー", true, 1, 300, 120, false);

	CreateSE("SE01","seメカ_バイク_エンジン加速");
	CreateSE("SE02","seメカ_バイク_走行_l");
	MusicStart("SE02",1500,300,0,1500,null,true);
	SetFrequency("SE02", 10000, 1500, AxlDxl);

	MoveFTP3("@絵背景ライダー", 2000, 6, 5);

	CreateSCR1("@絵背景スクロール１","@絵背景スクロール２",300,@3500,@0);


	Fade("揺用", 300, 0, null, true);
	Delete("揺用");




	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{
//	DeleteAllSt(200,true);
//	St("MR",700, @60,@0,"bu沙紅羅_通常_surprise");
//	Move("@StNameMR/MR*", 1000, @-60, @0, DxlAuto, false);
//	FadeSt("MR",1000,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100060skr">
「ん？　アレは――ロボット？
　ってか結構でかっ！！」

{
//	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
//	FadeSt("MR",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100070skr">
「さすがは秋葉原、ハンパねーな」

{
//	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
//	FadeSt("MR",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100080skr">
「駐車場に払う金もねぇもんな」

{
//	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
//	FadeSt("MR",200,true);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100090skr">
「とりあえず、原付停める場所は――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100100skr">
「ま、あの公園でいっか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);

	TextBoxDelete(150);

	MusicStart("SE01",0,800,0,1000,null,false);

	SetFrequency("SE02", 5000, 1600, AxlDxl);
	SetVolumeEX("SE02", 1000, 700, null);

	Shake("絵背景ライダー", 500, 3, 8, 0, 0, 1000, null, false);
	MoveFTP3stop();

	SetBlur("絵背景ライダー", false, 3, 500, 200, false);
	Move("絵背景ライダー", 2000, @-2500, @0, Axl2, 1000);

	SceneOut(5000, 1000, "blind_01_00_0");

	SetVolumeEX("SE01", 2000, 0, null);

	DeleteAllSt(0,false);
	Delete("@OnBG*");
	SCR1stop();
	Delete("絵背景*");

	WaitKey(1000);

{	ClockPass(1900);}


//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	SetFrequency("SE02", 5000, 600, AxlDxl);
	SetVolumeEX("SE02", 5000, 0, null);
	Wait(2000);

	SceneIn(1000, "blind_01_00_1");

	CreateSE("SE01a","seメカ_バイク_急停止");
	MusicStart("SE01a",0,700,0,1000,null,false);
	Wait(500);

	CreateSE("SE01","seメカ_バイク_エンジン停止");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100110skr">
「ん……しょ、と」

{	St("MR",700, @60,@0,"bu沙紅羅_通常_normal");
	Move("@StNameMR/MR*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("MR",1000,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100120skr">
「さて、と。同人誌探すには――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(500,false);
	CreateTextureEX("絵背景200", 500, Center, Middle, "cg/bg/l/bg1701100銭形公園_全景_通常_l.jpg");
	Move("絵背景200", 0, @0, @-100, null, true);
	Fade("絵背景200", 500, 1000, null, true);

	SoundPlay("@xbgm13",0,450,true);

	St("C",700, @0,@0,"buミヅハ_手構え_pride");
	FadeSt("C",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100130mzh">
「うむ！　けばぶとやら、美味かったぞ！
　褒めてつかわす！」

{	St("ML",700, @0,@0,"buみそa_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100140mso">
「おう、ホントにうめぇんだな」

{	St("MR",700, @0,@0,"buブーa_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100150buu">
「だろ？　コレが東京の味だぜ！」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100160mzh">
「して、次はなにを食わせてくれるのじゃ？」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100170buu">
「……おい、まだ食う気なのか？」

{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100180mso">
「もうそろそろ、家に帰る時間――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	Shake("絵背景200", 200, 5, 5, 0, 0, 500, null, false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100190mzh">
「馬鹿者めが何を言う！」


//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100200mzh">
「おぬしらはわらわを誘拐したのじゃぞ！」


//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100210mzh">
「ならば最後まで、礼を尽くすのが道理であろ！」


{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100220mso">
「でも……オレたち、好きで誘拐したワケじゃないしな」

{	St("MR",700, @0,@0,"buブーa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100230buu">
「お、おう！　もちろんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100240buu">
「本当は嫌で嫌でたまらなかったんだけどよ、河原屋一家の双一親分が命令するから仕方なく誘拐――」


{	DeleteAllSt(200,true);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100250skr">
「誘拐だと……！？」


{	SetVolumeEX("@xbgm*", 3000, 0, null);
	St("L",700, @0,@0,"buみそa_通常_fear");
	St("R",700, @0,@0,"buブーa_通常_shock");
	FadeSt("R",200,false);
	Shake("@StNameL/L*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100260mso">
「え？」

{	St("R",700, @0,@0,"buブーa_通常_pinch");
	Shake("@StNameR/R*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100270buu">
「この声……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1901);}

//	TextBoxDelete(150);

	Fade("絵背景200", 200, 0, null, false);
	DeleteAllSt(200,true);
	WaitKey(300);

	St("C",700, @60,@0,"bu沙紅羅_通常_normal");
	Move("@StNameC/C*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("C",1000,true);

{	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100280mso">
「姐さんッ！？」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/aba24/040100290buu">
//「姐さんッ！？」

</PRE>
	SetText();
	AddText(1,"「姐さんッ！？」","みそ","aba24/040100280mso",false,false,1000);
	AddText(2,"「姐さんッ！？」","ブー","aba24/040100290buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

{	SoundPlay("@xbgm07_noint",0,450,true);
	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070b]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100300skr">
「天誅ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev0000沙紅羅木刀アタック.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	SetBlur("絵背景100", true, 3, 500, 100, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景1000", 1100, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	SetBlur("絵背景1000", true, 3, 500, 50, false);

	Zoom("絵背景100", 300, 1000, 1000, Dxl1, false);
	Fade("絵背景100", 300, 1000, Dxl1, true);

	Zoom("絵背景1000", 200, 1500, 1500, Dxl1, false);
	Fade("絵背景1000", 200, 1000, Dxl1, true);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);


//◆ＳＥ：ドカバキ

	CreateSE("SE02","se戦闘_打撃音07");
	MusicStart("SE02",0,700,0,1000,null,false);

	Delete("絵背景100");
	Delete("絵背景1000");
	DeleteSt("C",0,true);

	DeleteAllSt(0,false);

	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",0,true);

	CreateColorSP("フラッシュ黒", 1500, "Black");

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

	Shake("@OnBG*", 500, 0, 10, 0, 0, 500, null, false);
	Shake("@StNameML/ML*", 500, 5, 5, 0, 0, 500, null, false);

	Fade("フラッシュ黒",300,0,null,true);
	Delete("フラッシュ黒");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]

//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100310mso">
「ふごっ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE03","se戦闘_打撃音06");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);

	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",0,true);

	Shake("@OnBG*", 500, 10, 0, 0, 0, 500, null, false);
	Shake("@StNameMR/MR*", 500, 5, 5, 0, 0, 500, null, false);
	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]

//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100320buu">
「ぎゃあ！！」


{	St("C",19010, @0,@0,"fu沙紅羅_木刀_rage");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100330skr">
「この、ろくでなしがあっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE03","se戦闘_殴打連続01");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);


	Shake("@OnBG*", 500, 10, 0, 0, 0, 500, null, false);
	Shake("@StNameMR/MR*", 500, 5, 5, 0, 0, 500, null, false);
	Fade("絵色白", 200, 0, null, true);

	WaitKey(300);

	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);


	Shake("@OnBG*", 500, 10, 0, 0, 0, 500, null, false);
	Shake("@StNameMR/MR*", 500, 5, 5, 0, 0, 500, null, false);
	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]


{	St("ML",700, @0,@0,"buみそa_通常_sad");
	Shake("@StNameML/ML*", 200, 5, 0, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100340mso">
「いで、ぎゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1902);}

	TextBoxDelete(0);

	CreateSE("SE03","se戦闘_殴打連続01");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);


	Shake("@OnBG*", 500, 10, 0, 0, 0, 500, null, false);
	Shake("@StNameMR/MR*", 500, 5, 5, 0, 0, 500, null, false);
	Fade("絵色白", 200, 0, null, true);

	WaitKey(300);

	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,false);


	Shake("@OnBG*", 500, 10, 0, 0, 0, 500, null, false);
	Shake("@StNameMR/MR*", 500, 5, 5, 0, 0, 500, null, false);
	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]

{	St("MR",700, @0,@0,"buブーa_通常_cry");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 200, 0, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100350buu">
「勘弁、勘弁！」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100360skr">
「この百野殺駆！　お天道様に顔向けならねぇことはすんなって、口酸っぱく言ってただろう！」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100370skr">
「それが……幼女誘拐だぁ？」

{	St("C",19010, @0,@0,"fu沙紅羅_木刀_rage");
	Shake("@StNameC/C*", 200, 5, 5, 0, 0, 500, null, false);
	Shake("@OnBG*", 200, 5, 5, 0, 0, 500, null, false);	
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100380skr">
「面汚しもいいところだろッ！！」


{	St("ML",700, @-120,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @120, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100390mzh">
「ら、乱暴はやめんかッ！」


//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100400mzh">
「こやつらは悪くない！　優しくしてくれた！
　けばぶもくれた！」


{	St("ML",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100410mzh">
「それに……怖じ気づいたこやつらを脅迫して、無理矢理誘拐させたのは、このミヅハ本人――」

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_rage");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100420skr">
「うるせぇ！　おめーは黙ってろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("MR",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100430skr">
「これは、アタシたちの問題だッ！」


{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100440mzh">
「止めぬというなら――」


{	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100450mzh">
「出てこいッ！　ふたりとも！」


{	DeleteAllSt(200,true);
	St("R",750, @0,@240,"st沙悟浄_通常_normal");
	FadeSt("R",200,false);
	Move("@StNameR/R*", 200, @0, @-250, DxlAuto, true);
	Move("@StNameR/R*", 400, @0, @10, DxlAuto, true);
	}
//【沙悟浄】
<voice name="沙悟浄" class="その他男声" src="voice/aba24/040100460e01">
「ヒョーヒョー！」

{	St("L",750, @0,@240,"st九千坊_通常_normal");
	FadeSt("L",200,false);
	Move("@StNameL/L*", 200, @0, @-250, DxlAuto, true);
	Move("@StNameL/L*", 400, @0, @10, DxlAuto, true);
	}
//【九千坊】
<voice name="九千坊" class="その他男声" src="voice/aba24/040100470e02">
「ガワッガワッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110a]
{	St("C",650, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100480skr">
「ん？　なんだぁ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("R",750, @240,@0,"st沙悟浄_通常_normal");
	FadeSt("R",200,false);
	
	CreateSE("SE04","se戦闘_打撃音01");
	MusicStart("SE04",0,700,0,1000,null,false);
	
	Move("@StNameR/R*", 100, @-300, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameR/R*", 300, @120, @0, Dxl1, true);

	CreateSE("SE05","se戦闘_打撃音01");
	MusicStart("SE05",0,700,0,1000,null,false);

	Move("@StNameR/R*", 100, @-130, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameR/R*", 200, @130, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110b]
//【沙悟浄】
<voice name="沙悟浄" class="その他男声" src="voice/aba24/040100490e01">
「ヒョーヒョー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("L",750, @-240,@0,"st九千坊_通常_normal");
	FadeSt("L",200,false);
	
	CreateSE("SE06","se戦闘_打撃音01");
	MusicStart("SE06",0,700,0,1000,null,false);
	
	Move("@StNameL/L*", 100, @300, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameL/L*", 300, @-120, @0, Dxl1, true);

	CreateSE("SE07","se戦闘_打撃音01");
	MusicStart("SE07",0,700,0,1000,null,false);

	Move("@StNameL/L*", 100, @130, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameL/L*", 200, @-130, @0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110c]
//【九千坊】
<voice name="九千坊" class="その他男声" src="voice/aba24/040100500e02">
「ガワッガワッ！」

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100510skr">
「イデッ！　ちょ――待て――イデデデデ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateSE("SE04","se戦闘_打撃音01");
	MusicStart("SE04",0,700,0,1000,null,false);
	
	Move("@StNameR/R*", 100, @-150, @0, Axl3, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameR/R*", 300, @150, @0, Dxl1, true);
	WaitKey(50);

	CreateSE("SE05","se戦闘_打撃音01");
	MusicStart("SE05",0,700,0,1000,null,false);

	Move("@StNameR/R*", 100, @-150, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameR/R*", 200, @150, @0, Dxl1, true);

	CreateSE("SE06","se戦闘_打撃音01");
	MusicStart("SE06",0,700,0,1000,null,false);
	
	Move("@StNameL/L*", 100, @150, @0, Axl3, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameL/L*", 300, @-150, @0, Dxl1, true);
	WaitKey(50);

	CreateSE("SE07","se戦闘_打撃音01");
	MusicStart("SE07",0,700,0,1000,null,false);

	Move("@StNameL/L*", 100, @150, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 10, 10, 0, 0, 500, null, false);
	Shake("@OnBG*", 100, 3, 3, 0, 0, 500, null, false);
	Move("@StNameL/L*", 200, @-150, @0, Dxl1, true);


	TextBoxDelete(150);

	CreateSE("SE08","se戦闘_殴打連続02");
	MusicStart("SE08",0,700,0,1000,null,true);

	CreateTextureEX("絵背景200", 8000, Center, Middle, "cg/bg/bg2401100空_上空_通常.jpg");
	Zoom("絵背景200", 0, 1100, 1100, null, true);
	Move("絵背景200", 0, @0, @-200, DxlAuto, false);

	Fade("絵背景200", 300, 1000, null, false);
	Move("絵背景200", 1000, @0, @300, DxlAuto, false);
	Shake("絵背景200", 3500, 5, 5, 0, 0, 500, null, false);

	Fade("絵色白", 500, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0115]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100520skr">
「ぎゃあああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);
	SetVolumeEX("SE08", 5000, 0, null);
	SetFrequency("SE08", 5000, 2000, null);

	TextBoxDelete(150);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);

{	ClockPass(1906);}
//◆演出指定：時間経過

	Delete("絵色白");

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

	Wait(2000);
	FadeDelete("上背景", 1000, null, true);


	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",2000,400,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　５分後――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	DeleteAllSt(0,true);
	Delete("絵背景200");
	Delete("Pro*");
	Delete("NutFFP*");
	FadeDelete("絵色黒", 1000, null, true);

{	SetComic(@-80,@-150,6);
	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);
	FadeComic();}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100530skr">
「…………」


　ケガだらけの仏頂面で、経緯を聞く沙紅羅がいた。


{
//	SoundPlay("@xbgm28",0,450,true);
	DeleteComic();
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100540buu">
「……と、いうことで」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100550buu">
「オレたちは、好きで誘拐したワケじゃないんです」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100560skr">
「……ホントか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"buみそa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100570mso">
「はい」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100580skr">
「間違いないな？」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100590mzh">
「うむ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100600skr">
「そうか……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 1000, @0, @60, DxlAuto, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100610skr">
「３人とも、誤解して、悪かった！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1907);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100620skr">
「スマン！　許してくれ！」

{	St("ML",700, @0,@0,"buみそa_オラオラ_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100630mso">
「姐さん、そんな！　やめてください！」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100640buu">
「オレたちが、間違ってたんですから……」

{	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100650mzh">
「そうじゃ！　おぬしも充分に罰は受けた！」


{	St("MR",700, @0,@0,"bu沙紅羅_放心_lost");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100660skr">
「しかし――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100670skr">
「許せねぇのは、その河原屋双一とかいうヤツだ！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100680skr">
「こんな子供を誘拐しようだなんて、いったいなにを考えてやがる！？」

{	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100690mzh">
「河原屋――双一」

{	SetVolumeEX("@xbgm*", 3000, 0, null);
	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100700mzh">
「あ……しまった！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100710skr">
「ん？　どうした、ミヅハ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@SE*", 2000, 0, null);


//	TextBoxDelete(150);

	SoundPlay("@xbgm03",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100720mzh">
「アザナエルが危ない！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100730skr">
「あざなえる……？」


{	CreateSE("SE00","se動作_走る05_l");
	MusicStart("SE00",0,700,0,1000,null,true);
	WaitKey(500);
	SetVolumeEX("SE00", 3000, 0, null);}


{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100740skr">
「ってオイ！　待て！」


//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100750skr">
「走るな！　こけるぞ！」

{	St("ML",700, @0,@0,"buみそa_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100760mso">
「こけるといたいぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"buブーa_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100770buu">
「パンツも見えるぞ！」

{	St("C",700, @120,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100780mzh">
「うるさい！　それどころではないのじゃ！」

{	Move("@StNameC/C*", 200, @-120, @0, DxlAuto, false);
	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buブーa_通常_ero");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100790buu">
「パンツ許可出ましたッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_rage");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100800skr">
「アホかッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE03","se戦闘_打撃音01");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,true);

	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",0,false);

	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	Shake("@OnBG*", 500, 10, 0, 0, 0, 500, null, false);
	Shake("@StNameMR/MR*", 500, 5, 5, 0, 0, 500, null, false);
	Fade("絵色白", 200, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]

//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100810buu">
「ふげっ！」


{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100820skr">
「ええいっ！　みそ！」

{	St("ML",700, @0,@0,"buみそa_オラオラ_pride");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100830mso">
「合点だ！」

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 200, @0, @-60, DxlAuto, false);
	DeleteSt("C", 200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100840mzh">
「ふぎゃっ！」

　ミヅハの身体を、みそはひょいと担ぎ上げる。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1908);}

{	PrintGO("上背景", 30000);
	CreateTextureSP("絵背景100", 200, 0, 0, "cg/bg/m/bg1701100銭形公園_全景_通常_m.jpg");
	St("ML",700, @0,@440,"buみそa_オラオラ_pride");
	FadeSt("ML",0,true);
	FadeDelete("上背景", 200, null, true);
	St("C",600, @30,@-120,"buミヅハ_フラット_shock");
	Move("@StNameC/C*", 200, @0, @120, DxlAuto, false);
	FadeSt("C",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185]

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100850mzh">
「う……うむ！　くるしゅうない！」


{	St("C",600, @0,@0,"buミヅハ_通常_smile");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100860mzh">
「この頭は非常に掴まりやすいぞ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	PrintGO("上背景", 30000);
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);
	St("C",700, @0,@0,"bu沙紅羅_通常_normal");
	Fade("絵背景100", 0, 0, null, false);
//	FadeDelete("絵背景100", 0, null, false);
	DeleteAllSt(0,false);
	FadeSt("C",0,true);
	FadeDelete("上背景", 200, null, true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100870skr">
「で、どっちに向かえばいいんだ！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	PrintGO("上背景", 30000);
	St("ML",700, @0,@440,"buみそa_オラオラ_pride");
	St("C",600, @30,@0,"buミヅハ_通常_hard");
	DeleteAllSt(0,false);
	CreateTextureSP("絵背景100", 200, 0, 0, "cg/bg/m/bg1701100銭形公園_全景_通常_m.jpg");
	Fade("絵背景100", 0, 1000, null, false);
	FadeSt("ML",0,false);
	FadeSt("C",0,true);
	FadeDelete("上背景", 200, null, true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100880mzh">
「あっちじゃ！」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	SceneOut(5000, 500, "blind_01_00_0");

	DeleteAllSt(0,false);
	Delete("@OnBG*");
	FadeDelete("絵背景100", 0, null, false);

	WaitKey(1000);

{	ClockPass(1909);}

//◆場所：半田明神_涸れ井戸
	CreateTextureSP("絵背景200_s", 1000, 0, 0, "cg/bg/bg0606100半田明神_涸れ井戸_通常.jpg");

	SceneIn(500, "blind_01_00_1");

	WaitKey(500);
	CreateTextureSP("絵背景200", 500, -800, 0, "cg/bg/l/bg0606100半田明神_涸れ井戸_通常_l.jpg");
	St("ML",700, @0,@440,"buみそa_オラオラ_normal");
	FadeSt("ML",0,false);
	St("C",600, @0,@-80,"buミヅハ_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("絵背景200_s", 1000, null, true);

	SoundPlay("@xbgm24",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]


//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100890mzh">
「むう……やはりッ！」



//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100900mzh">
「蓋が開いておる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵背景200_s", 1000, 0, 0, "cg/bg/bg0606100半田明神_涸れ井戸_通常.jpg");
	St("MR",1100, @0,@0,"bu沙紅羅_通常_shy");
	FadeSt("MR",200,true);

	St("C",700, @0,@-80,"buミヅハ_通常_angry");
	St("ML",700, @0,@440,"buみそa_オラオラ_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040100910skr">
「蓋が――！？」

{
	DeleteAllSt(200,false);
	FadeDelete("絵背景200_s", 200, null, false);
	FadeSt("ML",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100920mzh">
「潜るぞ！」


{	St("MR",1200, @0,@0,"buブーa_通常_sad");
	CreateTextureSP("絵背景200_s", 1000, 0, 0, "cg/bg/bg0606100半田明神_涸れ井戸_通常.jpg");
	FadeSt("MR",200,true);
	St("C",600, @0,@-80,"buミヅハ_通常_angry");
	St("ML",700, @0,@440,"buみそa_オラオラ_shock");
	}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040100930buu">
「え？　潜るって――」

{	DeleteAllSt(200,false);
	FadeDelete("絵背景200_s", 200, null, false);
	FadeSt("ML",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100940mzh">
「下じゃ！　この下で、今！
　アザナエルが盗まれかけておるのじゃ！」

{	St("C",600, @0,@-80,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100950mzh">
「ほれ、みそ！　早く降りろ！」

{	Shake("@StNameC/C*", 300, 0, 5, 0, 0, 500, null, false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100960mzh">
「ぺしぺし！」

{	St("ML",700, @0,@440,"buみそa_オラオラ_pinch");
	Shake("@StNameML/ML*", 200, 5, 0, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100970mso">
「やだ！」

{	St("C",600, @0,@-80,"buミヅハ_通常_angry");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040100980mzh">
「なんじゃと！？」


//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040100990mso">
「オレ……霊感は強い方なんだ……」



//【みそ】
<voice name="みそ" class="みそ" src="voice/aba24/040101000mso">
「この下からはなんか……
　とんでもなく……気味悪い気配が……ううっ！」

{	St("C",600, @0,@-80,"buミヅハ_通常_sigh");
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 500, null, false);
	Shake("絵背景200", 200, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040101010mzh">
「ぎゃっ！　ちょ！　足を掴むな！」

{	St("C",600, @0,@-80,"buミヅハ_通常_angry");
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/aba24/040101020mzh">
「わらわだけでも下ろして……こら！　離せ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureSP("絵背景200_s", 1000, 0, 0, "cg/bg/bg0606100半田明神_涸れ井戸_通常.jpg");
	St("MR",1200, @0,@0,"buブーa_通常_ero");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]

//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040101030buu">
「女児パンツポジション！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);
	CreateSE("SE04","se擬音_ギャグ_じゃじゃーん");
	MusicStart("SE04",0,700,0,1000,null,false);
	St("MR",1200, @0,@0,"buブーa_オラオラ_pride");
	FadeSt("MR",0,true);
	Fade("絵色白", 100, 0, null, true);
	Delete("絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235]
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040101040buu">
「ＫＥＥＰ！！」

{	St("ML",1200, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101050skr">
「バカやってんじゃねーぞ！」

{	St("ML",1200, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101060skr">
「おいブー！　懐中電灯」

{	St("MR",1200, @0,@0,"buブーa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040101070buu">
「は……はい！」

{	St("MR",1200, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/aba24/040101080buu">
「あ、でもこれしか――」

{	St("ML",1200, @0,@0,"bu沙紅羅_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101090skr">
「あー、はいはいブラックライトで我慢するよ」

{	St("ML",1200, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101100skr">
「おまえら、ここで待ってろよ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 1000, "blind_02_01_0");
	
	DeleteAllSt(0,false);
	Delete("@OnBG*");
	Delete("絵背景*");

	WaitKey(1000);


{	ClockPass(1910);}

//◆場所：地下_通路　地震後から変更
	OnBG(10,"bg0701100地下_通路_通常");
	FadeBG(0,true);

	SceneIn(1000, "blind_02_01_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("ML",700, @-120,@0,"bu沙紅羅_通常_normal");
	Move("@StNameML/ML*", 1000, @120, @0, DxlAuto, false);
	FadeSt("ML",1000,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101110skr">
「ん……横穴？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101120skr">
「気味悪ぃな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);


//	TextBoxDelete(150);


	DeleteAllSt(200,true);

//◆ＳＥ：きゅ！　狸の鳴き声
	CreateSE("SE05","se動物_タヌキ_鳴き声01");
	MusicStart("SE05",0,700,0,1000,null,false);
	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	Shake("@StNameML/ML*", 200, 0, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101130skr">
「ぉっ？！　なんだ！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	CreateAXLWindowEX("横割り", "Y",1500, 100,256, false);
	WindowAXLZoom("横割り", "Y",0, 0, null, true);
	CreateTextureSP("横割り/絵背景", 1400, 0, @-30, "cg/obj/objタヌキ小走り_横長.png");

	Shake("横割り/絵背景", 1500, 2, 5, 0, 0, 300, null, false);
	Wait(16);
	Delete("絵板写");

	WindowAXLZoom("横割り", "Y",300, 1000, Dxl2, true);

	CreateSE("SE04","se動物_タヌキ_走る_l");
	MusicStart("SE04",0,700,0,1000,null,false);
	WaitKey(1000);

	WindowAXLZoom("横割り", "Y",300, 0, Dxl2, false);
	FadeDelete("横割り/絵背景", 300, Dxl2, true);
	SetVolumeEX("SE04", 1500, 0, null);
	WaitKey(500);

	WaitAction("@横割り", null);
	Delete("@横割り*");

	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101140skr">
「狸……？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_shy");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101150skr">
「東京にも、いるんだな――」

{	DeleteAllSt(200,true);}

//◆ＳＥ：カラカラカラカラ、シリンダが回る音
{
	CreateSE("SE06","se銃_シリンダー回転");
	MusicStart("SE06",0,700,0,1000,null,false);
	WaitKey(1000);
}


{	St("ML",700, @0,@0,"bu沙紅羅_後ろ向き_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101160skr">
「ん……？」


{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101170skr">
「この音――奧から？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 1000, "blind_01_00_0");

	DeleteAllSt(0,false);
	Delete("@OnBG*");

//	SoundPlay("@xbgm14_inst",0,450,true);


{	ClockPass(1911);}
//◆場所：地下_祭壇
	OnBG(10,"bg0702100地下_祭壇_通常");
	Move("@OnBG*", 0, @0, -600, null, true);
	FadeBG(0,true);

	SceneIn(1000, "blind_01_00_1");

	Move("@OnBG*", 6000, @0, 0, DxlAuto, false);
	WaitKey(6000);
	Move("@OnBG*", 0, @0, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101180ksr">
「ちゃんと……当たってくれよ……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	OnBG(10,"bg0701100地下_通路_通常");
	DeleteAllSt(0,false);
	FadeBG(0,true);
	FadeDelete("絵板写", 200, null, true);

	St("ML",700, @-60,@0,"bu沙紅羅_通常_surprise");
	Move("@StNameML/ML*", 200, @60, @0, DxlAuto, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101190skr">
（――拳銃自殺！？）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	Move("@StNameML/ML*", 200, @120, @0, DxlAuto, false);
//	DeleteAllSt(200,true);

//	TextBoxDelete(150);

//	OnBG(10,"bg0702100地下_祭壇_通常");
//	Move("@OnBG*", 0, @0, 0, null, true);
//	FadeBG(200,true);
	St("C",19010, @0,@0,"fu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 10, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0285]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101200skr">
「おいバカ！　なにして――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	OnBG(10,"bg0702100地下_祭壇_通常");
	Move("@OnBG*", 0, @0, 0, null, true);
	FadeBG(200,true);

	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101210ksr">
「ん……？」

{	St("MR",700, @0,@0,"bu双六a_通常_sad");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101220ksr">
「おまえ……誰……」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101230ksr">
「…………ん？」

{	St("ML",700, @-60,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 500, @60, @0, DxlAuto, false);
	FadeSt("ML",500,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101240skr">
「アンタ……」

{	SoundPlay("@xbgm28",0,450,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101250skr">
「アタシと……どこかで、会ったこと……あるよな？」


{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101260ksr">
「…………さぁな」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101270ksr">
「いや、たぶん他人のそら似だろうよ」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101280ksr">
「じゃあな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1912);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0295]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101290skr">
「だから！　やめろって！」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101300ksr">
「おまえには、関係ないだろ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101310skr">
「関係あるッ！！」

{	St("MR",700, @0,@0,"bu双六a_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101320ksr">
「なんでだよ？」




//◆演出指定：沙紅羅、徐々に泣く

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101330skr">
「そりゃ……おまえ……」

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101340skr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101350ksr">
「…………」

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101360skr">
「……わかんないけど」

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101370skr">
「わかんないけど、でも――！」


//◆音声指示：小声
{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101380skr">
「待ちに待った運命の人……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//	SetVolumeEX("@xbgm*", 4000, 0, null);

	DeleteAllSt(200,true);

//◆ＳＥ：アザナエル投げ捨てる
	CreateSE("SE07","se銃_投げ捨てる");
	MusicStart("SE07",0,700,0,1000,null,false);
	WaitKey(1500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
{	St("MR",700, @0,@0,"bu双六a_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101390ksr">
「やめだ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101400skr">
「え？」

{	St("MR",700, @0,@0,"bu双六a_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101410ksr">
「ああっ！　やめだやめだ！」

{	St("MR",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101420ksr">
「そんな辛気くせぇ顔した奴の前で、死ねるかよ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101430skr">
「ホント……か？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101440ksr">
「ホントだホント！」

{	St("MR",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101450ksr">
「ったく！　腹立つぜ！」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101460ksr">
「てめぇのその泣きっ面見てるとよ、無性に苛つくわ！」

{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy2");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101470skr">
「…………ごめん」

{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101480ksr">
「来いよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
{	St("ML",700, @0,@0,"bu沙紅羅_乙女_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101490skr">
「え……？」

{	St("MR",700, @0,@0,"bu双六a_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101500ksr">
「来いっつってんだよ！」

{	St("MR",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101510ksr">
「その苛つく顔、ちゃんと直してやるっつってんだよ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101520skr">
「で、でもそんな――」


{	DeleteAllSt(200,true);}

//◆ＳＥ：腹が鳴る
{
	CreateSE("SE08","se人体_空腹");
	MusicStart("SE08",0,700,0,1000,null,false);
	WaitKey(1000);
}

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	SoundPlay("@xbgm27",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	St("MR",700, @0,@0,"bu双六a_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101530ksr">
「腹、減ってんだろ？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/aba24/040101540skr">
「…………うん」

{	St("MR",700, @0,@0,"bu双六a_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101550ksr">
「ウシ！　んじゃ――」


//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/aba24/040101560ksr">
「メシでも食い行ッか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	TextBoxDelete(150);
	WaitKey(1000);
	PrintFadeNut("上背景", 3000, true);
	DeleteSt("C", 0,true);
	Delete("@OnBG*");
	Delete("絵背景103");
	FadeDelete("上背景", 0, null, true);
	WaitKey(2000);
*/
	EndingReady();

	MoveFFP1stop();
	Delete("@ProT*");

	EndScene();
}
