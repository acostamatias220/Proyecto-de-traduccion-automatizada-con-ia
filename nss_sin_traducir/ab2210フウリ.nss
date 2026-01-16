
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2210フウリ.nss_MAIN
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

	//★徒歩：フラグ修正
	if(Substr($myRoute,0,2)=="ab"){
		$GameName="ab2230カゴメ.nss";
	}else if(Substr($myRoute,0,1)=="b"){
		$GameName="b2220カゴメ.nss";
	}
}


scene ab2210フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="240">
////////////header////////////
//file name "ab2210フウリ.nss"
//title "ずっと一緒に……"
//previous "2150フウリ.nss"

////////////footer////////////
//next "フウリ"（"flaba" = true） "aba2400恵那.nss"
//next "フウリ"（"flabb" = true） "abb2400沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"



////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockTime(2210);}

	DeleteAllSt(200,false);

	OnBG(10,"bg2201100屋島_古戦場_通常");
	FadeBG(0,true);

	St("ML",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("ML",0,true);

	FadeDelete("上背景", 200, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/ab22/100100010odk">
「覚悟は出来てるかい？」

{	SoundPlay("@xbgm28",0,450,true);
	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100020wfu">
「え……？」

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100030wfu">
「この答え……記憶と、違う……！？」

{	St("MR",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100040wfu">
「連れて行って、くれるんですか？」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/ab22/100100050odk">
「全てを捨てて、僕と一緒に来る覚悟は――」


{	St("MR",700, @0,@0,"buフウリ_前のめり_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100060wfu">
「できてます！　行きます！
　一緒に行きます！」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/ab22/100100070odk">
「本当に？」

{	St("MR",700, @0,@0,"buフウリ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100080wfu">
「あの日から、ずっと、失敗したと思ってきました！」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100090wfu">
「もう私、後悔したくないんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100100wfu">
「ずっとずっと――貫太さんと、一緒にいたいんです！」



{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/ab22/100100110odk">
「……そうか」

{	St("ML",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/ab22/100100120odk">
「じゃあ……」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buフウリ_通常_angry");
	St("ML",650, @-120,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,false);
	Move("@StNameML/ML*", 1000, @60, @0, DxlAuto, false);
	FadeSt("ML",1000,true);
	WaitKey(500);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/ab22/100100130odk">
「一緒に行こう」


{	St("MR",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100140wfu">
「貫太さんの手……あったかい……」


{	St("MR",700, @0,@0,"buフウリ_頬手_happy");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100150wfu">
「夢じゃ……ないんですね？」

{	St("ML",650, @-60,@0,"bu貫太_通常_normal");
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/ab22/100100160odk">
「夢だろうと、天国だろうと、構わないだろう？」

{	St("ML",650, @-60,@0,"bu貫太_通常_smile");
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/ab22/100100170odk">
「側にいられるんだ」

{	St("MR",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100180wfu">
「はい……」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2211);}

	DeleteAllSt(1000,false);

//◆演出指定：ホワイトアウト
	CreateColorEXadd("絵色白", 800, "WHITE");
	Fade("絵色白", 10000, 1000, null, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	TextBoxDelete(150);
//※↑ホワイトアウトするため、窓枠はわざと消します（mngw）
	St("C",19010, @0,@0,"fuフウリ_胸手_shy");
	FadeSt("C",1000,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100190wfu">
「もう……ずっと……ずっと、一緒なんですね……」


//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100200wfu">
「ずっと……永遠に……一緒……」

{	St("C",19010, @0,@0,"fuフウリ_胸手_smile");
	FadeSt("C",500,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100210wfu">
「波の音……風の感触……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100220wfu">
「遠くから……私をさらって行くみたいに……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100230wfu">
「太陽の光が……眩しくて……」


{	St("C",19010, @0,@0,"fuフウリ_頬手_happy");
	FadeSt("C",500,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab22/100100240wfu">
「私……幸せ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorEXadd("絵色白上", 19100, "WHITE");
	Fade("絵色白上", 4000, 1000, null, true);

	SetVolumeEX("@xbgm*", 6000, 0, null);

	Delete("@OnBG*");
	DeleteAllSt(0,true);

	WaitKey(1000);

	Delete("絵色白上");
	FadeDelete("絵色白", 3000, null, true);

	WaitKey(3000);

	EndScene();
}
