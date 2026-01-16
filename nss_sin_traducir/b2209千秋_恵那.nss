
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene b2209千秋_恵那.nss_MAIN
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

//	if($CharaName=="千秋"){
//		$GameName = "b2210千秋_恵那.nss";
//	}else if($CharaName=="恵那"){
//		$GameName = "b2210千秋_恵那.nss";
//	}else{
		$GameName = "b2210千秋_恵那.nss";
//	}

}

scene b2209千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="270">
////////////header////////////
//file name "b2209千秋_恵那.nss"
//title "アザナエル略奪事件"
//previous "b2208千秋_恵那_ノーコ.nss"

////////////footer////////////
//next "千秋" "b2210千秋_恵那.nss"
//next "恵那" "b2210千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：村崎トラック

	CreateTextureEX("絵背景100", 1000, Center, 0, "cg/bg/bg2401100空_上空_通常.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	SetVolumeEX("@x*", 2000, 0, NULL);
	OnBG(10,"bg0102300秋葉原_ガード下_破壊");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	FadeDelete("上背景", 0, null, true);

{	ClockPass(2209);}

	FadeDelete("絵背景100", 1000, null, true);

	CreateSE("SEL01","seガヤ_ざわざわ_l");
	MusicStart("SEL01",4000,400,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]


{	St("R",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("R",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b22/090200010msi">
「と……飛んだ？」

{	DeleteAllSt(200,false);
	St("C",700, @-50,@0,"bu恵那_一休_think");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200020fje">
「いよいよ、人間じゃなくなってきてるわね……」


{
	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200030fje">
「本当に……使おうとしてるのかしら？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/090200040kit">
「…………」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200050fje">
「なによ？　その顔」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/090200060kit">
「なんで渡したんだよ？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200070fje">
「あれ、見えるでしょ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景", 11, Center, @0, "cg/bg/l/bg0102300秋葉原_ガード下_破壊_l.jpg");
	Move("絵背景", 0, @0, @-300, null, true);
	DeleteAllSt(200,false);
	Fade("絵背景", 200, 1000, null, false);
	Move("絵背景", 500, @400, @0, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　恵那は高架線を指さす。

{

	Fade("絵背景", 200, 0, null, false);
	St("C",700, @0,@0,"bu恵那_通常_shout");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200080fje">
「相手はね、簡単にあんなことをするヤツなのよ？」

{	St("C",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200090fje">
「もし躊躇ったら、ホントにアンタを――」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/090200100kit">
「大事だったんだろ！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200110fje">
「え？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/090200120kit">
「アレを探してたんだろ？」

{	St("L",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/090200130kit">
「アレがあるから、お前、ずっとそんな顔で――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200140fje">
「アンタ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu恵那_一休_angry");
	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1500);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200150fje">
「ホンッ――――――――トにバカなんだから！！」


{
	AgainSt("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("L",200,true);
//	Shake("@StNameL/L*", 300, 5, 0, 0, 0, 500, null, false);
	}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/090200160kit">
「へ？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_ハルヒ_angry");
	FadeSt("C",200,true);}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200170fje">
「アンタが死んだら、意味ないに決まってるでしょ！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("L",200,true);}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/090200180kit">
「そ……そうなのか？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_shy");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200190fje">
「…………バカ」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

{	St("C",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200200fje">
「ま、なんにせよ、アンタが無事で良かったわ」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200210fje">
「村崎さん？」

{	DeleteAllSt(200,false);
	St("R",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("R",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b22/090200220msi">
「はいはい、こっちも何とか動くみたいですよぉ」

{	St("R",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("R",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/b22/090200230msi">
「今の季節は、ちょっと寒いですけどねェ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200240fje">
「だってさ。アンタ、歩ける？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("L",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/b22/090200250kit">
「ん……あれ？
　ああ、そういえば……だいぶ、良くなってるかな？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200260fje">
「ショック療法……？」

{	St("C",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/b22/090200270fje">
「でも、油断は禁物よ。
　一回家に帰って、休みましょ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(20000, 1000, "blind_01_00_0");
	EndFileBlackOut(20000,2000);

	EndScene();
}
//next "千秋" "b2210千秋_恵那.nss"
//next "恵那" "b2210千秋_恵那.nss"
