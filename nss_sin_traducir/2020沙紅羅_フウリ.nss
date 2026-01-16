
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2020沙紅羅_フウリ.nss_MAIN
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
	$GameName = "2030沙紅羅_フウリ.nss";

}

scene 2020沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1240">
////////////header////////////
//file name "2020沙紅羅_フウリ.nss"
//title "秋葉原の最新ＣＧ技術！"
//previous "2010沙紅羅_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2030沙紅羅_フウリ.nss"
//next "フウリ" "2030沙紅羅_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


{	ClockPass(2020);}

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");


	Wait(1000);

	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);

	SoundPlay("@xbgm16",0,450,true);


//◆音声指示：スピーカー越し
{	St("C",700, @0,@100,"buミリＰb_ショータイム_normal");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300010mrp">
『それでは各チームの選手入場の前に、今までのキャラバンダイジェストをどうぞー！』

{	FadeDelete("絵背景100", 200, null, false);
	DeleteSt("C",200,true);

	St("ML",700, @-50,@0,"buフウリ_通常_shock");
	Move("@StNameML/ML*", 200, @+50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200300020wfu">
「な……セットが、燃えてます」

{	St("MR",700, @0,@0,"bu沙紅羅_前のめり_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300030skr">
「ＣＧってすげえな！」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200300040wfu">
「え？　これもＣＧ……？」

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300050ktt">
「違います！」

{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"stＡＤ_通常_angry");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300060adi">
「違います！　あれは火事じゃなくて――」

//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300070e18">
「それじゃ、なんなんだね！？」

　ＡＤと消防士が、ステージ脇で押し問答を演じていた。

{	St("MR",700, @0,@0,"stＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300080adi">
「意図的に燃やしてるんです！　安全なんです！」

//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300090e18">
「事前の申請はあったのか？」

{	St("MR",700, @0,@0,"stＡＤ_通常_sad");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300100adi">
「ええと、だからそれは……忘れてて……」

//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300110e18">
「そんな言い訳信じられん！　今すぐ消火活動に――」

{	St("MR",700, @0,@0,"stＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300120adi">
「やめて！　ちょっと！
　誰か助けてー！　助けてください！」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300130skr">
「ふぅ……ヤレヤレだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 100, Center, -350, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	Move("絵背景100", 0, -800, @0, null, true);



{	St("C",700, @0,@0,"bu沙紅羅_頭かき_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300140skr">
「アイツには借りがあるからな！」

{	Move("@StNameC/C*", 200, @100, @50, Axl1, false);
	DeleteSt("C",200,true);}
//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300150e18">
「とにかく、火を消す――」

{	St("C",700, @0,@+50,"bu沙紅羅_通常_rage");
	Move("絵背景100", 300, @-200, @0, Dxl2, false);
	Fade("絵背景100", 300, 1000, null, true);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300160skr">
「どうりゃああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

//◆演出指定：木刀振るう
	CreateTextureEX("絵背景EF", 1000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Zoom("絵背景EF", 0, 1200, 1200, null, true);
	SetBlur("絵背景EF", true, 3, 500, 50, false);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	CreateSE("SE01","se戦闘_風切り音05");

	Zoom("絵背景EF", 200, 1000, 1000, Dxl1, false);
	Fade("絵背景EF", 200, 1000, Dxl1, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("フラッシュ白",0,1000,null,true);
	DeleteSt("MR",0,true);

	Delete("絵背景EF");

	St("C",700, @-100,@0,"bu沙紅羅_木刀_hard");
	FadeSt("C",0,true);

	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300170e18">
「どわっ！　ななん、なんだ君は！」

{	St("C",700, @0,@0,"bu沙紅羅_木刀_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300180skr">
「舞台の火を消したいんなら――」

{
	SetVolumeEX("@xbgm16", 1000, 1, null);
	St("C",700, @0,@0,"bu沙紅羅_木刀_pride");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300190skr">
「アタシの心に燃える炎を、消してからにしなッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2021);}

	TextBoxDelete(150);

	CreatePlainEX("揺用", 2005);
	Request("揺用", AddRender);

	CreateSE("SE01","se擬音_百野殺駆登場");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("揺用", 0, 500, null, true);
	Zoom("揺用", 1500, 1300, 1300, Dxl2, false);
	Wait(500);
	Fade("揺用", 1000, 0, Axl2, true);
	Delete("揺用");

	Wait(1000);

/*
//◆音声指示：同時
//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300200e18">
「…………は？」

//◆音声指示：同時
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300210adi">
「…………え？」
*/

	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆音声指示：同時
//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300200e18">
「…………は？」
{WaitAddText();}<BR>

//◆音声指示：同時
//【ＡＤ】
//<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300210adi">
//「…………え？」

</PRE>
	SetText();
	AddText(1,"「…………は？」","その他男声","20/200300200e18",false,false,1000);
	AddText(2,"「…………え？」","ＡＤ","20/200300210adi",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("MR",200,true);

	St("C",700, @0,@0,"bu沙紅羅_木刀_pride");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆音声指示：小声
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300220skr">
「決まった……！」

{	DeleteSt("C",200,true);
	SetVolumeEX("@xbgm16", 300, 450, null);
}
//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300230e18">
「えー、ともかく消火を！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1500);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300240skr">
「やーめーろー！
　やめろっつってんだろ！」

{	AgainSt("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	St("ML",700, @-100,@0,"buミリＰa_通常_hard");
	DeleteSt("C",200,false);
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300250mrp">
「どうしたの？　消防車追い払えって言ったでしょ」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300260adi">
「は、はい！　今なんとか――」

{	St("ML",700, @0,@0,"buミリＰa_通常_happy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300270mrp">
「あ、フウリちゃん！
　メンバー集まったわね？　来てもらえる？」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200300280wfu">
「でも沙紅羅ちゃんがまだ――」

{
	Fade("絵背景100", 200, 0, null, false);
	DeleteAllSt(200,true);
}
//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300290e18">
「邪魔だ！　退きなさいッ！」

{	St("C",700, @150,@0,"st沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300300skr">
「みんなっ！　アタシに構わず先に行けー！」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200300310wfu">
「そういうわけには……」

{	St("MR",700, @0,@0,"buＡＤ_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300320adi">
「消防の人を説得しないと！」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200300330wfu">
「でも、沙紅羅ちゃんにそういう交渉は……」

{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300340ktt">
「オレに、任せてください」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2022);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	St("ML",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200300350wfu">
「アッキーちゃん？」

{	Fade("絵背景100", 200, 1000, null, false);
	DeleteSt("ML",200,true);
	St("ML",700, @+100,@0,"bu沙紅羅_通常_angry");
	Shake("@StNameML/ML*", 200, 0, 8, 0, 0, 1000, Dxl1, false);
	Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300360skr">
「ぐうううううう！！」

//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300370e18">
「ぬうううううう！！」

{	St("C",700, @0,@50,"bu千秋_気合い_shout");
	DeleteSt("ML",200,false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300380ktt">
「待ってください！」

//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300390e18">
「ん……？」

{	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300400ktt">
「あの炎は、偽物です！」

//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300410e18">
「偽物……？」

//◆音声指示：小声
{	St("C",700, @0,@0,"bu千秋_通常_pinch");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300420ktt">
「――――ドロン」

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300430ktt">
「ぱっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 1000, 0, null);


	TextBoxDelete(150);

	DeleteSt("C",200,true);

	CreateSE("SE01","se環境_燃える_l");


	CreateTextureEXadd("絵演背景", 15200, Center, Middle, "cg/ef/ef046_炎a.jpg");
	Zoom("絵演背景", 0, 1500, 1000, null, true);
	DrawEffect("絵演背景", 360, "MiddleWave", 0, 300, null);

//嶋：炎借入
	CreateColorEXmul("絵色100", 1500, "RED");

	MusicStart("SE01",500,1500,0,1000,null,true);
	Fade("絵演背景", 200, 1000, null, false);
	Fade("絵色100", 100, 500, null, true);
	Fade("絵色100", 1000, 0, null, true);
	Delete("絵色100");

	Wait(1000);

	SetVolumeEX("SE*", 1500, 0, null);

	Fade("絵演背景", 500, 0, null, true);
	Delete("絵演背景");

	CreateSE("SE10","seガヤ_ざわざわ_l");
	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE10",2000,500,0,1000,null,true);
	MusicStart("SE11",2000,500,0,1000,null,true);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300440skr">
「うわわっ！！」

{	DeleteSt("ML",200,true);}
//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300450e18">
「な、なんだこの火はッ！？」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300460adi">
「全然熱くない……？」

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300470ktt">
「コレと同じことをしています」

{	St("ML",700, @0,@0,"bu沙紅羅_前のめり_happy");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300480skr">
「ＣＧってすげえな！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300490e18">
「ＣＧ……なのか？」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300500adi">
「いやいや……」

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300510ktt">
「なにか、安全性に問題ありますか？」

{	DeleteSt("C",200,true);}
//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300520e18">
「い、いや……この炎なら、問題ないだろう」

//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300530e18">
「コホン！
　えー、二度と紛らわしい真似はしないように！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2023);}

	TextBoxDelete(150);

/*
//◆音声指示：同時
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300540adi">
「はいっ！」

//◆音声指示：同時
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300550ktt">
「はいっ！」

//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300560skr">
「はいっ！」
*/

	St("R",700, @0,@0,"buＡＤ_通常_pride");
	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	St("L",700, @0,@0,"bu千秋_朗らか_smile");

	FadeSt("R",200,false);
	FadeSt("C",200,false);
	FadeSt("L",200,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：同時
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300540">
「はいっ！」「はいっ！」「はいっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【消防士Ａ】
<voice name="消防士Ａ" class="その他男声" src="voice/20/200300570e18">
「では、失礼！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE01","seメカ_車_エンジン_l");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2200);

	CreateSE("SE05","seメカ_車_消防車サイレン_l");
	MusicStart("SE05",1000,700,0,1000,null,true);

	Wait(3000);

	SetVolumeEX("SE05", 4000, 0, null);


//◆演出指定：サイレン鳴らして去っていく消防車

//◆音声指示：独り言
{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200300580wfu">
「今の、ＣＧじゃないですよね……？」

//◆音声指示：独り言
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200300590wfu">
「なんだか、太三郎様の源平合戦みたい……」

{	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300600adi">
「おふたりともありがとうございます！」

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300610ktt">
「いえ、大したことじゃないですから」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300620skr">
「そうそう。借りを返しただけで……」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300630adi">
「あ……あれ？」

{	St("MR",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300640adi">
「そういえばあなた、確かバイクで――」

{	St("C",700, @0,@0,"buミリＰa_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300650mrp">
「なに無駄話してんの！　ＶＴＲ終わっちゃうわ！
　早く、選手をこっちに！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2024);}

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200300660adi">
「は、はい！　今連れて行きます！」

{	Move("@StNameMR/MR*", 200, @+100, @0, Axl1, false);
	DeleteSt("MR",200,true);
	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300670skr">
「しかし弟子！
　さっきのはすごかったな！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300680ktt">
「あ、いえ……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300690skr">
「まさかおまえが、あんな特技持ってるとは！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300700ktt">
「役に立てたら、うれしいです」

{	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300710ktt">
「これも、恩返しなんで……」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300720skr">
「恩返し？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("SE*", 1000, 0, null);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,true);

//◆場所：ＵＰ＋_セット上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);


	Wait(500);
	Delete("絵背景100");
	CreateTextureSP("絵背景100", 100, -536, -170, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");
	DrawDelete("黒幕１", 300, 100, null, "blind_01_00_1", true);

	CreateSE("SE10","seガヤ_歓声_l");
	MusicStart("SE10",1000,2000,0,1000,null,true);

//◆演出指定：いきなりファンファーレ的に
	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	SoundPlay("@xbgm16_noint",0,450,true);


	SetVolumeEX("SE10", 3000, 400, null);

	St("C",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300730mrp">
『レディース＆ジェントルメン！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2025);}


{	St("C",700, @0,@0,"buミリＰb_通常_smile");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300740mrp">
『お待たせいたしました！
　全国ゆるキャラバン決勝戦！』


//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300750mrp">
『全国各地から集まったゆるキャラたち、入場よ！』

//◆音声指示：スピーカー越し
{

	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300760mrp">
『ウシの代わりにブタを乗せたのは豚丼じゃねぇ！
　オレたちが、本物の豚丼を見せてやるッ！！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	SetVolumeEX("SE10", 500, 2000, null);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300770mrp">
『北海道代表！
　どんぶりマフィア、ドン・ブーたんチーム！！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_hard");
	SetVolumeEX("SE10", 2000, 400, null);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300780mrp">
『米所の台所！　生まれたときからどんぶりめし！
　中華食堂パンダ屋が、皆の胃袋守ります！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	SetVolumeEX("SE10", 500, 2000, null);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300790mrp">
『宮城県代表！
　中国産戦士！　パンダヤンチーム！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミリＰb_通常_happy");
	SetVolumeEX("SE10", 2000, 400, null);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300800mrp">
『春は曙、夜はパイ！　これであなたもうなぎ登り！
　おっ、パイ！　おっ、パイ！　おっ、パイだ！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	SetVolumeEX("SE10", 500, 2000, null);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300810mrp">
『静岡県代表！
　大人のお菓子！　おっ、パイうなぎ！　チーム！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	SetVolumeEX("SE10", 2000, 400, null);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300820mrp">
『呪いよ解けろ！　川底でニートしてる場合じゃない！
　あのヒゲ男が、道頓堀の底から今蘇る！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	SetVolumeEX("SE10", 500, 2000, null);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300830mrp">
『大阪府代表！
　史上最強の助っ人！　リバース・サンダースチーム！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	SetVolumeEX("SE10", 2000, 400, null);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300840mrp">
『沖縄土産は私に任せて！
　でも読み間違いだけはかんべんな！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	SetVolumeEX("SE10", 500, 2000, null);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300850mrp">
『沖縄県代表！
　伝統の味！　ちんす子ちゃんチーム！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	SetVolumeEX("SE10", 2000, 400, null);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300860mrp">
『そして、最後に――』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300870mrp">
『本日発表、秋葉原の新マスコットの企画・製作――』


//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	SetVolumeEX("SE10", 500, 2000, null);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300880mrp">
『アキバコスプレチーム！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	St("C",700, @+100,@0,"bu沙紅羅_通常_happy");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);

{	ClockPass(2026);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300890skr">
「テレビテレビ！　イエーイ！」

{	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteSt("C",200,true);
	St("C",700, @+100,@0,"bu千秋_通常_worry");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300900ktt">
「フウリさん、大丈夫ですか？」

{	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteSt("C",200,true);
	St("C",700, @+100,@0,"buフウリ_通常_fear");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200300910wfu">
「わわわわわ……きんちょう……です」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 2000, 400, null);

	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteSt("C",200,true);

	TextBoxDelete(150);

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_normal");
	FadeSt("C",200,true);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300920mrp">
『以上６チームが、日本一のゆるキャラを目指して戦う、全国ゆるキャラバン決勝戦！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300930mrp">
『ラストバトルは、コレよ――――――ッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2027);}


	TextBoxDelete(150);
	DeleteAllSt(200,true);


	CreateSE("SE01","se戦闘_打撃音04");
	CreateSE("SE02","se擬音_ギャグ_ドーン");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);



	CreatePlainSP("揺用", 2005);
	Shake("揺用", 1000, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 1000, 0, null, true);
	Delete("揺用");

	Wait(500);

//◆演出指定：ゴーゴーカレーどどーん！


{	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300940mrp">
『秋葉原の名物を喰らい尽くせ！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200300950mrp">
『ゆるキャラ対抗！　大食いキングゥゥ――ッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：歓声

	SetVolumeEX("SE10", 500, 1500, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);


	Wait(2000);

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);}


	SetVolumeEX("SE10", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300960ktt">
「でも……どうして大食いで、ゆるキャラのチャンピオンを決定するんですか？」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200300970ktt">
「大食い対決だと着ぐるみ脱がなきゃいけないし、そもそも３人でチーム戦っていうのは意味があるのか……？」

{	St("MR",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200300980wfu">
「ええと、それがですね。
　色々路線変更というか、都合というか……」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200300990skr">
「根性見せるためだよ」

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200301000ktt">
「はい？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301010skr">
「テレビの前でドツキ合いはできねーしな。
　根性試しなら、大食いがベストだ！」

{	St("C",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200301020ktt">
「じゃあ、なんでチーム戦で？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301030skr">
「バカヤロウ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301040skr">
「仲間のためだからこそ、苦しいことに耐えられんだろ？」

{	St("MR",700, @0,@0,"buフウリ_前のめり_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200301050wfu">
「なるほど！　なっとく！」

{	St("C",700, @0,@0,"bu千秋_朗らか_sigh");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200301060ktt">
「……大丈夫かなあ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2028);}


	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/200301070mrp">
『では各チーム！　トップバッターは前に！』

{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301080skr">
「いよっしゃ！　それじゃ弟子！　行ってこい！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200301090ktt">
「オレが最初？」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301100skr">
「決まってんだろ？　真打ちは後から登場するんだよ！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200301110ktt">
「まあ、いいですけど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("ML",200,true);

{	ClockPass(2029);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//◆音声指示：インカム
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200301120adi">
『ダメです！　最初は沙紅羅さんでお願いします！』

{	St("C",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301130skr">
「あぁん？　おいコラ！
　アタシを出囃子に使う気かッ！？」

//◆音声指示：インカム
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200301140adi">
『テレビ的には、一番最初に、一番のヒキが要るんです！』

{	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301150skr">
「む！　一番の……？」

//◆音声指示：インカム
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200301160adi">
『沙紅羅さん！　あなた今、この会場で一番輝いてます！』

{	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301170skr">
「ほほう……輝いている！」

//◆音声指示：インカム
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/200301180adi">
『全国のお茶の間に、ズガンとインパクトを与えられるのは、あなたしかいないっ！！』

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301190skr">
「……ちぇっ！　わーったよ、わーった！
　てめーには借りがあるしな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301200skr">
「いっちょ、やったるか！」

{	St("ML",700, @0,@0,"bu千秋_朗らか_happy");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/200301210ktt">
「やっちゃってください！」

{	St("MR",700, @0,@0,"buフウリ_前のめり_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/200301220wfu">
「沙紅羅ちゃん、頑張って！」

{	St("C",700, @0,@0,"fu沙紅羅_頭かき_smile");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301230skr">
「みんなにはわりーが、今日は死ぬほど腹が減ってんだ」

{	St("C",700, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/200301240skr">
「暴走集団百野殺駆<RUBY text="ヘッド">頭</RUBY>・月夜乃沙紅羅
　――アタシだけで、完食させてもらうぜッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

	TextBoxDelete(150);

	DeleteSt("C",400,true);

	Wait(500);


	EndScene();
}
