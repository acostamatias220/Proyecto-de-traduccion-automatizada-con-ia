
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1800フウリ.nss_MAIN
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
	$GameName = "1810ノーコ_フウリ.nss";

}

scene 1800フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1560">
////////////header////////////
//file name "1800フウリ.nss"
//title "罪を憎んで人をにくまん"
//previous "y1730フウリ.nss"

////////////footer////////////
//next "フウリ" "1810ノーコ_フウリ.nss"

////////////body////////////

//あきゅん「演出：プロローグファイルと入りの形が被ってしまったのでパン無しに調整修正指示ました」

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_鳥居
	OnBG(10,"bg0602111半田明神_鳥居_通常");

	Move("@OnBG*", 0, @0, -855, null, true);
	FadeBG(0,true);

	SoundPlay("@xbgm27",0,450,true);

	if($PreGameName=="y1730フウリ.nss"){
	FadeDelete("上背景",1000,null,true);
	}else{
	FadeDelete("上背景",0,null,true);
	}

{	ClockPass(1800);}

//◆ＳＥ：ジュー、とか屋台の音

{	St("C",700, @0,@0,"buフウリ_頬手_shy");
	FadeSt("C",300,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200010wfu">
「くんくん……くんくんくん……じゅるり……」

　新年を目前にした半田明神の参道で、フウリは屋台に釘付けになっていた。

{	St("C",700, @0,@0,"buフウリ_頬手_other");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200020wfu">
「年越し前のフライング販売……」

{	St("C",700, @0,@0,"buフウリ_頬手_happy");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200030wfu">
「北海道焼き……トルネードポテト……おでん……焼きそば……うううう、よりどりみどり、よりどり……」

{	St("C",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200040wfu">
「はッ！！」

{	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200050wfu">
「そんなことをしてる場合ではありません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆演出指示：手元の肉まん袋を握って
//あきゅん「素材：obj肉まん」

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/obj/obj肉まん.png");

	Move("絵背景100", 0, @0, @+100, null, true);

	CreateSE("SE01","se擬音_ギャグ_じゃじゃーん");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景100", 300, @0, @-100, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);

	Wait(1000);

	Move("絵背景100", 300, @0, @+100, Dxl1, false);
	FadeDelete("絵背景100", 300, null, true);

{	St("C",700, @0,@0,"fuフウリ_頬手_shy");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200060wfu">
「私には肉まんが――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200070wfu">
「にっくまんが――」

{	St("C",700, @0,@0,"fuフウリ_前のめり_other");
	Shake("@StNameC/C*", 500, 2, 0, 0, 0, 1000, null, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200080wfu">
「にっくまんが――あるのです！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1801);}

	DeleteAllSt(200,true);

	St("C",700, @0,@0,"buフウリ_頬手_smile");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200090wfu">
「ふふふふふ……」

{	DeleteAllSt(200,true);
	St("MR",700, @+100,@0,"buミヅハ_フラット_shock");
	Move("@StNameMR/MR*", 200, @-100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200100mzh">
「肉まん？」

{
//<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200110wfu">
	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200100wfu">
「はりゃ？」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200120mzh">
「肉まんとは、これか？」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200130mzh">
「くんくん……うむ！
　確かに良い匂いじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("MR",700, @0,@0,"buミヅハ_手構え_pride");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200140mzh">
「わらわにもひとつよこせ」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200150wfu">
「だめです！」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200160mzh">
「なんじゃと？」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200170wfu">
「どこのお嬢ちゃんか知りませんが、そういう言いかたは良くないですよ」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200180wfu">
「お願いするときは、それなりの態度があります」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200190mzh">
「なぜじゃ？　わらわがなぜそんなことを――」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200200wfu">
「そういう態度では、あげません」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200210mzh">
「あげないって――」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200220wfu">
「ちゃんと、おねがいするのです」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200230mzh">
「そんなこと……できるか」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200240wfu">
「ならば、さよならです」

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200250mzh">
「あ……おい、待てえ！」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200260mzh">
「わらわの言うことが、聞けんのか！　こらあ！」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200270wfu">
「ほんとうはあげたいけど……ここは心を鬼に！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(1802);}


	SetVolume("@xbgm*", 2000, 0, null);

//※下倉注：フェード長めにして時間経過欲しいです 2010/11/18

//嶋：ＳＥ追加（小走り）
	CreateSE("SE00","se動作_走る05_l");
	MusicStart("SE00",0,700,0,1000,null,true);
	Move("@StNameML/ML*", 200, @-200, @0, Dxl1, false);
	DeleteSt("ML",200,true);

//◆場所：半田明神_男坂　→　秋葉原_遠景

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteAllSt(0,true);

	OnBG(10,"bg0107111秋葉原_遠景_通常");
	FadeBG(0,true);
	#bg0107100秋葉原_遠景_通常 = true;

	CreateTextureEX("絵背景100", 1000, Center, -576, "cg/bg/bg0107111秋葉原_遠景_通常.jpg");

	CreateTextureEX("絵背景101", 100, Center, Middle, "cg/obj/obj肉まん.png");

	Move("絵背景101", 0, @0, @+100, null, true);

	Wait(500);

	SetVolume("SE00", 1000, 0, null);

	Wait(1500);

	CreateSE("SE04","seガヤ_交通少_l");
	MusicStart("SE04",2000,400,0,1000,null,true);

	FadeDelete("黒幕１", 1500, null, true);

	Wait(500);

	St("C",700, @+100,@0,"buフウリ_胸手_sad");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200280wfu">
「……ふぅ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	Fade("絵背景100", 0, 1000, null, true);
	Move("絵背景100", 2000, @0, 0, Dxl1, false);

//※下倉注： 「きれいな街並み」で背景持ち上げてあげたい。2010/11/18

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200290wfu">
「きれいな街並み」

{	Move("絵背景100", 500, @0, -512, Dxl1, false);
	FadeDelete("絵背景100", 200, null, true);
	Move("絵背景101", 200, @0, @-100, Dxl1, false);
	Fade("絵背景101", 200, 1000, null, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200300wfu">
「いっぱいの、肉まん」

{	Move("絵背景101", 200, @0, @+100, Dxl1, false);
	FadeDelete("絵背景101", 200, null, true);
	St("C",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200310wfu">
「だから、しあわせいっぱい」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200320wfu">
「肉まんはしあわせ。だから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolume("SE*", 1000, 0, null);
	SoundPlay("@xbgm24",0,450,true);

//嶋：音が小さすぎるので三重再生
	CreateSE("SE01","se動作_手紙取り出す");
	MusicStart("SE01",0,1000,0,700,null,false);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/imgフウリの手紙.jpg");
	Fade("絵背景100", 500, 1000, null, true);


//◆ＳＥ：手紙を取り出す
//嶋：ＩＭＧ表示につき保留

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200330wfu">
「このお手紙に、なにが書いてあっても、大丈夫……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200340wfu">
「大丈夫、大丈夫」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200350wfu">
「これは……ウソのことで……
　ぜんぜん、私には関係なくて……」

//◆ＳＥ：手紙を開く
{	CreateSE("SE01","se動作_紙めくる");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵背景100", 300, null, true);
	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200360wfu">
「あむ、あむあむあむ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se動作_紙めくる");
	MusicStart("SE01",0,700,0,1000,null,false);
{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200370wfu">
「あむあむ……うん。おいちい」

{	St("C",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200380wfu">
「あむあむ……あむあむ……あむあ……ううっ！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200390wfu">
「ぅ……ぅぁむ……ぁむきゅ……
　きゅぅぅぅぅぅ…………」

{	SetVolume("@xbgm*", 500, 0, null);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200400mzh">
「ここにいたか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//※下倉注：ＥＶとＳＴで左右の振り分けが逆なので切り替え時字に違和感有り 2010/11/18

//	TextBoxDelete(150);

	CreateSE("SE01","seガヤ_交通少_l");
	MusicStart("SE01",1000,400,0,1000,null,true);


{	St("C",700, @0,@0,"buフウリ_通常_shock");
	Shake("@StNameC/C*", 300, 0, 3, 0, 0, 500, null, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200410wfu">
「きゅッ！！」

{	DeleteSt("C",200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200420mzh">
「む……驚かしてすまぬ」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200430mzh">
「ど、どうした？　驚いて、涙が？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200440wfu">
「な、なんでもありません！
　夜風が目にしみました」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(1803);}


	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200450mzh">
「手紙、落ちたぞ」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200460wfu">
「ううん。いいんです」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200470mzh">
「いいって――」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200480wfu">
「いいったら、いいんです」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200490mzh">
「そうか……ふむ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200500mzh">
「まあよい。ほれ」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//	SoundPlay("@xbgm10",0,450,true);
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200510wfu">
「これは？」

{	St("MR",700, @0,@0,"buミヅハ_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200520mzh">
「甘酒じゃ。サイババア様にもらった」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200530wfu">
「サイババア？」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200540mzh">
「知らぬのか？　天先屋の店主じゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200550mzh">
「裏ではすーぱーはかーもやっておるそうじゃ。
　知っておるか？　すーぱーはかー？」

{	St("ML",700, @0,@0,"buフウリ_胸手_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200560wfu">
「ざ、残念ですが……わかりません」

{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200570mzh">
「わらわもなにやらよくわからんが……
　秋葉原のさいばーえーじぇんととかいうものらしい」


{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200580mzh">
「今日はなにやら不穏な動きがあるようで、要パトロールとか言っておったが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200590mzh">
「と、話している場合ではない！
　早くせねば冷めてしまうではないか」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200600wfu">
「本当に……いいのですか？」

{	St("MR",700, @0,@0,"buミヅハ_手構え_pride");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200610mzh">
「ぶしつけの、わびじゃ」

{	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200620mzh">
「その……さっきは、すまんかったのう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200630wfu">
「えらい！」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200640mzh">
「え？」

{	St("ML",700, @0,@0,"buフウリ_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200650wfu">
「自分から謝れるなんて、偉いです！」

{	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200660mzh">
「む……そ、そうか？」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200670wfu">
「私、フウリです。あなたは？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(1804);}


	St("MR",700, @0,@0,"buミヅハ_通常_pride");
	St("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);
	FadeStPro("MR", 200, 3100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200680mzh">
「わらわの名はミヅハノ――ミヅハじゃ！」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	AgainSt("MR",700, @0,@0,"buミヅハ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200690wfu">
「はい、ミヅハちゃん。これ、甘酒のお返しです」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200700mzh">
「ほう！　これが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev1800フウリミヅハに肉まんあげる.txt"　差分Ａ
	CreateTextureEX("絵背景101", 1001, 0, -370, "cg/ev/l/ev1800フウリミヅハに肉まんあげるa_l.jpg");

	Move("絵背景101", 500, @0, -221, Dxl1, false);
	Fade("絵背景101", 500, 1000, null, true);
	CreateTextureSP("絵背景100", 1000, Center, middle, "cg/ev/ev1800フウリミヅハに肉まんあげるa.jpg");

	DeleteAllSt(200,true);

	SoundPlay("@xbgm10",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200710mzh">
「これが肉まんじゃな！」

{	FadeDelete("絵背景101", 300, null, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200720wfu">
「肉まんです」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200730mzh">
「食べてよいのか？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200740wfu">
「食べてよいのです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200750wfu">
「ひとりより、みんなで食べた方が美味しいのです」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200760mzh">
「うむ、そうか」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200770mzh">
「では、早速」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景102", 1002, 0, -221, "cg/ev/l/ev1800フウリミヅハに肉まんあげるb_l.jpg");
	Fade("絵背景102", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200780mzh">
「はむはむはむ……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200790wfu">
「どうですか？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200800mzh">
「んんんんん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆ＥＶ："ev/ev1800フウリミヅハに肉まんあげる.txt"　差分Ｂ

	CreateTextureEX("絵背景110", 1100, Center, Middle, "cg/ev/ev1800フウリミヅハに肉まんあげるb.jpg");
	Fade("絵背景110", 500, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景102");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200810mzh">
「ンマーイ！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200820mzh">
「こ、これはたまらん！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200830mzh">
「なんたる美味さ！　ほかほかなのも大変よろしい！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200840mzh">
「こんなものが……世の中に存在するなんて……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200850wfu">
「食べたこと、ないのですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200860mzh">
「うむ。わらわはこの神社から出ること、罷り成らんときつく星に言われておる」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200870wfu">
「星さん？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200880mzh">
「そうじゃ！　<RUBY text="かもんせい">歌門星</RUBY>。
　半田明神を管理しておる」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200890mzh">
「言うことを聞かなかったら、お尻ペンペンじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200900mzh">
「泣いても許してくれぬ。鬼の所行じゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200910mzh">
「きっとわらわは、星に嫌われておるのじゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200920mzh">
「……のう、フウリよ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200930mzh">
「わらわを連れて、逃げてくれぬか？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200940wfu">
「だーめ！
　そんなこと言ったらだめですよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(1805);}

{	St("MR",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("MR",0,true);}

	FadeDelete("絵背景110", 500,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200950mzh">
「しかし……」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200960wfu">
「ほらほら、肉まんはまだまだいっぱい！」

{	St("ML",700, @0,@0,"buフウリ_通常_smile");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200970wfu">
「幸せいっぱい、胸一杯！」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000200980mzh">
「むう」

{	St("ML",700, @0,@0,"buフウリ_頬手_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000200990wfu">
「はむはむ――おいひいですよ」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000201000mzh">
「うむ。そうか？　それでは――はむ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景100", 1000, -698, -77, "cg/ev/l/ev1800フウリミヅハに肉まんあげるa_l.jpg");
	CreateTextureEX("絵背景101", 1000, -698, -77, "cg/ev/l/ev1800フウリミヅハに肉まんあげるb_l.jpg");
	Fade("絵背景100", 500, 1000, null, true);

	DeleteAllSt(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201010wfu">
「食べながら、よーく、聞いてくださいね」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201020wfu">
「ミヅハちゃんが好きだから、心を鬼にするんです」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000201030mzh">
「ほふ――んぐっ。そうなのか？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201040wfu">
「星さんが、嫌いですか？」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000201050mzh">
「好きじゃよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Fade("絵背景101", 200, 1000, null, true);
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201060wfu">
「じゃあ、信じてあげることです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201070wfu">
「そしたらきっと、星さんも――」

{	SetVolume("@xbgm*", 500, 0, null);}

//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/000201080kms">
「ミヅハ様」

{	FadeDelete("絵背景101", 200, null, true);
	St("C",700, @0,@0,"buミヅハ_通常_surprise");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000201090mzh">
「むはっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","seガヤ_交通少_l");
	MusicStart("SE01",1000,400,0,1000,null,true);


//	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/000201100kms">
「今日は大切な日と言ったでしょう？
　本殿でお待ちくださいと、あれほど言ったのに」

{	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000201110mzh">
「そ、それはその……」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/000201120kms">
「何か、言い訳できることでも？」

{	DeleteSt("MR",200,true);
	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201130wfu">
「あの、すみません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu歌門_通常_think");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/000201140kms">
「ん――？」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201150wfu">
「私がミヅハちゃんを注意したから、わざわざ謝りに――」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/000201160kms">
「余計なお世話です」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201170wfu">
「え……」

{	St("MR",700, @0,@0,"bu歌門_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/000201180kms">
「ミヅハ様のお世話は、私が」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201190wfu">
「あ……はい、すみません……」

{	St("MR",700, @0,@0,"bu歌門_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/18/000201200kms">
「帰りましょう、ミヅハ様」

{	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/18/000201210mzh">
「う……うむ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

//◆ＳＥ：足音
	CreateSE("SE02","se動作_歩く2人_l");
	MusicStart("SE02",0,500,0,1000,null,true);

	Wait(2000);

	SetVolume("SE02", 1000, 0, null);

	Wait(500);

	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201220wfu">
「ミヅハちゃん、大丈夫でしょうか」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201230wfu">
「おしりペンペン、されないといいんですが……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	DeleteSt("C",300,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

{	ClockPass(1806);}

//◆場所：半田明神_男坂
	OnBG(10,"bg0601100半田明神_男坂_通常");
	FadeBG(0,true);

	DrawDelete("黒幕１", 300, 100, null, "blind_01_00_1", true);


	St("C",700, @-100,@0,"buフウリ_通常_shock");
	Move("@StNameC/C*", 200, @+100, @0, Dxl1, false);

//◆ＳＥ：足音止まる
	CreateSE("SE02","se動作_着地");
	MusicStart("SE02",0,500,0,1000,null,false);

	FadeSt("C",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201240wfu">
「……あ」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201250wfu">
「手紙――本当に忘れた」

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201260wfu">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("SE*", 2000, 0, null);

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201270wfu">
「ええと……」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201280wfu">
「……うん、いいです」

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201290wfu">
「あんなの、ウソで、ウソです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201300wfu">
「私は、信じません」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(1807);}


	SoundPlay("@xbgm20",2000,450,true);

//◆場所：スーパーノヴァ_正面
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("C",0,true);

	OnBG(10,"bg0501111スーパーノヴァ_正面_通常");
	FadeBG(0,true);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//※下倉注：行列見せます 2010/11/18
	Wait(500);

	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201310wfu">
（行列……できてます）

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201320wfu">
（うう……）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201330wfu">
（このままで、大丈夫ですかね？）

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201340wfu">
（…………）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201350wfu">
（リハーサルまでは、まだ時間があります）

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201360wfu">
（肉まんもまだ残ってるし……ちょっとお散歩）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolume("@xbgm20", 1000, 0, null);


{	ClockPass(1808);}

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("C",0,true);

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("C",0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",1000,700,0,1000,null,true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201370wfu">
「なんだか、いつもより人が多いような……」

{	St("C",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201380wfu">
「大晦日だと、違うんでしょうか……？」

{	St("C",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201390wfu">
「ん？　アレは――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	St("C",700, @-50,@0,"bu平次_御用だ_shout");
	Move("@StNameC/C*", 200, @+50, @0, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/000201400fjh">
「御用御用だッ！！」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/000201410fjh">
「傷害事件があったってぇのはここか！？」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000201420e13">
「あ……は、はい」

{	St("C",700, @0,@0,"bu平次_通常_hard");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/000201430fjh">
「酷いケガだな……コンビニのバイトか？」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/18/000201440fjh">
「で、どんな奴にやられたんでぇ？」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000201450e13">
「それが……特攻服を着たヤンキーで、赤いリーゼントと緑のアフロのふたり組……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

{	ClockPass(1809);}

{	St("C",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201460wfu">
「事件でしょうか……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201470wfu">
「ぶっそうです」

{	St("C",700, @0,@0,"buフウリ_通常_angry");
	St("C",700, @0,@0,"buフウリ_通常_shock");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 4100);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201480wfu">
「やっぱり、東京は怖いところ――あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

	TextBoxDelete(150);

	AgainSt("C",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("C",200,true);

	SetVolume("@xbgm*", 1000, 0, null);

	CreateSE("SE00","se環境_水滴01");
	MusicStart("SE00",0,1000,0,1000,null,false);

	Wait(1500);

	CreateSE("SE01","se環境_水滴01");
	MusicStart("SE01",0,600,0,1200,null,false);

	Wait(200);

	CreateSE("SE02","se環境_水滴01");
	MusicStart("SE02",0,800,0,1000,null,false);

//	$SYSTEM_effect_rain_dencity=3;
//	$$SYSTEM_effect_rain_speed=1;

//※下倉注：現状、見上げてから雨が降ってくるので、「雨→見上げる」という流れをきちんと創って欲しい。ＳＥ「ぴちゃ」先行して入れるとか。

//雨が降ってくるので、あにのあなの最上階を見上げる感じ
//◆場所：あにのあな_正面
	OnBG(10,"bg0301111あにのあな_正面_通常");
	Move("@OnBG*", 0, @0, -1139, null, true);

	Move("@OnBG*", 2000, @0, 0, Dxl1, false);
	FadeBG(1000,true);

	Wait(500);

	CreateSE("SE01","se環境_雨_l");
	MusicStart("SE01",1000,500,0,1000,null,true);

	SetVolume("SE00", 300, 0, null);
	SetVolume("SE02", 300, 0, null);

	CreateEffect("エフェクト１", 15, 0, 0, 1024, 288, "Rain");
	SetVertex("エフェクト１", 0, 0);
	Zoom("エフェクト１", 0, 1000, 2000, null, true);


	CreateMask("マスク１", 200, 150, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	CreateMask("マスク２", 200, -150, 0, "cg/mask/ciスラッシュ_05_00.png", false);

	CreateTextureEX("マスク１/絵背景100", 100, 0, -1150, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("マスク１/絵背景100", 500, 1000, null, true);

	CreateTextureEX("マスク２/絵背景200", 100, -1200, -550, "cg/ev/l/ev1800ノーコ雨風に濡れる_l.jpg");

	CreateTextureEX("マスク１/絵st100", 100, 400, -5, "cg/bu/buフウリ_通常_shock.png");
	CreateTextureEX("マスク１/絵st200", 100, 400, -5, "cg/bu/buフウリ_通常_hard.png");
	CreateTextureEX("マスク１/絵st300", 100, 400, -5, "cg/bu/buフウリ_通常_shock.png");

	Fade("マスク１/絵st100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201490wfu">
「雨……？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201500wfu">
「さっきまで、晴れてたような――」

{	Fade("マスク１/絵st100", 200, 0, Axl1, false);
	Fade("マスク１/絵st200", 200, 1000, Dxl1, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201510wfu">
「…………あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("マスク２/絵背景200", 1000, -1250, @0, null, false);
	Fade("マスク２/絵背景200", 500, 1000, null, true);
	Fade("マスク１/絵st200", 200, 0, Axl1, false);
	Fade("マスク１/絵st100", 200, 1000, Dxl1, true);

//※下倉注：「あれは――飛び降りいいい！？」気付くのは「飛び降り」からなので表情同期させたい。前後も表情調整願いたいです 2010/11/18

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201520wfu">
「あれは――飛び降りいいい！？」

{	SoundPlay("@xbgm22",0,450,true);}
//◆音声指示：大声
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201530wfu">
「だ、だめです――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("マスク１/絵*");
	Delete("マスク２/絵*");
	Delete("マスク１");
	Delete("マスク２");
	Delete("エフェクト１");

	CreateTextureEX("絵背景100", 100, 0, -1150, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateEffect("エフェクト１", 110, 0, 0, 1024, 288, "Rain");
	SetVertex("エフェクト１", 0, 0);
	Zoom("エフェクト１", 0, 1000, 2000, null, true);

	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",200,true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//◆音声指示：大声
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201540wfu">
「はやまっては、いけないです！！」

//◆音声指示：大声
{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201550wfu">
「命を粗末にするなんて、そんな――」

　フウリの声は、届かないまま――

　屋上の人影が、宙を舞った。

{	St("C",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/18/000201560wfu">
「きゅううううううううう――――っ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	ClearFadeAll(300, true);
	EndScene();
}
