
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1930沙紅羅.nss_MAIN
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
	$GameName = "1942沙紅羅_ノーコ.nss";

}

scene 1930沙紅羅.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="460">
////////////header////////////
//file name "1930沙紅羅.nss"
//title "突入せよ！　あにのあな！"
//previous "1920沙紅羅_千秋.nss"

////////////footer////////////
//next "沙紅羅" "1942沙紅羅_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆時間：ジャンプ

{	ClockPass(1933);}


//◆場所：あにのあな_正面_停電
	OnBG(10,"bg0301211あにのあな_正面_停電");
	FadeBG(0,true);
	CreateTextureSP("絵背景BG", 100, Center, middle, "cg/bg/bg0301211あにのあな_正面_停電.jpg");

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

	Move("@絵背景BG", 1000, @0, -1150, AxlDxl, true);

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400010skr">
「ふふふふふ……」

{	St("C",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400020skr">
「帰ってきたぜ！　あにのあな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1934);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指定：とらのあな内部から阿鼻叫喚の声が聞こえる
	CreateWindow("win01", 1500, 0, 96, 1024, 384, false);
	SetAlias("win01","win01");

	CreateTextureSP("win01/絵背景100", 1000, Center, Middle, "cg/bg/bg0302211あにのあな_店内_停電.jpg");
	Zoom("win01", 0, 1000, 0, null, true);
	Zoom("win01/絵背景100", 0, 1200, 1200, null, true);
//	Fade("win01/絵背景100", 0, 1000, null, true);

	CreateTextureEX("絵背景枠01", 12000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 12000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");


	CutInLine02("@絵背景枠*");

	CreateSE("SE01","seガヤ_客暴動_l");
	MusicStart("SE01",1000,700,0,1000,null,true);


//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);

	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("win01", 200, 1000, 1000, null, true);

	Shake("win01/絵背景100", 1000, 10, 10, 0, 0, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/300400030e07">
「うおおおおおお！！」

{	Shake("win01/絵背景100", 500, 3, 2, 0, 0, 1000, null, false);}
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/300400040e08">
「それはオレの本だあああ！！」

{	Shake("win01/絵背景100", 500, 3, 5, 0, 0, 1000, null, false);}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/300400050e09">
「ＵＲＹＹＹＹＹＹ！！」

{	Shake("win01/絵背景100", 500, 10, 1, 0, 0, 1000, null, false);}
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/300400060e10">
「殺してでも奪い取る！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 1000, 0, null);

	Move("絵背景枠01", 100, @0, 262, null, false);
	Move("絵背景枠02", 100, @0, 262, null, false);
	Zoom("win01", 100, 1000, 0, null, true);
	Fade("絵背景枠*", 100, 0, null, true);
	Delete("win01*");
	CutInLineStop02();
	Delete("絵背景枠*");

	CreateSE("SE10","seガヤ_交通少_l");
	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE10",2000,500,0,1000,null,true);
	MusicStart("SE11",2000,800,0,1000,null,true);

	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400070skr">
「相変わらず――戦場だな」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400080skr">
「だがしかし！　アタシは行かなきゃなんねー」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400090skr">
「犠牲になった、弟子のためにもな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	ClockPass(1935);}

//◆演出指定：背後から声がしているが、無視してストーリーが進む



	CreateTextureEX("絵背景100", 200, Center, Middle, "cg/bg/bg0103111秋葉原_中央通り_通常.jpg");
	Fade("絵背景100", 300, 1000, null, true);

	St("R",700, @+50,@0,"stみそa_通常_smile");
	Move("@StNameR/R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300400100mso">
「あ！　みつけたー！」

{	St("L",700, @-50,@0,"stブーa_通常_happy");
	Move("@StNameL/L*", 200, @+50, @0, Dxl1, false);
	FadeSt("L",200,true);}
//◆音声指示：遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/300400110buu">
「沙紅羅姐さんッ！」

{	St("C",700, @10,@0,"stミヅハ_通常_smile");
	FadeSt("C",200,true);}
//◆音声指示：遠くから
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/19/300400120mzh">
「そうか、アレがおぬしたちの頭領じゃな！」

{	St("R",700, @0,@0,"stみそa_通常_shout");
	FadeSt("R",200,true);}
//◆音声指示：遠くから
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300400130mso">
「ま、待ってください！」

{	St("L",700, @0,@0,"stブーa_通常_shock");
	FadeSt("L",200,true);}
//◆音声指示：遠くから
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/300400140buu">
「聞こえてますか、沙紅羅姐さーん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：ここ、バックで1940ノーコ.nssのみそブーバカ会話を薄く流しておくかもしれない

	CreateTextureEX("絵背景200", 1000, Center, -1150, "cg/bg/bg0301211あにのあな_正面_停電.jpg");
	Fade("絵背景200", 300, 1000, null, true);

	DeleteAllSt(0,true);
	Delete("絵背景100");
	Delete("絵背景200");

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400150skr">
（弟子よ！　許せ！）

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400160skr">
（虎は子供を谷に突き落とす！
　虎穴から這い上がって、強くなるためなんだ……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400170skr">
（それに今回は、人の命がかかってる――）

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400180skr">
（ここで、どーじんしを諦めるわけにはいかねーんだ！）

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400190skr">
（おまえの死は――無駄にしない！）

//◆ＳＥ：カチッ！　懐中電灯のスイッチを入れる音
{	CreateSE("SE01","se動作_ライト点ける");
	MusicStart("SE01",0,1000,0,1000,null,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400200skr">
「いざ！　戦場へ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1936);}


	TextBoxDelete(150);

	SetVolumeEX("SE*", 1000, 0, null);

	Move("@StNameC/C*", 200, @+100, @0, Axl1, false);
	DeleteSt("C",200,true);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：あにのあな_店内_停電
	CreateColorSPmul("絵停電色", 2999, "BLUE");
	Fade("絵停電色", 0, 300, null, true);
	CreateColorSP("絵色黒幕２", 1500, "BLACK");
	CreateColorSP("絵色黒幕３", 1500, "BLACK");
	DrawTransition("絵色黒幕２", 0, 400, 400, 250, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色黒幕３", 0, 400, 400, 250, null, "cg/data/slide_06_00_0.png", true);
	Fade("絵色黒幕３", 0, 500, null, true);
	Fade("絵色黒幕２", 0, 900, null, true);

//◆ＳＥ：合戦ＳＥ・ホラ貝とか鳴る
	OnBG(100,"bg0302211あにのあな_店内_停電");
	FadeBG(0,true);
	CreateTextureSP("絵背景BG", 100, Center, -350, "cg/bg/l/bg0302211あにのあな_店内_停電_l.jpg");
	Request("絵背景BG", Smoothing);
	Zoom("絵背景BG", 0, 800, 800, null, true);

	CreateSE("SE01","seガヤ_合戦_l");
	CreateSE("SE02","se擬音_ホラ貝");
	CreateSE("SE03","seガヤ_客暴動_l");


	MusicStart("SE01",1000,1000,0,1000,null,true);


	CreateTextureSP("絵背景1", 1, Center, Middle, "cg/bg/l/bg0302211あにのあな_店内_停電_l.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	CreateTextureEX("絵背景10", 1000, Center, Middle, "cg/bg/l/bg0302211あにのあな_店内_停電_l.jpg");
	SetBlur("絵背景10", 2, true, 400, 300,false);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,true);

	Fade("絵背景10", 0, 500, Dxl1, true);
	Shake("@絵背景BG*", 500, 0, 1, 0, 0, 1000, null, false);
	Zoom("絵背景10", 300, 2000, 2000, Dxl1, false);
	Fade("絵背景10", 300, 0, null, true);
	Zoom("絵背景10", 0, 1000, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/300400210e07">
「うおおおおお！！」

{	Fade("絵背景10", 0, 500, Dxl1, true);
	Shake("@絵背景BG*", 500, 2, 1, 0, 0, 500, null, false);
	Zoom("絵背景10", 300, 2000, 2000, Dxl1, false);
	Fade("絵背景10", 300, 0, null, true);
	Zoom("絵背景10", 0, 1000, 1000, Dxl1, true);}
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/300400220e08">
「突撃ぃぃ！！」

{	Fade("絵背景10", 0, 500, Dxl1, true);
	Shake("@絵背景BG*", 500, 2, 3, 0, 0, 500, null, false);
	Zoom("絵背景10", 300, 2000, 2000, Dxl1, false);
	Fade("絵背景10", 300, 0, null, true);
	Zoom("絵背景10", 0, 1000, 1000, Dxl1, true);}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/300400230e09">
「ちぇすと――ッ！！」

{	Fade("絵背景10", 0, 500, Dxl1, true);
	Shake("@絵背景BG*", 500, 10, 10, 0, 0, 500, null, false);
	Zoom("絵背景10", 300, 2000, 2000, Dxl1, false);
	Fade("絵背景10", 300, 0, null, true);
	Delete("絵背景10");}
//【オタクＦ】
<voice name="オタクＦ" class="その他男声" src="voice/19/300400240e10">
「天誅ッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1937);}

	SetVolumeEX("SE01", 2000, 300, null);
	SetVolumeEX("SE03", 2000, 300, null);

	SoundPlay("@xbgm22",0,450,true);

	St("C",2001, @+50,@0,"bu沙紅羅_頭かき_sigh");
	Move("@StNameC/C*", 200, @-50, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400250skr">
「合戦！？」

{	St("C",2001, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400260skr">
（な……なんて所だ……）

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400270skr">
（本当に、こんな所を最上階まで行けるのか……？）

{	DeleteSt("C",200,true);}
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/19/300400280e07">
「邪魔だあっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	ClockPass(1938);}



	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	St("C",2001, @+100,@0,"bu沙紅羅_通常_pain");
	FadeSt("C",0,true);


	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400290skr">
「ぐはっ！」

{	St("C",2001, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400300skr">
（ちっ！　なかなかやるじゃねーか！）

{	St("C",2001, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400310skr">
（怯むわけには、いかねーな！）

{	St("C",2001, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400320skr">
「うおおおおおおおおおおお！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400330skr">
「ブチカマシたらあああああッ！！」

{	DeleteSt("C",200,true);
	St("C",2001, @-50,@0,"fu沙紅羅_通常_shout");
	CreateSE("SE02","se戦闘_風切り音06");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @+50, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400340skr">
「ふんっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1939);}


	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_打撃音07");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	DeleteAllSt(0,true);
	Shake("@絵背景BG*", 300, 1, 3, 0, 0, 1000, null, false);
	Fade("フラッシュ白",100,0,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/19/300400350e08">
「のわっ！」

{	St("MR",2001, @+50,@0,"fu沙紅羅_通常_shout");
	CreateSE("SE02","se戦闘_風切り音06");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameMR/MR*", 200, @-50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400360skr">
「そいやっ！」

{	Fade("フラッシュ白",0,1000,null,true);
	DeleteAllSt(0,true);
	CreateSE("SE01","se戦闘_打撃音03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@絵背景BG*", 300, 1, 3, 0, 0, 1000, null, false);
	St("ML",700, @0,@0,"buみそa_通常_sad");
	FadeSt("ML",0,true);
	Shake("@StNameML/ML*", 500, 5, 0, 0, 0, 500, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Move("@StNameML/ML*", 200, @0, @+100, Dxl1, false);
	DeleteSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/19/300400370mso">
「うぎゃっ！」

{	ClockPass(1940);}

{	St("ML",2001, @-50,@0,"fu沙紅羅_通常_shout");
	CreateSE("SE02","se戦闘_風切り音05");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameML/ML*", 200, @+50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400380skr">
「どけッ！」

{	Fade("フラッシュ白",0,1000,null,true);
	DeleteAllSt(0,true);
	CreateSE("SE01","se戦闘_打撃音03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@絵背景BG*", 300, 1, 3, 0, 0, 1000, null, false);
	St("MR",700, @0,@0,"buブーa_通常_shock");
	FadeSt("MR",0,true);
	Shake("@StNameMR/MR*", 500, 5, 0, 0, 0, 500, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Move("@StNameMR/MR*", 200, @0, @+100, Dxl1, false);
	DeleteSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/19/300400390buu">
「むにゃむ……ごふっ！」

{	St("C",2001, @0,@+100,"fu沙紅羅_通常_shout");
	CreateSE("SE02","se戦闘_風切り音10");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400400skr">
「てや――」

{
	CreateSE("SE02","se戦闘_風切り音05");
	MusicStart("SE02",0,700,0,1000,null,false);
}
//【オタクＥ】
<voice name="オタクＥ" class="その他男声" src="voice/19/300400410e09">
「クロスカウンター！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("フラッシュ白",0,1000,null,true);

	CreateSE("SE01","se戦闘_打撃音07");
	MusicStart("SE01",0,1000,0,1000,null,false);
	St("C",2001, @0,@0,"fu沙紅羅_通常_pain");
	FadeSt("C",0,true);
	Shake("@StNameC/C*", 500, 5, 0, 0, 0, 500, null, false);
	Fade("フラッシュ白",300,0,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400420skr">
「ぐはあっ！！」

{	Move("@StNameC/C*", 200, @0, @+100, Dxl1, false);
	DeleteSt("C",200,true);
	Wait(300);
	CreateSE("SE01","se人体_倒れる05");
	MusicStart("SE01",0,700,0,1500,null,false);
}
　暗闇の中、沙紅羅は強烈な一撃を喰らい膝をつく。

{	ClockPass(1941);}
{	St("C",2001, @0,@50,"bu沙紅羅_通常_pinch");

	Shake("@StNameC/C*", 400, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 400, @0, @-50, Dxl1, false);
	FadeSt("C",400,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400430skr">
（このアタシが……負けただと？）

{	St("C",2001, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400440skr">
（くそっ！　荷物を捨てて身軽に――）

{	St("C",2001, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400450skr">
（いや、駄目だ！
　弟子が言うには、コイツは貴重な品！）

{	St("C",2001, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/19/300400460skr">
（一応、どっかに置いてこなきゃ――）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("@StNameC/C*", 200, @-200, @0, Axl1, false);
	DeleteSt("C",200,true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵停電色");
	Delete("絵色黒幕*");

	Wait(500);


	EndScene();
}
