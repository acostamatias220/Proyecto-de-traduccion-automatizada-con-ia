
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2320沙紅羅_千秋.nss_MAIN
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
	$GameName = "2330沙紅羅_千秋_恵那.nss";

}

scene 2320沙紅羅_千秋.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1930">
////////////header////////////
//file name "2320沙紅羅.nss"
//title "大！　復！　活！"
//previous "2310沙紅羅.nss"
//previous "2050カゴメ2.nss"

////////////footer////////////
//next "沙紅羅" "2330沙紅羅_千秋_恵那.nss"
//next "千秋" "2330沙紅羅_千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2320);}


//再定義
	SoundPlay("@xbgm26",0,450,true);

	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);


{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400010skr">
「弟子よ……死んだとか……
　ウソだって……言ってくれよ……」

{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400020fjh">
「金閣寺……もう諦めろ……
　コイツは……もう……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400030skr">
「目、覚ませ……覚ましてくれ……頼むから……」

{	DeleteSt("C",200,true);
	SetVolume("@xbgm*", 200, 0, null);
	CreateSE("SE01","se戦闘_打撃音06");
	St("C",700, @0,@+100,"fu千秋_頭突き_rage");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,false);
	Move("@StNameC/C*", 250, @0, @-100, Dxl1, false);
	Zoom("@StNameC/C*", 100, 1500, 1500, Dxl1, true);
	Zoom("@StNameC/C*", 150, 1000, 1000, Dxl1, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400040kit">
「恵那ッ！！
　アイ・ラヴ・ユ――――――ッ！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：カコカコーン！！　頭ぶつける
	CreateSE("SE11","se擬音_ギャグ_頭打つ");
	CreateSE("SE12","se擬音_ギャグ_頭打つ");


	CreateColorEX("フラッシュ白", 15000, "WHITE");

	MusicStart("SE11",0,700,0,1000,null,false);
	Fade("フラッシュ白",0,1000,null,true);

	DeleteAllSt(0,true);

	Wait(50);
	MusicStart("SE12",0,700,0,1000,null,false);

	St("L",700, @0,@0,"bu平次_落ち込み_shock");
	St("C",700, @0,@0,"bu沙紅羅_頭かき_shock");
	St("R",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("L",0,false);
	FadeSt("C",0,false);
	FadeSt("R",0,true);

	Shake("@StNameL/L*", 500, 2, 0, 0, 0, 1000, Dxl1, false);
	Shake("@StNameC/C*", 500, 3, 0, 0, 0, 500, Axl1, false);
	Shake("@StNameR/R*", 500, 1, 0, 0, 0, 750, null, false);

	Fade("フラッシュ白",100,0,null,true);

	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
//◆音声指示：同時
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400050skr">
「ぎゃ―――――――――ッ！！」「ぎゃ―――――――――ッ！！」「きゃぅ―――――――んッ！！」

//◆音声指示：同時
//【富士見平次】
//<voice name="富士見平次" class="富士見平次" src="voice/23/200400060fjh">
//「ぎゃ――――――――――――ッ！！」

//◆音声指示：同時
//【ユージロー】
//<voice name="ユージロー" class="ユージロー" src="voice/23/200400070ujr">
//「きゃぅ――――――――――んッ！！」

</PRE>
	SetText();
	AddText(1,"「ぎゃ―――――――――ッ！！」","沙紅羅","23/200400050skr",false,false,1000);
	AddText(2,"「ぎゃ―――――――――ッ！！」","富士見平次","23/200400060fjh",false,true,1800);
	AddText(3,"「きゃぅ―――――――んッ！！」","ユージロー","23/200400070ujr",false,true,1500);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SoundPlay("@xbgm11",1000,450,true);

	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400080kit">
「恵那！　恵那……あれ？　恵那は？」

{	DeleteAllSt(200,true);
	St("MR",700, @-100,@0,"bu沙紅羅_通常_surprise");
	Move("@StNameMR/MR*", 200, @+100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400090skr">
「出た出たッ！！　おおおお、お化けッ！！」

{	St("ML",700, @+100,@0,"bu平次_落ち込み_sad");
	DeleteSt("MR",200,false);
	Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 300, 3, 0, 0, 0, 1000, null, false);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400100fjh">
「うううっっ！
　南無阿弥陀仏……南無阿弥陀仏……！！」

{	St("C",700, @0,@+100,"buユージローa_通常_sad");
	DeleteSt("ML",200,false);
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200400110ujr">
「わうわう！　わうわうわう！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu千秋_驚天_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400120kit">
「お化け！？　って、なに？
　ちょ、こわッ！　どこに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400130skr">
「おまえだよ、おまえ！」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400140kit">
「…………へ？」

{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400150fjh">
「だから、おまえが生き返ったんだって――」

{	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400160kit">
「ええと……ふたりとも、頭大丈夫か？」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400170skr">
「そりゃこっちのセリフだっつーの！！
　さっきまで、おまえここで死んでたから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2321);}

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400180kit">
「死んでた？」

{	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400190kit">
「いやいや、ふたりしてオレを騙そうったって――」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400200kit">
「――――あ」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400210kit">
「もしかして……今、何時？」

{	St("ML",700, @0,@0,"bu平次_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400220fjh">
「１１時、２１分……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	SetVolume("@xbgm*", 1000, 0, null);
	SoundPlay("@xsong01",0,1,true);
	St("C",700, @0,@0,"bu千秋_驚天_shock");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400230kit">
「ああああああああああッ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400240kit">
「やっぱり――やっぱりそうかッ！！
　オレ……オレ……やっぱり、死んでたんだ……！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400250skr">
「だからそう言ってるじゃねーか！」

{	SetVolumeEX("@xsong01", 3000, 300, null);
	St("C",700, @0,@0,"bu千秋_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400260kit">
「カゴメアソビ……そうだ！
　カゴメアソビに失敗して……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400270kit">
「じゃあ、双六は――死んだまま？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400280skr">
「ん？　双六さん？　アイツなら生きてっけど」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400290kit">
「あ……そ、そうなのか？　なんで？」

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400300kit">
「……ま、でも良かった。
　アイツが生きてるなら、恵那も復活――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2322);}



{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400310fjh">
「恵那はさらわれた」

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400320kit">
「……え？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400330fjh">
「河原屋双一から、電話が来たんだ。
　今頃、地下の籠に連れて行かれて――人質に」

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400340kit">
「何のために！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400350fjh">
「１０年前――
　オレはカゴメアソビを迫られて、できなかった」

{	St("ML",700, @0,@0,"bu平次_落ち込み_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400360fjh">
「きっと双一は、オレにもう一度、アザナエルを撃たせようとして、そのために恵那を――」

{	St("C",700, @0,@0,"bu千秋_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400370kit">
「そんな……」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400380fjh">
「だからオレが向こうに行って、因縁に決着を――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400390skr">
「いや、だからその足じゃ無理だろって――」

{	St("C",700, @0,@0,"bu千秋_気合い_hard");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400400kit">
「お、お、おおおお……」

{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	CreateSE("SE01","se擬音_ギャグ_腰振り");
	MusicStart("SE01",0,700,0,1600,null,false);
	Shake("@StNameC/C*", 200, 8, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400410kit">
「オレも一緒に、連れて行ってくれッ！！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400420skr">
「弟子よ！　おまえ――」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400430skr">
「腰、引けてるぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	CreateSE("SE01","se擬音_ギャグ_腰振り");
	DeleteSt("MR",200,false);
	MusicStart("SE01",0,700,0,1600,null,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400440kit">
「え？」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400450skr">
「まー人には向き不向きがあんだからよ」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400460skr">
「無理せずアタシに任せて――」

{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400470kit">
「嫌だッ！！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400480skr">
「おっ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu平次_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400490fjh">
「な……」

{	St("C",700, @0,@0,"bu千秋_気合い_hard");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400500kit">
「向き不向きじゃない」

{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400510kit">
「オレは、アイツが好きなんだ！
　だから、どんな無理をしたって、助けなきゃ――」

{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400520fjh">
「お嬢ちゃん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2323);}


//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400530skr">
「おまえ……いい根性してんじゃねぇか……
　しばらく見ねぇうちに……逞しくなって……！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400540skr">
「よし！　後ろ、乗りな」

{	St("C",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400550kit">
「乗せてくれるんですか！？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400560skr">
「落ちないよう、しっかり掴まってろよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400570kit">
「は、はい！」

{	St("ML",700, @0,@0,"bu平次_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400580fjh">
「待て待てェ！　オレは――」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400590skr">
「だから、モジャモジャは無理だろ。ここで待ってろ」

{	St("ML",700, @0,@0,"bu平次_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400600fjh">
「バッキャロー！　無理を通せば道理が引っ込む！
　病院だって、抜け出せたんだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400610fjh">
「娘への愛が、不可能を可能に――」

{	St("C",700, @+100,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400620skr">
「つん」

{	St("ML",700, @0,@0,"bu平次_通常_angry");
	DeleteSt("C",200,false);
	Shake("@StNameML/ML*", 500, 5, 0, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400630fjh">
「ぎゃああああああああッ！！」

{	St("ML",700, @0,@0,"bu平次_落ち込み_pain");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400640fjh">
「く……くそうっ！　なんてヤツだッ！！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400650skr">
「モジャモジャのオッサン、さっき言ったよな。
　女ひとりには、任せらんねぇって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400660skr">
「けど今なら、女ふたりだぜ！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400670kit">
「オレは男だっ！！」

{	St("ML",700, @0,@0,"bu平次_落ち込み_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400680fjh">
「え……？　そうなのか？」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400690kit">
「お義父さん。大丈夫です」

{	St("ML",700, @0,@0,"bu平次_落ち込み_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400700fjh">
「え……？　おとうさん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2324);}


//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400710kit">
「オレがきっと、恵那を助け出してみせます！！」

{	St("ML",700, @0,@0,"bu平次_落ち込み_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400720fjh">
「え、えーと……どゆこと？
　そういやさっき、愛してるとか――」

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400730skr">
「ウッシ！　じゃあ行くぞ！」

{	St("ML",700, @0,@0,"bu平次_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400740fjh">
「ちょっと待った！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400750fjh">
「なんだかわかんねーけど、せめて、オレの代わりに持っていってくれ！」

{	DeleteAllSt(200,true);}
　平次が手渡したのは、時代劇にでも出てくるような十手と、紐に繋がれた寛永通宝。

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400760kit">
「……なにこれ」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400770fjh">
「先祖から伝わる大切なものだ！
　絶対、おまえたちを守ってくれるはず！」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400780fjh">
「御守り代わりに取っておけって」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400790kit">
「は、はい。ありがとう……ございます……？」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200400800ujr">
「わうわうわう！」

{	CreateSE("SE10","se動物_イヌ_走る_l");
	MusicStart("SE10",0,400,0,1000,null,true);
	Move("@StNameC/C*", 200, @-300, @0, Dxl1, false);
	DeleteSt("C",200,true);}
　待ちきれず、先導するようにユージローが走り出す。

{	SetVolume("SE10", 2000, 0, null);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400810skr">
「うっしゃ！　それじゃ待ったなし！」

{	SetVolumeEX("@x*", 3000, 0, null);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400820skr">
「行っくぜええええええ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：ブオオオオオオオオン！！
	CreateSE("SE01","seメカ_バイク_エンジン始動");
	MusicStart("SE01",0,700,0,1000,null,false);

{	St("C",700, @0,@0,"bu平次_通常_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/23/200400830fjh">
「気をつけろよォォォ――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



{	ClockPass(2325);}


	TextBoxDelete(150);

	SetVolume("@x*", 1000, 0, null);

	CreateSE("SE02","seメカ_バイク_発進");

	SetVolume("SE1", 200, 0, null);
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

	Wait(2000);

	OnBG(10,"bg0701600地下_通路_バックギャモン");
	FadeBG(0,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg0701600地下_通路_バックギャモン.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Shake_Loop_shima3("@絵背景100","絵背景100process");

//マスク準備
	CreateMask("絵マスク", 3000, 0, 0, "cg/mask/ci縦ライン_00_00.png", false);
	SetAlias("絵マスク","絵マスク");
//	CreateTextureEX("絵マスクライン1", 3001, 0, 0, "cg/mask/ci縦ライン_00_00z.png");
	CreateTextureEX("絵マスクライン1", 3001, 0, 0, "cg/mask/ci縦ライン_00_00z.png");

//	CreateTextureEX("絵マスク/絵背景100", 2500, 0, -300, "cg/bg/bg0701600地下_通路_バックギャモン.jpg");
	CreateTextureEX("絵マスク/絵背景100", 2500, 0, 0, "cg/bg/bg0701600地下_通路_バックギャモン.jpg");
	Request("絵マスク/絵背景100", Smoothing);
	Zoom("絵マスク/絵背景100", 0, 1500, 1500, null, true);
	SetShade("絵マスク/絵背景100", MEDIUM);

//立ち絵準備
	CreateTextureEX("絵マスク/絵st01", 3000, Center, 0, "cg/bu/bu沙紅羅_通常_shout.png");
	CreateTextureEX("絵マスク/絵st02", 3000, Center, 70, "cg/bu/bu千秋_朗らか_smile.png");
	CreateTextureEX("絵マスク/絵st03", 3000, Center, 0, "cg/bu/bu沙紅羅_通常_normal.png");
	CreateTextureEX("絵マスク/絵st04", 3000, Center, 70, "cg/bu/bu千秋_通常_worry.png");
	CreateTextureEX("絵マスク/絵st05", 3000, Center, 70, "cg/bu/bu千秋_通常_sad.png");
	CreateTextureEX("絵マスク/絵st06", 3000, Center, 0, "cg/bu/bu沙紅羅_通常_hard.png");
	CreateTextureEX("絵マスク/絵st07", 3000, Center, 70, "cg/bu/bu千秋_通常_angry.png");
	CreateTextureEX("絵マスク/絵st08", 3000, Center, 0, "cg/bu/bu沙紅羅_通常_happy.png");
	CreateTextureEX("絵マスク/絵st09", 3000, Center, 70, "cg/bu/bu千秋_朗らか_think.png");
	CreateTextureEX("絵マスク/絵st10", 3000, Center, 0, "cg/bu/bu沙紅羅_通常_angry.png");
	CreateTextureEX("絵マスク/絵st11", 3000, Center, 70, "cg/bu/bu千秋_朗らか_shock.png");

	2320_Shake("@絵マスク/絵st01",0);

	Zoom("絵マスク", 0, 0, 1000, null, true);
	Zoom("絵マスクライン1", 0, 0, 1000, null, true);

//◆演出指定：エンジン音が鳴り続ける
//嶋：ＳＥ変更：地下に突入
//嶋：ＳＥ加工出来るなら
	CreateSE("SE01","seメカ_バイク_走行_l");
	MusicStart("SE01",500,300,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	SoundPlay("@xbgm01_noint",0,600,true);

{	St("C",700, @+100,@0,"buユージローa_通常_hard");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200400840ujr">
「くんくん……わうわうわう！！」

{	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteSt("C",200,true);
	Zoom("絵マスク", 300, 1000, 1000, Dxl1, false);
	Zoom("絵マスクライン1", 300, 1000, 1000, Dxl1, false);
	Fade("絵マスクライン1", 300, 1000, Dxl1, false);
	Fade("絵マスク/絵背景100", 300, 1000, Dxl1, false);
	Fade("@絵マスク/絵st01", 300, 1000, Dxl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400850skr">
「モジャ犬！　てめーの鼻が頼りだ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400860skr">
「上手く名探偵のところまでつれてってくれよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Zoom("絵マスク", 300, 0, 1000, Dxl1, false);
	Zoom("絵マスクライン1", 300, 0, 1000, Dxl1, false);
	Fade("絵マスクライン1", 300, 0, Dxl1, false);
	Fade("絵マスク/絵背景100", 300, 0, Dxl1, false);
	Fade("@絵マスク/絵st01", 300, 0, Dxl1, true);
	2320_Shake02("@絵マスク/絵st02",70);

{	St("C",700, @+200,@+100,"buユージローa_通常_pride");
	Move("@StNameC/C*", 200, @-200, @-100, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200400870ujr">
「わうわうわう！！」

{	Move("@StNameC/C*", 200, @-200, @+100, Dxl1, false);
	DeleteSt("C",200,true);
	Zoom("絵マスク", 300, 1000, 1000, Dxl1, false);
	Zoom("絵マスクライン1", 300, 1000, 1000, Dxl1, false);
	Fade("絵マスクライン1", 300, 1000, Dxl1, false);
	Fade("絵マスク/絵背景100", 300, 1000, Dxl1, false);
	Fade("@絵マスク/絵st02", 200, 1000, Dxl1, true);
	2320_Shake("@絵マスク/絵st03",0);
	}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400880kit">
「あの……師匠。
　連れてきてくれて、ありがとうございます」

{	Fade("@絵マスク/絵st02", 200, 0, Dxl1, true);
	Fade("@絵マスク/絵st03", 200, 1000, Dxl1, true);
	2320_Shake02("@絵マスク/絵st04",70);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400890skr">
「おまえ、その恵那と仲、良いんだろ？」

{	Fade("@絵マスク/絵st03", 200, 0, Dxl1, true);
	Fade("@絵マスク/絵st04", 200, 1000, Dxl1, true);
	2320_Shake("@絵マスク/絵st05",70);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400900kit">
「え……？　あ、ええと……
　は、はい……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	Fade("@絵マスク/絵st05", 200, 1000, Dxl1, true);
	Fade("@絵マスク/絵st04", 0, 0, Dxl1, false);
	2320_Shake02("@絵マスク/絵st03",0);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400910kit">
「未来の恋人と言いますか……なんと言いますか……」

{	Fade("@絵マスク/絵st05", 200, 0, Dxl1, true);
	Fade("@絵マスク/絵st03", 200, 1000, Dxl1, true);
	2320_Shake("@絵マスク/絵st05",70);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400920skr">
「おまえを生き返らせたのな。
　たぶん恵那だ」

{	Fade("@絵マスク/絵st03", 200, 0, Dxl1, true);
	Fade("@絵マスク/絵st05", 200, 1000, Dxl1, true);
	2320_Shake02("@絵マスク/絵st06",0);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400930kit">
「え……？」

{	Fade("@絵マスク/絵st05", 200, 0, Dxl1, true);
	Fade("@絵マスク/絵st06", 200, 1000, Dxl1, true);
	2320_Shake("@絵マスク/絵st05",70);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400940skr">
「死者を蘇らせるなんて、アザナエルくらいにしかできねぇ芸当だろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Fade("@絵マスク/絵st06", 200, 0, Dxl1, true);
	Fade("@絵マスク/絵st05", 200, 1000, Dxl1, true);
	2320_Shake02("@絵マスク/絵st07",70);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400950kit">
「そ……そっか……恵那が……」

{	Fade("@絵マスク/絵st07", 200, 1000, Dxl1, true);
	Fade("@絵マスク/絵st05", 0, 0, Dxl1, false);
	2320_Shake("@絵マスク/絵st08",0);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400960kit">
「うん……そうとわかったら……
　絶対、助けなきゃ！！」

{	Fade("@絵マスク/絵st07", 200, 0, Dxl1, true);
	Fade("@絵マスク/絵st08", 200, 1000, Dxl1, true);
	2320_Shake02("@絵マスク/絵st09",70);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400970skr">
「おう！　その意気だ！」

{	Fade("@絵マスク/絵st08", 200, 0, Dxl1, true);
	Fade("@絵マスク/絵st09", 200, 1000, Dxl1, true);
	2320_Shake("@絵マスク/絵st03",0);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200400980kit">
「ところで師匠は、探してた同人誌、見つかりました？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Fade("@絵マスク/絵st09", 200, 0, Dxl1, true);
	Fade("@絵マスク/絵st03", 200, 1000, Dxl1, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200400990skr">
「ん……ああ。その話か」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401000skr">
「そいつは、ま、後で――」

{	Zoom("絵マスク", 300, 0, 1000, Dxl1, false);
	Zoom("絵マスクライン1", 300, 0, 1000, Dxl1, false);
	Fade("絵マスクライン1", 300, 0, Dxl1, false);
	Fade("絵マスク/絵背景100", 300, 0, Dxl1, false);
	Fade("@絵マスク/絵st*", 300, 0, Dxl1, true);
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401010ujr">
「わうわうわう！！」

{	DeleteSt("C",200,true);
	2320_Shake("@絵マスク/絵st03",0);
	2320_Shake02("@絵マスク/絵st10",0);
	Zoom("絵マスク", 300, 1000, 1000, Dxl1, false);
	Zoom("絵マスクライン1", 300, 1000, 1000, Dxl1, false);
	Fade("絵マスクライン1", 300, 1000, Dxl1, false);
	Fade("絵マスク/絵背景100", 300, 1000, Dxl1, false);
	Fade("@絵マスク/絵st03", 300, 1000, Dxl1, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401020skr">
「ん――？」

{	Fade("@絵マスク/絵st10", 200, 1000, Dxl1, true);
	Fade("@絵マスク/絵st03", 0, 0, Dxl1, false);
	2320_Shake("@絵マスク/絵st11",70);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401030skr">
「ゲ！　しっかり掴まってろ！」

{	Fade("@絵マスク/絵st10", 200, 0, Dxl1, true);
	Fade("@絵マスク/絵st11", 200, 1000, Dxl1, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401040kit">
「しっかりって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE*", 500, 0, null);
	Zoom("絵マスク", 200, 0, 1000, Dxl1, false);
	Zoom("絵マスクライン1", 200, 0, 1000, Dxl1, false);
	Fade("絵マスクライン1", 200, 0, Dxl1, false);
	Fade("絵マスク/絵背景100", 200, 0, Dxl1, false);
	Fade("@絵マスク/絵st*", 200, 0, Dxl1, true);

//◆演出指定：最初、電車無し差分。後で後ろから光と共に電車が追っかけてくる感じになる

	CreateSE("SE01","seメカ_バイク_エンジン加速");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵マスク/絵*");
	Delete("絵マスク");
	Delete("絵マスクライン1");
	Delete("@絵2320_shake01");
	Delete("@絵2320_shake02");
	Delete("@絵背景100");

	DeleteAllSt(0,true);

//===================================================================//
//嶋：まとめ作成
	CreateWindow("絵マスク", 3000, 0, 100, 1024, 376, false);

	CreateColorSP("絵マスク/絵色100", 2000, "Black");
	CreateTextureEX("絵マスクライン1", 5001, 0, 288, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵マスクライン2", 5001, 0, 288, "cg/mask/ciライン_00_00z_ogm.png");

	CreateTextureEX("絵マスク/絵背景350", 2200, Center, 0, "cg/ev/ex/ev2320沙紅羅千秋と地下鉄チェイスb_x02.png");
	CreateTextureEXadd("絵マスク/絵背景300", 4100, Center, 0, "cg/ev/ex/ev2320沙紅羅千秋と地下鉄チェイスb_x01.png");
	CreateTextureEXadd("絵マスク/絵背景400", 4100, Center, 0, "cg/ev/ex/ev2320沙紅羅千秋と地下鉄チェイスb_x02.png");

	Shake("絵マスク/絵背景300", 100000, 0, 1, 0, 0, 750, null, false);
	Shake("絵マスク/絵背景400", 100000, 0, 1, 0, 0, 750, null, false);
	Fade("絵マスク/絵背景350", 0, 1000, null, true);
	Fade("絵マスク/絵背景300", 0, 800, null, true);
	Fade("絵マスク/絵背景400", 0, 200, null, true);

	CreateTextureSP("絵マスク/絵st01", 3000, Center, 0, "cg/bu/bu沙紅羅_通常_shout.png");
	CreateTextureSPmul("絵マスク/絵st02", 4002, Center, 0, "cg/bu/bu沙紅羅_通常_shout.png");
	CreateStencil("絵マスク/ステンシル",4001,center,0,128,"cg/bu/bu沙紅羅_通常_shout.png",false);
	CreateColorSPmul("絵マスク/ステンシル/色１", 4000, "Black");
	Zoom("絵マスク/ステンシル", 0, 990, 990, null, true);
	Fade("絵マスク/ステンシル/色１", 0, 500, null, true);

	CreateTextureEX("絵マスク/絵st03", 3000, Center, 70, "cg/bu/bu千秋_通常_pain.png");
	CreateTextureEXmul("絵マスク/絵st04", 4002, Center, 70, "cg/bu/bu千秋_通常_pain.png");
	CreateStencil("絵マスク/ステンシル2",4001,center,70,128,"cg/bu/bu千秋_通常_pain.png",false);
	CreateColorEX("絵マスク/ステンシル2/色２", 4000, "Black");
	Zoom("絵マスク/ステンシル2", 0, 990, 990, null, true);

	Shake("絵マスク/ステンシル", 100000, 0, 1, 0, 0, 1000, null, false);
	Shake("絵マスク/ステンシル2", 100000, 0, 1, 0, 0, 1000, null, false);

	CreateTextureEX("絵マスク/絵st05", 3000, Center, 70, "cg/bu/bu千秋_通常_fear.png");
	CreateTextureEXmul("絵マスク/絵st06", 4002, Center, 70, "cg/bu/bu千秋_通常_fear.png");

	CreateTextureEX("絵マスク/絵st07", 3000, Center, 0, "cg/bu/bu沙紅羅_通常_hard.png");
	CreateTextureEXmul("絵マスク/絵st08", 4002, Center, 0, "cg/bu/bu沙紅羅_通常_hard.png");

	CreateTextureEX("絵マスク/絵st09", 3000, Center, 70, "cg/bu/bu千秋_通常_worry.png");
	CreateTextureEXmul("絵マスク/絵st10", 4002, Center, 70, "cg/bu/bu千秋_通常_worry.png");

	CreateTextureEX("絵マスク/絵st11", 3000, Center, 70, "cg/bu/bu千秋_通常_normal.png");
	CreateTextureEXmul("絵マスク/絵st12", 4002, Center, 70, "cg/bu/bu千秋_通常_normal.png");

	CreateTextureEX("絵マスク/絵st13", 3000, Center, 70, "cg/bu/bu千秋_通常_shout.png");
	CreateTextureEXmul("絵マスク/絵st14", 4002, Center, 70, "cg/bu/bu千秋_通常_shout.png");

	CreateTextureEX("絵マスク/絵st15", 3000, Center, 0, "cg/bu/bu沙紅羅_通常_angry.png");
	CreateTextureEXmul("絵マスク/絵st16", 4002, Center, 0, "cg/bu/bu沙紅羅_通常_angry.png");


	Zoom("絵マスク", 0, 1000, 0, null, true);

//===================================================================//

//◆演出指定：最初はガタガタ揺れまくるバイク
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev2320沙紅羅千秋と地下鉄チェイスa.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	CreateTextureEX("絵背景101", 101, Center, Middle, "cg/ev/ev2320沙紅羅千秋と地下鉄チェイスa.jpg");
	Fade("絵背景101", 0, 1000, null, true);

	CreateTextureSP("絵背景1000", 1000, -1023, -400, "cg/ev/l/ev2320沙紅羅千秋と地下鉄チェイスa_l.jpg");
	SetBlur("絵背景1000", true, 3, 500, 50, false);

	Wait(1000);
	2320_transition("White",1000);

	Shake_Loop_shima("@絵背景101","shake01");

//◆ＥＶ："ev/ev2320沙紅羅千秋と地下鉄チェイス.txt" 差分Ａ


	CreateTextureEX("絵背景500", 1000, -767, -16, "cg/ev/l/ev2320沙紅羅千秋と地下鉄チェイスa_l.jpg");
	CreateTextureEX("絵背景2000", 1000, -767, -16, "cg/ev/l/ev2320沙紅羅千秋と地下鉄チェイスb_l.jpg");

	Shake_Loop_shima2("@絵背景500","shake02");


	CreateSE("SE10","se戦闘_倒壊03");
	MusicStart("SE10",0,500,0,1000,null,true);
	CreateSE("SE20","seメカ_バイク_走行_l");
	MusicStart("SE20",0,300,0,900,null,true);

	Move("絵背景1000", 3800, -680, -500, Dxl1, false);
	Shake("@絵背景1000", 5000, 1, 25, 0, 0, 1000, null, false);

	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	Wait(2000);
	SetVolume("SE10", 1500, 0, null);

//	Shake("絵背景101", 2000, 3, 5, 0, 0, 1000, null, false);
	FadeDelete("絵背景1000", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401050kit">
「のわあああああああああああ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401060skr">
「くぅうううッ！！　せっかく整備した暴蛇羅号が――」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401070skr">
「おいモジャ犬！　ホントにこっちでいいんだろうな！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401080ujr">
「わう――――ん！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401090skr">
「自信満々に吠えやがって」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401100kit">
「アイツ、警察犬の試験に落ちてるんだよなあ……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401110skr">
「マジかよ！？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401120kit">
「一応、基本的な技術は足りてるらしいんだけど。
　なんか応用力がないらしくて。あ、あと女好き」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401130skr">
「応用力って？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("@絵背景500", 500, 1000, null, true);
	Delete("@shake01");
	Shake_Loop_shima("@絵背景2000","shake03");

//◆演出指定：ここら辺から、徐々に電車の音が辺りに響き始める。クリック毎に、ゆっくりと背後から電車の光が差してくる
	CreateSE("SE01","seメカ_電車_走行_l");
	MusicStart("SE01",1000,100,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401140kit">
「良くわかんないんだけど、なんか普通に捜査してるだけなのにトラブルに見舞われる……とか」

{	Fade("絵背景2000", 500, 250, null, false);
	SetVolumeEX("@SE01", 1000, 200, null);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401150skr">
「……おい、弟子！」

{	SetVolumeEX("@x*", 4000, 0, null);
	Fade("絵背景2000", 2000, 600, null, false);
	SetVolumeEX("@SE01", 1000, 400, null);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401160kit">
「あ、ああ。聞こえる」

{	SetVolumeEX("@SE01", 1000, 450, null);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401170skr">
「だよな。この音って――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景2000", 1000, 1000, null, true);

	CreateColorEXadd("絵色100", 5000, "White");

	Fade("絵色100", 200, 1000, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 200, Dxl1, "cg/data/circle_11_01_0.png", true);

//◆ＥＶ："ev/ev2320沙紅羅千秋と地下鉄チェイス.txt" 差分Ｂ
	CreateTextureEX("絵背景200", 1200, Center, Middle, "cg/ev/ev2320沙紅羅千秋と地下鉄チェイスb.jpg");
	CreateTextureEX("絵背景201", 1201, Center, Middle, "cg/ev/ev2320沙紅羅千秋と地下鉄チェイスb.jpg");
	Zoom("@絵背景201", 0, 2000, 2000, null, true);
	SetBlur("@絵背景201", true, 3, 500, 50, false);

	SetVolumeEX("@SE01", 1000, 600, null);
	Fade("絵背景201", 0, 1000, null, true);
	Fade("絵背景200", 0, 1000, null, true);
	Shake_Loop_shima("@絵背景201","shake02");

//◆ＳＥ：フアン！　という音と共に電車のライトが光る
	CreateSE("SE40","seメカ_電車_クラクション");
	MusicStart("SE40",0,700,0,1000,null,false);

	Zoom("@絵背景201", 500, 1000, 1000, Dxl1, false);
	FadeDelete("絵色100", 700, null, true);
	SetBlur("@絵背景201", false, 3, 500, 50, false);
	Delete("@shake01");
	Delete("絵背景100");
	Delete("絵背景101");
	Delete("絵背景500");
	Delete("絵背景1000");

	SoundPlay("@xbgm03",0,600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401180skr">
「電車だあっ！！」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401190ujr">
「わうわうわうわうっ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401200kit">
「いやいや、落ち着けって！
　反対側の線路に移れば――」

{	2320_transitionstart();
//◆ＳＥ：フアン！　という音と共に電車のライトが光る
	CreateSE("SE41","seメカ_電車_クラクション");
	MusicStart("SE41",0,500,500,1000,null,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401210kit">
「ぎゃあああああ！　前からもきたッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Zoom("絵マスク", 200, 1000, 1000, null, false);
	Move("絵マスクライン1", 200, @0, 89, null, false);
	Move("絵マスクライン2", 200, @0, 460, null, false);
	Fade("絵マスクライン1", 200, 1000, null, false);
	Fade("絵マスクライン2", 200, 1000, null, true);

//◆ＳＥ：プップー！
	CreateSE("SE40","seメカ_バイク_クラクション");
	MusicStart("SE40",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401220skr">
「と、止まってくれ！！」

{	Fade("絵マスク/絵st02", 200, 0, null, false);
	Fade("絵マスク/絵st01", 200, 0, null, false);
	Fade("絵マスク/ステンシル/色１", 200, 0, null, true);
	Fade("絵マスク/ステンシル2/色２", 200, 500, null, false);
	Fade("絵マスク/絵st04", 200, 1000, null, false);
	Fade("絵マスク/絵st03", 200, 1000, null, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401230kit">
「って、電車加速してるしぃ！！」

{	Fade("絵マスク/絵st05", 0, 1000, null, false);
	Fade("絵マスク/絵st06", 0, 1000, null, true);
	Fade("絵マスク/絵st04", 0, 0, null, false);
	Fade("絵マスク/絵st03", 0, 0, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401240kit">
「見えてない！？　それとも――」

{	Fade("絵マスク/絵st05", 200, 0, null, false);
	Fade("絵マスク/絵st06", 200, 0, null, false);
	Fade("絵マスク/ステンシル2/色２", 200, 0, null, ture);
	Fade("絵マスク/ステンシル/色１", 200, 500, null, false);
	Fade("絵マスク/絵st07", 200, 1000, null, false);
	Fade("絵マスク/絵st08", 200, 1000, null, true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401250skr">
「河原屋組に脅されてるとか――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2326);}



	Zoom("絵マスク", 200, 1000, 0, null, false);
	Move("絵マスクライン1", 200, @0, 288, null, false);
	Move("絵マスクライン2", 200, @0, 288, null, false);
	Fade("絵マスクライン1", 200, 0, null, false);
	Fade("絵マスクライン2", 200, 0, null, true);


	2320_transition("White",1500);
	2320_transitionstart();
	CreateSE("SE40","seメカ_電車_クラクション");
	MusicStart("SE40",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//◆ＳＥ：ファン！
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401260kit">
「向こうのとも差、詰まってる！
　もっとスピードでないのか！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401270skr">
「もう限界だっつーの！　おまえがなんとかしろ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401280kit">
「ど、どうしろってんだよ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵マスク/絵st07", 0, 0, null, false);
	Fade("絵マスク/絵st08", 0, 0, null, true);
	Fade("絵マスク/絵st01", 0, 1000, null, false);
	Fade("絵マスク/絵st02", 0, 1000, null, true);

	Shake("絵マスク/ステンシル", 100000, 0, 1, 0, 0, 1000, null, false);
	Shake("絵マスク/ステンシル2", 100000, 0, 1, 0, 0, 1000, null, false);

	Zoom("絵マスク", 200, 1000, 1000, null, false);
	Move("絵マスクライン1", 200, @0, 89, null, false);
	Move("絵マスクライン2", 200, @0, 460, null, false);
	Fade("絵マスクライン1", 200, 1000, null, false);
	Fade("絵マスクライン2", 200, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401290skr">
「ほら、さっきなんかもじゃもじゃからもらっただろ！」

{	Fade("絵マスク/絵st02", 200, 0, null, false);
	Fade("絵マスク/絵st01", 200, 0, null, false);
	Fade("絵マスク/ステンシル/色１", 200, 0, null, true);
	Fade("絵マスク/ステンシル2/色２", 200, 500, null, false);
	Fade("絵マスク/絵st09", 200, 1000, null, false);
	Fade("絵マスク/絵st10", 200, 1000, null, true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401300kit">
「あ……そっか」

{	Fade("絵マスク/絵st11", 0, 1000, null, false);
	Fade("絵マスク/絵st12", 0, 1000, null, true);
	Fade("絵マスク/絵st09", 0, 0, null, false);
	Fade("絵マスク/絵st10", 0, 0, null, false);}
　千秋は、十手と投げ銭の束を交互に見つめて……

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401310kit">
「……こっち、だよな」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401320kit">
「コイツを――」

{	Fade("絵マスク/絵st13", 0, 1000, null, false);
	Fade("絵マスク/絵st14", 0, 1000, null, true);
	Fade("絵マスク/絵st11", 0, 0, null, false);
	Fade("絵マスク/絵st12", 0, 0, null, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401330kit">
「くらええええええええッ！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵ゼニ", 10000, Center, Middle, "cg/img/img古銭飛来.jpg");

	CreateSE("SE05","se戦闘_風切り音03");

	SetBlur("絵ゼニ", true, 3, 500, 50, false);

	Fade("絵ゼニ", 200, 1000, null, false);

	MusicStart("SE05",0,700,0,1000,null,false);

	Zoom("絵ゼニ", 1000, 3000, 3000, Dxl1, false);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	Wait(300);

	Fade("フラッシュ白",300,1000,null,true);

	Zoom("絵マスク", 0, 1000, 0, null, false);
	Move("絵マスクライン1", 0, @0, 288, null, false);
	Move("絵マスクライン2", 0, @0, 288, null, false);
	Fade("絵マスクライン1", 0, 0, null, false);
	Fade("絵マスクライン2", 0, 0, null, true);

	Move("@StNameC/C*", 200, @0, @0, Dxl1, false);


	Delete("絵ゼニ");

//◆ＳＥ：ちゃりん
//あきゅん「演出：ここで金の音だけ響かせるために修正しました」
	CreateSE("SE06","se日常_小銭");

	SetVolumeEX("@x*", 300, 1, null);
	SetVolumeEX("SE*", 300, 1, null);
	MusicStart("SE06",0,1000,0,1000,null,false);

	$SETime = RemainTime("SE06");
	WaitKey($SETime);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　無傷。

//◆音声指示：泣きそうになりながら
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401340kit">
「ですよねー」

{
//あきゅん「演出：電車音復帰」
	SetVolumeEX("SE*", 4000, 600, null);
	SetVolumeEX("@xbgm03", 4000, 600, null);
}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401350skr">
「役立たねええええええ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401360skr">
「もっとがんばれよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401370kit">
「がんばれって言われても……」

{	CreateSE("SE05","se戦闘_風切り音03");
	MusicStart("SE05",0,700,0,1000,null,false);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);
	CreateSE("SE06","se日常_小銭");
	MusicStart("SE06",0,700,0,1000,null,false);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401380kit">
「えい！」

//◆ＳＥ：ちゃりん
{	CreateSE("SE05","se戦闘_風切り音03");
	MusicStart("SE05",0,700,0,1000,null,false);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);
	CreateSE("SE06","se日常_小銭");
	MusicStart("SE06",0,700,0,1000,null,false);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401390kit">
「やあ！」

//◆ＳＥ：ちゃりん
{	CreateSE("SE05","se戦闘_風切り音03");
	MusicStart("SE05",0,700,0,1000,null,false);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);
	CreateSE("SE06","se日常_小銭");
	MusicStart("SE06",0,700,0,1000,null,false);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401400kit">
「とう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Shake_Loop_shima4("@絵背景2000","shake01");
	Move("絵背景2000", 300, -559, -91, Dxl1, false);
	FadeDelete("絵背景201", 300, null, false);
	FadeDelete("絵背景200", 300, null, true);
	Delete("@shake02");
	Delete("@shake03");
	Delete("絵背景201");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401410skr">
「気合いが足んねーんだよッ。貸せ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401420kit">
「え？」

　沙紅羅は紐ごと投げ銭を奪い取り――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	Fade("絵マスク/ステンシル2/色２", 0, 0, null, false);
	Fade("絵マスク/絵st13", 0, 0, null, false);
	Fade("絵マスク/絵st14", 0, 0, null, true);
	Fade("絵マスク/ステンシル/色１", 0, 500, null, false);
	Fade("絵マスク/絵st15", 0, 1000, null, false);
	Fade("絵マスク/絵st16", 0, 1000, null, true);
	Shake("絵マスク/ステンシル", 100000, 0, 1, 0, 0, 1000, null, false);
	Shake("絵マスク/ステンシル2", 100000, 0, 1, 0, 0, 1000, null, false);
	Zoom("絵マスク", 200, 1000, 1000, null, false);
	Move("絵マスクライン1", 200, @0, 89, null, false);
	Move("絵マスクライン2", 200, @0, 460, null, false);
	Fade("絵マスクライン1", 200, 1000, null, false);
	Fade("絵マスクライン2", 200, 1000, null, true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0342]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401430skr">
「どりゃるぁあああっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Zoom("絵マスク", 200, 1000, 0, null, false);
	Move("絵マスクライン1", 200, @0, 288, null, false);
	Move("絵マスクライン2", 200, @0, 288, null, false);
	Fade("絵マスクライン1", 200, 0, null, false);
	Fade("絵マスクライン2", 200, 0, null, true);

	CreateTextureEX("絵背景3000", 3000, -300, -575, "cg/ev/l/ev2320沙紅羅千秋と地下鉄チェイスb_l.jpg");
	Shake("絵背景3000", 10000, 1, 2, 0, 0, 500, null, false);
	CreateTextureEX("絵背景3001", 3000, -300, -575, "cg/ev/l/ev2320沙紅羅千秋と地下鉄チェイスc_l.jpg");

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	Shake("絵背景3001", 10000, 1, 2, 0, 0, 500, null, false);

	SetVolume("SE*", 500, 0, null);

	Fade("絵背景3000", 200, 1000, null, true);

	CreateSE("SE00","se環境_ショート01");
	MusicStart("SE00",0,1200,0,1000,null,false);

	Fade("フラッシュ白",100,1000,null,true);
//◆ＳＥ：キキ――――ッ！！
	CreateSE("SE11","seメカ_電車_急ブレーキ");
	MusicStart("SE11",0,700,0,1000,null,true);
	Fade("絵背景3001", 0, 1000, null, true);
	2320_flash();
	Fade("フラッシュ白",100,0,null,true);

	Wait(2000);

//◆ＥＶ："ev/ev2320沙紅羅千秋と地下鉄チェイス.txt" 差分Ｃ

	Fade("フラッシュ白",500,1000,null,true);
	Delete("絵背景3000");
	Delete("絵背景3001");
	Delete("@絵背景3002");
	Delete("@絵フラッシュ");

//◆演出指定：スパークして電車が止まる

	CreateTextureEX("絵背景300", 300, Center, Middle, "cg/ev/ev2320沙紅羅千秋と地下鉄チェイスc.jpg");
	CreateTextureEX("絵背景301", 301, Center, Middle, "cg/ev/ev2320沙紅羅千秋と地下鉄チェイスc.jpg");

	Shake_Loop_shima("@絵背景301","shake01");

	Zoom("絵背景301", 0, 2000, 2000, null, true);
	Fade("絵背景301", 0, 1000, null, true);
	Fade("絵背景300", 0, 1000, null, true);


//◆ＳＥ：バチバチバチィ！！
	CreateSE("SE12","se環境_ショート01");
	MusicStart("SE12",0,700,0,800,null,false);
	CreateSE("SE13","se戦闘_倒壊03");
	MusicStart("SE13",0,300,0,1000,null,false);

	Delete("@shake02");
	Delete("絵背景200");
	Delete("絵背景2000");
	Delete("絵背景201");
	Delete("絵マスク/絵*");
	Delete("絵マスク");
	Delete("絵マスクライン*");

	Zoom("絵背景301", 1000, 1000, 1000, Dxl1, false);

{	SetVolume("SE11", 5000, 0, null);}

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401440kit">
「ええええええええええ！？」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401450skr">
「どんなもんだッ！！」

//◆音声指示：勝利の雄叫び
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401460ujr">
「わう――――――――ん」

//◆ＳＥ：フアン！　という音と共に電車のライトが光る
{	2320_transition("White",1500);
	2320_transitionstart();
	CreateSE("SE14","seメカ_電車_通過");
	MusicStart("SE14",0,700,0,1000,null,false);}
　反対から迫る車両とすれ違い、ユージローが遠吠えをあげた。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE11", 500, 0, null);
	SetVolume("SE12", 500, 0, null);
	SetVolume("SE13", 500, 0, null);
	SetVolume("SE14", 500, 0, null);
	SetVolume("@xbgm*", 1500, 0, null);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");
	Delete("@shake01");



//◆時間：ジャンプ
{	ClockPass(2329);}
	Wait(2000);

//◆場所：籠_正面
	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);

	CreateColorEX("絵色100", 1000, "Black");
	Fade("絵色100", 0, 500, null, true);

//◆ＳＥ：犬の足音

//◆演出指定：犬が先行する感じの演出



	DrawDelete("黒幕１", 300, 100, null, "slide_01_01_1", true);

	CreateSE("SE01","se動物_イヌ_走る_l");
	MusicStart("SE01",1500,700,0,1000,null,true);

	Wait(2000);

	St("C",700, @+100,@+150,"buユージローa_通常_normal");
	CreateSE("SE02","se動作_一歩");

	SetVolume("SE01", 300, 0, null);
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @-100, @-150, Dxl1, false);
	FadeSt("C",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401470ujr">
「わうわう！　わうわうわう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE02","se動作_一歩");

	MusicStart("SE02",0,500,0,700,null,false);
	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	DeleteSt("C",200,true);

//◆演出指定：遠くからライトが近づいてきて、バイクが止まる音
//◆ＳＥ：ふたりとも、降りる

	CreateColorEXadd("絵色200", 1500, "White");
	CreateSE("SE02","seメカ_バイク_走行_l");
	MusicStart("SE02",2000,700,0,1000,null,true);

	Fade("絵色200", 300, 700, null, false);
	DrawTransition("絵色200", 1500, 0, 1000, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

	CreateSE("SE01","seメカ_バイク_エンジン停止");

	Fade("絵色200", 300, 1000, null, true);
	SetVolume("@SE02", 300, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵色100", 1000, null, false);
	FadeDelete("絵色200", 1000, null, true);

	Wait(1000);

	St("ML",700, @-100,@0,"bu沙紅羅_通常_hard");

	CreateSE("SE03","se動作_一歩");
	MusicStart("SE03",0,500,0,1000,null,false);
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	FadeSt("ML",200,true);

	SoundPlay("@xbgm24",1000,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401480skr">
「とうとう、来たな」

{	St("MR",700, @-100,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	Move("@StNameMR/MR*", 200, @+100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401490kit">
「ああ。でも……」

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401500ujr">
「くぅぅ……ん」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401510kit">
「ここまで来ると、緊張するな……」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401520kit">
「ホントに、オレたちだけで……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401530skr">
「大丈夫ッ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401540skr">
「人間、名前でも身体でもねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：トントン
	CreateSE("SE01","se動作_軽く叩く");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(1000);
	CreateSE("SE02","se動作_軽く叩く");
	MusicStart("SE02",0,1000,0,1000,null,false);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401550skr">
「大切なのは、ココだって言っただろ？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401560kit">
「……うん！」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"buユージローa_通常_sad");
	Shake("@StNameC/C*", 500, 5, 0, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401570ujr">
「わう――わうわうっ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401580skr">
「ん？　モジャ犬？　なに引っ掻いて――」

{	CreateSE("SE01","se動作_バッグ渡す");
	St("C",700, @0,@0,"buユージローa_通常_hard");
	DeleteSt("ML",200,false);
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("@StNameC/C*", 500, 0, 5, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401590ujr">
「はっはっは！！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401600kit">
「あ……これ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_驚天_shy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401610kit">
「身体の毛に埋もれてわかんなかったけど……
　恵那のブルマー！？」

{	St("C",700, @0,@0,"buユージローa_通常_ero");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401620ujr">
「わうっ！！」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401630kit">
「こら！　なにやってんだ！　返せ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401640ujr">
「がるるるるるるる……」

{	St("MR",700, @0,@0,"bu千秋_通常_fear");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401650kit">
「な、なにうなり声とか立ててんだよ！」

{	SetVolumeEX("@xbgm*", 2000, 0, null);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401660skr">
「ん……あ、そっか。
　こうこう……こうして欲しいんだな？」

{	Move("@StNameML/ML*", 200, @+100, @+200, Dxl1, false);
	DeleteSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401670ujr">
「はっはっは！　くぅーん！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401680kit">
「え？　ちょっとそんな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指定：ユージローブルマー装着
	CreateTextureEX("絵背景1000", 100, Center, Middle, "cg/bg/bg0801200籠_正面_ブラックライト.jpg");
	CreateTextureEX("絵背景2000", 200, Center, Middle, "cg/ef/ef_カット汎用01.jpg");
	Zoom("絵背景1000", 0, 2000, 2000, null, true);
	SetShade("絵背景1000", MEDIUM);
	Move("絵背景1000", 0, @0, -288, null, true);
	CreateTextureEX("絵背景3000", 1000, -65, -768, "cg/bu/l/buユージローb_通常_ero_x01.png");

	SetVolumeEX("@xbgm24", 1000, 0, null);

	Fade("絵背景1000", 500, 1000, null, false);
	Fade("絵背景3000", 500, 1000, null, false);
	Move("絵背景1000", 1000, @0, 100, Dxl1, false);
	Move("絵背景3000", 1000, @0, -330, Dxl1, true);
	CreateSE("SE01","se擬音_ギャグ_じゃじゃーん");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景2000", 100, 1000, null, true);
	Delete("絵背景1000");

	WaitKey(2000);

	SoundPlay("@xbgm23",1000,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/23/200401690ujr">
「わう！」

{	FadeDelete("絵背景*", 200, null, true);
	St("MR",700, @0,@0,"bu千秋_朗らか_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401700kit">
「――――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401710skr">
「なんだなんだ？
　しょっぺー顔しやがって！　怖いか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_朗らか_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401720kit">
「そういうんじゃ、ないですけど」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401730skr">
「ん……しゃーねーな。
　じゃ、御守り代わりに――ホレ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401740skr">
「健康祈願、もらっとけ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景1000", 1000, Center, Middle, "cg/obj/obj御札.png");
	Move("絵背景1000", 0, @0, @+100, null, true);

	Move("絵背景1000", 300, @0, @-100, Dxl1, false);
	Fade("絵背景1000", 300, 1000, Dxl1, true);

	Wait(1000);

	Move("絵背景1000", 300, @0, @+100, Dxl1, false);
	FadeDelete("絵背景1000", 300, null, true);

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401750kit">
「え……？　ちょっと、これどこから！？」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401760skr">
「みそブーからもらった！」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401770kit">
「みそブー？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401780skr">
「ああ！　アタシのシャテーだ！
　なんでも、霊験暖からしいぜ！」

{	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401790kit">
「この御札もしかして……オレと、恵那の家の？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401800kit">
「ふふ、ふははははは……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401810skr">
「おい、どした？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401820kit">
「ん？　いやいや」

{	St("MR",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401830kit">
「なんかよくわかんねーけど、神様が味方になってくれてんだなと思って」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401840skr">
「ん、そかそか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//嶋：可能ならここで全アイテム表示

	DeleteAllSt(200,true);

//	SetVolume("@xbgm11", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　沙紅羅は愛用の暴蛇羅号に喝雄不死――

　千秋は平次からもらった十手と御札――

　ユージローは恵那のブルマー――

　それぞれの装備を身につけて――

{
//	SoundPlay("@xbgm22",1000,450,true);
	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401850skr">
「ウシ……ふたりとも、いい顔だ」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401860skr">
「いいか、弟子よ！
　おまえは命に代えても、名探偵を連れて帰れ」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401870skr">
「アタシは絶対、アザナエルを持ち帰るからな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401880kit">
「……わかった」

{	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401890kit">
「約束だよ」

{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401900skr">
「ああ、約束だ」


{	St("C",700, @0,@0,"bu沙紅羅_後ろ向き_rage");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/23/200401910skr">
「んじゃあ――行くぜッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//嶋：次のスクリプトで鳴らした方がよいかと。
//◆ＳＥ：扉を開ける
//	CreateSE("SE01","se動作_ドア開ける04");
//	MusicStart("SE01",0,700,0,1000,null,false);

	St("MR",700, @0,@0,"bu千秋_気合い_shout");
	St("ML",700, @0,@0,"buユージローb_通常_angry");
	FadeSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//◆音声指示：同時
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/23/200401920kit">
「おうッ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ユージロー】
//<voice name="ユージロー" class="ユージロー" src="voice/23/200401930ujr">
//「わうッ！」

</PRE>
	SetText();
	AddText(1,"「おうッ！」","小碓千秋","23/200401920kit",false,false,1000);
	AddText(2,"「わうッ！」","ユージロー","23/200401930ujr",false,true,1700);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	DeleteAllSt(200,true);

	SetVolume("@xbgm*", 1000, 0, null);


	EndScene();


}
