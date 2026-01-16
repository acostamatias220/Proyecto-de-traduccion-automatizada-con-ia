
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2131千秋_恵那_フウリ.nss_MAIN
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
		$GameName = "ab2133千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "ab2133千秋_恵那.nss";
	}else if($CharaName=="フウリ"){
		$GameName = "ab2133フウリ.nss";
	}else{
		$GameName = "ab2133千秋_恵那.nss";
	}

//	$GameName = "";
//	$GameCircle=false;


}

scene ab2131千秋_恵那_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="340">
////////////header////////////
//file name "ab2131フウリ.nss"
//title "ふたりのアッキー"
//previous "2130フウリ.nss"

////////////footer////////////
//next "千秋" "ab2133千秋_恵那.nss"
//next "恵那" "ab2133千秋_恵那.nss"
//next "フウリ" "ab2133フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2131);}


//※↓2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nssからの流れを考えると、舞台裏がふさわしい？（mngw 11/12）

//◆場所：ＵＰ＋_屋外セット_炎上
//	OnBG(10,"bg1201200ＵＰ＋_屋外セット_炎上");
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm24",0,450,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab21/310100010kms">
「過ちでした」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100020wfu">
「そんな――！？」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab21/310100030kms">
「――人間は、愚かです」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab21/310100040kms">
「時に感情に流されて、理に適わぬことをする。
　ミヅハ様は、人間の感情に惑わされたのです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("MR",700, @0,@0,"buフウリ_胸手_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100050wfu">
「そんなことは――」

{	St("C",700, @0,@0,"bu歌門_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab21/310100060kms">
「冷たい目で人を見据え、静かに判断をお下しなさい。
　ノーコが人間に害を為すなら、祓うまで」

{	St("C",700, @0,@0,"bu歌門_通常_pride");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab21/310100070kms">
「それが、ミヅハ様の役割です」

{	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/310100080mzh">
「わらわの役割……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,true);
	St("ML",700, @60,@0,"bu恵那_ハルヒ_angry");
	St("R",700, @60,@0,"buユージローa_通常_hard");
	Move("@StNameML/ML*", 200, @-60, @0, DxlAuto, false);
	FadeSt("ML",200,true);
	Move("@StNameR/R*", 200, @-60, @0, DxlAuto, false);
	FadeSt("R",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/310100090fje">
「ちょっとちょっと！
　なに子供に吹き込んでるんですか！」


{	Shake("@StNameR/R*", 100, 5, 5, 0, 0, 500, null, false);}

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/310100100ujr">
「わうわうわう！」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100110wfu">
「恵那ちゃん。それに――」

{	St("ML",700, @60,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 1000, @-60, @0, DxlAuto, false);
	FadeSt("ML",1000,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/310100120kit">
「どうも……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 4000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100130wfu">
「…………あれ？」

{	St("MR",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100140wfu">
「さっきアッキーちゃん、向こうに行きませんでした？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/310100150kit">
「ううん。そっちから来たけど」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/310100160kit">
「なんかさっきも、オレにそっくりな人がいたんだよな」

{	DeleteAllSt(200,false);
St("MR",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100170wfu">
「そっくりな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2132);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/310100180fje">
「そう。ドッペルゲンガーなんじゃないかってくらい、そっくりで……」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100190wfu">
「どっぺるげんがー？」

{	St("C",700, @0,@0,"bu恵那_哀愁_pinch");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/310100200fje">
「日本では影のわずらいとか言われたみたいだけど、自分そっくりの人間を見ると、すぐに死んじゃうっていう」

{	St("ML",700, @0,@0,"bu千秋_通常_cry");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/310100210kit">
「だ、だから、怖いこと言うなって！」

{	St("C",700, @0,@0,"bu歌門_通常_think");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab21/310100220kms">
「しかし……本当に物の怪の仕業かもしれませんよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/310100230kit">
「せ、星さんまで！」


{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100240wfu">
「あの……もしかしてアッキーちゃん、今までずっと恵那ちゃんといました？」



//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100250wfu">
「ゆるキャラバンには、出てない？」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/310100260kit">
「ゆるキャラバンに？　なんでオレが？」

{	St("MR",700, @0,@0,"buフウリ_頬手_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100270wfu">
「ということはもしや……
　さっきまで一緒にいたのは本物ではなく……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm03",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070a]
{	St("C",700, @0,@0,"bu恵那_ハルヒ_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ab21/310100280fje">
「あああっ！　いたっ！　あそこ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正指示：同時にアニメする感じ」
//※修正しました（mngw 11/18）

{	DeleteAllSt(200,true);
	St("L",700, @0,@0,"bu千秋_朗らか_shock");
	St("R",700, @0,@0,"bu千秋_驚天_shy");
	Move("@StNameL/L*", 200, @60, @0, DxlAuto, false);
	FadeSt("L",200,true);

	Wait(300);

	St("L",700, @0,@0,"bu千秋_驚天_shock");
	Wait(16);

	FadeSt("R",200,false);
	FadeSt("L",200,false);

	Shake("@StNameR/R*", 300, 10, 10, 0, 0, 500, null, false);
	Shake("@StNameL/L*", 300, 0, 10, 0, 0, 500, null, false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070b]
//◆音声指示：同時
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ab21/310100290kit">
「ひぇぇぇぇぇっ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【太四郎（小碓千秋）】
//<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/ab21/310100300ktt">
//「げぇぇぇぇぇっ！」

</PRE>
	SetText();
	AddText(1,"「ひぇぇぇぇぇっ！」","小碓千秋","ab21/310100290kit",false,false,1000);
	AddText(2,"「げぇぇぇぇぇっ！」","小碓千秋","ab21/310100300ktt",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	Move("@StNameL/L*", 200, @-200, @0, Axl1, false);
	DeleteAllSt(200,true);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070c]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/310100310mzh">
「同じ人間が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("C",700, @0,@0,"bu歌門_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/ab21/310100320kms">
「ふたり……？」


{	St("MR",700, @0,@0,"buフウリ_頬手_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100330wfu">
「ま――ま――ま――」

{	Shake("@StNameMR/MR*", 500, 0, 10, 0, 0, 500, null, false);
	}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/ab21/310100340wfu">
「待ってくださいいいいいッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameMR/MR*", 200, @-250, @0, Axl1, false);
	DeleteSt("MR", 200,true);


//※BGM03が継続中で次のシナリオ（ab2133千秋_恵那.nss or ab2133フウリ.nss）へ遷移。


	EndScene();
}
