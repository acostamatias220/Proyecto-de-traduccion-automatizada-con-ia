
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2010沙紅羅_フウリ.nss_MAIN
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
	//$GameName = "2020沙紅羅_フウリ.nss";
	$GameName = "2020カゴメ1.nss";
}

scene 2010沙紅羅_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="2020">
////////////header////////////
//file name "2010沙紅羅_フウリ.nss"
//title "イート・スタッフ"
//previous "2000沙紅羅.nss"
//previous "1950フウリ.nss"

////////////footer////////////
//next "沙紅羅" "2020沙紅羅_フウリ.nss"
//next "フウリ" "2020沙紅羅_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


	if($PreGameName=="2000沙紅羅.nss"||$PreGameName=="1950フウリ.nss"){
//※下倉注：SE引き継ぎ
	Request("@SE10", UnLock);
	Request("@SE11", UnLock);
	}else{
	CreateSE("SE10","seガヤ_交通少_l");
	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE10",2000,500,0,1000,null,true);
	MusicStart("SE11",2000,500,0,1000,null,true);
	}




//◆場所：ショウビル_正面
	OnBG(10,"bg1901111ショウビル_正面_通常");
	FadeBG(0,true);

{	ClockPass(2010);}





//	SoundPlay("@xbgm26",0,450,true);


	St("C",700, @0,@0,"bu沙紅羅_放心_lost");
	FadeSt("C",0,true);

	FadeDelete("上背景", 300, null, true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200010skr">
「なんで……なんで、アタシは……こんなことを……」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200020skr">
「せっかく……手に入れたのに……」

{	St("C",700, @0,@0,"bu沙紅羅_泣き_cry");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200030skr">
「うおおおおおおおおお！！
　バカ！　アタシのッ！　馬鹿野郎ッ！」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200040skr">
「こんなんだから、弟に嫌われて――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200050skr">
「タカとも……離ればなれになっちまうんだよ……」

{	St("C",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200060skr">
「もう……合わせる顔が……」

{	SetVolume("@SE*", 1000, 0, null);
	SoundPlay("@xbgm05",0,450,true);
	DeleteSt("C",200,true);
	St("ML",700, @-50,@0,"buフウリ_胸手_worry");
	Move("@StNameML/ML*", 200, @+50, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200070wfu">
「あ、これは……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100100100skr">
「な……なんだよてめー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2011);}


//	TextBoxDelete(150);

	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200090wfu">
「ノーコちゃんの絵が、なんでこんなところに？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200100skr">
「ん……知ってんのか！？」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200110wfu">
「はい。お友達です」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200120skr">
「お友達！？　スゲエ！
　お友達ってことは…………ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
//	SetVolumeEX("@xbgm*", 1000, 0, null);

	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200130skr">
「おともだち？　って、どゆこと？」



{	St("ML",700, @-100,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,true);
	Move("@StNameML/ML*", 300, @+100, @0, Dxl2, false);
	FadeSt("ML",300,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200140mzh">
「待てええええええい！！」

{
	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200150skr">
「また出た！　変なガキ！」

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200160mzh">
「変とはなんじゃ変とは！」

{	St("MR",700, @0,@0,"buフウリ_前のめり_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200170wfu">
「ミヅハちゃん……
　そうか、その格好はまるでコスプレ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2012);}


//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200180mzh">
「コスプレとは違う！　こやつと一緒にするな！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200190skr">
「ふざけんな！　こっちこそ願い下げだ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200200skr">
「こっちは魂籠もってんだ！　この虎を見ろよ！」

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200210mzh">
「貴様こそ、神の威光が見えんのか？　目が節穴だな！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200220skr">
「んだとぉ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200230mzh">
「なんじゃ？」

{	St("C",700, @0,@+10,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	Move("@StNameC/C*", 200, @0, @-10, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200240wfu">
「まあまあふたりとも、おちついて……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆音声指示：同時

	DeleteSt("C",200,true);

//	SetVolumeEX("@xbgm*", 500, 0, null);

/*
//◆音声指示：同時
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200250mzh">
「おぬしが言うなッ！！」

//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200260skr">
「おまえが言うなッ！！」
*/
	St("L",700, @0,@0,"buミヅハ_通常_angry");
	St("R",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("L",200,false);
	FadeSt("R",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200250">
「おぬしが言うなッ！！」
{WaitAddText();}<BR>

</PRE>
	SetText();
	AddText(1,"「おぬしが言うなッ！！」","ミヅハ","20/100200250mzh",false,false,1000);
	AddText(2,"「おまえが言うなッ！！」","沙紅羅","20/100200260skr",true,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

	DeleteAllSt(200,true);

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200270wfu">
「きゅ……怒られちゃいました」

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
//	SoundPlay("@xbgm13",0,450,true);
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200280mzh">
「そもそも沙紅羅！
　おぬしの不注意が元凶なのじゃぞ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200290skr">
「ああん？　何の話だ？」

{	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200300mzh">
「おぬし、あにのあなの前で、バッグをわらわに預けたじゃろう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200310skr">
「お……おう、それがどうした？」

{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200320mzh">
「その時、わらわが元々持っていたもうひとつのバッグと間違えて持っていったのじゃ」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200330skr">
「……間違えて？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	St("ML",700, @0,@0,"buミヅハ_通常_think");
//	DeleteSt("MR",200,false);
//	FadeSt("ML",200,true);
//【ミヅハ】
//<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200340mzh">
//「じゃから、おぬしがこの本と引き替えに手渡したのは、我々のバッグということじゃな」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200350skr">
「ふんふん、なるほど……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2013);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_think");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200360skr">
「……んあ？　あれ？　あれれれれれ？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200370skr">
「ちょっと待て！　それじゃ、アタシのバッグは――」

{	St("ML",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200380mzh">
「これじゃ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se動作_バッグ渡す");

	CreateTextureEX("絵演物袋", 1500, Center, Middle, "cg/obj/objエコバッグ.png");
	Move("絵演物袋", 0, @-120, @0, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵演物袋", 300, 1000, null, false);
	Move("絵演物袋", 300, @120, @0, Dxl2, true);

	Wait(100);

	Move("絵演物袋", 300, @120, @0, Axl2, false);
	FadeDelete("絵演物袋", 300, null, true);

{	St("MR",700, @0,@0,"bu沙紅羅_前のめり_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200390skr">
「おおおおおおおおおおお！！　すげえ！
　アタシのバッグ返ってきた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200400skr">
「いやあ、弟子に謝らなきゃって覚悟してたんだけど。
　人間、真面目に生きるといいことってあるもんだなあ！」

{	St("MR",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200410skr">
「神様、ありがとうッ！！」

{	St("ML",700, @0,@0,"buミヅハ_手構え_pride");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200420mzh">
「いやいや、礼には及ばんぞ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200430skr">
「おまえに礼言ったわけじゃねーし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200440mzh">
「な、なんじゃとうっ！？
　わらわはミヅハ！　神様じゃぞ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200450skr">
「は？」

{	St("ML",700, @0,@0,"buミヅハ_手構え_other");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200460mzh">
「だから、わらわは神様じゃと言うておる！
　偉いのじゃぞー！　ありがたいのじゃぞー！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200470skr">
「ぷ……ぷぷぷぷぷ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	Shake("@StNameMR/MR*", 2000, 0, 5, 0, 0, 1000, Dxl3, false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200480skr">
「ぷは――っはっはっは！！
　おま……おま……おまえが神様？」

{	St("ML",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200490mzh">
「な、なぜ笑う！？」

{	St("MR",700, @0,@0,"bu沙紅羅_前のめり_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200500skr">
「いやいや、これが笑わずにいられますかっての！
　おまえが……おまえが神様なんて……」

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200510mzh">
「うう……ひ、人を馬鹿にしおって！
　許さん！　絶対に、許さんぞッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("C",700, @0,@+10,"buフウリ_通常_normal");
	DeleteSt("ML",200,false);
	Move("@StNameC/C*", 200, @0, @-10, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200520wfu">
「まあまあふたりとも、おちついて……」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200530skr">
「いやいや、悪い悪い」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200540skr">
「でもな、ミヅハよ。
　仮にてめぇが神様だとしても、だ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200550skr">
「アタシはおまえの力は借りねえ！
　運命は、自分の力で切り拓いてやる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_hard");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200560skr">
「それこそが、アタシの生き様――！」

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200570skr">
「だからな」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200580mzh">
「む……」

{	St("C",700, @0,@0,"buフウリ_前のめり_shout");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200590wfu">
「かっこいい……」

{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200600mzh">
「そうか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2014);}

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200610mzh">
「まあ、おぬしが信じぬなら、それはそれでよかろう」

{	St("ML",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200620mzh">
「で、わらわのバッグはどこじゃ？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200630skr">
「バッグって？」

{	St("C",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200640wfu">
「あ、そうか。
　バッグが入れ替わったなら、ミヅハちゃんのはどこに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200650skr">
「おまえのバッグ……？
　ん――あ、ああ、そっか、アレね」

{	St("ML",700, @0,@0,"buミヅハ_通常_pride");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200660mzh">
「そうじゃ！　あの中にはな、大切な大切な――」

{
//	SetVolumeEX("@xbgm*", 500, 0, null);

	St("MR",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200670skr">
「あげちゃった」

{	St("ML",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200680mzh">
「ハァ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200690skr">
「だから、あげちゃったって」

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
//	SoundPlay("@xbgm07_noint",0,450,true);
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200700mzh">
「な、なんじゃとー！！」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200710skr">
「いやさあ、この同人誌、どーしても手に入れなきゃなんなくてさ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_think");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200720skr">
「けどあん時、バッグしか持ってるものなくて。
　泣く泣く交換したってわけなんだけど」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200730mzh">
「な……き、貴様！　なんてことを――！！」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200740skr">
「いや、すまねえ！
　でもどうしても交換しなくちゃならない理由が――」

//嶋：演出意図不明（ノーコが過るカット必要ですか？）
{	St("ML",700, @0,@0,"buミヅハ_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200750mzh">
「いったい何の理由――ん？　ノーコ！？」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200760mzh">
「あれ、ノーコ、どこに……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("C",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200770wfu">
「え？　ノーコちゃんが、どうかしたんですか？」

{	St("ML",700, @0,@0,"buミヅハ_通常_think");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200780mzh">
「ん、ああいやいや！　なんでもない！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200790skr">
「ま、そっちの話はそれでいいとして――アンタ」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200800wfu">
「フウリといいます」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200810skr">
「えーと、フウリ。
　おまえがこのノーコと友達、ってのはどういうことだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200820wfu">
「ええと、それなんですけど。
　沙紅羅ちゃんは、この同人誌探してるんですか？」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200830wfu">
「だったら私、知ってます。たくさんありましたよ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200840skr">
「え？　マジで？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200850skr">
「頼む！　それ、どうしても必要なんだ！
　どこにあるか、教えてくれ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2015);}

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200860wfu">
「あの……教えてあげたいのは山々なんですけど、もう時間がなくて」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200870skr">
「時間？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200880wfu">
「あと５分で、番組に出ないと」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200890skr">
「番組？　って、さっき雷落ちてたヤツ？」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200900wfu">
「落ちたんですか！？
　じゃあやっぱり、番組は中止に――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200910skr">
「いや、そりゃなさそうだったけど。
　思わぬハプニングで嬉しそうだったし」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//◆音声指示：小声
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200920mzh">
「も……もしや……
　その雷は、わらわのせい……か？」

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//◆音声指示：小声
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200930mzh">
「地下で思いっきり、泣きわめいたからのう。
　その影響が、天気に……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_前のめり_hard");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200940wfu">
「あの、もし良かったらふたりにお願いが……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100200950skr">
「お願い？」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200960wfu">
「実は私、秋葉原チーム代表ってことで、大食い番組に参加できるコスプレイヤーを探していて――」

{	St("MR",700, @-100,@0,"buミヅハ_フラット_shock");
	DeleteSt("ML",200,false);
	Move("@StNameMR/MR*", 200, @+100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200970mzh">
「おおぐいじゃと！？」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100200980mzh">
「おおぐいというのは、あれか？
　美味いものを、たーんと食えるのか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100200990wfu">
「味はともかく、量は保証できると思いますけど……」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201000mzh">
「けばぶもあるのか！？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201010wfu">
「わかんないですけど、もしかしたら……」

{	St("MR",700, @0,@0,"buミヅハ_フラット_happy");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201020mzh">
「なんと――！　なんたる夢展開！」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201030wfu">
「おふたりともコスプレじゃないのはよーくわかってるんですが、あの、もし良かったら一緒に」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201040mzh">
「乗った！」

{
	DeleteAllSt(200,true);

	St("MR",700, @0,@0,"bu沙紅羅_通常_normal");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201050skr">
「しゃーねーな、手伝ってやるよ」

{	St("ML",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201060wfu">
「ほ……本当に！？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201070skr">
「女に二言はねぇ！」

{	St("ML",700, @0,@0,"buフウリ_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201080wfu">
「ミヅハちゃんも、ありがとう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミヅハ_通常_pride");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201090mzh">
「なあに。まだ肉まんの恩が残っておる」

//◆音声指示：小声
{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201100mzh">
「それに――雷が落ちたのは、わらわのせいじゃからのう」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201110skr">
「ん？　今何か――」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201120mzh">
「何も言っておらん！
　さあ！　いざ、大食い大会へ出発じゃ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",200,true);

/*
//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201130wfu">
「おー！」

//◆音声指示：同時
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201140skr">
「応！」
*/
//◆音声指示：同時
	St("L",700, @0,@0,"buフウリ_通常_angry");
	St("R",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("L",200,false);
	FadeSt("R",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270a]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201130">
「おー！」
{WaitAddText();}<BR>

</PRE>
	SetText();
	AddText(1,"「おー！」","綿抜フウリ","20/100201130wfu",false,false,1000);
	AddText(2,"「応！」","沙紅羅","20/100201140skr",true,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 500, 0, null);
	DeleteAllSt(200,true);

	Wait(200);

	ClockPass(2016);

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("ML",700, @-50,@+50,"bu平次_通常_normal");
	Move("@StNameML/ML*", 200, @+50, @-50, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270b]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201150fjh">
「どこに行くって？」

{	St("MR",700, @-50,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("ML",200,false);
	Move("@StNameMR/MR*", 200, @+50, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201160skr">
「げぇっ！　モジャモジャ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);



	St("ML",700, @0,@0,"bu平次_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201170fjh">
「モジャモジャじゃねぇ！
　平次っつーんだよこの金閣寺ッ！！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201180skr">
「誰が金閣寺だッ！
　アタシには沙紅羅って立派な名前が――」

{	St("MR",700, @0,@0,"bu沙紅羅_後ろ向き_shout");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201190skr">
「っていってる場合じゃねぇし逃げるぞッ！」

{	St("ML",700, @0,@0,"bu平次_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201200fjh">
「用事があるのはこっちでぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteSt("ML",200,true);
	FadeSt("C",200,true);}

	SoundPlay("@xbgm22",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201210mzh">
「へ？」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	Move("@StNameC/C*", 200, @100, @0, Dxl1, false);
	Shake("@StNameC/C*", 200, 10, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201220mzh">
「うぎゃっ！」

{	St("ML",600, @50,@0,"bu平次_通常_happy");
	Shake("@StNameML/ML*", 200, 3, 10, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201230fjh">
「捕まえたッ！！」

{	St("C",700, @100,@0,"buミヅハ_通常_angry");
	Shake("@StNameC/C*", 500, 10, 5, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201240mzh">
「ぎゃああああああ！　放せええ！
　髪がくさい！！　ヒゲがもじゃもじゃあああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201250skr">
「お、おい！　どこに連れて行く気だ！？」

{	St("ML",700, @-50,@0,"bu平次_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201260fjh">
「保護者のおうちだな」

{
	DeleteAllSt(200,true);

	St("ML",700, @50,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201270mzh">
「星のところ……」

{
	DeleteAllSt(200,true);
	St("ML",700, @-50,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201280fjh">
「怒った星さんは怖ぇからな。覚悟しとけ」

{	St("ML",700, @-50,@0,"bu平次_通常_hard");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201290fjh">
「おしりペンペンだぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2017);}

//	TextBoxDelete(150);

{
	DeleteAllSt(200,true);
	St("ML",700, @50,@0,"buミヅハ_通常_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201300mzh">
「そ……そんなの……ひぐっ！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201310mzh">
「星の……おしっ、おしりペンペンなどっ……」

{	St("ML",700, @50,@0,"buミヅハ_ダウナー_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201320mzh">
「怖くなぞ、な、な、ない――ぅ、う、うう……」

{	St("ML",700, @50,@0,"buミヅハ_ダウナー_cry");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201330mzh">
「うわ――」

{
//	SetVolumeEX("@xbgm*", 500, 0, null);

	St("MR",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201340skr">
「おいコラ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @-50,@0,"bu平次_通常_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201350fjh">
「ん？」

{
	DeleteAllSt(200,true);
	St("ML",700, @50,@0,"buミヅハ_ダウナー_sad");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201360mzh">
「ぁ……」

{
//	SoundPlay("@xbgm22",0,450,true);

	St("MR",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201370skr">
「なんで勝手に連れてくんだよ」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201380fjh">
「なんか文句あっか？」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201390skr">
「あるね。そいつに抜けられっと、チームが組めねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201400fjh">
「知らねぇな」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201410skr">
「知っとけ！　大体な、そいつが嫌がってんだ」

//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201420skr">
「なんの権利があって、そいつを自由にできんだ？」

{	St("ML",700, @0,@0,"bu平次_通常_hard");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201430fjh">
「先に逮捕されたいか」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201440skr">
「おーよ！　できるもんならしてみやがれ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_rage");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201450skr">
「アタシはな、テメーらみたいな権威を傘にする豚野郎が、大々々々々々々だ――――――いっ嫌いなんだよ！！」

{	St("ML",700, @0,@0,"buミヅハ_ダウナー_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201460mzh">
「沙紅羅……」

{
	DeleteAllSt(200,true);

	St("ML",700, @0,@0,"bu平次_通常_normal");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201470fjh">
「おいちゃん、嬢ちゃんみたいなのも嫌いじゃねぇがな」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	FadeSt("ML",200,true);}
//◆演出指定：雰囲気がらりと変わり、ドスのきいた声で
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201480fjh">
「コイツは今、半田明神に帰らなきゃなんねぇ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu平次_通常_shout");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201490fjh">
「嬢ちゃんのワガママに付き合う暇はねぇんだよッ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201500skr">
「ンダァ！？　やる気か？」

{	St("ML",700, @0,@0,"bu平次_通常_cool");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201510fjh">
「やめた方が、いいと思うぜ」

{	St("MR",700, @0,@0,"bu沙紅羅_木刀_angry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201520skr">
「なにをナマ言ってやがる！
　アタシの相棒、喝雄不死の錆になれぇいっ！！」

{	St("MR",700, @0,@0,"bu沙紅羅_木刀_rage");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201530skr">
「でりゃああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：木刀一閃
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ef/ef木刀剣閃a.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	SetBlur("絵背景100", true, 3, 500, 50, false);
	CreateColorEX("フラッシュ白", 15000, "WHITE");

	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE02","se戦闘_金属弾く05");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Zoom("絵背景100", 200, 1000, 1000, Dxl1, false);
	Fade("絵背景100", 200, 1000, Dxl1, true);
	Fade("フラッシュ白",0,1000,null,true);
	DeleteSt("MR",0,true);

	Delete("絵背景100");

	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",0,true);

	MusicStart("SE02",0,1400,0,1000,null,false);

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201540fjh">
「甘いッ！！」

{
	DeleteAllSt(200,true);
	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,900,0,1000,null,false);

	St("MR",700, @-100,@0,"bu沙紅羅_通常_pain");
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 1000, Dxl1, false);
	Move("@StNameMR/MR*", 200, @100, @0, Dxl1, false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201550skr">
「ぬはっ！　な……なんだと！？」

{	St("ML",700, @0,@0,"bu平次_御用だ_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201560fjh">
「八代連綿と受け継がれたこの富士見式捕縛術！
　おまえごときに破れはしねぇよッ！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201570skr">
「へっ……い、言うじゃねぇか……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_pain");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201580skr">
「それじゃ、アタシもそろそろ本気を……{Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 1000, Dxl1, false);}ぐっ！」

{	DeleteSt("MR",200,true);
	SetVolumeEX("@xbgm*", 1000, 0, null);
	CreateSE("SE10","seガヤ_交通少_l");
	CreateSE("SE11","seガヤ_街中_l");
	MusicStart("SE11",2000,500,0,1000,null,true);
	MusicStart("SE10",2000,700,0,1000,null,true);
	St("ML",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201590mzh">
「いいのじゃ、沙紅羅」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201600skr">
「ミヅハ……？」

{	St("ML",700, @0,@0,"buミヅハ_通常_hard");
//	SoundPlay("@xbgm26",0,450,true);
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201610mzh">
「わらわが悪かった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"buミヅハ_ダウナー_sad");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201620mzh">
「これは、わらわの遊びのツケじゃ」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201630skr">
「そんな、でも――」

{
	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201640mzh">
「フウリよ！　抜けてしまって、すまぬ！」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201650mzh">
「できる限り早く、戻って――」

{
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
//	SetVolumeEX("@xbgm*", 500, 0, null);

	St("ML",690, @0,@0,"bu平次_通常_normal");
	St("C",700, @0,@30,"buミヅハ_フラット_shock");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("@StNameC/C*", 200, 5, 0, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @0, @-30, Dxl1, false);
	FadeSt("C",200,false);
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201660fjh">
「ほら、行くぞ！」

{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	Shake("@StNameC/C*", 200, 5, 10, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/20/100201670mzh">
「ぎゃあああああ！
　もじゃもじゃが！　もじゃもじゃして気持ち悪い！」

{	St("ML",690, @0,@0,"bu平次_通常_happy");
	FadeSt("ML",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/20/100201680fjh">
「がっはっは！　がっはっはっは！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2018);}

//	SetVolumeEX("SE*", 1000, 0, null);
//	SetVolumeEX("@xbgm*", 1000, 0, null);

	TextBoxDelete(150);

	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);


	Shake("@StNameC/C*", 200, 5, 10, 0, 0, 1000, Dxl1, false);
	Move("@StNameC/C*", 200, @-600, @0, Dxl1, false);
	Move("@StNameML/ML*", 200, @-600, @0, Dxl1, false);
	DeleteAllSt(200,true);

	Wait(1500);


//◆演出指定：ミヅハと平次、去る

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201690skr">
「行っちまった……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_sad");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201700skr">
「おしりペンペン……痛そうだな……」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201710wfu">
「う……うう……う……
　もう約束まで、時間が……」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201720skr">
「あ！　しまった！
　メンバーが欠けちまったか！」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201730wfu">
「もう……ダメなんでしょうか……？」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_think");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201740skr">
「まあでも、さすがにもう時間が……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201750wfu">
「私……夢が、あるんです……」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201760wfu">
「この大食いで……やっと……
　やっと……叶うはずだったのに……」

{	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201770wfu">
「それなのに……
　せっかく……せっかく、ここまで来たのに……」

{	St("MR",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	DeleteSt("ML",200,true);
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201780skr">
「夢……か……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	St("MR",700, @0,@0,"bu沙紅羅_通常_shout");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201790skr">
「いよっしゃ！　スマン！
　アタシが悪かった！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_pinch");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201800skr">
「諦めるなんて、柄にもねぇことしかけちまった！」

{	St("MR",700, @0,@0,"bu沙紅羅_通常_smile");
	FadeSt("MR",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201810skr">
「なあに、大丈夫！
　時間がなくとも、アタシが本気を出せば何とか――」

{	DeleteSt("MR",200,true);
	St("C",700, @+100,@0,"st千秋_通常_shout");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/100201820ktt">
「フウリさんッ！」

{	DeleteSt("C",200,true);
	St("C",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201830skr">
「お、弟子じゃねぇか！　いい所に！」

{	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201840wfu">
「え……アッキーちゃんいつの間に――？
　というか、沙紅羅さんの弟子！？」

{	St("C",700, @0,@0,"bu沙紅羅_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201850skr">
「おーよ！　コイツは、アタシのシャテーで……」

{
	SetVolumeEX("SE*", 1000, 0, null);
	SoundPlay("@xbgm27",0,450,true);
	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/100201860ktt">
「あの……オレを、メンバーに入れてください！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2019);}

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"buフウリ_通常_shock");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201870wfu">
「え？」

{

	St("C",700, @0,@0,"bu沙紅羅_通常_surprise");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201880skr">
「マジかっ！？
　ナニその渡りにテツヤ的な流れ！」

{	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	DeleteSt("C",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/100201890ktt">
「フウリさんが困ってるの、スーパーノヴァで見てました。
　是非手伝いたくて、それで来たんです！」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201900wfu">
「でも、お店大変なんじゃ――」

{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/100201910ktt">
「承諾済みです。
　鈴姉、フウリさんのこと、ちゃんと見てあげてって」

{	St("MR",700, @0,@0,"buフウリ_胸手_smile");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201920wfu">
「鈴ちゃん……
　あんなに忙しいのに手伝ってくれるなんて……」

{	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/100201930ktt">
「大晦日で制服着てる人少ないし。
　この格好、コスプレって解釈でいけると思うんです」

{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/100201940ktt">
「もしふたりが良ければ、一緒のチームで戦いたいなって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	St("C",700, @0,@0,"bu沙紅羅_通常_happy");
	DeleteSt("ML",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201950skr">
「えらい！　いやあ、それでこそ侠だ！」

{	St("MR",700, @0,@0,"buフウリ_通常_hard");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201960wfu">
「お願い……していいですか？」

{	St("ML",700, @0,@0,"bu千秋_朗らか_smile");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/100201970ktt">
「どうぞ、よろしくお願いします！」

{	St("MR",700, @0,@0,"buフウリ_前のめり_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100201980wfu">
「こちらこそ、よろしくお願いします！」

{	St("C",700, @0,@0,"bu沙紅羅_通常_shout");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100201990skr">
「よぉし！　それじゃ、メンバーも揃ったところで――」

{	St("C",700, @0,@0,"bu沙紅羅_前のめり_happy");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/100202000skr">
「みんな、大食い大会に出発だッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteSt("C",200,true);


/*
//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100202010wfu">
「おー！」

//◆音声指示：同時」
//【太四郎（小碓千秋）】
<voice name="太四郎（小碓千秋）" class="小碓千秋" src="voice/20/100202020ktt">
「おうっ！」
*/

	St("MR",700, @0,@0,"buフウリ_通常_angry");

	St("ML",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("MR",200,false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//◆音声指示：同時
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/20/100202010">
「おー！」
{WaitAddText();}<BR>

</PRE>
	SetText();
	AddText(1,"「おー！」","綿抜フウリ","20/100202010wfu",true,false,1000);
	AddText(2,"「おうっ！」","小碓千秋","20/100202020ktt",true,false,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 2000, 0, null);





	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	EndScene();
}
