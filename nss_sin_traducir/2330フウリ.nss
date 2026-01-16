
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2330フウリ.nss_MAIN
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
	if($myRoute=="トゥルー"){
		SetVolume("@xbgm*", 500, 0, null);
		$GameName = "2340ノーコ_フウリ.nss";
	}else{
		//飛び先で死亡
		SetVolume("@xbgm*", 3000, 0, null);
		CreateColorEX("絵色黒", 20000, "#000000");
		Fade("絵色黒", 2000, 1000, null, true);
		Wait(2000);
		$GameName = "2348ノーコ_フウリ.nss";//★エンディングへ（e）
	}
}

scene 2330フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="470">
////////////header////////////
//file name "2330フウリ.nss"
//title "最後の決断"
//previous "2320フウリ_h.nss"

////////////footer////////////
//next （"flkagome5" = false） デッドエンド！
//next "フウリ" "2340ノーコ_フウリ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockTime(2330);}

//◆場所：屋島_古戦場
	OnBG(10,"bg2201100屋島_古戦場_通常");
	FadeBG(0,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg2201100屋島_古戦場_通常.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 0, null, true);

	SoundPlay("@xbgm28",1000,450,true);

	FadeDelete("上背景", 500, null, true);

{	St("MR",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200010wfu">
「ぽかぽかです」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200020wfu">
「海の音が聞こえて」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200030wfu">
「原っぱを風が渡って」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200040wfu">
「森が優しくざわめいて」

{	St("MR",700, @0,@0,"buフウリ_胸手_shy");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200050wfu">
「幸せです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2331);}

//	TextBoxDelete(150);

{	St("MR",700, @0,@0,"buフウリ_胸手_smile");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200060wfu">
「この時間が、永遠に続けばいいのに……」

{	DeleteSt("MR",200,true);
	St("ML",700, @0,@0,"bu貫太_通常_smile");
	FadeSt("ML",200,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200070odk">
「ああ。そうだね」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buフウリ_胸手_shy");
	FadeSt("MR",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200080wfu">
「貫太さん……」

{	Move("@StNameMR/MR*", 200, @-10, @0, Dxl1, false);
	DeleteSt("MR",200,true);}
　フウリは、貫太の肩に身体を寄せようとして――

//◆ＳＥ：どたっ！　倒れる
{	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,400,0,1000,null,false);
	Shake("絵背景100", 500, 3, 1, 0, 0, 1000, null, false);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200090wfu">
「いだっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2332);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　草原に転がった。

{	St("C",700, @0,@+100,"buフウリ_通常_angry");
	Move("@StNameC/C*", 200, @0, @-100, Dxl1, false);
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200100wfu">
「ちょ！　貫太さんひどい！
　いきなりよけるなんて――」

{	SetVolume("@xbgm*", 2000, 0, null);
	St("C",700, @0,@0,"buフウリ_頬手_shock");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200110wfu">
「よける……なんて？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2333);}

	TextBoxDelete(150);

	DeleteAllSt(200,true);


//◆演出指示：貫太の身体が透けていく
//嶋：後で座標調整
	CreateTextureEX("絵背景1000", 1000, 0, -100, "cg/bg/m/bg2201100屋島_古戦場_通常_m.jpg");
	SetShade("絵背景1000", MEDIUM);

	CreateTextureEX("絵背景1001", 1200, 260, -88, "cg/bu/l/bu織田貫太_通常_x02.png");

	Move("絵背景1000", 1000, 0, 0, null, false);
	Fade("絵背景1000", 300, 1000, null, true);
	Move("絵背景1001", 700, 260, -38, null, false);
	Fade("絵背景1001", 300, 750, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200120wfu">
「貫太さん？　なんで、透けて――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200130wfu">
「あれ？　私の目、おかしくなっちゃった？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200140wfu">
「ああ、それとも寝ぼけてるんだ！　夢？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200150odk">
「そう。わかってるだろう？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200160odk">
「君は夢を見てるんだ」

{	SoundPlay("@xbgm25",1000,450,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200170odk">
「一夜限りの夢。あるいは、はかない白昼夢」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200180odk">
「君はさっきまで、どこにいた？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200190odk">
「柳神社の、僕のお墓の前にいただろう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2334);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200200wfu">
「…………」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200210odk">
「死んだんだ。僕は」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200220odk">
「車に轢かれて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2335);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200230odk">
「お墓に、埋まってた」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200240wfu">
「恵那ちゃんに聞きました」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200250wfu">
「でも、貫太さんはここにいる」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200260wfu">
「アザナエルで、願いが叶いました」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200270odk">
「すぐに帰らなきゃならないけどね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2336);}

//	TextBoxDelete(150);

	CreateTextureEX("絵背景101", 1200, Center, -18, "cg/bu/bu貫太_通常_sad.png");
	CreateTextureEX("絵背景102", 1200, Center, -18, "cg/bu/bu貫太_通常_smile.png");
	CreateTextureEX("絵背景103", 1200, Center, -18, "cg/bu/bu貫太_通常_hard.png");
	CreateTextureEX("絵背景104", 1200, Center, -18, "cg/bu/bu貫太_通常_hard.png");

	St("C",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("C",0,true);

	Fade("絵背景*", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200280wfu">
「アザナエルは願いを叶えてくれるんです！
　妄想の存在が、現実になったりするんです！」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200290wfu">
「だったら貫太さんも――」

{	DeleteSt("C",200,true);
	Fade("絵背景101", 200, 750, null, true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200300odk">
「君は僕の死を受け入れてしまっていた。
　表向きでは、それに気付かないようにしていたけど」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200310odk">
「君の望みは、僕に出会うこと。
　これでアザナエルの願いは、叶ったんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2337);}

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200320odk">
「僕は、死んでから随分時間が経った。
　もう君も、それを受け入れる頃だよ」

{	Fade("絵背景101", 200, 0, null, true);
	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200330wfu">
「私……そんなの、望んでない」

{	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200340wfu">
「もしも願いが叶ったなら、私は貫太さんと一緒に――」

{	DeleteSt("C",200,true);
	Fade("絵背景102", 200, 750, null, true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200350odk">
「いいや。君には、帰る場所がある」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2338);}

//	TextBoxDelete(150);

	Fade("絵背景102", 200, 0, null, true);

	St("C",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200360wfu">
「そんなのは……だって私、村を捨てて東京へ……」

{	DeleteSt("C",200,true);
	Fade("絵背景102", 200, 750, null, true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200370odk">
「僕はずっと、天国で聴いてた」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200380odk">
「君が叩く太鼓の音色だけじゃない。
　みんなで奏でる、音楽を」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200390odk">
「東京で、君には新しい仲間ができた。
　そうだろう？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(2339);}

	TextBoxDelete(150);

	Fade("絵背景102",200,0,null,true);

	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200400wfu">
「そんな、でも――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200410wfu">
「私は……貫太さんと……」

{	St("C",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200420wfu">
「貫太さんと、一緒に……」

{	DeleteSt("C",200,true);
	Fade("絵背景103",200,750,null,true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200430odk">
「本気なのか？」

//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200440odk">
「君は、僕に会うだけではなく、一緒に向こう側に行きたいって、心の底から願えるのかい？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景103", 200, 0, null, true);

{	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200450wfu">
「貫太さん――私は――」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/23/300200460wfu">
「私は――ずっと――一緒に――」

{	DeleteSt("C",200,true);
	Fade("絵背景104", 200, 750, null, true);}
//【織田貫太】
<voice name="織田貫太" class="織田貫太" src="voice/23/300200470odk">
「フウリ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵背景104", 200, 0, null, true);
	Delete("絵背景100");
	Delete("絵背景101");
	Delete("絵背景102");
	Delete("絵背景103");
	Delete("絵背景104");




	EndScene();
}
