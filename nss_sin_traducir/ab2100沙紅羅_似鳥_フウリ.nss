
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2100沙紅羅_似鳥_フウリ.nss_MAIN
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
		$GameName = "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss";
	}else if($CharaName=="フウリ"){
		$GameName = "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss";
	}else{
		$GameName = "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss";
	}

//	$GameName = "";
//	$GameCircle=false;

}

scene ab2100沙紅羅_似鳥_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="660">
////////////header////////////
//file name "ab2100沙紅羅_似鳥_フウリ.nss"
//title "突然デザイナー"
//previous "aa2050沙紅羅_フウリ.nss"
//previous "ab2051似鳥.nss"

////////////footer////////////
//next "沙紅羅" "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss"
//next "似鳥" "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss"
//next "ノーコ" "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss"
//next "フウリ" "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	Wait(16);

{	ClockPass(2100);}


	if($PreGameName=="ab2051似鳥.nss")
	{

	SetVolumeEX("@xbgm*", 500, 0, null);

	SceneOut(20000, 0, "blind_01_00_0");
	Wait(16);

//◆場所：ＵＰ＋_屋外セット
	CreateTextureEX("絵背景000", 60, Center, Middle, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	Move("絵背景000", 0, @0, @-290, null, true);
	Fade("絵背景000", 0, 1000, null, true);

	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	CreateTextureEX("絵背景100", 80, Center, Middle, "cg/bg/m/bg1201211ＵＰ＋_屋外セット_炎上_m.jpg");
	SetShade("絵背景100", HEAVY);
	Move("絵背景100", 0, @0, @0, null, true);
	Request("絵背景100", Smoothing);

	FadeDelete("上背景", 0, null, true);
	SceneIn(1000, "blind_02_00_1");
	Wait(16);
	Shake("@OnBG*", 500, 10, 0, 0, 0, 500, null, false);

//	}else if($CharaName=="沙紅羅"||$CharaName=="フウリ"){
	}else{

	SoundPlay("@xbgm03",0,450,true);

	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	CreateTextureEX("絵背景000", 60, Center, Middle, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	Fade("絵背景000", 0, 1000, null, false);
	Move("絵背景000", 0, @0, @-290, null, true);

	CreateTextureEX("絵背景100", 80, Center, Middle, "cg/bg/m/bg1201211ＵＰ＋_屋外セット_炎上_m.jpg");
	SetShade("絵背景100", HEAVY);
	Move("絵背景100", 0, @0, @0, null, true);
	Request("絵背景100", Smoothing);

	Wait(16);
	DrawDelete("@上背景", 200, 100, null, "slide_01_03_0", true);
	Wait(16);
	Shake("絵背景000", 500, 10, 0, 0, 0, 500, null, false);

	}

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se動作_マンホールずらす");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(1000);

//◆演出指定：ズズズ――マンホールが押しのけられ、地中から似鳥が出てくる

{	St("C",700, @0,@60,"bu似鳥_通常_angry");
	Move("@StNameC/C*", 1000, @0, @-60, DxlAuto, false);
	FadeSt("C",1000,true);
	WaitKey(500);}
{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200010nki">
「あれ？」


{	St("C",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200020nki">
「ここ……どこ？」

{	DeleteAllSt(200,false);
	Fade("絵背景000", 200, 0, null, false);

	if($PreGameName=="ab2051似鳥.nss"){
	SoundPlay("@xbgm07_noint",0,450,true);
	}

	St("ML",700, @-200,@0,"bu沙紅羅_通常_surprise");
	Move("@StNameML/ML*", 300, @200, @0, Dxl2, false);
	FadeSt("ML",300,true);
	Shake("@StNameML/ML*", 100, 10, 0, 0, 0, 500, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000200030skr">
「うおっ！　邪魔――」

{	DeleteAllSt(200,false);
	Fade("絵背景000", 200, 1000, null, false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200040nki">
「へ？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	Fade("絵背景000", 200, 0, null, false);
	Fade("絵背景100", 200, 1000, null, false);


	St("C",19010, @0,@0,"fu似鳥_通常_shock");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 1000, 10, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200050nki">
「ぎゃあああああああああああああああ」


{	DeleteSt("C", 200,true);
	St("C",19010, @0,@0,"fu沙紅羅_頭かき_sigh");
	Shake("@StNameC/C*", 1000, 10, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000200060skr">
「ぎゃあああああああああああああああ」


{
//◆ＳＥ：落下する
	CreateSE("SE01","se擬音_ギャグ_落下");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameC/C*", 200, @0, @1200, Dxl2, false);
	DeleteSt("C", 200,true);
	SceneOut(5000, 500, "slide_02_01_1");
	}


　マンホールから飛び出した似鳥を、沙紅羅が踏む。

　一緒に落ちる。


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreatePlainSP("絵板写", 20000);

	Fade("絵背景100", 0, 0, null, false);
	Delete("@OnBG*");
	DeleteAllSt(0,true);

	SceneIn(0, "blind_01_00_1");

	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	FadeDelete("絵板写", 500, null, true);

	St("ML",700, @-60,@0,"stみそa_通常_pinch");
	Move("@StNameML/ML*", 200, @60, @0, DxlAuto, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]

//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000200070mso">
「あああああ、姐さーん！！」

{	St("MR",700, @-60,@0,"stブーa_通常_shock");
	Move("@StNameMR/MR*", 200, @60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000200080buu">
「大丈夫ですかッ！？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,true);

	Fade("絵背景100", 0, 1000, null, false);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

//	DeleteAllSt(0,true);
	St("C",900, @0,@100,"bu平次_御用だ_shout");
	Move("@StNameC/C*", 200, @0, @-100, DxlAuto, false);
	FadeSt("C",200,false);
	Shake("絵背景*", 300, 10, 10, 0, 0, 500, null, false);
	Shake("@StNameC/C*", 300, 0, 10, 0, 0, 500, null, false);

	Fade("絵色白", 100, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/000200090fjh">
「待て待てぇいッ！！」

{	DeleteSt("C", 200,false);
	Fade("絵背景100", 200, 0, null, false);
	St("ML",700, @0,@0,"stみそa_通常_pinch");
	St("MR",700, @0,@0,"stブーa_通常_shock");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000200100mso">
「ぎゃっ！　す、すいません！」

{	St("MR",700, @0,@0,"stブーa_通常_pinch");
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000200110buu">
「オレたち、先行ってます！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @300, @0, DxlAuto, false);
	DeleteSt("MR", 200,false);
	WaitKey(100);
	Move("@StNameML/ML*", 200, @300, @0, DxlAuto, false);
	DeleteSt("ML", 200,true);



//	OnBG(10,"bg1202100ＵＰ＋_セット上_通常");
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(500,true);
	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200120wfu">
「わ！　わわわわ！」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200130wfu">
「だ、大丈夫ですか――！？」

//◆音声指示：スピーカー越し
{	St("ML",700, @0,@0,"buミリＰb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200140mrp">
『おおっと、フウリちゃん！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：スピーカー越し
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("ML",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200150mrp">
『そこでステージを下りたら、失格よ！』

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 100, 10, 0, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200160wfu">
「なんと！」


//◆音声指示：スピーカー越し
{	St("ML",700, @0,@0,"buミリＰb_ショータイム_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200170mrp">
『ということで、フウリちゃんに代わって私が訊いてみるわね！』

//◆音声指示：スピーカー越し
{	St("ML",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200180mrp">
『ねえ、ふたりとも大丈夫かしらー？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

	CreatePlainSP("絵板写", 5000);
	Wait(16);
	DeleteAllSt(0,false);
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,true);
//	Shake("@OnBG*", 100, 5, 5, 0, 0, 500, null, false);
	BGPlainShake(50, 200, 10, 5, 0, 0, 1000, Dxl1, false);
	}

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000200190skr">
「大丈夫じゃねーよ！　コンチキショー！」


{
//	Shake("@OnBG*", 100, 5, 5, 0, 0, 500, null, false);
	WaitAction("@絵演背景自動生成振動", null);
	BGPlainShake(50, 300, -10, 5, 0, 0, 1000, Dxl1, false);
}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200200nki">
「いてててててて……」


{
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	WaitAction("@絵演背景自動生成振動", null);
	BGPlainShake(50, 300, 10, 5, 0, 0, 1000, Dxl1, false);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000200210skr">
「――って、てゆーか！　きゃっ！
　どさくさに紛れて、変なところ揉むなあッ！！」


{
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	WaitAction("@絵演背景自動生成振動", null);
	BGPlainShake(50, 300, -10, 5, 0, 0, 1000, Dxl1, false);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200220nki">
「ぎゃあああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//◆演出指定：ユージローのエロセンサーが作動する
//◆ＳＥ：ピキーン！
	CreateSE("SE01","se擬音_ギャグ_エロセンサー");
	MusicStart("SE01",0,700,0,1000,null,false);

	TextBoxDelete(0);
	CreateColorSP("絵色白", 710, "#FFFFFF");
	Wait(50);
	Delete("絵色白");

	St("C",700, @120,@0,"buユージローa_通常_hard");
	Move("@StNameC/C*", 300, @-120, @0, DxlAuto, false);
	FadeSt("C",300,true);

	SetComic(@0,@-140,7);
	FadeComic();

	Shake("@StNameC/C*", 100, 10, 0, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000200230ujr">
「わう？」


//◆ＳＥ：ひゅーん！　空を飛ぶ
{
	DeleteComic();
	St("C",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("C",200,false);
	Move("@StNameC/C*", 500, @0, @20, Dxl1, false);

	WaitKey(500);

	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Shake("@OnBG*", 200, 0, 5, 0, 0, 500, null, false);
	WaitAction("@絵演背景自動生成振動", null);
	BGPlainShake(50, 200, 0, 5, 0, 0, 1000, Dxl1, false);
//	Move("@StNameC/C*", 200, @-240, @-800, DxlAuto, false);
	Zoom("@StNameC/C*", 200, 0, 5000, DxlAuto, false);
	DeleteSt("C", 100,false);
	}

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000200240ujr">
「わう――――――んッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2101);}


{	DeleteAllSt(200,false);
//	OnBG(10,"bg1202100ＵＰ＋_セット上_通常");
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(500,true);
	St("MR",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200250wfu">
「え？　ジャンプして――
　腰を振りながらマンホールに！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：ひゅー、穴に落下
	CreatePlainSP("絵板写", 5000);
	Wait(16);
	DeleteAllSt(0,false);
	CreateColorSP("絵色黒", 1000, "#000000");
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	CreateAXLWindowEX("絵演窓", "X", 2000, 341, 342, false);
	WindowAXLZoom("絵演窓", "X", 0, 0, null, true);

	$SYSTEM_effect_rain_dencity = 64;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵演窓/絵効果線", 1200, 256, 144, 512, 288, "Rain");
	Zoom("絵演窓/絵効果線", 0, 2000, 2000, null, true);
	SetAlias("絵演窓/絵効果線","絵演窓/絵効果線");
	Rotate("絵演窓/絵効果線", 0, @0, @0, 180, null,true);

	CreateTextureSP("絵演窓/絵効果背景一", 1000, Center, 0, "cg/ef/bg038_サーキット真横a_04.jpg");
	CreateTextureSP("絵演窓/絵効果背景二", 1000, Center, 0, "cg/ef/bg038_サーキット真横a_04.jpg");
	Rotate("絵演窓/絵効果背景*", 0, @0, @0, @-90, null,true);

	CreateSCR1("@絵演窓/絵効果背景一", "@絵演窓/絵効果背景二", 200, @0, -2000);

	Wait(16);
	DrawDelete("絵板写", 200, 100, null, "slide_02_01_0", true);

	CreateSE("SEAK01","se擬音_ギャグ_リーゼント");
	MusicStart("SEAK01",0,700,0,1200,null,false);
	WindowAXLZoom("絵演窓", "X", 300, 1000, null, true);

//	St("C",700, -120,-1200,"buユージローa_通常_ero");
	CreateSE("SE03","se動作_空飛ぶ01");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateSE("SEAK02","se擬音_ギャグ_腰振り");
	MusicStart("SEAK02",6000,700,0,1500,null,true);

	CreateTextureSP("絵演窓/絵立絵", 1010, Center, Middle, "cg/bu/buユージローa_通常_ero.png");
	Move("絵演窓/絵立絵", 0, @100, @-400, null, true);
	Rotate("絵演窓/絵立絵", 0, @0, @0, @-90, null,true);

	Shake("絵演窓/絵立絵", 60000, 2, 0, 0, 0, 1000, null, false);
	Move("絵演窓/絵立絵", 6000, @0, @400, DxlAuto, false);

//	FadeSt("C",1000,false);
//	Move("@StNameC/C*", 1000, @0, @2400, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0067]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000200260ujr">
「わううううぅぅぅぅ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2102);}

	TextBoxDelete(150);

	CreateSE("SE01","se戦闘_風切り音10");
	Move("絵演窓/絵立絵", 6000, @0, @100, DxlAuto, false);
	Wait(1000);
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SEAK02", 1200, 0, null);
	Move("絵演窓/絵立絵", 200, @0, 1000, Dxl2, true);

	WindowAXLZoom("絵演窓", "X", 1000, 0, null, true);
	Delete("絵演窓*");
	Delete("@ProSCR*");

	SceneOut(5000, 200, "blind_02_00a_1");
	DeleteAllSt(0,true);

	CreateTextureEX("絵背景200", 800, Center, Middle, "cg/bg/m/bg0701400地下_通路_あにのあな_m.jpg");
	SetShade("絵背景200", HEAVY);
	Move("絵背景200", 0, @0, @0, null, true);
	Request("絵背景200", Smoothing);

	OnBG(10,"bg0701400地下_通路_あにのあな");
	FadeBG(0,true);


	Delete("絵演窓*");
	Delete("絵色黒");
	Wait(16);
	SceneIn(200, "blind_02_00a_0");

	St("R",700, @0,@-60,"buユージローa_通常_ero");

	SetVertex("@StNameR/R*", center, bottom);
	Zoom("@StNameR/R*", 0, 0, 5000, null, true);
	FadeSt("R",700,false);
	Zoom("@StNameR/R*", 200, 1500, 300, DxlAuto, false);
	Move("@StNameR/R*", 200, @0, @60, DxlAuto, true);

//◆ＳＥ：ぽむ
	CreateSE("SE01","se擬音_ギャグ_ぷに");
	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("@StNameR/R*", 200, 1000, 1000, DxlAuto, false);

//	Shake("@OnBG*", 300, 0, 5, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 0, 8, 0, 0, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000200270ujr">
「わう」

{	St("ML",700, @0,@60,"bu沙紅羅_通常_surprise");
	Move("@StNameML/ML*", 200, @0, @-60, DxlAuto, false);
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000200280skr">
「キャッ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000200290skr">
「ここここここ――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	CreateColorEXadd("絵色白", 15000, "WHITE");
//	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(200,false);
	St("C",19010, @-200,@0,"fu沙紅羅_木刀_rage");
	FadeSt("C",200,false);
	Fade("絵背景200", 200, 1000, null, true);

	Shake("絵背景*", 300, 10, 10, 0, 0, 500, null, false);
	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);

//	Fade("絵色白", 100, 0, null, true);
//	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000200300skr">
「この、エロ犬――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);


	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	DeleteAllSt(0,true);
	Delete("@OnBG*");
	Delete("絵背景*");


	CreateSE("SE01","se戦闘_打撃音07");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg2401100空_上空_通常");
	Move("@OnBG*", 0, @0, @-200, DxlAuto, false);
	FadeBG(0,true);

	Move("@OnBG*", 1000, @0, @300, DxlAuto, false);
	Shake("@OnBG*", 1200, 5, 5, 0, 0, 500, null, false);


	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0077]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000200310ujr">
「わう――――――ん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2103);}


//	TextBoxDelete(150);

	WaitAction("@OnBG*", null);

	CreateMovie("絵演動画星", 2010, Center, 0, false, true, "dx/mv_キラーン.ngs");
	SetAlias("絵演動画星","絵演動画星");
	Request("絵演動画星", Disused);
	Request("絵演動画星", Start);

	CreateSE("SE01","se擬音_ギャグ_キラーン01");
	MusicStart("SE01",0,700,0,1000,null,false);

	$SETime = RemainTime("絵演動画星");
	WaitKey($SETime);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	PrintGO("上背景", 30000);
	Delete("@OnBG*");
	DeleteAllSt(0,true);

//	OnBG(10,"bg1202100ＵＰ＋_セット上_通常");
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("MR",200,true);}

	FadeDelete("上背景", 1000, null, true);

	CreateSE("SEL01","seガヤ_ざわざわ_l");
	MusicStart("SEL01",1000,300,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200320wfu">
「な……なんか、幸せそうにも聞こえます……」

{	St("MR",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200330wfu">
「と……とりあえず、元気みたいでよかった……」


{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/000200340ktt">
「ふぅ……助かった」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200350wfu">
「アッキーちゃん！」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200360wfu">
「大丈夫ですか？　なんか汗びっしょりで――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2104);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200370wfu">
「あの、ホントにそこまで嫌だったら――」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/000200380ktt">
「走り疲れただけだから」



//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/000200390ktt">
「追っ手もまいたみたいだし……」

{	St("MR",700, @0,@0,"buフウリ_胸手_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200400wfu">
「追っ手？」



//◆音声指示：スピーカー越し
{	DeleteAllSt(200,true);
	SetVolumeEX("SE*", 1000, 0, null);
	SoundPlay("@xbgm16",0,450,true);
	St("C",700, @0,@10,"buミリＰb_通常_sad");
	Move("@StNameC/C*", 200, @0, @-10, DxlAuto, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200410mrp">
『ええと……まあともかく、全国ゆるキャラバン！』



{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200420mrp">
『ハプニングもあったみたいだけど、仕切り直していよいよ番組は佳境へ――』



//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200430mrp">
「ふたりとも、ほら！
　進行の邪魔！　さっさと出てきて！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	PrintGO("上背景", 1000);
	OnBG(10,"bg0701400地下_通路_あにのあな");
	FadeBG(0,true);
	DrawDelete("上背景", 500, 5, null, "blind_02_00a_0", true);

//◆音声指示：スピーカー越し
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

{	St("C",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000200440skr">
「オラオラ！　下がつっかえてんだぞ！」

{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200450nki">
「わ、わかってる――んしょ、と！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 1000, @0, @-60, DxlAuto, false);
	DeleteAllSt(1000,true);


	TextBoxDelete(150);

	PrintGO("上背景", 1000);
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);
	DrawDelete("上背景", 500, 5, null, "blind_02_00a_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("C",700, @0,@60,"bu似鳥_通常_normal");
	Move("@StNameC/C*", 1000, @0, @-60, DxlAuto, false);
	FadeSt("C",1000,true);}

{	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200460nki">
「ゲ！　コレ、ゆるキャラバン？」



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200470nki">
「でも……あれ？　ソトカンダーは？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200480mrp">
「今、なんて言ったかしら？」

{	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200490nki">
「ソトカンダー……
　たしか、実物を飾るはずじゃ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2105);}


//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("ML",700, @0,@0,"buミリＰb_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200500mrp">
「ああ、アレは中止」

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200510nki">
「そ、そうなんですか……」

{	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200520nki">
「なんか……ちょっと、ホッとした……」

{	St("ML",700, @0,@0,"buミリＰb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200530mrp">
「でも、なんでソトカンダーを？」

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200540nki">
「だって、オレがデザインしたから――」

//◆音声指示：スピーカー越し
{	St("ML",2000, @0,@0,"buミリＰb_ショータイム_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200550mrp">
『はいスト――――――ップ！！！！』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	PrintGO("上背景", 30000);
	Delete("@OnBG*");
	DeleteAllSt(0,true);
	
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	St("ML",700, @-50,@0,"buフウリ_胸手_hard");
	St("MR",700, @50,@0,"bu千秋_通常_worry");

	FadeSt("MR",0,false);
	FadeSt("ML",0,true);

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200560wfu">
「へ？」


//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/000200570ktt">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2106);}


//	TextBoxDelete(150);

	PrintGO("上背景", 30000);
	Delete("@OnBG*");
	DeleteAllSt(0,true);
	
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	St("R",700, @30,@0,"bu沙紅羅_頭かき_sigh");
	St("L",700, @-30,@0,"bu似鳥_眼鏡上げ_angry");
	St("C",700, @0,@0,"buユージローa_通常_normal");

	FadeSt("R",0,false);
	FadeSt("L",0,false);
	FadeSt("C",0,true);

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000200580skr">
「あ？」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000200590nki">
「ん？」


//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000200600ujr">
「わう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

	PrintGO("上背景", 30000);
	Delete("@OnBG*");
	DeleteAllSt(0,true);
	
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	St("MR",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("MR",0,true);

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200610wfu">
「うう……クリマンが食べられると思ったのに」


{	DeleteAllSt(200,false);
//◆音声指示：スピーカー越し
	St("C",700, @0,@0,"buミリＰb_通常_normal");
	Move("@StNameC/C*", 200, @60, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200620mrp">
『ここで競技は一時中断！』

//◆音声指示：スピーカー越し


//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200630mrp">
『ところで皆さん！　今日はゆるキャラバンの最終日！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆音声指示：スピーカー越し
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/ab21/000200640mrp">
『ここで、秋葉原発のスーパーマスコットが発表されることを、皆さん憶えているかしら？』


{	DeleteAllSt(200,false);
	St("MR",700, @60,@0,"bu沙紅羅_通常_surprise");
	Move("@StNameMR/MR*", 200, @-60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000200650skr">
「そ……そうなのか？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/000200660wfu">
「そんな話も……聞いたことがあるような……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//※BGM16継続中（mngw 11/10）
	Delete("絵背景*");


	EndScene();
}
