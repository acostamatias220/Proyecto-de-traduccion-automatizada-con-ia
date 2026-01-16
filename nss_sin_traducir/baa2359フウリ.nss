
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2359フウリ.nss_MAIN
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

	//★エンディング中（baa）
	//★エンドロール
	PreSetRoll(0);
	TheEND(0);

	$GameName = "";
	$GameCircle=false;
	$GameClear=true;

}

scene baa2359フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="840">
////////////header////////////
//file name "baa2359フウリ.nss"
//title "新しい未来へ……"
//previous "baa2358似鳥_ノーコ.nss"

////////////footer////////////
//next オシマイ


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2403);}

//◆場所：半田明神_鳥居

	CreateTextureSP("絵背景100", 10, Center, -500, "cg/bg/bg0602112半田明神_鳥居_通常.jpg");

	CreateSE("SEL01","seガヤ_半田明神01_l");
	MusicStart("SEL01",5000,700,0,1000,null,true);

	Move("絵背景100", 3000, @0, @-400, AxlDxl, false);
	FadeDelete("上背景", 3000, null, true);

	St("C",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("C",800,true);

	Wait(500);

	CreateSE("SE02","se擬音_ギャグ_ぴょこ");


	WaitKey(300);

	DeleteSt("C", 200,false);

{	St("C",700, @0,@300,"buフウリ_前のめり_hard");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @0, @-350, Dxl3, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 70, @0, @50, null, false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100010wfu">
「貫太さん！」

{	DeleteSt("C", 200,false);
	St("MR",700, @60,@0,"bu貫太_横向き_normal");
	Move("@StNameMR/MR*", 200, @-60, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100020okt">
「ん？　ああ……」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100030wfu">
「もう、何ぼーっとしてるんですか？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100040wfu">
「せっかく買ったほっかいどー焼きがまってるどーです」

{	DeleteSt("ML", 200,true);
	St("C",700, @-150,@0,"buフウリ_前のめり_smile");
	Move("@StNameC/C*", 200, @150, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100050wfu">
「はい、あーん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu貫太_通常_smile");
	St("C",700, @0,@0,"bu貫太_通常_cry");
	FadeSt("C",200,true);
	FadeStPro("C", 0, 1200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100060okt">
「ああ、あむ――ん！
　はふ！　はふ！　あふ、あつい……！」

{	AgainSt("C",700, @0,@0,"bu貫太_通常_cry");
	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100070wfu">
「え？　あ、てっきり作り置きだと――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100080okt">
「はふ――はふ――んぐ、ん――」

{	St("C",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100090okt">
「はぁ……熱かった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100100wfu">
「す、すみませんでした……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100110okt">
「いや、僕こそボーっとしてた」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100120wfu">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100130okt">
「ん？　どうした？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100140wfu">
「貫太さん、ちょっと変わりました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100150okt">
「変わった？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100160wfu">
「都会で揉まれて、ちょっと別人みたいです」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100170okt">
「君だって、ちょっとは変わったよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_頬手_other");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100180wfu">
「ほ、ホントですか！？」

{	St("ML",700, @0,@0,"buフウリ_頬手_smile");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100190wfu">
「ちょっとは、オトナの女性になれましたかね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100200okt">
「オトナ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100210wfu">
「はれ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100220okt">
「あ、うん！　なれたんじゃないかな！」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100230okt">
「体つきも、オトナっぽくなったような」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_頬手_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100240wfu">
「へへへ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2404);}

//	TextBoxDelete(150);


	DeleteAllSt(200,false);


//◆ＳＥ：腹鼓
	CreateSE("SE01","se動物_タヌキ_腹鼓03");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	St("C",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("C",200,true);
	MusicStart("SE01",0,700,0,1000,null,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100250wfu">
「ぽこぽん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteSt("C", 200,true);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}

	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
{	DeleteSt("MR", 200,true);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100260wfu">
「……あれ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100270okt">
「ん？」


//◆ＳＥ：腹鼓
{	DeleteAllSt(200,true);
	CreateSE("SE01","se動物_タヌキ_腹鼓02");
	St("C",700, @0,@0,"buフウリ_通常_smile");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100280wfu">
「ぽこぽんぽん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteSt("C", 200,true);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}

	WaitKey(500);

	DeleteSt("MR", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("C",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100290wfu">
「……あれれれ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100300okt">
「どうした？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100310wfu">
「約束……忘れちゃいました？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100320okt">
「約束？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100330wfu">
「そう！　約束！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SetVolumeEX("SE*", 1000, 0, null);

	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("MR",400,true);

	WaitKey(500);

	SoundPlay("@xbgm25",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",400,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100340okt">
「…………ごめん」

//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100350okt">
「最近、僕、物忘れが多くて」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100360wfu">
「物忘れ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100370okt">
「なんだかこう……
　自分でも自分のことがよくわからないっていうか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2405);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100380okt">
「ふわふわして、なんだか落ち着かない感じ――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100390wfu">
「そんな、貫太さん――」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100400wfu">
「う、うう、ううううう……」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100410wfu">
「ちょっと待っててくださいッ！！」

{
	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @-100, @0, Axl1, false);
	DeleteSt("C", 200,true);
	Wait(150);
	St("C",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("C",200,true);
	SetVolumeEX("SE01", 1000, 0, null);

}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100420okt">
「え？　フウリ、ちょっと――！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("C",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100430okt">
「……行っちゃった」

{	St("C",700, @0,@0,"bu貫太_横向き_hard");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100440okt">
「でも、なんなんだろホントに」

{	St("C",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("C",200,false);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100450okt">
「ついこの前まで、こんなことなかったような……」

{	St("C",700, @0,@0,"bu貫太_横向き_hard");
	FadeSt("C",200,false);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100460okt">
「アザナエルで撃たれたから……か？」

{	SetVolumeEX("@x*", 3000, 0, NULL);
	CreateSE("SEL01","seガヤ_半田明神01_l");
	MusicStart("SEL01",2000,700,0,1000,null,true);
	DeleteSt("C", 200,true);
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	St("C",700, @-350,@-40,"buフウリ_胸手_hard");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 400, @300, @40, Dxl3, false);
	FadeSt("C",400,true);
	Wait(150);
	St("C",700, @50,@0,"buフウリ_通常_hard");
	FadeSt("C", 100,false);
	Move("@StNameC/C*", 100, @-50, @0, Dxl1, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100470wfu">
「とう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100480okt">
「あ、早いな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_前のめり_shout");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100490wfu">
「じゃん！　コレを！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100500okt">
「天先屋の……納豆？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100510wfu">
「はい！　記憶力に効果抜群！」

{	St("ML",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100520wfu">
「一筋縄ではいかないねばねばで、とてもおいしいです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100530okt">
「ありがとう」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100540wfu">
「これをもりもり食べて、元気になってください！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100550wfu">
「今度、大切な約束を忘れたら、いくら仏のフウリといえども、堪忍袋の緒が切れます！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100560okt">
「はいはい、気をつけるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	TextBoxDelete(150);

	SetVolumeEX("SE*", 3000, 0, NULL);





	SetVolumeEX("@xbgm*", 1500, 0, null);

//◆場所：秋葉原_万世橋
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg0104200秋葉原_万世橋_閉店");
	FadeBG(0,true);

//◆時間：ジャンプ
{	ClockPass(2409);}
	Wait(1000);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);
	SoundPlay("@xbgm28",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100570wfu">
「ね、貫太さん」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_横向き_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100580okt">
「ん？　なんだい」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100590wfu">
「神様に、なんてお祈りしたんですか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100600okt">
「ひみつ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100610wfu">
「そんなぁ……！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("MR",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100620okt">
「それじゃ、君は？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100630wfu">
「え？　私？　私ですか？」

{	St("ML",700, @0,@0,"buフウリ_頬手_happy");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100640wfu">
「私は……えへへへ」

{	St("ML",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("ML",200,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100650wfu">
「はずかしいです」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100660okt">
「言えないようなこと？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100670wfu">
「もう！　そんなわけないじゃないですか！」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100680wfu">
「あのね、私は……」

{	St("ML",700, @0,@0,"buフウリ_胸手_shy");
	St("ML",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("ML",200,true);
	FadeStPro("ML", 200, 9000);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100690wfu">
「私は、貫太さんと、ず――――――――っと一緒にいられますように、って」

{	AgainSt("ML",700, @0,@0,"buフウリ_前のめり_smile");
	DeleteAllSt(200,false);
	SetVolume("@xbgm02", 1000, 0, NULL);
	St("MR",700, @0,@0,"bu貫太_横向き_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100700okt">
「……ふ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_happy");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100710okt">
「はは、ははははははは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2410);}

//	TextBoxDelete(150);


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100720wfu">
「もう！　ひとの願い事を笑うなんてひどいです！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_happy");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100730okt">
「ああ、ごめんごめん！　そういう意味じゃないんだ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_横向き_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100740okt">
「ただ、少しびっくりしちゃって」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100750wfu">
「びっくり？」


{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100760okt">
「僕も、全く同じ願い事をしてた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100770okt">
「フウリと、ずっと一緒にいられますように、って」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 1500, @0, @550, AxlAuto, false);
	DeleteSt("C", 1000,false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100780wfu">
「きゅうううう……！」


{	WaitAction("@StNameC/C*", null);
	St("C",700, @0,@300,"buフウリ_頬手_happy");
	Move("@StNameC/C*", 200, @0, @-300, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100790wfu">
「こころと心が通じ合った」

{	St("C",700, @0,@0,"buフウリ_前のめり_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100800wfu">
「相思相愛、ですね？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100810okt">
「だな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/baa23/590100820wfu">
「神様、願い事を聞いてくれるかなあ――」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("MR",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100830okt">
「きっと、かなうさ」

{	DeleteAllSt(200,true);
	CreateTextureEX("絵背景100", 90, Center, InBottom, "cg/bg/bg0108200秋葉原_俯瞰_閉店.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Fade("絵背景100", 1500, 1000, null, false);
	Zoom("絵背景100", 8000, 1000, 1000, null, false);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/baa23/590100840okt">
「きっと、な……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(1000);
	Wait(1000);

/*
	TextBoxDelete(150);
	Wait(500);
	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 4000, 1000, null, true);
	SetVolumeEX("@xbgm*", 1000, 0, null);
	WaitPlay("@xbgm**", null);
*/

	CreateColorEX("絵色黒", 100, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	EndingReady();

	EndScene();
}
