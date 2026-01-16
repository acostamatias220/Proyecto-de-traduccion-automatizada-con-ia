

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2111沙紅羅_フウリ.nss_MAIN
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
	if(Substr($myRoute,0,1)=="b"){
		$GameName="b2115沙紅羅_千秋_フウリ.nss";
	}else{
		$GameName="2115沙紅羅_フウリ.nss";
	}

}

scene 2111沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="500">
////////////header////////////
//file name "2111沙紅羅_フウリ.nss"
//title "ＡＤ、最後の願い"
//previous "2110沙紅羅_フウリ.nss"
//previous "b2110沙紅羅_千秋_フウリ.nss"

////////////footer////////////
//next "沙紅羅"（"flkagome2" = true）	b2115沙紅羅_千秋_フウリ.nss
//next "千秋"（"flkagome2" = true）	b2115沙紅羅_千秋_フウリ.nss
//next "フウリ"（"flkagome2" = true）	b2115沙紅羅_千秋_フウリ.nss

//next "沙紅羅" "2115沙紅羅_フウリ.nss"
//next "フウリ" "2115沙紅羅_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1202300ＵＰ＋_セット上_炎上");
	FadeBG(0,true);

//おがみ：★重要確認　BGM　とりあえずゆるキャラバンのテーマ　前後関係を見直し

	//★徒歩：フラグ修正
	if(Substr($myRoute,0,1)=="b"){
		$RootBGM="@xbgm16";
	}else{
		$RootBGM="@xbgm16_noint";
	}

	SoundPlay($RootBGM,0,450,true);
//あきゅん「演出：↑前後関係合わせで調整しました」

	FadeDelete("上背景", 200, null, true);

{	ClockPass(2111);}

{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeQ($C_次,0,0,200,0,50,Dxl1,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100010mrp">
『秋葉原名物！　おでん缶！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100020mrp">
『さあ秋葉原チーム！
　これも一気に食べきってしまうのか？』

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100030wfu">
「う……」

{	St("C",700, @0,@0,"fuフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100040wfu">
「うきゅううう……」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/110100050skr">
「ん？　どした、フウリ？」

{	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"fuフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100060wfu">
「いた……いただきます」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//あきゅん「修正：エコーしていたのを修正しました」
	SetVolume($RootBGM, 2000, 150, null);

//◆ＳＥ：缶を空ける
	CreateSE("SE01","se動作_缶開ける");
	MusicStart("SE01",0,1000,0,1000,null,false);

	TextBoxDelete(150);
	Move("@StNameC/C*", 200, @0, @50, Axl1, false);
	DeleteAllSt(200,true);


	WaitKey(1000);

{	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100070wfu">
「はむ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_缶開ける");
	MusicStart("SE01",0,1000,0,1000,null,false);

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @0, @50, Axl1, false);
	DeleteAllSt(200,true);

//◆ＳＥ：缶を空ける
{	WaitKey(1000);
	St("C",700, @0,@0,"fuフウリ_胸手_think");
	FadeSt("C",200,true);}
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100080wfu">
「はむ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_缶開ける");
	MusicStart("SE01",0,1000,0,1000,null,false);

	TextBoxDelete(150);

	Move("@StNameC/C*", 200, @0, @50, Axl1, false);
	DeleteAllSt(200,true);

//◆ＳＥ：缶を空ける
{	WaitKey(1000);
	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100090wfu">
「はむ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2112);}


//	TextBoxDelete(150);

//あきゅん「演出：ボリウム調整だけ？　したいのならば記述変えました。他の意図ありならご相談を」
	SetVolumeEX($RootBGM, 2000, 450, null);
	DeleteSt("C",200,true);


{	St("C",700, @+100,@0,"buミリＰb_ショータイム_happy");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100100mrp">
『さすが、フウリちゃん！
　あっという間に、おでん缶の中味を――』

{	St("ML",700, @-100,@0,"buＡＤ_通常_angry");
	DeleteSt("C",200,false);
	Move("@StNameML/ML*", 200, @+100, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/110100110adi">
「まだです！」

{	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100120mrp">
『まだ……？』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);


	CreateSE("SE31","seガヤ_ざわざわ_l");
	MusicStart("SE31",3000,700,0,1000,null,true);

	SetVolume("@xbgm*", 3000, 0, null);


{	St("C",700, @0,@0,"fuフウリ_通常_fear");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100130wfu">
「うきゅうううう…………」

//◆音声指示：スピーカー越し
{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"buミリＰb_通常_shock");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100140mrp">
『なんと！
　各おでん缶の中に、コンニャクだけが残っている！？』

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"bu沙紅羅_通常_surprise");
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/110100150skr">
「フウリ！　もしかして――嫌いなのか？」

{	St("C",700, @0,@0,"fuフウリ_通常_fear");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100160wfu">
「実は……そうなんです。
　コンニャクだけは……ちょっと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	St("ML",700, @0,@0,"bu沙紅羅_通常_think");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/110100170skr">
「なんでよりによって、コンニャクが！？」

{	St("C",700, @0,@0,"fuフウリ_通常_fear");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100180wfu">
「だ、だって、なんか……
　自分の仲間を食べてるような気が」

{	St("ML",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/110100190skr">
「どういう理由だよ……」

{	St("C",700, @0,@0,"fuフウリ_胸手_think");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100200wfu">
「きゅう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2113);}


//	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100210mrp">
『さあ、ここで秋葉原チーム、急激なブレーキ！』

//◆音声指示：スピーカー越し
{	St("C",700, @0,@0,"buミリＰb_ショータイム_normal");
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100220mrp">
『後続のチームが、グングン追い上げ……』

{	DeleteSt("C",200,true);}
//【敵チームＡ】
<voice name="敵チームＡ" class="その他男声" src="voice/21/110100230e19">
「う……うえっぷ」

//【敵チームＢ】
<voice name="敵チームＢ" class="その他男声" src="voice/21/110100240e20">
「もう……無理……」

//【敵チームＣ】
<voice name="敵チームＣ" class="その他男声" src="voice/21/110100250e21">
「あれ……川の向こうさ……ばさま？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミリＰb_ショータイム_happy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100260mrp">
『てるわけじゃないけれども、一応差は縮まっている！』

{	St("C",700, @0,@0,"buミリＰb_ショータイム_pinch");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100270mrp">
『気がするわ！』

{	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100280mrp">
『さあ、フウリちゃん！』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミリＰb_ショータイム_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100290mrp">
『ここで根性を見せることができるのか！』

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"fuフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100300wfu">
「…………ううう！」

{	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	Shake("@StNameC/C*", 500, 3, 0, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100310wfu">
「こんじょ～！！」

{	St("C",700, @0,@0,"fuフウリ_胸手_think");
	Shake("@StNameC/C*", 300, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100320wfu">
「はむ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2114);}


//	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	St("C",700, @0,@0,"buミリＰb_通常_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100330mrp">
『行った！』

{	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100340mrp">
『そして止まった！』

{	St("C",700, @0,@0,"fuフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100350wfu">
「うううう……」

{	St("C",700, @0,@0,"fuフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100360wfu">
「やっぱり……むにゅむにゅする……」

{	DeleteSt("C",200,true);
	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/21/110100370adi">
「そりゃまあ、コンニャクだし……」

{	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100380wfu">
「でも、頑張ります！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	DeleteSt("C",200,true);

	St("ML",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/21/110100390skr">
「やっちまえ！」

{	DeleteSt("ML",200,true);
	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100400wfu">
「はむ……」

{	St("C",700, @0,@0,"fuフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100410wfu">
「うううう……」

{	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100420wfu">
「はむ……」

{	St("C",700, @0,@0,"fuフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100430wfu">
「うううう……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	St("C",700, @0,@0,"buミリＰb_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆音声指示：スピーカー越し
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/21/110100440mrp">
『ゆっくりと……何度も、止まりそうになりながら、それでも、食べ続けるフウリ選手！』

{	DeleteAllSt(200,true);
	SetVolume("SE*", 4000, 0, null);
	St("C",700, @0,@0,"fuフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100450wfu">
「ふぅ……ふぅ……ふぅ……」

{
	St("C",700, @0,@0,"fuフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100460wfu">
「はむ……もぐ……ん、ん」

{	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100470wfu">
「何回も、失敗して、心が折れそうになって」

{	St("C",700, @0,@0,"fuフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100480wfu">
「でも、ミリＰさんとか、マダムさんとか、アッキーちゃんとか、いろんなひとが、私を勇気づけてくれました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"fuフウリ_前のめり_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100490wfu">
「その期待に、応えるときです……」

{	St("C",700, @0,@0,"fuフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/21/110100500wfu">
「はむ……ん、んく……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	EndScene();
}
