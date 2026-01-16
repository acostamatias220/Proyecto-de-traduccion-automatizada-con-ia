
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2110沙紅羅_フウリ.nss_MAIN
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
	$GameName = "2111沙紅羅_フウリ.nss";

}

scene 2110沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="180">
////////////header////////////
//file name "2110沙紅羅_フウリ.nss"
//title "決着です！"
//previous "2100沙紅羅_フウリ.nss"
//previous "ab2100沙紅羅_似鳥_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2111沙紅羅_フウリ.nss"
//next "フウリ" "2111沙紅羅_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2110);}


//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	Yuru_Eat_Set();


	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);

//◆ＳＥ：ジングル
	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	SoundPlay("@xbgm16_noint",0,450,true);


//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100200010mrp">
『さーて、それでは全国ゆるキャラバン！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100200020mrp">
『熱戦の再開よッ！！』

{	Move("@StNameC/C*", 200, @+200, @0, Axl1, false);
	DeleteSt("C",200,true);
//	St("C",700, @0,@100,"fuフウリ_前のめり_hard");
//	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
//	FadeSt("C",200,true);
	Yuru_Eat_Start(50);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/100200030wfu">
「いただきます！　はむはむ！　んまー！」

{
//	St("C",700, @0,@0,"fuフウリ_前のめり_smile");
//	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
//	FadeSt("C",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/100200040wfu">
「ごちそうさまでした！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//	DeleteAllSt(200,true);


	CreateTextureEX("絵背景BG", 300, Center, Middle, "cg/bg/bg1202300ＵＰ＋_セット上_炎上.jpg");
	Fade("絵背景BG", 200, 1000, null, true);


	St("C",700, @+100,@0,"buミリＰb_ショータイム_pinch");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100200050mrp">
『なに？　この子の食欲は天井知らず？』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100200060mrp">
『牛タンフランクも一気食い！』

{
	Fade("絵背景BG", 200, 0, null, false);
	DeleteAllSt(200,true);

//	St("C",700, @0,@0,"buフウリ_前のめり_smile");
//	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
//	FadeSt("C",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/100200070wfu">
「あむあむ」

//◆音声指示：スピーカー越し
{
//	DeleteAllSt(200,true);

	Fade("絵背景BG", 200, 1000, null, false);
	St("C",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100200080mrp">
『象の鼻パンも！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	FadeDelete("絵背景BG", 200, null,false);

	DeleteAllSt(200,true);

//	St("C",700, @0,@0,"buフウリ_頬手_smile");
//	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/100200090wfu">
「もぐもぐ」

{
	Yuru_Eat_Delete(200);
//	Fade("絵背景BG", 200, 1000, null, false);
	St("C",700, @0,@0,"buミリＰb_通常_pinch");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100200100mrp">
『爆弾おにぎりも！』

{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/100200110adi">
「ほ……ホントにあっという間になくなっちゃった……」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100200120mrp">
『となると次は……』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/100200130mrp">
『とうとうラストのクリマ……』

{	DeleteSt("C",200,true);
	St("C",700, @+100,@0,"buＡＤ_通常_angry");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/100200140adi">
「――の前に、もう一品！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

//◆ＳＥ：ドガッ！　おでん缶置かれる
	CreateSE("SE01","se日常_缶置く");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreatePlainSP("揺用", 2005);
	Shake("揺用", 500, 15, 5, 0, 0, 1000, Dxl1, false);
	Fade("揺用", 500, 0, null, true);
	Delete("揺用");


{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/100200150skr">
「なんだあ？　ジュース？」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/100200160ktt">
「違う……マズいな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/100200170skr">
「まずい？」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/21/100200180ktt">
「アレはきっと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	EndScene();
}
