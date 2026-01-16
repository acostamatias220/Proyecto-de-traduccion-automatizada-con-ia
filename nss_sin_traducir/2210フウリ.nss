
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2210フウリ.nss_MAIN
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
	$GameName = "2220恵那_フウリ.nss";

}

scene 2210フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="530">
////////////header////////////
//file name "2210フウリ.nss"
//title "遠いタイコ"
//previous "2150フウリ.nss"

////////////footer////////////
//next "フウリ" "2220恵那_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockTime(2210);}

	OnBG(10,"bg2201100屋島_古戦場_通常");
	FadeBG(0,true);

	St("ML",700, @0,@0,"bu貫太_横向き_smile");

	if($PreGameName=="2150フウリ.nss"){
	FadeSt("ML",0,true);
	FadeDelete("上背景", 200, null, true);
	}else{
	FadeDelete("上背景", 0, null, true);
	FadeSt("ML",200,true);
	}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200010odk">
「運命なら会えるさ」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200020wfu">
「うんめい……？」

{	SoundPlay("@xbgm26",0,450,true);
	St("ML",700, @0,@0,"bu貫太_横向き_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200030odk">
「タイコ、得意だったよな？」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200040wfu">
「はい！　たたくのは、得意です！」

{	St("ML",700, @0,@0,"bu貫太_横向き_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200050odk">
「ぽんぽこ腹鼓を打ってみるんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2211);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200060odk">
「地球上のどこにいても、きっと聞こえる」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200070odk">
「絶対、どこかで聴いてるから」

{	St("MR",700, @0,@0,"buフウリ_通常_sad");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200080wfu">
「そんなので……我慢なんて……」

{	St("MR",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200090wfu">
「できません。できるはず、ありません！」

{	St("MR",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200100wfu">
「だって、だって、だって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2212);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200110wfu">
「わたしは、貫太さん――
　あなたが――ずっと――ずっと――！」

{	St("ML",700, @0,@0,"bu貫太_横向き_normal");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200120odk">
「僕も、同じ気持ちだよ」

{	St("MR",700, @0,@0,"buフウリ_胸手_worry");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200130wfu">
「貫太さん……？」

{	St("ML",700, @0,@0,"bu貫太_横向き_sad");
	DeleteSt("MR",200,false);
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200140odk">
「でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2213);}

//	TextBoxDelete(150);

{	St("ML",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200150odk">
「それを……口に出したら、ダメなんだ」

{	St("ML",700, @0,@0,"bu貫太_横向き_sad");
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200160odk">
「僕たちは、そういう関係で――」

{	St("MR",700, @0,@0,"buフウリ_胸手_shout");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200170wfu">
「わかってます！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200180wfu">
「許嫁がいるって！
　太四郎さんのお嫁さんにならなきゃって！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2214);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200190wfu">
「そんなの、そんなの私にだってわかってます！」

{	St("MR",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200200wfu">
「でも――でも――……ッ！！」

{	St("C",700, @0,@0,"bu貫太_横向き_normal");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200210odk">
「フウリ」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200220odk">
「ひと月経っても、涙が止まんなくて――」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200230odk">
「１年経っても、胸が詰まって――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2215);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200240odk">
「１０年経っても、想いが変わらなかったら――」

{	St("C",700, @0,@0,"bu貫太_横向き_smile");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200250odk">
「また、会おう」

{	St("C",700, @0,@0,"bu貫太_横向き_normal");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200260odk">
「だから今日は――」

{	St("C",700, @0,@0,"bu貫太_横向き_smile");
	FadeSt("C",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/22/100200270odk">
「だから、笑顔で、別れよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2216);}

	TextBoxDelete(150);

//◆ＳＥ：足音遠ざかっていく
	DeleteSt("C",200,true);

//	SetVolume("@xbgm*", 1000, 0, null);

	CreateSE("SE01","se動作_歩く04_l");
	MusicStart("SE01",0,600,0,1000,null,true);

	SetVolumeEX("SE01", 2000, 200, null);

	Wait(2000);

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200280wfu">
「あ……」

{	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200290wfu">
「あ！」

{	St("C",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200300wfu">
「あああ……！！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200310wfu">
「行っちゃうんですか！？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200320wfu">
「行かないでくれないんですか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolume("SE01", 2000, 0, null);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200330wfu">
「いつも、いつも私に優しくて！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200340wfu">
「なんでも言うこと聞いてくれて！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200350wfu">
「ばか！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200360wfu">
「貫太さんの、ばかちん！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200370wfu">
「こんなことなら、意地悪してくれればよかったのに！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2217);}

//	TextBoxDelete(150);

	SetVolume("SE01", 500, 0, null);

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200380wfu">
「意地悪して……嫌って……」

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200390wfu">
「最初から、好きにならなくて……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200400wfu">
「笑顔で、別れるように……」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200410wfu">
「笑顔……なんて……」

{	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200420wfu">
「そんなの……そんなのむり……」

{	St("C",700, @0,@0,"buフウリ_胸手_cry");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200430wfu">
「無理に決まってるじゃないですかあああああああ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameC/C*", 200, @0, @+100, Dxl1, false);
	DeleteSt("C",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200440wfu">
「貫太さん…………かんたさああああん…………」

//◆ＳＥ：ぽこぽこぽこぽこ
//※下倉注：さすがにやりすぎだよねー、コメントアウト
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200450wfu">
「かんたさああああん………………！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2218);}

//	TextBoxDelete(150);

	CreateColorEX("絵色100", 1500, "Black");
	Fade("絵色100", 1000, 1000, null, true);

//	SetVolumeEX("@xbgm21", 5000, 550, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200460wfu">
（そうだ。私だって、心のどこかでは覚悟していた）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200470wfu">
（これは仕方のない出来事だって）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200480wfu">
（けど、ずっと、結論から目を逸らし続けて）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200490wfu">
（何かの間違いだって、思い込もうとして）

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200500wfu">
（夢ばかり、追いかけて、だから……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(0,true);


//※下倉注：仮入れ。これ、例のエコー演出でリバーブ強めの柔らかエフェクトで現実に戻りたいですね
//	SetVolumeEX("@xbgm*", 4000, 0, null);

	SetVolumeEF("@xbgm26", 1000);

//◆場所：スパコン館_店内
	OnBG(10,"bg1103100スパコン館_店内_通常");
	FadeBG(0,true);

{	ClockPass(2219);}

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg1103100スパコン館_店内_通常.jpg");
	SetShade("絵背景100", MEDIUM);
	CreateTextureSP("絵st100", 1200, 243, -18, "cg/bu/bu貫太_通常_normal.png");
	SetShade("絵st100", MEDIUM);

	St("C",700, @0,@0,"bu貫太_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("絵色100", 1000, null, true);

	CreatePlainSP("消し", 1300);
	Delete("絵背景100");
	Delete("絵st100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200510wfu">
「ふぁ…………ん、きゅぅぅ……」

{	FadeDelete("消し", 300, null, true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200520wfu">
「ぁ………あれ？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/22/100200530wfu">
「かんた……さん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	EndScene();



}
