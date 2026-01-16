
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2100千秋_恵那.nss_MAIN
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
		$GameName = "ab2110千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "ab2110千秋_恵那.nss";
	}else{
		$GameName = "ab2110千秋_恵那.nss";
	}

//	$GameName = "";
//	$GameCircle=false;

}

scene ab2100千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1700">
////////////header////////////
//file name "ab2100千秋_恵那.nss"
//title "ヤンキー対策会議"
//previous "aa2050千秋_恵那.nss"

////////////footer////////////
//next "千秋" "ab2110千秋_恵那.nss"
//next "恵那" "ab2110千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//事件定義
	KoreJikenSet();

{	ClockPass(2100);}


//	PrintFadeNut("上背景", 0, true);

	//◆場所：ＵＰ＋_屋外セット
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//※前スクリプト（aa2050千秋_恵那）からの継続
	SoundPlay("@xbgm03",0,450,true);


//	FadeDelete("上背景", 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @240,@0,"bu千秋_通常_cry");
	Move("@StNameML/ML*", 200, @-240, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/000300010ktt">
「ぎゃああああああ！！」

{	Move("@StNameML/ML*", 200, @-240, @0, DxlAuto, false);
	DeleteSt("ML", 200,true);
	St("C",700, @240,@0,"buユージローa_通常_ero");
	Move("@StNameC/C*", 200, @-240, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000300020ujr">
「わうわうわうッ！」

{	Move("@StNameC/C*", 200, @-240, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("MR",700, @240,@0,"bu恵那_ハルヒ_angry");
	Move("@StNameMR/MR*", 200, @-240, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300030fje">
「逃げても無駄！」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300040fje">
「名探偵富士見恵那が、その化けの皮を剥がして――」



{	DeleteAllSt(200,true);
	CreateSE("SE01","se擬音_ギャグ_落下");
	MusicStart("SE01",0,700,0,1000,null,false);
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 10, 8, 0, 0, 1000, Dxl1, false);
}

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/000300050nki">
「ぎゃあああああああああああああああ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]


{	DeleteAllSt(200,true);
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 10, 8, 0, 0, 1000, Dxl1, false);
}

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000300060skr">
「ぎゃあああああああああああああああ」


{	St("MR",700, @-60,@0,"bu恵那_ハルヒ_shout");
	SetVolumeEX("SE01", 1500, 0, null);
	Move("@StNameMR/MR*", 200, @60, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300070fje">
「ん？」

{	DeleteAllSt(200,false);
	St("C",700, @-60,@0,"buユージローa_通常_hard");
	Move("@StNameC/C*", 200, @60, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000300080ujr">
「わう？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300090fje">
「今の悲鳴……」

{	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300100fje">
「マンホールに、人が落ちた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);


//◆音声指示：遠くから
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

{
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 10, 8, 0, 0, 1000, Dxl1, false);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000300110skr">
「――って、てゆーか！　きゃっ！」

//◆音声指示：遠くから

{
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 300, -10, 8, 0, 0, 1000, Dxl1, false);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ab21/000300120skr">
「どさくさに紛れて、変なところ揉むなあッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//「どさくさに紛れて、コラ！
//　スカートの中に手が――ッ！！」
//※台詞間違い（mngw 11/10）

//	TextBoxDelete(150);

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
[text0040a]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000300130ujr">
「わう？」

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
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000300140ujr">
「わう――――――んッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2101);}



{
//	St("C",700, @240,@-1200,"buユージローa_通常_ero");
//	DeleteSt("C", 200,true);

	//◆ＳＥ：ひゅー、穴に落下
	CreateSE("SE03","se動作_空飛ぶ01");
	MusicStart("SE03",0,700,0,1000,null,false);

	SetVolumeEX("ユージロー*", 300, 0, null);

	CreateVOICE("ユージロー","ab21/000300150ujr");
	MusicStart("ユージロー",0,700,0,1000,null,false);

	$SETime = RemainTime("ユージロー")+1000;
	SetVolumeEX("ユージロー", $SETime, 0, null);

//	Move("@StNameC/C*", 1000, @0, @2400, DxlAuto, false);
//	FadeSt("C",1000,true);
	}

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041a]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/000300150ujr">
「わううううぅぅぅぅ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041b]
{	DeleteSt("MR", 200,true);
	St("MR",700, @0,@0,"bu恵那_哀愁_fear");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300160fje">
「ユージロー……」

{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300170fje">
「って、ボーッとしてる場合じゃなくて――あ！
　アッキーちゃんいた！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateAXLWindowEX("左千秋", "X",1500, 50,384, false);
	WindowAXLZoom("左千秋", "X",0, 0, null, true);
	CreateTextureSP("左千秋/絵背景", 1400, 0, Middle, "cg/bg/bg1201211ＵＰ＋_屋外セット_炎上.jpg");
	SetShade("左千秋/絵背景", HEAVY);
	Zoom("左千秋/絵背景", 0, 2000, 2000, null, true);

	CreateTextureSP("左千秋/千秋", 1410, Center, 0, "cg/bu/bu千秋_通常_shout.png");
	$立絵身長 = 676-ImageVertical("左千秋/千秋");
	Move("左千秋/千秋", 0, @0, $立絵身長, null, true);
	WindowAXLZoom("左千秋", "X",200, 1000, Dxl2, false);
	Move("左千秋/千秋", 300, 100, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045a]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300180kit">
「げ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	WindowAXLZoom("左千秋", "X",300, 0, Dxl2, false);
	Fade("@左千秋/千秋*", 200, 0, Dxl2, true);
	Delete("@左千秋*");
	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045b]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300190fje">
「コラ！　コソコソ逃げないで、捕まりなさーい！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	DeleteSt("MR", 200,true);
	Wait(100);

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);
	SceneOut(5000, 500, "blind_01_00_0");

{	ClockPass(2102);}

//◆場所：秋葉原駅_正面	
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

	SceneIn(500, "blind_01_00_1");

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",2000,700,0,1000,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]


{	St("MR",700, @120,@0,"bu恵那_ハルヒ_angry");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300200fje">
「待て待て待て――――ッ！！」

{	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300210kit">
「ちょ、ちょっとタンマ！　オレ本物だから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300220fje">
「本物がなんでコソコソ逃げ出すのよ！？」

{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300230kit">
「こんな格好でテレビに出てたまるかッ！！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300240fje">
「そんな格好……？」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300250kit">
「あー、ともかく他人のそら似でオレは本物！」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300260fje">
「証拠は！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300270kit">
「証拠って――ほら！
　さっきまで万世橋で色々話しただろ？」

{	St("ML",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300280kit">
「それにホラ！
　一緒にバックギャモンにも――」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300290fje">
「む……」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300300fje">
「確かにあなた、さっきまで私と一緒にいたアッキーちゃんみたいね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300310fje">
「ということは……入れ替わりトリック！？」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	Shake("@StNameL/L*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300320kit">
「どさくさに紛れて見失っただけだろ」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300330fje">
「そういう見方もあるわっ！」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300340kit">
「でも……本当によく似てたよな。
　なんて言ったっけ？　こういうの……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300350kit">
「ドッペルゲンガー？」

{	St("MR",700, @0,@0,"bu恵那_一休_surprise");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300360fje">
「な……もしや！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);


{	ClockPass(2103);}

	TextBoxDelete(150);

//	SoundPlay("@xbgm08",0,450,true);

//コレは事件
	KoreJikenStart();

	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300370fje">
「コレは事件！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	KoreJikenEnd(true);
	SoundPlay("@xbgm08_noint",0,450,true);

	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300380kit">
「え？　なにが？」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300390fje">
「知らない？　ドッペルゲンガーって、死期が近い人間が見るものなのよ」


{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300400kit">
「え？」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300410kit">
「ええ？」

{	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameML/ML*", 300, 5, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300420kit">
「えええええええ――っ！！」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300430kit">
「ちょ！　待って！
　それ！　それヤバくないですか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300440fje">
「ヤバイかもね」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300450fje">
「でもまあ確かにさっきはアッキーちゃんも驚いたけど、よく考えればあのふたり組を追いかけるべきよね」

{	St("ML",700, @0,@0,"bu千秋_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300460kit">
「いやいやいやいや！　それよりオレの命が――」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300470fje">
「あいつら、殺人犯なワケでしょ？」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300480kit">
「う……そ、それは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300490kit">
「いや、でももうどっちにいったかすらわかんない――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1500, 0, null);
	DeleteAllSt(200,true);

//	TextBoxDelete(150);

	SoundPlay("@xbgm03",0,450,true);

	CreateAXLWindowEX("中平次", "X",1500, 256,512, false);
	WindowAXLZoom("中平次", "X",0, 0, null, true);
	CreateTextureSP("中平次/絵背景", 1400, 0, Middle, "cg/bg/bg0201111秋葉原駅_正面_通常.jpg");
	SetShade("中平次/絵背景", HEAVY);
	Zoom("中平次/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("中平次/平次", 1410, @0, InBottom, "cg/bu/bu平次_御用だ_shout.png");
	SetAlias("中平次/平次","中平次/平次");
	Move("中平次/平次", 0, 0, @96, null, true);
	WindowAXLZoom("中平次", "X",300, 1000, Dxl2, true);

//	St("C",600, @0,@0,"bu平次_御用だ_shout");
//	FadeSt("C",200,true);
	Shake("中平次/平次", 300, 10, 0, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/000300500fjh">
「御用だ御用だ御用だ御用だッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	WindowAXLZoom("中平次", "X",300, 0, Dxl2, false);
	Fade("@中平次/平次*", 200, 0, Dxl2, true);
	Delete("@中平次*");


	CreateAXLWindowEX("上みそブー", "Y",1500, 100,256, false);
	WindowAXLZoom("上みそブー", "Y",0, 0, null, true);
	CreateTextureSP("上みそブー/絵背景", 1400, 0, Middle, "cg/bg/bg0201111秋葉原駅_正面_通常.jpg");
	SetShade("上みそブー/絵背景", HEAVY);
	Zoom("上みそブー/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("上みそブー/みそ", 1410, @0, InBottom, "cg/st/stみそa_通常_fear.png");
	SetAlias("上みそブー/みそ","上みそブー/みそ");
	Move("上みそブー/みそ", 0, 200, 96, null, true);

	CreateTexture("上みそブー/ブー", 1410, @0, InBottom, "cg/st/stブーa_通常_pinch.png");
	SetAlias("上みそブー/ブー","上みそブー/ブー");
	Move("上みそブー/ブー", 0, 500, 96, null, true);

	WindowAXLZoom("上みそブー", "Y",300, 1000, Dxl2, true);

	Shake("上みそブー", 100, 5, 5, 0, 0, 500, null, false);
	Shake("上みそブー/みそ", 100, 5, 5, 0, 0, 500, null, false);
	Shake("上みそブー/ブー", 100, 5, 5, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000300510mso">
「ぎゃあああああああああ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/ab21/000300520buu">
//「ぎゃあああああああああ！！」

</PRE>
	SetText();
	AddText(1,"「ぎゃあああああああああ！！」","みそ","ab21/000300510mso",false,false,1000);
	AddText(2,"「ぎゃあああああああああ！！」","ブー","ab21/000300520buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	WindowAXLZoom("上みそブー", "Y",300, 0, Dxl2, false);
	Fade("@上みそブー/みそ*", 200, 0, Dxl2, false);
	Fade("@上みそブー/ブー*", 200, 0, Dxl2, true);
	Delete("@上みそブー*");


{	DeleteAllSt(200,true);
	St("L",700, @0,@0,"bu千秋_気合い_hard");
	St("R",700, @0,@0,"bu恵那_ハルヒ_angry");
	Shake("@StNameL/L*", 100, 5, 5, 0, 0, 500, null, false);
{	Shake("@StNameR/R*", 100, 5, 5, 0, 0, 500, null, false);}
	FadeSt("R",200,false);
	FadeSt("L",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135a]
//◆音声指示：同時
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300530kit">
「いた」
{WaitAddText();}<BR>

//◆音声指示：同時
//【富士見恵那】
//<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300540fje">
//「いた」

</PRE>
	SetText();
	AddText(1,"「いた」","小碓千秋","ab21/000300530kit",false,false,1000);
	AddText(2,"「いた」","富士見恵那","ab21/000300540fje",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu平次_御用だ_angry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135b]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/000300550fjh">
「待てえええええええいッ！！」


{	DeleteAllSt(200,true);
	St("R",700, @0,@0,"bu恵那_ハルヒ_shout");
	St("L",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("L",200,false);
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300560fje">
「追いかけるわよ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300570kit">
「あ、ああ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2104);}

//	TextBoxDelete(150);

//◆場所：パチンコ屋_正面

	CreateSE("SEL01","se動作_集団走る");
	MusicStart("SEL01",500,700,0,1000,null,true);

	PrintGO("上背景", 30000);

	OnBG(10,"bg2301100パチンコ屋_正面_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 100, null, "slide_01_03_1", true);

	CreateTextureEX("絵背景", 100, -1024, -460, "cg/bg/l/bg2301100パチンコ屋_正面_通常_l.jpg");

	Move("絵背景", 300, 0, @0, Dxl1, false);
	Fade("絵背景", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]

{	St("C",700, @-250,@0,"bu平次_御用だ_angry");
	Move("@StNameC/C*", 200, @250, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/000300580fjh">
「今度こそは逃がさんぞっ！
　大人しく、お縄を頂戴しろッ！！」

{	Move("@StNameC/C*", 200, @250, @0, DxlAuto, false);
	DeleteSt("C", 200,true);

	Move("絵背景", 300, -1024, @0, Dxl1, true);

	St("C",700, @-250,@0,"buみそa_通常_pinch");
	Move("@StNameC/C*", 200, @250, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000300590mso">
「誰が捕まるかあッ！！」

{	Move("@StNameC/C*", 200, @250, @0, DxlAuto, false);
	DeleteSt("C", 200,true);

	St("C",700, @-250,@0,"buブーa_通常_pinch");
	Move("@StNameC/C*", 200, @250, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000300600buu">
「畜生ッ！　さっきからオレたち逃げっぱなしだし！」

{	Move("@StNameC/C*", 200, @250, @0, DxlAuto, false);
	DeleteSt("C", 200,true);}


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	FadeDelete("絵背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
{	St("C",700, @-250,@0,"bu恵那_哀愁_pinch");
	Move("@StNameC/C*", 200, @250, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300610fje">
「差――詰まってる！？」

{	Move("@StNameC/C*", 200, @250, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("C",700, @-250,@0,"bu千秋_通常_shout");
	Move("@StNameC/C*", 200, @250, @0, DxlAuto, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300620kit">
「もう少し――もう少しで――！」

{	Move("@StNameC/C*", 200, @250, @0, DxlAuto, false);
	DeleteSt("C", 200,true);}


　裏路地を曲がるみそブーを、全力で追いかける。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2105);}

//	TextBoxDelete(150);

//◆場所：スパコン館_裏面
	PrintGO("上背景", 30000);
	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);
	DrawDelete("上背景", 500, 100, null, "blind_01_00_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]

{	St("C",700, @0,@80,"bu平次_御用だ_angry");
	Move("@StNameC/C*", 200, @0, @-80, DxlAuto, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/000300630fjh">
「でりゃああああああああああああああ！！」


{
//	SetVolumeEX("@xbgm*", 4000, 0, null);
	DeleteAllSt(200,false);
	SetVolumeEX("SE*", 400, 0, null);
	St("ML",700, @-250,@0,"bu千秋_通常_sad");
	Move("@StNameML/ML*", 200, @250, @0, DxlAuto, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300640kit">
「え――？」


{	DeleteAllSt(200,false);
	St("MR",700, @-250,@0,"bu恵那_一休_shy");
	Move("@StNameMR/MR*", 200, @250, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300650fje">
「みそブーが……消えた？」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300660kit">
「どっかの角を――」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300670fje">
「ううん。そんな余裕、なかったはずよ」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu平次_御用だ_shout");
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/ab21/000300680fjh">
「どこだああああああああッ！？」

{	Move("@StNameC/C*", 200, @120, @0, DxlAuto, false);
	DeleteSt("C", 200,true);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300690kit">
「じゃ、どっかの店に？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
{	St("MR",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300700fje">
「それも、ないわね」



//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300710fje">
「あのふたり組が突然飛び込んできたら、少なくとも、何らかの騒ぎにはなってるはずだわ」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300720kit">
「でも、じゃあどこに――」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300730fje">
「この近くで、隠れられて、誰もいない場所――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景", 100, -1025, -430, "cg/bg/l/bg1101200スパコン館_裏面_閉店_l.jpg");
	SetVertex("絵背景", 1490, 760);
	Zoom("絵背景", 0, 1500, 1500, null, true);

	Zoom("絵背景", 300, 1000, 1000, Dxl1, false);
	Fade("絵背景", 300, 1000, null, true);

	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shock");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300740fje">
「この建物よ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	SceneOut(5000, 1000, "blind_01_00_0");


//◆ＳＥ：ぎいいいい、扉開く
	CreateSE("SE04","se動作_ドア開ける05");
	MusicStart("SE04",0,700,0,1000,null,false);


{	ClockPass(2106);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);
	DeleteAllSt(0,true);

//	SoundPlay("@xbgm04",0,450,true);

	Delete("絵背景");
	SceneIn(1000, "blind_01_00_1");
	WaitKey(1000);

//	SoundPlay("@xbgm24",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300750kit">
「鍵開きっぱなしとか……不用心だな」

{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300760fje">
「私が壊しちゃったのよね……」

{	St("ML",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300770kit">
「え？」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300780fje">
「確かこの建物――今開いてるのはここだけだから。
　もしいるとしたら、逃げられる心配はないわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300790kit">
「下……じゃないよな」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300800fje">
「きっとね」


{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300810kit">
「……ホントに、行くのか？」


//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300820kit">
「オヤジさんとかに連絡取ってからでも――」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300830fje">
「遅いわ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300840kit">
「でも、そっちの方が確実――」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300850fje">
「呼びたくないの」

{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300860kit">
「でも向こうはでかいし、男だし、銃も――」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300870fje">
「わかってる！」

{	SoundPlay("@xbgm25",3000,450,true);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300880fje">
「でも……私が行かなきゃダメなの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300890fje">
「アザナエルが世の中に出たの、私のせいだから」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300900kit">
「…………」

{	St("MR",700, @0,@0,"bu恵那_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300910fje">
「じゃ、また後で」

{	St("ML",700, @0,@0,"bu千秋_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300920kit">
「え？」

{	St("MR",700, @0,@0,"bu恵那_ハルヒ_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300930fje">
「３０分経ってもなにもなかったら、助けを呼んで」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300940kit">
「ちょ――ま、待てよ！　オレも行く！」

{	St("MR",700, @0,@0,"bu恵那_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300950fje">
「来なくていいわ。危ないし――」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300960kit">
「行く！　行くったら行く！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300970fje">
「いや、あなたが危険を冒さなくても――」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000300980kit">
「お、オレだって、行かなきゃダメなんだって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
{	St("MR",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000300990fje">
「…………」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301000kit">
「…………」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301010fje">
「あなたって、変なところで頑固よね」

{	St("ML",700, @0,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301020kit">
「悪いか！？」

{	St("MR",700, @0,@0,"bu恵那_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301030fje">
「……泣きそうな顔、しないでよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301040fje">
「なんか……千秋思い出すし」

{	St("ML",700, @0,@0,"bu千秋_驚天_shock");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 100, 5, 0, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301050kit">
「ひぇっ！」

{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301060fje">
「ん……どしたの？　怖くなった？」

{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301070kit">
「そ、そんなことないやいっ！」

{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301080kit">
「さ、行こう！」

{	Move("@StNameML/ML*", 500, @-120, @0, DxlAuto, false);
	DeleteSt("ML", 500,true);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301090fje">
「あ……うん」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	SetVolumeEX("@xbgm*", 2000, 0, null);

	Move("@StNameMR/MR*", 500, @-120, @0, DxlAuto, false);
	DeleteSt("MR", 500,true);

	TextBoxDelete(150);

	PrintFadeNut("上背景", 1000, true);




{	ClockPass(2107);}

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);
	DeleteSt("C", 0,true);
	WaitKey(1500);

	FadeDelete("上背景", 2000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]


{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	Move("@StNameML/ML*", 300, @-60, @0, DxlAuto, false);
	FadeSt("ML",300,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301100kit">
「どの階に、隠れてるのか……」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301110fje">
「シッ！　静かに！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("@xbgm*", 4000, 0, null);



	TextBoxDelete(150);

	DeleteSt("C", 200,true);
	SceneOut(5000, 500, "blind_01_00_0");
	
	CreateTextureEX("絵背景100_m", 600, Center, Middle, "cg/bg/m/bg1103100スパコン館_店内_通常_m.jpg");
	Move("絵背景100_m", 0, @0, @0, null, true);
	Fade("絵背景100_m", 0, 1000, null, false);

	
	St("MR",700, @0,@0,"stブーa_通常_pinch");
	St("ML",700, @0,@0,"stみそa_通常_pinch");
	FadeSt("MR",0,false);
	FadeSt("ML",0,true);
	
	SceneIn(500, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]

//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000301120buu">
「みみ、見つかったらどうしよう？」

//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301130mso">
「あのオッサン、見かけによらず強かったからな……
　オレの頑丈さがなかったら、きっとやられてた」

{	St("MR",700, @0,@0,"stブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000301140buu">
「じゃ、じゃあどうする？」

{	St("ML",700, @0,@0,"stみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301150mso">
「いや……でも、だ」



//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301160mso">
「そもそもが誤解で、オレたちはなにもしてないんだし、ちゃんと事情を説明すれば――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 500, "blind_01_00_1");

	Fade("絵背景100_m", 0, 0, null, false);

	CreateTextureSP("絵演背景", 20, 0, -576, "cg/bg/l/bg1103100スパコン館_店内_通常_l.jpg");

	DeleteAllSt(0,true);
	SceneIn(500, "blind_01_00_0");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
{	DeleteSt("C", 200,true);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301170kit">
「まだ言ってる……」

{	SoundPlay("@xbgm08_noint",0,450,true);
	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301180fje">
「一応確認しておくけど……
　ホントにあいつらが犯人で、間違いないのよね？」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301190kit">
「インド人は、部屋に誰も出入りしてないって言ってた」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301200kit">
「ってことは少なくともあいつら、オレたちが出入りする前からあそこに隠れてたわけだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
{	St("MR",700, @0,@0,"bu恵那_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301210fje">
「……ジャブルさんが嘘ついてたって可能性は？」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301220kit">
「そりゃまあ……ないとは言えないけど。
　でも、嘘をつく理由ってあるか？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2108);}

//	TextBoxDelete(150);

	SceneOut(5000, 500, "blind_01_00_0");

//	SoundPlay("@xbgm25",0,450,true);

	DeleteAllSt(200,false);

	Fade("絵演背景", 0, 0, null, true);

	CreateTextureEX("絵背景100_l", 600, Center, Middle, "cg/bg/l/bg1103100スパコン館_店内_通常_l.jpg");
	Move("絵背景100_l", 0, @0, @0, null, true);
	Fade("絵背景100_l", 0, 1000, null, false);
	
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",0,true);
	SceneIn(500, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]

//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000301230buu">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301240mso">
「ん？　どうしたブー？」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000301250buu">
「いや、実は……なにもしてないワケじゃないよな」



//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000301260buu">
「いわゆるひとつの泥棒っていうか……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301270mso">
「…………確かに」

{	St("ML",700, @0,@0,"buみそa_通常_fear");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301280mso">
「いやいやいや！
　しかしコレはもののはずみっつーか、事故っつーか」


//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301290mso">
「こんなもの、持ち出しちまったけどよ
　オレたちは殺しなんてしてないわけで」


　ポケットに指を沿わせるみそ。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);


	SceneOut(5000, 500, "blind_01_00_1");

	DeleteAllSt(0,true);

	Fade("絵背景100_l", 0, 0, null, false);

	Fade("絵演背景", 0, 1000, null, true);

	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);
	SceneIn(500, "blind_01_00_0");


	DeleteSt("C", 200,true);
	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301300kit">
「ポケット……膨らんでる」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301310fje">
「殺しをしたかどうかはとにかく、アザナエルは持ってるみたいね」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301320kit">
「あ、うん。たぶん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	SceneOut(5000, 500, "blind_01_00_0");

	DeleteAllSt(0,false);

	Fade("絵背景100_l", 0, 1000, null, false);
	Fade("絵演背景", 0, 0, null, true);

	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",0,true);

//	SetVolumeEX("@xbgm*", 4000, 0, null);

	SceneIn(500, "blind_01_00_1");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]


//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301330mso">
「こうなったら……全面戦争しかねぇな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000301340buu">
「全面戦争……かましてくれるか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301350mso">
「ブーのためなら、一肌脱いでやるさ！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm08_noint", 1000, 1, null);


	DeleteAllSt(200,true);

	SoundPlay("@xbgm07_noint",0,450,true);
/*
	CreateWindowEX("左みそ", 150, 0, 342, 576, false);
	Zoom("左みそ", 0, 0, 1000, null, true);
	CreateTextureSPmul("左みそ/絵背景", 611, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateColorSP("左みそ/絵背景色", 610, "#99FF66");

	CreateWindowEX("右ブー", 532, 0, 342, 576, false);
	Zoom("右ブー", 0, 0, 1000, null, true);
	CreateTextureSPmul("右ブー/絵背景", 611, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateColorSP("右ブー/絵背景色", 610, "#FF0000");


	CreateTexture("左みそ/みそ", 700, OutRight, InBottom, "cg/bu/buみそa_オラオラ_shout.png");
	SetAlias("左みそ/みそ","左みそ/みそ");
	Move("左みそ/みそ", 0, -82, @96, null, true);
	Zoom("左みそ", 300, 1000, 1000, Dxl2, true);
*/

	CreateTextureEX("絵背景１", 650, 0, -376, "cg/bg/l/bg1103100スパコン館_店内_通常_l.jpg");
	CreateTextureEX("絵人物１", 700, -134, -273, "cg/bu/buみそa_オラオラ_shout.png");
	DeleteSt("C",0,false);

	CreateWindow("絵ウィンドウ１", 150, 290, Middle, 2000, 2000, false);
	Rotate("絵ウィンドウ１", 0, @0, @0, 61, null, true);
	CreateTextureEX("絵ウィンドウ１/絵背景１", 2000, -512, 0, "cg/bg/l/bg1103100スパコン館_店内_通常_l.jpg");
	CreateTextureEX("絵ウィンドウ１/絵人物１", 2000, 332, 50, "cg/bu/buブーa_オラオラ_shout.png");

	CreateTextureEX("絵ウィンドウ１スラッシュ", 2500, 0, 0, "cg/mask/ciスラッシュ_00_00z.png");


	Move("絵背景１", 0, @-60, @0, Dxl1, false);
	Move("絵人物１", 0, @-120, @0, Dxl1, false);
	Move("絵ウィンドウ１/絵背景１", 0, @130, @0, Dxl1, false);
	Move("絵ウィンドウ１/絵人物１", 0, @180, @0, Dxl1, true);

	Fade("絵背景１", 0, 1000, null, false);
	Fade("絵人物１", 0, 1000, null, false);
	Fade("絵ウィンドウ１/絵背景１", 0, 1000, null, false);
	Fade("絵ウィンドウ１/絵人物１", 0, 1000, null, false);
	Fade("絵ウィンドウ１スラッシュ", 0, 1000, null, false);

	Move("絵背景１", 500, @60, @0, Dxl2, false);
	Move("絵人物１", 500, @120, @0, Dxl2, false);
	Move("絵ウィンドウ１/絵背景１", 500, @-130, @0, Dxl2, false);
	Move("絵ウィンドウ１/絵人物１", 500, @-180, @0, Dxl2, true);


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]

//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301360mso">
「百野殺駆特攻隊長・頑丈のみそ！！」

/*
{	CreateTexture("右ブー/ブー", 700, OutRight, InBottom, "cg/bu/buブーa_オラオラ_shout.png");
	SetAlias("右ブー/ブー","右ブー/ブー");
	Move("右ブー/ブー", 0, 368, @96, null, true);
	Zoom("右ブー", 300, 1000, 1000, Dxl2, true);}*/
//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000301370buu">
「参謀役・クラッシャー・ブー！！」


//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301380mso">
「赤いリーゼントと――！」


//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000301390buu">
「緑のアフロ――！」


//【ブー】
<voice name="ブー" class="ブー" src="voice/ab21/000301400buu">
「ふたつ合わさりゃ――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 15000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);

	CreateSE("SE01","se戦闘_爆発01");
	MusicStart("SE01",0,700,0,1000,null,false);


	DeleteAllSt(0,true);

	St("L",700, @0,@0,"buみそa_オラオラ_shout");
	St("R",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("L",0,true);
	FadeSt("R",0,true);

//	Delete("左みそ*");
//	Delete("右ブー*");


	Delete("絵背景１");
	Delete("絵人物１");
	Delete("絵ウィンドウ*");
	Delete("絵ウィンドウ１/*");


	Shake("絵背景100_l", 500, 5, 5, 0, 0, 500, null, false);

	Fade("絵色白", 200, 0, null, true);
	Delete("絵色白");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/ab21/000301410mso">
「オレたちゃ無敵ッ！！」
{WaitAddText();}<BR>


//◆音声指示：同時
//【ブー】
//<voice name="ブー" class="ブー" src="voice/ab21/000301420buu">
//「オレたちゃ無敵ッ！！」

</PRE>
	SetText();
	AddText(1,"「オレたちゃ無敵ッ！！」","みそ","ab21/000301410mso",false,false,1000);
	AddText(2,"「オレたちゃ無敵ッ！！」","ブー","ab21/000301420buu",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(5000, 500, "blind_01_00_1");

	Fade("絵演背景", 0, 1000, null, true);
	Fade("絵背景100_l", 0, 0, null, false);
	DeleteAllSt(0,true);

	SetVolumeEX("@xbgm*", 4000, 0, null);

	SceneIn(500, "blind_01_00_0");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]

//◆音声指示：以下、小声

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301430kit">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301440fje">
「…………」

{	SetVolumeEX("@xbgm08_noint", 2000, 450, null);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301450kit">
「どうしよう……」


{	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301460kit">
「なんか……このまま帰った方がいい気がしてきた……」

{	St("MR",700, @0,@0,"bu恵那_通常_angry");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301470fje">
「そういうわけにはいかないわよ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301480kit">
「でもオレたちふたりで、どうやってあいつらを？」



//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301490kit">
「あいつら、なんかバカっぽいし……
　こっちの想像超えたことしてきそうで……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2109);}

//	TextBoxDelete(150);

//	SoundPlay("@xbgm08_noint",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
{	St("MR",700, @0,@0,"bu恵那_一休_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301500fje">
「落ち着いて、よく考えるのよ」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301510fje">
「別に、たたきのめしたいわけじゃない。
　私たちの勝利条件は――？」


{	St("ML",700, @0,@0,"bu千秋_通常_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301520kit">
「拳銃――」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301530kit">
「アザナエルを……手に入れること？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	St("MR",700, @0,@0,"bu恵那_一休_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301540fje">
「……なるほどね」

{	St("MR",700, @0,@0,"bu恵那_通常_smile");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301550fje">
「ということは、私が囮になって、色仕掛けで――」


{	St("ML",700, @0,@0,"bu千秋_通常_shout");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301560kit">
「ダメだッ！」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301570kit">
「オレが！　オレが囮になる！」

{	St("MR",700, @0,@0,"bu恵那_一休_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301580fje">
「はい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301590kit">
「お、おまえみたいな乱暴女が、色仕掛けなんて無理！」

{	St("MR",700, @0,@0,"bu恵那_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301600fje">
「な、なによ！
　アンタだってちんちくりんで――」

{	St("MR",700, @0,@0,"bu恵那_通常_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301610fje">
「いや……でも、待てよ……」

{	St("MR",700, @0,@0,"bu恵那_一休_think");
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301620fje">
「確かあいつら、ミヅハちゃんを誘拐してたし――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]


//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301630fje">
「少なくとも緑の方は、そういう趣味をしてるかも……」


{	SetVolumeEX("@xbgm*", 4000, 0, null);
	St("ML",700, @0,@0,"bu千秋_気合い_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301640kit">
「ひとつだけ、約束してくれ！」

{	St("MR",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301650fje">
「え？　約束って、なんでアンタが囮になるって――」

{	St("ML",700, @0,@0,"bu千秋_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301660kit">
「色仕掛けしてるときは、オレの方を見ないでくれ」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shy");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301670kit">
「お願い、この通り！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
{	St("MR",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301680fje">
「いや、だからそもそも作戦を練り直して――」


//◆音声指示：小声ここまで

{	St("ML",700, @0,@0,"bu千秋_気合い_hard");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/000301690kit">
「い、いくぞおおおおおおお！！」

{	Move("@StNameML/ML*", 200, @-240, @0, DxlAuto, false);
	DeleteSt("ML", 200,true);
	St("MR",700, @120,@0,"bu恵那_哀愁_fear");
	Move("@StNameMR/MR*", 200, @-120, @0, DxlAuto, false);
	FadeSt("MR",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/000301700fje">
「やだ！　アッキーちゃん、待って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @-240, @0, DxlAuto, false);
	DeleteSt("C", 200,true);

	TextBoxDelete(150);

	SceneOut(5000, 500, "blind_01_00_0");

	DeleteSt("C", 0,true);
	Delete("@OnBG*");

	WaitKey(1000);


	EndScene();
}
