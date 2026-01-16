
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene a2030似鳥_ノーコ.nss_MAIN
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
	$GameName = "a2040似鳥_ノーコ.nss";
//	$GameCircle=false;

}

scene a2030似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="600">
////////////header////////////
//file name "a2030似鳥_ノーコ.nss"
//title "かえれないふたり"
//previous "a2020似鳥_ノーコ.nss"

////////////footer////////////
//next "似鳥" "a2040似鳥_ノーコ.nss"
//next "ノーコ" "a2040似鳥_ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：地下_地下鉄
	OnBG(10,"bg0703100地下_地下鉄_通常");
	FadeBG(0,true);

//◆時間：ジャンプ
{	ClockPass(2033);}

	if($PreGameName=="a2020似鳥_ノーコ.nss"){
	DrawDelete("上背景", 1000, 5, null, "blind_01_00_1", true);
	}else{
	FadeDelete("上背景", 0, null, true);
	}

//◆ＳＥ：足音が続く
	CreateSE("SE01","se動作_歩く02_l");
	MusicStart("SE01",0,700,0,700,null,true);
//	SoundPlay("@xbgm21",0,450,true);
	SoundPlay("@xbgm24",0,450,true);

{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100010nki">
「地下鉄にも、繋がってるのか……」

{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100020nko">
「そう」

{
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100030nki">
「…………」

{
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100040nko">
「…………」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);
}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100050nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2034);}

//	TextBoxDelete(150);
	SetVolumeEX("@SE01*", 1500, 0, null);

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100060nko">
「……ふあん？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100070nki">
「…………」

{
//	SoundPlay("@xbgm26",0,450,true);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100080nki">
「これ、夢じゃないよな？」

{	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100090nki">
「突然目が覚めて、みんななかったことになるとか――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100100nko">
「ゆめじゃない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100110nko">
「げんじつにおこったこと」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100120nko">
「にとり、みとめて」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100130nko">
「あなたは、ひとごろし」

{	St("ML",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100140nko">
「もう……もとのせかいには、もどれない」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100150nki">
「このままじゃだめだって、思ってた。
　自分の力のなさに、無性に腹が立って」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2035);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100160nki">
「おまえが側にいるのが、悪いんだって
　全部、おまえのせいにして。でも――」

{	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100170nki">
「おまえがいなくなった途端、こうなった」

{	St("MR",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100180nki">
「やっぱりオレ……
　おまえと一緒じゃなきゃ、ダメなのかな」

{	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100190nki">
「ふたりきりで……ふたりだけで……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @0,@0,"buノーコa_通常_shy");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100200nko">
「ふたりだけが、いい」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100210nko">
「ともだちも、いらない」

{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100220nko">
「わたしは――にとり」

{	St("ML",700, @0,@0,"buノーコa_幽霊_shy");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100230nko">
「あなたといっしょがいい」

{	St("ML",700, @0,@0,"buノーコa_通常_shy");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100240nko">
「あなたしかいらない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100250nki">
「本当に……それでいいんだよな？」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100260nko">
「わたしは、のうないかのじょ」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100270nko">
「わたしは、あなたがうみだしたがんぼう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100280nko">
「あなたはすべてをこわしたかった」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100290nko">
「だからわたしをうみだして、へやにこもった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2036);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100300nko">
「でも、あなたはそとにでた」

{	St("ML",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100310nko">
「あなたのてはちでよごれた」

{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100320nko">
「だから、まちがい」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100330nki">
「ああ……そうだ……」

{	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100340nki">
「世界がどんなにオレを嫌っても……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100350nki">
「ノーコだけは、オレを好きでいてくれる」


{	St("MR",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100360nki">
「部屋からでなけりゃ良かったんだ」

{	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100370nki">
「ずっと、ずっと、閉じこもって……
　おまえとセックスしてればよかった」

{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100380nki">
「ごめんな、ノーコ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2037);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100390nki">
「おまえを突き放したりして、ごめんな」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100400nko">
「わたしがいる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100410nko">
「いっしょにいる」

{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100420nko">
「ずっと、ずっといっしょにいる」

{	St("ML",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100430nko">
「よのなかにせをむけて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100440nko">
「きにくわなければ、こわせばいい」

{	St("ML",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100450nko">
「きにくわなければ、きればいい」

{	St("ML",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100460nko">
「わたしといっしょに、いきましょう」

{
//	St("ML",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("ML",200,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100470nko">
「じごくのそこまで、いきましょう」

{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100480nki">
「ノーコ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1500, 0, null);
	SceneOut(20000, 1000, "blind_01_00_0");

//◆ＳＥ：ファン！　音が鳴って地下鉄が走り抜ける
	CreateSE("SE01","seメカ_電車_クラクション");
	MusicStart("SE01",0,500,0,1000,null,false);

	CreateSE("SEL01","seメカ_電車_通過");
	MusicStart("SEL01",0,500,0,1100,null,false);

//◆時間：ジャンプ
{	ClockPass(2039);}

//◆場所：地下_通路_スパコン館
	DeleteAllSt(0,true);
	OnBG(10,"bg0701500地下_通路_スパコン館");
	FadeBG(0,true);
	SceneIn(1000, "blind_01_00_1");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100490nko">
「こっちに、まがってる」

{
	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100500nki">
「――いるな」

{	St("MR",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("MR",200,false);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100510nki">
「おいっ！　これ以上逃げても無駄だっ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100520nki">
「大人しく捕まれっ！」

{	DeleteAllSt(200,false);
	SoundPlay("@xbgm22",0,450,true);
	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/300100530msi">
「い、いやっ！　助けてぇー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{
//	St("C",700, @0,@0,"bu村崎_通常_fear");
//	FadeSt("C",200,true);
}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/300100540msi">
「おねがいっ！　やめて――考え直してくださいっ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100550nki">
「考え直すだと？　馬鹿な！」

{	St("MR",700, @0,@0,"bu似鳥_通常_rage");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100560nki">
「オレはもう、後戻りなんて効かないんだ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100570nko">
「ころそう。もうひきかえせないんだから」

{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100580nko">
「ひとりも、ふたりも、おなじ」

{	St("ML",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/300100590nko">
「わたしといっしょに、いこう」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/300100600nki">
「――――ふぅ」


　似鳥は銃を握り直し、小さく息を吐き出す。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	SetVolumeEX("@xbgm*", 1500, 0, null);
	SceneOut(5000, 150, "slide_01_01_0");

	EndScene();
}
//"a2040似鳥_ノーコ.nss"
