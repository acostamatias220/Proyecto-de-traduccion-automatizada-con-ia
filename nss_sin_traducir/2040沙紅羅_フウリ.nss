
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2040沙紅羅_フウリ.nss_MAIN
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
	$GameName = "2045沙紅羅_フウリ.nss";

}

scene 2040沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1180">
////////////header////////////
//file name "2040沙紅羅_フウリ.nss"
//title "ザッツ・リアル・エンターテインメント"
//previous "2030沙紅羅_フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2045沙紅羅_フウリ.nss"
//next "フウリ" "2045沙紅羅_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintGO("上背景", 30000);

//SE引継ぎ
	Request("@SE*", UnLock);
	SetVolumeEX("@SE*", 2000, 0, null);
	CreateSE("SE20","seガヤ_歓声_l");
	MusicStart("SE20",2000,250,0,1000,null,true);



{	ClockPass(2040);}

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	St("ML",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200010ktt">
「なんか、色々大変そうですね」

{	St("ML",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200020ktt">
「後手後手なのは知ってたけど、このタイミングで出演者が見つからないなんて」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200030wfu">
「…………」

{	St("ML",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200040ktt">
「フウリさん？　どうしました？」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200050wfu">
「え……いや、その……」

{	St("MR",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200060wfu">
「もしかしたら、少しくらいペースを緩めた方がいいのかなって……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("MR",200,true);


	St("MR",700, @+200,@0,"buＡＤ_通常_angry");
	Move("@StNameMR/MR*", 200, @-200, @0, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200070adi">
「ミリＰさん！　デザイナー、見つかりました！」

{	St("ML",700, @0,@0,"buミリＰa_ショータイム_happy");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200080mrp">
「待ってました！」

{	St("MR",700, @+50,@0,"bu似鳥_通常_worry");
	DeleteSt("ML",200,false);
	Move("@StNameMR/MR*", 300, @-50, @0, null, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400200090nki">
「え？　あなたは……」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200100mrp">
「初めまして！
　アタシはこの番組の臨時ディレクターのミリＰよん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400200110nki">
「はい、一応テレビで見たことは……
　でもなんで、番組ディレクターを？　若原さんは？」

{	St("ML",700, @0,@0,"buミリＰa_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200120mrp">
「それがね、トラブルに継ぐトラブルってヤツで――」

{	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200130mrp">
「ここはちょっと忙しいわね。裏に行きましょ」

{	Move("@StNameML/ML*", 200, @-100, @0, Dxl1, false);
	DeleteSt("ML",200,true);
	St("MR",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/20/400200140nki">
「え？　裏って――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	DeleteSt("MR",200,true);

	St("MR",700, @+100,@0,"buＡＤ_通常_shock");
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200150adi">
「あ、そろそろＣＭ明け――
　ミリＰさん！　どこに？」

{	St("ML",700, @-100,@0,"buミリＰa_通常_shout");
	DeleteSt("MR",200,false);
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200160mrp">
「打ち合わせよ！」

{	St("MR",700, @+100,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200170adi">
「でも実況は――」

{	St("ML",700, @-100,@0,"buミリＰa_ショータイム_normal");
	DeleteSt("MR",200,true);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200180mrp">
「あなたがやりなさい！」

{	St("MR",700, @+100,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200190adi">
「え？　私！？」

{	St("ML",700, @-100,@0,"buミリＰa_ショータイム_happy");
	DeleteSt("MR",200,true);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200200mrp">
「大丈夫！　あなたならできるわ！」

{
	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @+100,@0,"buＡＤ_通常_sad");
	Move("@StNameML/ML*", 200, @-100, @0, Axl1, false);
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);
	SetVolumeEX("SE01", 2000, 0, Axl2);
}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200210adi">
「そんな、急に言われても――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ジングル
	SetVolumeEX("SE*", 1000, 0, null);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("MR",0,true);

	OnBG(100,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

	DrawDelete("黒幕１", 300, 100, null, "blind_01_00_1", true);

	CreateSE("SE01","se擬音_ゆるキャラジングル");
	MusicStart("SE01",0,800,0,1000,null,false);

	CreateSE("SE10","seガヤ_歓声_l");
	MusicStart("SE10",1000,1000,0,1000,null,true);

	SoundPlay("@xbgm16",0,450,true);

	Wait(1500);

{	ClockPass(2041);}

{	St("C",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200220adi">
『え、あ、はい！　秋葉原からネットとテレビ同時中継でお送りしている全国ゆるキャラバン決定戦！』

{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200230adi">
『４８都道府県のゆるキャラバトルを勝ち抜いた精鋭たちが、今、秋葉原で激突します！』

{	St("C",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200240adi">
『司会はミリＰ急用のため、ピンチヒッターのＡＤが務めさせていただきます！』

{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200250adi">
『え？　名前？　名前なんていいじゃないですか！
　……えーと、権堂です！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 2000, 400, null);

	TextBoxDelete(150);

//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buＡＤ_通常_angry.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, center, middle, "cg/bu/buＡＤ_通常_pride.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, center, middle, "cg/bu/buＡＤ_通常_hard.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵*", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

	DeleteSt("C",200,true);

	CreateTextureEX("絵背景100", 100, Center, -120, "cg/bg/l/bg1202300ＵＰ＋_セット上_炎上_l.jpg");


	St("ML",700, @0,@0,"fuフウリ_胸手_worry");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200260wfu">
「なんだかメチャクチャな展開……」

{	St("MR",700, @0,@0,"fu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200270ktt">
「でも、意外に堂に入ってるような」

//◆音声指示：スピーカー越し
{	DeleteSt("MR",200,true);
	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵*", 200, 499, InBottom, Dxl1, true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200280adi">
『引き続き、現在圧倒的トップを走っているのは――』

{	Fade("絵マスク/絵演立絵", 300, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200290adi">
『秋葉原チーム代表、沙紅羅選手！』

{	Fade("絵マスク/絵演立絵2", 300, 0, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 1000, Dxl1, true);}
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200300adi">
『ペースは落ち、後方に差を詰められてはいますが――』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵3", 200, 700, 200, Axl1, false);
	Fade("絵マスク/絵演立絵3", 200, 0, null, true);
	Delete("絵マスク/絵*");
	Delete("絵マスク");
	Fade("絵背景100", 300, 1000, null, true);
	St("C",700, @0,@50,"fu沙紅羅_通常_pinch");
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200310skr">
「ちゅる……ちゅる……」

{	St("C",700, @0,@0,"fu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200320skr">
「ちゅるるるるる……」

{	St("C",700, @0,@0,"fu沙紅羅_通常_pain");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200330skr">
「ご、ご……ごちそうさま……」

{	St("C",700, @0,@0,"fu沙紅羅_通常_think");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200340skr">
「んげっぷ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2042);}

	SetVolumeEX("SE10", 500, 1200, null);

	TextBoxDelete(150);
	DeleteSt("C",200,true);

	Wait(500);

	Fade("絵背景100", 500, 0, null, true);

{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200350adi">
『沙紅羅選手！　見事、３品完食――――ッ！！』

{
	DeleteAllSt(200,true);
	St("C",700, @-20,@-20,"bu沙紅羅_通常_think");

	SetVolumeEX("SE10", 2500, 400, null);
	Shake("@StNameC/C*", 500, 10, 2, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 500, @20, @20, Dxl1, false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200360skr">
「あうあ……あうあ……あう……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200370skr">
「も……もう……アタシはダメだ」

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200380skr">
「あとは……頼む……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200390skr">
「アタシの……遺志を……無駄に……するな……！！」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	Shake("@StNameC/C*", 400, 3, 2, 0, 0, 1000, null, false);
	Move("@StNameC/C*", 400, @20, @20, Axl1, false);
	DeleteSt("C",400,true);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200400wfu">
「は……はい」

{	St("MR",700, @0,@0,"bu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200410ktt">
「フウリ……？」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200420ktt">
「なんか、様子が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("MR",200,true);

{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200430adi">
『さて、続いて４品目は！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200440adi">
『ラーメン鬼武者！
　ブタブタ油ニンニクヤサイマシマシの、登場です！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE10", 500, 1200, null);

	TextBoxDelete(150);

	DeleteSt("C",200,true);

	CreateTextureEX("絵背景200", 100, -1024, -320, "cg/bg/l/bg1201211ＵＰ＋_屋外セット_炎上_l.jpg");
	Fade("絵背景200", 500, 1000, null, true);

	SetVolumeEX("SE10", 2500, 400, null);

{	St("ML",700, @0,@0,"fu沙紅羅_頭かき_sigh");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200450skr">
「うげっぷ……見ただけで、満腹感が……」

{	St("ML",700, @0,@0,"fu沙紅羅_頭かき_think");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200460skr">
「今までのタイプと……明らかに量が違わね？」

{	St("MR",700, @0,@0,"fu千秋_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200470ktt">
「いえ、大丈夫です！　フウリならきっと――」

{	St("ML",700, @0,@0,"fu沙紅羅_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200480skr">
「おい弟子！　いきなり呼び捨てかよ！？」

{	St("MR",700, @0,@0,"fu千秋_朗らか_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200490ktt">
「え、いや、あは、あはははははは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	DeleteSt("MR",200,true);

	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵背景200", 500, 0, null, true);

	Wait(500);

	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200500wfu">
「いただきます……」

{	St("C",700, @0,@0,"fuフウリ_胸手_worry");
	FadeQ($C_次,0,0,200,0,20,Dxl1,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200510wfu">
「あむ……あむ……」

{	St("C",700, @0,@0,"fuフウリ_胸手_think");
	FadeQ($C_次,0,0,200,0,20,Dxl1,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200520wfu">
「ちゅるる……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE11","seガヤ_ざわざわ_l");
	MusicStart("SE11",1000,700,0,1000,null,true);

	SetVolumeEX("SE10", 1000, 100, null);


//マスク準備
	CreateTextureEX("絵マスク枠", 6010, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateMask("絵マスク", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateTextureEX("絵マスク/絵演背景", 1520, 300, Middle, "cg/ef/ef_カット汎用01.jpg");

//立ち絵準備
	CreateTextureEX("絵マスク/絵演立絵", 1530, center, middle, "cg/bu/buＡＤ_通常_shock.png");
	Request("絵マスク/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵2", 1530, center, middle, "cg/bu/buＡＤ_通常_hard.png");
	Request("絵マスク/絵演立絵2", Smoothing);
	CreateTextureEX("絵マスク/絵演立絵3", 1530, center, middle, "cg/bu/buＡＤ_通常_angry.png");
	Request("絵マスク/絵演立絵3", Smoothing);

//動作準備
	Move("絵マスク", 0, 1024, 0, null, true);
	Move("絵マスク枠", 0, 1024, 0, null, true);
	Move("絵マスク/絵演立絵*", 0, 512, 200, null, true);
	Fade("絵マスク/絵演背景", 0, 1000, null, true);
	Fade("絵マスク/絵演色", 0, 1000, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);

	Move("絵マスク", 200, 0, 0, Dxl3, false);
	Move("絵マスク枠", 200, 0, 0, Dxl3, false);
	Fade("絵マスク/絵演立絵", 200, 1000, null, false);
	Move("絵マスク/絵演立絵*", 200, 499, InBottom, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200530adi">
『おっと、どうしたことでしょう！？
　聞いていた話とは正反対！』

//◆音声指示：スピーカー越し
{	Fade("絵マスク/絵演立絵", 300, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200540adi">
『フウリ選手、あまりに消極的！
　まるでお嬢様のようにお上品に箸を口に運ぶ――』

//◆音声指示：スピーカー越し
{	Fade("絵マスク/絵演立絵3", 300, 0, Axl1, false);
	Fade("絵マスク/絵演立絵2", 200, 1000, Dxl1, true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200550adi">
『顔色も悪そうですし、もしやトラブルか！？』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Move("絵マスク枠", 200, 1024, 0, Axl3, false);
	Move("絵マスク", 200, 1024, 0, Axl3, false);
	Move("絵マスク/絵演立絵*", 200, 700, 200, Axl1, false);
	Fade("絵マスク/絵演立絵*", 200, 0, null, true);
	Delete("絵マスク/絵*");
	Delete("絵マスク*");


	Move("絵背景200", 0, @0, @-100, null, true);
	Fade("絵背景200", 300, 1000, null, true);

	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200560skr">
「アイツ、あんな食欲でこの勝負に？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200570ktt">
「おかしいな……
　フウリさんの食べっぷりはあんなものじゃないです」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200580skr">
「それじゃなんなんだよ！？
　まさか猫舌とか？」

{	St("MR",700, @0,@0,"bu千秋_朗らか_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200590ktt">
「もしかしたら……遠慮してるのかも」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2043);}


	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Fade("絵背景100", 0, 0, null, true);
	Fade("絵背景200", 300, 0, null, true);


{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200600adi">
『さあ、鬼武者ラーメンで足踏みするトップフウリ選手！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200610adi">
『塩っ気のある太麺が、スープを吸って伸びる！
　今にも丼からはみ出すぞ！』

//◆音声指示：スピーカー越し
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200620adi">
『それまでのリードが嘘のよう！
　後続の各ゆるキャラチームが追いかける！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200630adi">
『２位のパンダヤンチーム、丼飯なら任せろと言わんばかりにタミドンを食い尽くし、カレーパスタに襲いかかる！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200640adi">
『３位の、おっ、パイうなぎチームがそれを追う！
　その早食いスタイル、まさになんとも掴み所がない！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200650adi">
『４位は意外！　ちんす子ちゃんチーム！
　ちんす子ちゃんのめんそーれパワー炸裂か！？』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200660adi">
『５位はドン・ブーたんチーム！
　頑張って！　このままだとあなたがブービーです！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200670adi">
『ビリはリバース・サンダースチーム！
　今にもリバースしそうだが、大丈夫かッ！？』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_hard");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200680adi">
『さあ、秋葉原チームは、相変わらずのスローペース』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buＡＤ_通常_angry");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400200690adi">
『先行逃げ切りに暗雲が立ちこめてきましたッ！！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Fade("絵背景200", 300, 1000, null, true);
	Fade("絵背景100", 0, 0, null, true);

{	St("ML",700, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200700skr">
「オラ、フウリッ！」

{	St("ML",700, @0,@0,"fu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200710skr">
「せっかくアタシが根性見せたんだ！」

{	St("ML",700, @0,@0,"fu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200720skr">
「てめーもちっとは気張りやがれ！」

{	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵背景200", 200, 0, null, false);
	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200730wfu">
「は……はい。
　頑張ってるんですけど……はむはむ……」

{	DeleteSt("C",200,false);
	Fade("絵背景200", 200, 1000, null, true);
	Fade("絵背景100", 0, 0, null, true);
	St("MR",700, @0,@0,"fu千秋_通常_think");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200740ktt">
「やっぱり遠慮してますね」

{	St("ML",700, @0,@0,"fu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200750skr">
「何に遠慮する必要があるんだよ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"fu千秋_通常_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200760ktt">
「さっき、スタッフが話してたんです。
　このまま圧勝すると番組が成立しないって」

{	St("MR",700, @0,@0,"fu千秋_通常_think");
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200770ktt">
「だからきっと、盛り上げようとして……」

{	St("ML",700, @0,@0,"fu沙紅羅_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200780skr">
「な……ななな……ッ！！　ヤラセか？
　それってヤラセってヤツだなッ！」

{	St("MR",700, @0,@0,"fu千秋_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/400200790ktt">
「ま、まあ見ようによれば」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureEX("絵背景300", 100, center, middle, "cg/bg/bg1201211ＵＰ＋_屋外セット_炎上.jpg");

	SetVolumeEX("@xbgm*", 1000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

{	St("ML",700, @0,@0,"fu沙紅羅_頭かき_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200800skr">
「な……ななな……ッ！！」

{	St("ML",700, @0,@0,"fu沙紅羅_通常_rage");
	DeleteSt("MR",200,false);

	Shake("@StNameML/ML*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200810skr">
「小賢しい――――ッッ！！！！」

{	St("C",700, @0,@0,"fuフウリ_胸手_worry");
	Fade("絵背景100", 0, 1000, null, true);
	DeleteSt("ML",200,false);
	Fade("絵背景200", 200, 0, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200820wfu">
「え？　沙紅羅ちゃん……？」

{
	SoundPlay("@xbgm07_noint",0,450,true);

	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("C",200,false);
	Fade("絵背景300", 200, 1000, null, true);
	Fade("絵背景200", 0, 0, null, true);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200830skr">
「おい、フウリ！　向こうの都合なんて知るか！
　いいから食っちまえ！」

{	St("C",700, @0,@0,"fuフウリ_通常_hard");
	Fade("絵背景100", 0, 1000, null, true);
	DeleteSt("ML",200,false);
	Fade("絵背景300", 200, 0, null, true);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400200840wfu">
「でも――」

{	St("MR",700, @+100,@0,"buミリＰa_通常_shout");
	DeleteSt("C",200,false);
	Fade("絵背景300", 200, 1000, null, true);
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl2, false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200850mrp">
「ちょっと！　なんてこと言うのよ！」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200860mrp">
「強要はしてないわ
　けど、フウリちゃんが自分で、ああしてくれてるの」

//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200870mrp">
「彼女の気持ちを大切にするのも、必要――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2044);}


	DeleteSt("MR",200,true);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200880skr">
「バッキャロ――――ッ！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200890skr">
「別に、アタシが必死こいて食ったから言うんじゃねぇぞ」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200900skr">
「でも……でもよ！
　テレビってのはこういうもんなのかッ！！」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200910mrp">
「あんた何を突然、偉そうなこと言い出すのよ？
　素人は引っ込んで――」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200920skr">
「テレビを見てんのは素人だろッ！！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200930skr">
「アタシはな、テレビがスゲエと思ってた！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200940skr">
「本気と本気が火花を散らして、夢がピカピカっと光って、それが画面を越えてこっちに伝わる！！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200950skr">
「だから心に訴えるんだって思ってた！　違ぇのか！？」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200960skr">
「こっちが全力でやらねぇのに、見てる人間の心を本気で揺さぶれるか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200970skr">
「アタシはそんなテレビ、これっぽっちも信じねぇぞッ！」

{	St("MR",700, @0,@0,"buミリＰa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400200980mrp">
「…………」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400200990skr">
「フウリッ！　てめぇもてめぇだ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400201000skr">
「叶えたい夢があるって、さっき泣いてたじゃねぇか」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400201010skr">
「だったら全力で、妥協もナシに、ぶつかっていけよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu沙紅羅_通常_rage");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400201020skr">
「テレビの向こうまで、おまえの夢――伝えてやれよ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);

	CreateSE("SE11","seガヤ_ざわざわ_l");
	MusicStart("SE11",2000,700,0,1000,null,true);

	DeleteAllSt(200,true);

	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵背景200", 0, 0, null, true);
	Fade("絵背景300", 500, 0, null, true);

	St("C",700, @0,@0,"fuフウリ_通常_sad");
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400201030wfu">
「夢……」

{	St("C",700, @0,@0,"fuフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400201040wfu">
「……沙紅羅ちゃん」

{	St("C",700, @0,@0,"fuフウリ_胸手_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400201050wfu">
「私――間違ってたかもしれないです」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_smile");
	DeleteSt("C",200,false);
	Fade("絵背景300", 200, 0, null, true);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400201060skr">
「おうよ！　フウリ！
　周りに遠慮なんかするんじゃねぇ！」

{	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400201070skr">
「おまえが正しいと思ったことをやり遂げて――
　本当のエンターメインテントをみせてやれッ！！」

{	St("C",700, @0,@0,"fuフウリ_前のめり_shout");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/400201080wfu">
「はいっ！！　私、がんばりますっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C",300,false);
	Fade("絵背景300", 300, 1000, null, true);

	Wait(500);
	St("ML",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400201090mrp">
「……やれやれ。余計なこと、してくれちゃって」

{	St("MR",700, @0,@0,"buＡＤ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400201100adi">
「ミリＰさん！」

{	St("ML",700, @0,@0,"buミリＰa_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400201110mrp">
「ああ、アリガトね。
　いい司会だったわよ。才能あるかも」

{	St("MR",700, @0,@0,"buＡＤ_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/20/400201120adi">
「ありがとうございます！」

{	DeleteSt("MR",200,true);}
　ミリＰはステージで、ＡＤからマイクを取り返す。

{	St("C",700, @0,@0,"buミリＰb_通常_normal");
	SetVolumeEX("SE*", 2000, 0, null);

	Fade("絵背景100", 0, 0, null, true);
	Fade("絵背景200", 0, 0, null, true);
	Fade("絵背景300", 300, 0, null, true);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400201130mrp">
「さて、それじゃあ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	CreateSE("SE10","seガヤ_歓声_l");
	MusicStart("SE10",2000,400,0,1000,null,true);

{	St("C",700, @0,@0,"buミリＰb_通常_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400201140mrp">
『さぁて、お待たせいたしました！
　ご当地マスコットの中の人による、熱ゆるい戦い！』

//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400201150mrp">
『司会は再び、アタクシ、ミリＰがつとめさせていただくわ！』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400201160mrp">
『さて、レースは一転して大激戦！』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400201170mrp">
『トップの秋葉原チーム、フウリ選手！』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_pinch");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/20/400201180mrp">
『スタート時からむしろ量が増えている！？
　既に麺が伸び、器から野菜がこぼれ落ちかけて――』


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SetVolumeEX("SE*", 400, 0, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Wait(200);

	EndScene();
}
