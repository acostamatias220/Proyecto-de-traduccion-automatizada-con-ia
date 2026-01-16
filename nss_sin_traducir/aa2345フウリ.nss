
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene aa2345フウリ.nss_MAIN
{
//■エンディングチェック
	Ending_IsChaeck("aa");

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
	$GameName = "aa2350千秋_恵那.nss";//★エンディング中（aa）
}

scene aa2345フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="340">
////////////header////////////
//file name "aa2345フウリ.nss"
//title "噛み合わない最後"
//previous "aa2120フウリ.nss"
//previous "aa2120沙紅羅.nss"
//previous "aa2120千秋_恵那.nss"

////////////footer////////////
//next "aa2350千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2347);}


//◆演出指定：会場盛り上がる

	CreateSE("SE01","seガヤ_大歓声_l");
	OnBG(10,"bg0502211スーパーノヴァ_ライブ会場_消灯");
	FadeBG(0,true);

	if($PreGameName=="aa2120沙紅羅.nss"||$PreGameName=="aa2120千秋_恵那.nss"||$PreGameName=="aa2120フウリ.nss"){
	Wait(2000);
	MusicStart("SE01",300,700,0,1000,null,true);
	FadeDelete("上背景", 3000, null, true);
	}else{
	CreateColorSP("絵色黒", 20000, "#000000");
	FadeDelete("上背景", 0, null, true);

	TakeRatePic();//あきゅん「演出：スクリーン希望箇所」

	MusicStart("SE01",300,700,0,1000,null,true);
	FadeDelete("絵色黒", 1000, null, true);
	}

	Wait(2000);

//	FadeDelete("上背景", 0, null, true);

//◆場所：スーパーノヴァ_控え室


	SetVolumeEX("@SE01*", 1500, 250, null);
	SceneOut(5000, 1000, "blind_01_00_0");
	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");

	SoundPlay("@xbgm20",0,250,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100010fjr">
「いよおおおおおおおおおおおおおしっ！！」

/*
//※下倉注：時間一気に経過しすぎだろ……ということでコメントアウト
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100020fjr">
「ライブ開始まで、あと１５分ッ！！」
*/

{	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100030fjr">
「窓ガラスは？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buそに子_通常_smile");
	FadeSt("C",200,true);}
//【太四郎（そに子）】
<voice name="太四郎（そに子）" class="そに子" src="voice/aa23/450100040skt">
「はい！　みそブーさんたちのおかげで、全部、ピッカピッカに直りました～！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100050fjr">
「ミリＰさんたちは！？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100060wfu">
「ゆるキャラバン後半部に引き続き、年越しライブを緊急ネット中継してもらっちゃいますよー」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100070fjr">
「よしよし……全ては計画通りってワケね」

{	St("ML",700, @0,@0,"bu鈴_シリアス_normal");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100080fjr">
「ニコちゃん！　フウリちゃん！」

{	St("ML",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100090fjr">
「こっちは連戦だけど……準備はいいわね！？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buそに子_通常_smile");
	FadeSt("C",200,true);}
//【太四郎（そに子）】
<voice name="太四郎（そに子）" class="そに子" src="voice/aa23/450100100skt">
「はいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100110wfu">
「もちろんですー！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100120fjr">
「フウリちゃん、今日はホントにごめんね。
　昨日までのアタシは、リーダー失格だった……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100130wfu">
「そ、そんなことはないです！
　鈴ちゃんがいたおかげで、私も――」

//◆ＳＥ：扉開く

{
	CreateSE("SE02","se動作_ドア開ける01");
	MusicStart("SE02",0,700,0,1000,null,false);

}

{	DeleteAllSt(200,false);
	St("C",700, @-50,@0,"buそに子_通常_happy");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);
	}
//【そに子】
<voice name="そに子" class="そに子" src="voice/aa23/450100140snk">
「お、おまたせしました～！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
{	St("C",700, @0,@0,"buそに子_通常_sad");
	FadeSt("C",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/aa23/450100150snk">
「遅れてしまって、すみません……
　なんとか、間に合いましたか～？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	SetVolumeEX("SE*", 300, 0, null);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buフウリ_通常_shock");
	St("ML",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100160wfu">
「…………あれ？」
{WaitAddText();}<BR>

//◆音声指示：同時
//【富士見鈴】
//<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100170fjr">
//「…………あれ？」

</PRE>
	SetText();
	AddText(1,"「…………あれ？」","綿抜フウリ","aa23/450100160wfu",false,false,1000);
	AddText(2,"「…………あれ？」","富士見鈴","aa23/450100170fjr",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	St("MR",710, @0,@0,"buフウリ_胸手_worry");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040d]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100180wfu">
「ニコちゃん、さっきまでそこに……」

{	St("ML",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100190fjr">
「っていうか、いつの間に外に出たの？」

{	St("C",700, @0,@0,"buそに子_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/aa23/450100200snk">
「え？　いや、私は今ここについたばっかり……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("ML",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100210fjr">
「ウソ！　だって、さっきまでここにいたじゃない！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100220wfu">
「そうですよ！
　さっきはゆるキャラバンで一緒にライブを……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buそに子_通常_sad");
	FadeSt("C",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/aa23/450100230snk">
「え？　あれ？　あれれれれ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100240wfu">
「変なニコちゃん……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆演出指示：足元を走るタヌキの影

	DeleteAllSt(200,true);

	CreateSE("SE01","se動物_タヌキ_走る_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateTextureEX("絵背景１", 2000, 1024, 350, "cg/obj/objタヌキ小走り.png");
	FadeXH5("絵背景１",300,1000,1000,-2024,-30,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	SetVolumeEX("SE*", 3000, 0, null);
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100250wfu">
「あれ……？」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100260wfu">
「今のは……タヌキ？」

{	ClockPass(2348);}

{	DeleteAllSt(200,false);
	St("L",700, @-50,@0,"buＡＤ_通常_normal");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);
	}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/aa23/450100270adi">
「みなさん、本番２分前でーす！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_通常_normal");
	Move("@StNameC/C*", 300, @50, @0, Dxl2, false);
	FadeSt("C",200,true);
	}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100280fjr">
「うん、時間ね。
　ほらフウリちゃん！　ボーッとしてないで！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100290wfu">
「は……はい」

//あきゅん「修正：エコーしていたのを修正しました」
{	SetVolumeEX("@xbgm20", 500, 450, null);
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100300fjr">
「みんな、いい？
　とにかく今日は、第一宇宙速度の再出発！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080a]
{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100310fjr">
「アタシたちのロケット、宇宙まで飛ばしてやるわよ！」

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/aa23/450100320fjr">
「いいわね！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	Wait(16);
{	DeleteAllSt(0,false);
	St("MR",700, @0,@0,"buフウリ_通常_smile");
	St("ML",700, @0,@0,"buそに子_通常_happy");
	FadeSt("MR",0,false);
	FadeSt("ML",0,true);}
	FadeDelete("絵板写", 200, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080b]
//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/aa23/450100330wfu">
「はいっ！！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【そに子】
//<voice name="そに子" class="そに子" src="voice/aa23/450100340snk">
//「はいっ！！」

</PRE>
	SetText();
	AddText(1,"「はいっ！！」","綿抜フウリ","aa23/450100330wfu",false,false,1000);
	AddText(2,"「はいっ！！」","そに子","aa23/450100340snk",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);
	CreateColorEX("絵背景", 20000, "BLACK");
	Fade("絵背景", 2500, 1000, null, true);


	EndScene();
}
//next "aa2350千秋_恵那.nss"
