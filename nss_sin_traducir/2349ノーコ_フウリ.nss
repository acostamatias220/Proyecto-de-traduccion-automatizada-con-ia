
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2349ノーコ_フウリ.nss_MAIN
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
	$GameName = "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss";
}

scene 2349ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="320">
////////////header////////////
//file name "2349ノーコ_フウリ.nss"
//title "別れ"
//file name "2348ノーコ_フウリ.nss"

////////////footer////////////
//next "ノーコ" "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"
//next "フウリ" "2350沙紅羅_千秋_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

{	ClockPass(2349);}

	OnBG(10,"bg0604211半田明神_社務所_雪");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	SetVolume("@xbgm*", 1500, 0, null);

	CreateSE("SE10","seガヤ_沸き立つ_l");
	MusicStart("SE10",2000,200,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"bu鈴_シリアス_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/490100010fjr">
「ってまあ、お笑い集団はおいといて――」

{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/490100020fjr">
「フウリちゃん！　ニコちゃん！」

{	St("C",700, @-100,@30,"buそに子_通常_sad");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @30, @-10, AxlDxl, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 1000, @70, @-20, AxlDxl, false);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/490100030snk">
「お、お疲れ様です～！」

{	St("L",700, @0,@0,"buフウリ_通常_fear");
	DeleteAllSt(200,false);
	FadeFF($L_次,0,0,500,0,-50,Dxl2, false);
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100040wfu">
「なんとか、帰ってきましたー！
　でも……あれ？　あれ？　あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("L",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("L",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100050wfu">
「なんで、半田明神で？」

{	St("R",700, @-60,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 500, @60, @0, Dxl3, false);
	FadeSt("R",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/490100060fjr">
「色々あったんだけど、説明は後！
　ほら、早くライブの準備！」

{	St("C",700, @0,@0,"buそに子_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/490100070snk">
「そ、そうですね！」

{	St("R",700, @0,@0,"bu鈴_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/490100080fjr">
「スーパー・スーパーノヴァ！！
　一丁、やってやるわよ！」

{	St("R",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("R",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/23/490100090fjr">
「えい、えい――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//おがみ：音声：同時再生
/*

//※下倉注：以下追記
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/490100100snk">
「おーッ！！」

//※下倉注：以下追記
//◆音声指示：同時
//【綿抜フウリ】
//<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100110wfu">
//「おーッ！！」

*/
	St("MR",701, @30,@50,"buそに子_通常_happy");
	St("ML",700, @-30,@50,"buフウリ_通常_smile");

	DeleteAllSt(200,false);

	Move("@StNameMR/MR*", 200, @0, @-50, Dxl3, false);
	Move("@StNameML/ML*", 200, @0, @-50, Dxl3, false);

	FadeSt("MR",200,false);
	FadeSt("ML",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//※下倉注：以下追記
//◆音声指示：同時
//【そに子】
<voice name="そに子" class="そに子" src="voice/23/490100100">
「おーッ！！」

{	St("R",700, @30,@0,"buノーコb_幽霊_sad");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-30, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/490100120nko">
「フウリ――」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100130wfu">
「はい、頑張ります！」

{	St("R",700, @30,@0,"buノーコb_幽霊_sad");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/490100140nko">
「ええと……」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100150wfu">
「――――？」

{	St("MR",700, @30,@0,"buノーコb_幽霊_sad");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-20, @0, Dxl1, false);
	FadeSt("MR",200,true);
	Move("@StNameMR/MR*", 1000, @-60, @0, Dxl1, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/490100160nko">
「…………よー」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@40,"buノーコb_通常_normal");
	FadeT("@StNameMR/MR*",0,0,200,0,-40,Dxl1,false);

	FadeSt("MR",200,true);

//◆ＳＥ：腹鼓
	CreateSE("SE01","se動物_タヌキ_腹鼓03");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/490100170nko">
「…………ぽん！」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100180wfu">
「あ……あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	FadeT("@StNameML/ML*",200,0,200,0,60,Dxl1,false);
	DeleteAllSt(200,true);

	St("ML",700, @0,@60,"buフウリ_頬手_smile");
	Move("@StNameML/ML*", 1000, @0, @-60, Dxl1, false);
	Shake("@StNameML/ML*", 1000, 10, 0, 0, 0, 500, Dxl1, false);

//◆ＳＥ：腹鼓連打
	CreateSE("SE01","se動物_タヌキ_腹鼓01");
	MusicStart("SE01",0,700,0,1000,null,true);

	FadeSt("ML",200,false);

	SetVolume("SE01", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100190wfu">
「ありがとうございます――――！！」

{	St("ML",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100200wfu">
「私、がんばっちゃいますよー！」

{	St("R",700, @40,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	Move("@StNameR/R*", 200, @-40, @0, Dxl1, false);
	FadeSt("R",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/490100210mzh">
「ふたりとも……なにをやっておるのだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100220wfu">
「え？」

{	St("MR",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/490100230nko">
「ミヅハ――」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100240wfu">
「あ……あの、ええと……」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100250wfu">
「ごめんなさいっ！」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100260wfu">
「わ、私、アザナエルを――あれ？　あれ？　あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100270wfu">
「そういえば、アザナエルをどこに――」

{	St("MR",700, @30,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/490100280mzh">
「その話は良い！
　今は、沙紅羅たちに任せておるでな」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/490100290mzh">
「あやつらがきっと、持ってきてくれるであろう」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/490100300wfu">
「そ……そうなんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"buミヅハ_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/23/490100310mzh">
「それより実は、折り入って相談があるのじゃが――」

{	St("C",700, @0,@0,"buノーコb_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/23/490100320nko">
「そうだん……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 2000, 0, null);


	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	OnBG(10,"bg0601211半田明神_男坂_雪");
	FadeBG(0,true);

	Wait(500);

//	Fade("絵色黒", 1000, 0, null, true);

	EndScene();
}
