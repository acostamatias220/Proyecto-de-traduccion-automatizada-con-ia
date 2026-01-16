
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2150沙紅羅_似鳥_ノーコ.nss_MAIN
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
		$GameName="ab2200沙紅羅.nss";
	}else if($CharaName=="似鳥"||$CharaName=="ノーコ"){
		GameBreak();//死亡
	}
}



scene ab2150沙紅羅_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1080">
////////////header////////////
//file name "ab2150沙紅羅_似鳥_ノーコ.nss"
//title "みちづれ"
//previous "ab2140沙紅羅_似鳥.nss"
//previous "2140ノーコ_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "ab2200沙紅羅.nss"

//next "似鳥"（"flkagome1b" = true） "aba2400恵那.nss"
//next "ノーコ"（"flkagome1b" = true） "aba2400恵那.nss"

//next "似鳥"（"flkagome1b" = false） "abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "ノーコ"（"flkagome1b" = false） "abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//あきゅん「演出：暗転開始スクリプト」

//■再定義定型文
	PrintBG("上背景", 30000);

	Delete("@OnBG*");
	DeleteAllSt(0,false);

	if($PreGameName=="ab2140沙紅羅_似鳥.nss"||$PreGameName=="2140ノーコ_フウリ.nss"){
	FadeDelete("上背景", 2000, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

{	ClockPass(2150);}


	SoundPlay("@xbgm09",0,450,true);

{	CreateTextureEX("ノーコ100", 19010, @-400, @-250, "cg2/fu/fuノーコa_通常_mad.png");
	Rotate("ノーコ100", 0, @0, @0, @180, null,true);
	Move("ノーコ100", 1000, @0, @60, DxlAuto, false);
	Fade("ノーコ100", 1000, 1000, null, true);}




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100010nko">
「――みつけた」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：風切り音
		CreateTextureEX("絵背景100", 19500, Center, Middle, "cg/ef/efカッター剣閃b.jpg");

		CreateSE("SE00","se戦闘_風切り音09");
		MusicStart("SE00",0,700,0,1000,null,false);

		Delete("ノーコ100");

		Wait(100);
		Fade("絵背景100", 100, 1000, null, true);

		Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
		Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

		Wait(200);
		Fade("絵背景100", 100, 0, null, true);
		Delete("絵背景100");


	CreateSE("SE02","se戦闘_ガラス割れる02");
	MusicStart("SE02",0,700,0,1000,null,false);


//◆ＳＥ：ガラス割る



	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	Delete("絵背景100");

//◆場所：似鳥マンション_リビング_同人誌散乱
	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);

	DeleteAllSt(0,true);
//	Shake("@OnBG*", 500, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 500, 10, 8, 0, 0, 1000, Dxl1, false);

	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500100020skr">
「げ！」

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100030nki">
「ノーコッ！？」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100040mrp">
「今、空飛んでこなかったッ！？」


{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100050nki">
「そういう設定になってるから」

{	St("MR",700, @0,@0,"buミリＰa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100060mrp">
「設定！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500100070skr">
「ダベってる場合じゃねーぞ」


{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500100080skr">
「おい似鳥！　外に――」

{	St("ML",700, @0,@0,"bu似鳥_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100090nki">
「おう！」

//あきゅん「修正指示：胴体切れてるのが見えるので修正して下さい」
//あきゅん「修正指示：動的な登場する場合、ＳＥを入れるようにしてください」
//※下から出現することも考えましたが、空中を移動してきて下から出てくる、というのも違う気がしたので左→右で歩くような出方にしました。（mngw 11/18）
{	St("MR",700, @-60,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @60, @0, DxlAuto, false);
	FadeSt("MR",200,true);
//	Move("@StNameMR/MR*", 300, @0, @-10, Dxl1, true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100100nko">
「むだ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2151);}


	TextBoxDelete(150);


		CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ev/ev0000ノーコカッターc.jpg");

	CreateSE("SE01","se戦闘_風切り音09");
	MusicStart("SE01",0,700,0,1000,null,false);

		Fade("絵背景100", 100, 1000, null, true);
		DeleteAllSt(0,true);

		Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
		Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);


		CreateTextureEX("絵背景200", 2100, Center, Middle, "cg/ef/efカッター剣閃b.jpg");

		Wait(100);

	CreateSE("SE01","se戦闘_風切り音02");
	MusicStart("SE01",0,700,0,1000,null,false);

		Fade("絵背景200", 100, 1000, null, true);

		Shake("絵背景200", 300, 5, 8, 0, 0, 1000, Axl1, false);
		Zoom("絵背景200", 300, 1200, 1200, Dxl2, false);

		Fade("絵背景100", 0, 0, null, true);
		Delete("絵背景100");

		Wait(200);
		Fade("絵背景200", 100, 0, null, true);
		Delete("絵背景200");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

{	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	Shake("@StNameC/C*", 300, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500100110skr">
「のわっ！」

{	St("MR",700, @0,@0,"buミリＰa_通常_shock");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 300, 5, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100120mrp">
「きゃああああっ！！」

{	St("MR",700, @0,@0,"buミリＰb_通常_pinch");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100130mrp">
「って、観客してる場合じゃないッ！」

{	St("MR",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100140mrp">
「重力を無視するかのように、ノーコちゃんが宙を舞った！
　予想も出来ない動きに、沙紅羅ちゃんは対応できない！」



//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100150mrp">
「外へと逃げ出す似鳥君を追いかけ――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

	PrintGO("上背景", 30000);


{	ClockPass(2152);}

//◆場所：似鳥マンション_正面
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@-90,"buノーコa_通常_normal");
	Move("@StNameMR/MR*", 1000, @0, @100, Axl1, false);
	FadeSt("MR",1000,true);
	Move("@StNameMR/MR*", 500, @0, @-10, Dxl1, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100160nko">
「にげられない」

{	St("ML",700, @60,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @-60, @0, DxlAuto, false);
	FadeSt("ML",200,true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100170nki">
「ひ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//◆演出指定：ここから、ミリＰは解説役的に使用する

//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	CreateTextureEX("スラッシュ", 2000, Center, Middle, "cg/mask/ciスラッシュ_05_01z.png");
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#FFAA33");
	CreateTextureEXmul("絵マスク/絵演背景", 1520, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Move("絵マスク/絵演立絵", 0, @280, @50, null, true);

//動作準備
	Move("絵マスク*", 0, @650, @0, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

//動作
	Move("絵マスク*", 300, @-650, @0, Dxl2, true);
	Fade("スラッシュ", 300, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, @-50, @-50, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100180mrp">
「似鳥君の前に、回り込んだ――！」


{	Move("絵マスク*", 200, @650, @0, Axl2, false);
	Fade("スラッシュ", 200, 0, null, false);
	DeleteAllSt(200,false);
	St("C",700, @-120,@0,"bu沙紅羅_通常_rage");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500100190skr">
「みそブー！　頼む！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("L",700, @-120,@0,"buみそa_オラオラ_pride");
	St("R",700, @-120,@0,"buブーa_オラオラ_shout");
	DeleteAllSt(200,false);
	Move("@StNameL/L*", 200, @120, @0, DxlAuto, false);
	FadeSt("L",200,true);
	Move("@StNameR/R*", 200, @120, @0, DxlAuto, false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/500100200mso">
「おうッ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/ab21/500100210buu">
//「おうッ！！」

</PRE>
	SetText();
	AddText(1,"「おうッ！！」","みそ","ab21/500100200mso",false,false,1000);
	AddText(2,"「おうッ！！」","ブー","ab21/500100210buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);
	DeleteAllSt(0,true);

	CreateSE("SE01","se擬音_ギャグ_リーゼント");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@0,"buみそa_オラオラ_angry");
	FadeSt("C",0,true);

	Shake("@OnBG*", 500, 5, 5, 0, 0, 500, null, false);

	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/500100220mso">
「リーゼントパチキッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	CreateSE("SE02","se擬音_ギャグ_アフロ");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("C",700, @0,@0,"buブーa_オラオラ_angry");
	FadeSt("C",0,true);

	Shake("@OnBG*", 500, 5, 5, 0, 0, 500, null, false);

	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/500100230buu">
「アフロスパイダ――――ッ！！」


{	Move("絵マスク*", 200, @-650, @0, Axl2, false);
	Fade("スラッシュ", 200, 1000, null, true);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100240mrp">
「な――なんだかよくわからないけど、みそブーがノーコちゃんに襲いかかったッ！」


{	Move("絵マスク*", 200, @650, @0, Axl2, false);
	Fade("スラッシュ", 200, 0, null, false);
	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100250nko">
「じゃま」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2153);}


	TextBoxDelete(0);


	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	CreateColorEXadd("絵色100", 1500, "WHITE");

	CreateSE("SE01","se戦闘_風切り音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色100", 50, 1000, null, true);

	Fade("絵背景100", 100, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");

	CreateTextureSPadd("絵背景100", 100, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	Zoom("絵背景100", 0, 1150, 1150, null, true);

//◆ＳＥ：ガキーン！！
	CreateSE("SE01","se戦闘_切断04");
	MusicStart("SE01",0,700,0,1000,null,false);


	Fade("絵色100", 200, 0, null, false);

	Shake("絵背景100", 300, 5, 5, 0, 0, 1000, Dxl1, false);
	FadeF4("絵背景100", 300, 10.0, 1000, 0, 0, Dxl2, false);
	Zoom("絵背景100", 300, 1050, 1050, null, true);

	Delete("絵色100");
	Fade("絵背景100", 100, 0, null, true);
	Delete("絵背景100");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]


{	St("ML",700, @0,@0,"buみそa_通常_fear");
	Shake("@StNameML/ML*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/500100260mso">
「ふがっ！」

{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/500100270buu">
「うぎゃっ！」


{	Move("絵マスク*", 200, @-650, @0, Axl2, true);
	Fade("スラッシュ", 200, 1000, null, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100280mrp">
「弾かれたッ！！」


{	CreateTextureEX("絵マスク/絵演立絵表情2", 1550, center, middle, "cg/bu/buミリＰb_ショータイム_pinch.png");
	Request("絵マスク/絵演立絵表情2", Smoothing);
	Move("絵マスク/絵演立絵表情2", 0, @230, @0, null, true);
	Fade("絵マスク/絵演立絵表情2", 200, 1000, null, true);
	Fade("絵マスク/絵演立絵", 200, 0, null, false);
	}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100290mrp">
「これは……弾いたノーコちゃんを褒めればいいのか……
　それとも、ふたりの髪の強靱さがすごいのか……」


{	Move("絵マスク*", 200, @650, @0, Axl2, false);
	Fade("スラッシュ", 200, 0, null, false);
	DeleteAllSt(200,false);
	St("C",700, @-120,@0,"bu沙紅羅_通常_rage");
	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500100300skr">
「畜生ッ！　ノーコてめぇ――」

{	St2("MR",700, @0,@0,"buノーコa_通常_mad","cg2/",".png");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100310nko">
「ちかづくな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指定：足元を弾くカッターナイフ

		CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");

		Wait(100);

		CreateSE("SE01","se戦闘_風切り音09");
		MusicStart("SE01",0,700,0,1000,null,false);

		Fade("絵背景100", 100, 1000, null, true);

		Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
		Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

		Wait(200);

		DeleteAllSt(0,true);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

		Fade("絵背景100", 0, 0, null, true);
		Delete("絵背景100");

	CreateSE("SE01","se戦闘_金属衝突02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@StNameC/C*", 500, 5, 5, 0, 0, 500, null, false);

	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");

	Delete("絵マスク/絵演立絵表情2");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @120,@0,"bu沙紅羅_通常_pain");
	Move("@StNameML/ML*", 200, @-120, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500100320skr">
「くッ！」

{
//マスク準備
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#FFAA33");
	CreateTextureEXmul("絵マスク/絵演背景", 1520, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_shout.png");
	Request("絵マスク/絵演立絵", Smoothing);
	Move("絵マスク/絵演立絵", 0, @280, @50, null, true);

//動作準備
	Move("絵マスク*", 0, @650, @0, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);

//動作
	Move("絵マスク*", 300, @-650, @0, Dxl2, true);
	Fade("スラッシュ", 200, 1000, null, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵", 200, @-50, @-50, Dxl2, true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500100330mrp">
「近づこうとする沙紅羅ちゃんの足元を、刃が牽制する」


{	Fade("スラッシュ", 200, 0, null, false);
	Move("絵マスク*", 200, @650, @0, null, true);
	}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500100340skr">
「アタシに……喝雄不死があれば……」


{	SetVolumeEX("@xbgm*", 5000, 0, null);
	SoundPlay("@xbgm24",0,450,true);
	St("MR",700, @0,@0,"buノーコa_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100350nko">
「ねえ、にとり」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100360nki">
「あ……ああ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100370nko">
「どうして……」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100380nko">
「どうして、わたしから、にげだしたの？」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100390nko">
「わたしが、きらい？」


{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100400nki">
「嫌いじゃない。でも、オレを助けてくれたノーコは、あくまで妄想彼女のノーコで……」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100410nki">
「現実になったら、ちょっとビビるって言うか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2154);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("MR",700, @0,@0,"buノーコa_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100420nko">
「いまでも？」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100430nki">
「…………」


{
	St("MR",700, @0,@0,"buノーコa_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100440nko">
「アザナエルは、そのひとのほんとうののぞみをかなえる」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100450nko">
「あなたはカゴメアソビにせいこうした」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100460nko">
「そして、わたしがげんじつになった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100470nko">
「だからこれは、ほんとうのねがい」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100480nko">
「にとり。みとめて」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100490nko">
「わたしが、あなたのねがいだって」


{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100500nki">
「現実になることを……オレは、願っていた……？」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100510nki">
「でも、なんのために……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2155);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100520nko">
「テレビ、みてたよ」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100530nko">
「にとりは、わたしのえを、かこうとした」

{	St("MR",700, @0,@0,"buノーコa_通常_pain");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100540nko">
「でも、かけなかった」

{	St("MR",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100550nko">
「なぜ？」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100560nki">
「それは……怖いから」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("MR",700, @0,@0,"buノーコa_幽霊_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100570nko">
「そう、こわい」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100580nko">
「じぶんをみんなのまえにさらけだすのが、こわい」

{	St("MR",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100590nko">
「でも、だったらにげる？」

{	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100600nko">
「むかしみたいに、もうそうににげこんで、わたしとてんせいごっこをする？」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100610nki">
「そんなこと……できない……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2156);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100620nki">
「オレはマンガが描きたくて……でも、描けない」

{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100630nki">
「オレは……オレはいったい、どうすれば……」

{	St("MR",700, @0,@0,"buノーコa_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100640nko">
「ほうほうは、あるよ」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100650nko">
「それがきっと、わたしがげんじつになったりゆう――」

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);
	St("MR",700, @0,@0,"buノーコa_通常_fear");}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100660nki">
「現実になった……理由……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//あきゅん「修正指示：最初の同人誌高速フラッシュバック」
//※対応しました（mngw 11/18）

	CreateTextureEX("絵背景１", 2000, Center, Middle, "cg/img/imgノーコントロール01.jpg");
	CreateTextureEX("絵背景２", 2000, Center, Middle, "cg/ev/l/ev0000ノーコカッターc_l.jpg");
	CreateTextureEX("絵背景３", 2000, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");

	Zoom("絵背景２", 0, 2000, 2000, null, true);
	Move("絵背景２", 0, -600, 300, null, true);

	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]


{	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);
	DeleteAllSt(0,false);
	Fade("絵背景１", 0, 1000, null, false);
	FadeDelete("絵色白", 5, null, true);
	WaitKey(50);
	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);
	Delete("絵背景１");
	FadeSt("MR",0,true);
	FadeDelete("絵色白", 200, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100670nko">
「どうして、わたしをつくったの？」

//あきゅん「修正指示：ノーコのカッター持ってる手元など高速フラッシュバック」
//※対応しました（mngw 11/18）
{	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵背景２", 0, 1000, null, false);
	FadeDelete("絵色白", 5, null, true);
	WaitKey(50);
	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);
	Delete("絵背景２");
	FadeDelete("絵色白", 200, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100680nko">
「どうして、カッターをもたせたの？」

//あきゅん「修正指示：血の雫など高速フラッシュバック」
//※対応しました（mngw 11/18）
{	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵背景３", 0, 1000, null, true);
	FadeDelete("絵色白", 5, null, true);
	WaitKey(50);
	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);
	Delete("絵背景３");
	FadeDelete("絵色白", 200, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100690nko">
「どうして、もうそうのなかでなんどもさされたの？」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100700nko">
「りゆうはかんたん」

{	St("MR",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100710nko">
「にとりは、そうするしか、にげばがないことをしっていたからだよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Delete("絵背景*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100720nki">
「逃げ場が……ない……」

{	St("ML",700, @0,@0,"bu似鳥_通常_smile");
	Shake("@StNameML/ML*", 300, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100730nki">
「あ……あは……あはははは……」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100740nki">
「そうか……そうか……そうだったのか……」



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100750nki">
「道理で、絵が描けなかったわけだ……」



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100760nki">
「オレは……殺されそうになって……
　強く、強く願ったんだ……それが本当の夢だったんだ」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100770nki">
「殺されるなら……最後のよりどころにするなら……」

{	St("ML",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100780nki">
「ノーコがいいって」


{	St("MR",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500100790skr">
「バカ野郎ッ！　てめぇなにぬかしてやがる――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2157);}

//	TextBoxDelete(150);

{	CreateTextureEX("絵背景200", 500, @-200, @-100, "cg/bg/l/bg1302100似鳥マンション_正面_通常_l.jpg");
	St("C",19010, -50,@0,"fu似鳥_通常_shout");
	DeleteAllSt(200,false);
	Fade("絵背景200", 200, 1000, null, false);
	FadeSt("C",200,true);}

	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100800nki">
「頼むから！」

{	St("C",19010, -50,@0,"fu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100810nki">
「頼むから、黙っててくれッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	PrintGO("上背景", 30000);

	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",0,true);
	Delete("絵背景200");
	
	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100820nki">
「あんたには、感謝してる！
　感謝してるけど、でも――」


{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100830nki">
「マンガを描こうとして――
　でも、それもできなくて――」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100840nki">
「自己嫌悪ばっかりで――
　前に一歩も進めなくて――」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100850nki">
「情けなくて――情けないんだけど――
　情けないことすら、忘れちまって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2158);}


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @0,@0,"bu似鳥_通常_rage");
	Shake("@StNameML/ML*", 300, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100860nki">
「そんなオレの気持ちッ！！
　おまえにわかるか――！！」

{	Shake("@StNameML/ML*", 300, 5, 5, 0, 0, 500, null, false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100870nki">
「これがッ！　オレのッ！　一番の望みで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景200", 1500, @-200, @-100, "cg/bg/l/bg1302100似鳥マンション_正面_通常_l.jpg");
	St("C",19010, -50,@0,"fu似鳥_通常_shout");
	Fade("絵背景200", 200, 1000, null, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 5, 5, 0, 0, 500, null, false);
	DeleteSt("ML", 200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100880nki">
「誰にも、邪魔はさせねぇんだッ！！」

{	St("MR",700, @0,@0,"bu沙紅羅_放心_lost");
	DeleteSt("C", 200,false);
	Fade("絵背景200", 200, 0, null, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500100890skr">
「似鳥……なんで……そんなこと……」


{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100900nki">
「だから……オレは……オレは……」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100910nko">
「にとり。いいよね」

{	St("ML",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100920nki">
「ああ。もうこれ以上、苦しみたくない」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100930nki">
「マンガが描けないオレに、意味なんてない」

{	SetVolumeEX("@xbgm*", 4000, 0, null);
	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100940nki">
「楽に……してくれ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆場所：似鳥マンション_正面
	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("MR",700, @0,@0,"buノーコa_通常_pain");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100950nko">
「…………うん」

{	SoundPlay("@xbgm28",1000,450,true);
	St("MR",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100960nko">
「あいのあかしの……やいば」

{	CreateTextureEX("絵背景201", 600, @-1000, @-100, "cg/bg/l/bg1302100似鳥マンション_正面_通常_l.jpg");
	St("C",19010, @0,@0,"fuノーコa_カッター_angry");
	DeleteSt("MR", 500,false);
	Fade("絵背景201", 500, 1000, null, false);
	FadeSt("C",500,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100970nko">
「にとり……だいすき、だよ」

{	CreatePlainSP("絵板写", 20000);
	CreateTextureEX("絵背景200", 1500, @-200, @-100, "cg/bg/l/bg1302100似鳥マンション_正面_通常_l.jpg");
	St("C",19010, @0,@0,"fu似鳥_通常_happy");
	DeleteAllSt(0,false);
	Fade("絵背景200", 0, 1000, null, false);
	FadeSt("C",0,true);
	FadeDelete("絵板写", 500, null, true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500100980nki">
「ああ……オレも、大好きだよ」

{	CreatePlainSP("絵板写", 20000);
	St("C",19010, @0,@0,"fuノーコa_カッター_angry");
	FadeSt("C",0,false);
	Fade("絵背景200", 0, 0, null, false);
	DeleteSt("ML", 0, true);
	FadeDelete("絵板写", 500, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500100990nko">
「いっしょに、いこう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演体", 19100, Center, 576, "cg/ef/effu似鳥_通常_胴体.png");
	CreateTextureEX("絵演体影", 19099, Center, 576, "cg/ef/effu似鳥_通常_胴体シルエット.png");
	CreateTextureEX("絵演首", 19110, Center, 576, "cg/ef/effu似鳥_通常_首.png");
	CreateTextureEX("絵演首影", 19109, Center, 576, "cg/ef/effu似鳥_通常_首シルエット.png");
	Request("絵演首", Smoothing);
	$YSetPoi=626-ImageHorizon("絵演体");
	Move("絵演*", 0, @0, $YSetPoi, null, true);
	SetVertex("絵演首*", 630, 680);

	CreatePlainSP("絵板写", 20000);
	Fade("絵背景200", 0, 1000, null, false);
	Fade("絵演体", 0, 1000, null, true);
	Fade("絵演首", 0, 1000, null, true);
	FadeDelete("絵板写", 500, null, false);
	DeleteSt("C", 500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0216]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/500101000nki">
「ああ。逝こう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//◆演出指定：殺害で生首ごろん
	CreateColorEX("絵色白", 19101, "#FFFFFF");

	CreateSE("SE01","se戦闘_切断04");
	CreateSE("SE02","se戦闘_切断03");
	Wait(16);

	SetVolumeEX("SE*", 100, 0, null);
	SetVolumeEX("@x*", 100, 0, null);
	MusicStart("SE01",0,700,0,1100,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(50);
	Fade("絵色白", 0, 1000, null, true);
	Wait(50);

	FadeDelete("絵色白", 50, null, false);

	Wait(1000);

	CreateSE("SE01","se人体_生首ズレル");
	CreateColorEX("絵色血", 19090, "#CC0000");


	MusicStart("SE01",0,1000,0,500,null,false);
	Wait(100);
	Move("絵演首*", 300, @-5, @20, null, true);
	Move("絵演首*", 10000, @-50, @300, null, false);

	Wait(2000);

	Fade("絵色血", 0, 1000, null, true);

	Fade("絵演体影", 0, 1000, null, true);
	Fade("絵演首影", 0, 1000, null, true);
	Fade("絵演体", 0, 0, null, true);
	Fade("絵演首", 0, 0, null, true);

	Move("絵演首*", 1500, @-50, @400, null, false);
	Rotate("絵演首*", 1700, @0, @0, @-110, null,true);

/*
	SetVolumeEX("@xbgm*", 500, 0, null);
	CreateSE("SE00","se戦闘_風切り音05");
	MusicStart("SE00",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");

		DeleteAllSt(200,true);
		Delete("@OnBG*");


	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, true);


	CreateSE("SE00","se戦闘_切断03");
	MusicStart("SE00",0,700,0,1000,null,false);
	Wait(100);

	CreateColorEXadd("絵色赤", 15000, "RED");
	Fade("絵色赤", 0, 1000, null, true);

		Fade("絵背景100", 0, 0, null, true);
		Delete("絵背景100");

	DeleteAllSt(200,false);
	Delete("@OnBG*");
	Delete("絵背景200");
	Delete("絵背景201");

	Fade("絵色赤", 2000, 0, null, true);

	WaitKey(500);
*/

	PrintGO("上背景", 20000);

	OnBG(10,"bg1302100似鳥マンション_正面_通常");
	FadeBG(2000,true);

	CreateSE("SE01","se人体_生首転がる");
	Delete("上背景");

	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50, 300, 0, 8, 0, 0, 1000, Dxl1, true);

{	ClockPass(2159);}
//◆場所：似鳥マンション_正面


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500101010skr">
「――――な」

{	St("R",700, @0,@0,"buみそa_オラオラ_pinch");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/500101020mso">
「くっ！」

{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/500101030buu">
「嘘……だ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("L",700, @0,@0,"buミリＰb_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("L",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/500101040mrp">
「映っちゃった……」


{	St("ML",700, @0,@0,"bu沙紅羅_放心_lost");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/500101050skr">
「なんて――なんてことを――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteSt("ML", 200,true);
	St("C",10, @0,@60,"buノーコa_幽霊_normal");
	Move("@StNameC/C*", 1000, @0, @-60, DxlAuto, false);
	FadeSt("C",1000,true);}

	CreateTextureEX("絵背効果景", 20, Center, Middle, "cg/bg/bg1302100似鳥マンション_正面_通常.jpg");
	Fade("絵背効果景", 500, 500, null, true);
	Wait(300);
	FadeDelete("絵背効果景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0232]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500101060nko">
「わたしは、にとりのゆめ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	Delete("@OnBG*");

	CreateColorSP("絵色黒", 10, "#000000");

	CreateTextureEX("絵演短刃下", 100, Center, Middle, "cg/img/imgカッターバラd.png");
	CreateTextureEX("絵演短刃上", 120, Center, Middle, "cg/img/imgカッターバラb.png");
//	CreateTextureEX("絵演短刃止", 120, 255, -145, "cg/img/imgカッターバラa.png");
	CreateTextureEX("絵演短刃刃", 115, 573, -1086, "cg2/img/imgカッターバラc.png");
	Move("@絵演短刃*", 0, @512, @0, null, true);

	FadeDelete("上背景", 300, null, true);

	Fade("絵演短刃*", 0, 1000, null, true);
	Move("@絵演短刃*", 2000, @-512, @0, DxlAuto, true);

	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵演短刃刃", 2000, 372, -970, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500101070nko">
「だから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@絵演短刃*", 2000, @0, @-350, DxlAuto, true);

	CreateTextureEX("絵演首刺", 100, 1024, Middle, "cg/fu/fuノーコb_通常_smile.png");
	CreateTextureEX("絵演首刺影", 2001, 1024, Middle, "cg/ef/effuノーコ_通常シルエット.png");
	$XStartPos=0-ImageHorizon("絵演首刺");
	$YStartPos=676-ImageVertical("絵演首刺");
	Move("絵演首刺*", 0, $XStartPos, $YStartPos, null, false);
	Fade("絵演首刺", 0, 1000, null, true);

	Move("絵演首刺*", 3000, -930, @0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0235b]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/500101080nko">
「わたしも、さよなら」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(300);

	CreateTextureSP("絵演短刃合成", 110, -280, 576, "cg/img/l/imgカッター刃元b_x02.png");
	Request("絵演短刃合成", Smoothing);
	Zoom("絵演短刃合成", 0, 700, 700, null, true);
	Rotate("絵演短刃合成", 0, @0, @0, @210, null,true);

	Move("絵演短刃合成", 3000, -160, 180, null, true);

	Wait(2000);

	CreateSE("SE01","se戦闘_血しぶき02");
	CreateTextureEX("絵演効果血", 2000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	CreateColorEX("絵色血", 20000, "#CC0000");
	Rotate("絵演効果血", 0, @0, @180, @0, null,true);
	Zoom("絵演効果血", 0, 1050, 1050, null, true);
	Wait(16);
	MusicStart("SE01",0,1200,0,1000,null,false);

	Wait(200);

	Fade("絵演効果血", 0, 1000, null, true);
	Fade("絵演首刺影", 0, 1000, null, true);
	Fade("絵演短刃合成", 0, 0, null, true);

	Wait(500);

	Fade("絵色血", 3000, 1000, null, true);

/*
	CreateSE("SE00","se戦闘_風切り音05");
	MusicStart("SE00",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/efカッター剣閃b.jpg");

		DeleteAllSt(200,true);
		Delete("@OnBG*");


	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, true);

//◆ＳＥ：ブシュー！　血が噴き出す

	CreateSE("SE01","se戦闘_血しぶき02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色赤", 15000, "RED");
	Fade("絵色赤", 0, 1000, null, true);

		Fade("絵背景100", 0, 0, null, true);
		Delete("絵背景100");

	DeleteAllSt(0,true);
	Delete("@OnBG*");

	Wait(100);

	Fade("絵色赤", 4000, 0, null, true);
*/

	Delete("絵色赤");
	Delete("絵マスク*");
	Delete("絵マスク/絵演立絵");

	WaitKey(3000);

	EndScene();
}
