
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2040千秋_ノーコ.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName="2050カゴメ2.nss";
	}else if($CharaName=="ノーコ"){
		$GameName="2050カゴメ2.nss";
	}else{
		$GameName="2050カゴメ2.nss";
	}
}

scene 2040千秋_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="2120">
////////////header////////////
//file name "2040千秋_ノーコ.nss"
//title "千秋の決心"
//previous "2030千秋_恵那.nss"
//previous "2030ノーコ.nss"

////////////footer////////////
//next "千秋" "2050カゴメアソビ2.nss"
//next "ノーコ" "2050ノーコ.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2040);}

//◆場所：エレキセンター_廊下
	OnBG(10,"bg0901100エレキセンター_廊下_通常");
	FadeBG(0,true);

	CreateSE("SE10","seガヤ_エレキセンター内部_l");
	MusicStart("SE10",2000,700,0,1000,null,true);

	SoundPlay("@xsong01",1500,1,true);
	CreateSE("SE99","seガヤ_AV_l");
	MusicStart("SE99",0,1,0,1000,null,true);

	if($PreGameName=="2030ノーコ.nss"||$PreGameName=="2030千秋_恵那.nss"){
		FadeDelete("上背景", 500, null, true);
	}else{
		FadeDelete("上背景", 0, null, true);
	}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("C",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/400400010jbr">
「おお、おかえりなさいデス」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400020kit">
「誰も来なかったか！？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buジャブル_通常_smile");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/400400030jbr">
「あたりまえだのくらっか！」

{	St("MR",700, @0,@0,"buジャブル_通常_normal");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/400400040jbr">
「でもなにがいるデスカ？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400050kit">
「なにがって？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/400400060jbr">
「奧から声したデス」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400070kit">
「…………え？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"buジャブル_通常_hard");
	FadeSt("MR",200,true);}
//【ジャブル】
<voice name="ジャブル" class="ジャブル" src="voice/20/400400080jbr">
「男の悲鳴、フタツデス」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"bu千秋_朗らか_think");
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400090kit">
「…………」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400100kit">
（オレたちが入ったときから、中に人が潜んでた？）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400110kit">
（ってか……そいつが犯人じゃね？）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400120kit">
（ホントに犯人だったら、オレの手には――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

//◆演出指示：回想開始：1910沙紅羅_千秋.nss

	CreateColorEXadd("絵色１", 20000, "#FFFFFF");
	SetVolumeEX("SE10", 500, 1, null);
	Fade("絵色１", 200, 1000, null, true);

	ClockDelete(0,true);
	ClockTime(2040);

	DeleteSt("ML",0,true);
	CreateTextureEX("絵背景１", 10, 0, 0, "cg/bg/bg0103111秋葉原_中央通り_通常.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	St("C",700, @0,@0,"bu沙紅羅_木刀_angry");
	FadeSt("C",0,true);

	Fade("絵色１", 400, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/20/400400130skr">
「逃げるんじゃねぇッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指定：回想終了
	Fade("絵色１", 200, 1000, null, true);

	ClockPass(2040);

	Delete("絵背景１");
	DeleteSt("C",0,true);

	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",0,true);

	SetVolumeEX("SE10", 1000, 700, null);
	Fade("絵色１", 400, 0, null, true);
	Delete("絵色１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400140kit">
「あ……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400150kit">
（そうだ……
　オレが無罪を証明するって、恵那に約束したんだ）

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400160kit">
（こんなところで、誰かの手を借りるわけに行くかッ！）

{	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400170kit">
「インド人！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400180kit">
「モデルガン……あったよな？　貸してくれ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

	CreateSE("SE01","se銃_構える");
	CreateSE("SE02","se動作_一歩");
	MusicStart("SE01",0,1200,0,1000,null,false);

	Wait(300);
	MusicStart("SE02",0,1200,0,1000,null,false);

	Wait(1000);
	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400190kit">
「ふぅ……」

{	DeleteAllSt(150,true);}
　千秋は薄暗いバックギャモンを見据えて、深呼吸。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2041);}

	TextBoxDelete(150);

	SetVolumeEX("SE10", 2000, 0, null);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆演出指示：たっぷり時間をかけて移動
	Wait(1000);

//◆場所：バックギャモン_正面
	OnBG(10,"bg1001100バックギャモン_正面_通常");
	FadeBG(0,true);

//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);
	SetVolumeEX("@xsong01", 2000, 200, null);


//◆ＳＥ：かすかな足音。靴と堅い床。軋む系の音ではなく、リノリウムとか。
	CreateSE("SE01","se動作_歩く01_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	DrawTransition("絵黒幕", 1500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("絵黒幕");

	SetVolume("SE01", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400200kit">
（男の気配がふたつって言ってたけど……特に感じない）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400210kit">
（……うん）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400220kit">
（大丈夫……大丈夫……）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400230kit">
（怖くない、怖くない……）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400240kit">
（恵那のために、オレは――――！！）

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400250kit">
「――――ッッ！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：びゅん！　とか、あと勢いよくすだれを開ける音とか
	CreateSE("SE03","se動作_着地");
	MusicStart("SE03",0,500,0,1000,null,false);
	CreateSE("SE02","se動作_バッグ渡す");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//◆場所：バックギャモン_店内
	CreateTextureSP("絵背景", 20, -200, 0, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Zoom("絵背景", 0, 1400, 1400, null, true);
	Request("絵背景", Smoothing);

	SetVolumeEX("@xsong01", 500, 500, null);

	SetVolumeEX("SE99", 2000, 100, null);
//	MusicStart("SE10",3000,400,0,1000,null,true);

	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);

	Move("絵背景", 200, @400, @0, Dxl3, false);

	SetVolume("SE02", 1000, 0, null);
	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400260kit">
「う、動くなッ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400270kit">
「動くと撃つ！　撃つからなッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2042);}

	Delete("絵黒幕");
//◆演出指示：辺りを見回す
	Move("絵背景", 800, @-400, @0, Dxl3, true);
	Move("絵背景", 1500, @400, @0, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400280kit">
「…………」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400290kit">
「誰も……いないな？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵背景", 400, null, true);

	St("C",700, @0,@-20,"bu千秋_通常_sigh");
	Move("@StNameC/C*", 200, @0, @20, Dxl1, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400300kit">
「…………ふぅ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);
	SetVolumeEX("SE99", 4000, 0, null);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/img双六死に手.jpg");
	Fade("絵背景100", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0096]
　カウンターに寄りかかって倒れる河原屋双六。

　動かないその右手には、拳銃が握られている。

{
	Fade("絵背景100", 300, 0, null, true);
	Delete("絵背景100");
	St("C",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400310kit">
「――――ッ！！」

{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400320kit">
「ううう……ごめんなさいッ！！」

{	St("C",700, @0,@0,"bu千秋_通常_pain");
	FadeSt("C",150,true);
	Move("@StNameC/C*", 200, @0, @80, Dxl3, false);
	DeleteAllSt(200,false);}
　千秋はかがみ込むと、双六の右手に手を伸ばす。

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400330kit">
「ひっ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400340kit">
「ううう……あったかい……！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400350kit">
「とっ！　とりゃ！」

{	CreateSE("SE01","se動作_銃渡す");
	MusicStart("SE01",0,1200,0,1000,null,false);
	St("C",19000, @0,@30,"bu千秋_通常_fear");
	Move("@StNameC/C*", 200, @0, @-30, Dxl3, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400360kit">
「ふは……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);
	SetVolumeEX("SE10", 4000, 0, null);

	CreateColorEX("絵色100", 90, "BLACK");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/imgアザナエルa.png");
	Move("絵背景100", 0, @0, @100, null, true);

	Move("絵背景100", 300, @0, @-100, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, false);
	Fade("絵色100", 300, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0097]
　引き抜いた銃は、モデルガンと瓜二つ――

　だが、握った感触が明らかに違う。

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400370kit">
「こっちが……オリジナル！」

{
	Move("絵背景100", 300, @0, @100, Axl1, false);
	FadeDelete("絵色100", 300, null, false);
	FadeDelete("絵背景100", 300, null, true);
}
　千秋はすぐさま、モデルガンをポケットに入れた。

{	St("C",700, @20,@0,"bu千秋_気合い_hard");
	Move("@StNameC/C*", 200, @-20, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400380kit">
「よし！　よし！　よし！」

{	St("C",700, @0,@0,"bu千秋_気合い_shout");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400390kit">
「取った！　取ったぞ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400400kit">
「犯人！　どこにいる？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400410kit">
「出てこい！　出てこないと撃つぞッ！」

{	St("C",700, @0,@0,"bu千秋_気合い_hard");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400420kit">
「それとも……いないのか？」

{	St("C",700, @0,@0,"bu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400430kit">
「男の悲鳴ってのは、間違いか？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400440kit">
「だよな？　だよな！」

{	St("C",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400450kit">
「ってか、コイツを握ってたし。明らかに自殺だし」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400460kit">
「犯人がいつまでもこんなところにいるはずないし」

{	St("C",700, @0,@0,"bu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400470kit">
「あのインド人怪しいし、な。うん」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400480kit">
「ただの聞き違い……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("C",200,true);

	CreateColorEX("絵色黒１", 20, "#000000");
	Fade("絵色黒１", 1500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0119]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400490kit">
「いや、オレに銃を貸すための巧妙な罠！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xsong*", 500, 0, null);
//	SetVolumeEX("SE10", 1000, 0, null);


//◆演出指定：影の中からぬぅっと出てくる
	St2("C",19000, @0,@180,"fuノーコa_通常_normal","cg2/",".png");
	Move("@StNameC/C*", 1000, @0, @-180, Dxl3, false);
	DeleteAllSt(200,false);
	FadeSt("C",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400500nko">
「せいかい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	FadeDelete("絵色黒１", 200, null, true);

	St("C",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameC/C*", 500, 0, 10, 0, 0, 500, null, false);
	Move("@StNameC/C*", 500, @-50, @0, Dxl3, false);
	FadeSt("C",500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400510kit">
「うきゃああああああッ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400520kit">
「で、ででで、出た！　出た！　出た！」

{
	SoundPlay("@xbgm09",0,450,true);

	St("C",700, @0,@80,"buノーコa_通常_normal");
	Move("@StNameC/C*", 1500, @0, @-80, Dxl3, false);
	DeleteAllSt(200,false);
	FadeSt("C",1000,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400530nko">
「やっぱり……みえてる」

{	DeleteAllSt(150,true);
	St("C",700, @-30,@0,"bu千秋_銃構え正面");
	Move("@StNameC/C*", 200, @30, @0, Dxl3, false);
	CreateSE("SE01","se銃_構える");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400540kit">
「動くな！　動くと撃つぞ！」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400550nko">
「うごく？」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"bu千秋_銃構え正面");
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400560kit">
「ひぃっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2043);}

//	DeleteAllSt(150,true);

//◆ＳＥ：カチッ！　撃鉄空振り
	CreateSE("SE01","se銃_弾切れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400570kit">
「え……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);

//◆ＳＥ：カチッ！　撃鉄空振り
//◆ＳＥ：カチッ！　撃鉄空振り
//◆ＳＥ：カチッ！　撃鉄空振り
	CreateSE("SE01","se銃_弾切れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);
	St("C",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400580kit">
「弾切れ？」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400590nko">
「ごめん」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"bu千秋_朗らか_shock");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400600kit">
「え？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);
	St("C",700, @0,@50,"buノーコa_カッター_angry");
	Move("@StNameC/C*", 200, @0, @-50, Dxl3, false);

//◆ＳＥ：カッター伸ばす
	CreateSE("SE01","se戦闘_カッター_刃出す01普通b");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeSt("C",200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400610nko">
「さしていい？」

{	DeleteAllSt(150,true);
	St("C",700, @0,@40,"bu千秋_驚天_shock");
	Shake("@StNameC/C*", 200, 0, 10, 0, 0, 500, null, false);
	Move("@StNameC/C*", 200, @80, @0, null, false);
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400620kit">
「な……！　いいわけないだろ！」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("C",200,true);
	Move("@StNameC/C*", 300, @-50, @0, null, false);
	DeleteAllSt(200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400630nko">
「いじわる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(0);
	DeleteAllSt(150,false);

//◆ＳＥ：カッター振る
//◆演出指定：刃の軌跡

	CreateTextureEX("絵背景100", 1490, Center, Middle, "cg/ef/efカッター剣閃a.jpg");

	CreateTextureEX("絵背景カウンター", 100, Center, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	SetShade("絵背景カウンター", MEDIUM);
	Request("絵背景カウンター", Smoothing);
	Zoom("絵背景カウンター", 0, 2000, 2000, null, true);

	CreateTextureEX("絵背景カッター", 100, Center, Middle, "cg/img/l/imgカッター刃元b_x02.png");
	Rotate("絵背景カッター", 0, @0, @0, @0, null,true);

	Move("絵背景カウンター", 0, @0, @-100, null, true);
	Move("絵背景カッター", 0, @0, @-200, null, true);

	CreateSE("SE01","se戦闘_風切り音10");
	CreateSE("SE02","se戦闘_切断02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(500);


	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);

	Wait(200);




	Fade("絵背景カウンター", 0, 1000, null, true);
	Fade("絵背景カッター", 0, 1000, null, true);

	Move("絵背景カウンター", 0, @0, @0, null, true);
	Shake("絵背景カッター", 1200, 2, 0, 0, 0, 1000, Dxl1, false);

	MusicStart("SE02",0,1500,0,1000,null,false);
	FadeDelete("絵背景100", 50, null, false);

	Move("絵背景カウンター", 250, @0, @100, Dxl1, false);
	Move("絵背景カッター", 250, @0, @200, Dxl1, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　ノーコは不満げな表情のまま、カウンターにカッターナイフを突き立てる。

{
//	St("ML",700, @-30,@0,"buノーコa_通常_shock");
//	Move("@StNameML/ML*", 200, @30, @0, Dxl1, false);
//	FadeSt("ML",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400640nko">
「ささった……」

{
//	DeleteAllSt(150,true);
//	St("MR",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("MR",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400650kit">
「そりゃ刺さるだろ」

{
//	DeleteAllSt(150,true);
//	St("ML",700, @0,@0,"buノーコa_通常_shock");
//	FadeSt("ML",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400660nko">
「すごい……」

{
//	DeleteAllSt(150,true);
//	St("MR",700, @0,@0,"bu千秋_通常_worry");
//	FadeSt("MR",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400670kit">
「……なにが？」

{	FadeDelete("絵背景*", 300, null, true);
//	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	Move("@StNameML/ML*", 500, @80, @0, Dxl1, false);
	FadeSt("ML",300,true);
	Move("@StNameML/ML*", 500, @80, @0, Dxl1, false);
	DeleteAllSt(300,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400680nko">
「かお」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_pain");
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 500, null, false);
	Move("@StNameMR/MR*", 200, @80, @0, Dxl3, false);
	CreateSE("SE01","se擬音_ギャグ_ぷに");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400690kit">
「ふがっ！！」

//おがみ：↓千秋の間違い
{	DeleteAllSt(150,true);}
　ノーコの指が、千秋の顔に当てられた。

{	DeleteAllSt(150,true);
	St2("C",19000, @0,@50,"fuノーコa_通常_normal","cg2/",".png");
	Move("@StNameC/C*", 200, @0, @-50, Dxl3, false);
	CreateSE("SE01","se擬音_ギャグ_ぽにょぽにょ");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400700nko">
「……さわれる」

{	St2("C",19000, @0,@0,"fuノーコa_通常_shock","cg2/",".png");
	CreateSE("SE01","se擬音_ギャグ_ぽにょぽにょ");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400710nko">
「さわれる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2044);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400720nko">
「もうそうじゃない……！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400730nko">
「げんじつのそんざいに……なった……！」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_fear");
	Move("@StNameMR/MR*", 500, @30, @30, Dxl3, false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 500, null, false);
	Move("@StNameMR/MR*", 200, @80, @-30, Dxl3, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400740kit">
「は、離せって！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400750kit">
「おまえ、頭大丈夫か？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400760nko">
「……しんぱいしてくれる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
{	DeleteAllSt(150,true);
	St("MR",700, @20,@0,"bu千秋_通常_worry");
	Move("@StNameMR/MR*", 200, @-20, @0, Dxl3, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400770kit">
「ま……まあ、な」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400780nko">
「フウリとおなじ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400790nko">
「いいひと」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400800kit">
「は……はあ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//◆音声指示：満面の笑み
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400810nko">
「ありがとう」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//◆音声指示：照れる
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400820kit">
「あ……」

{	Move("@StNameMR/MR*", 200, @0, @20, Dxl3, true);
	Move("@StNameMR/MR*", 200, @0, @-20, Dxl1, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400830kit">
「いえいえ、こちらこそ、なんか、ありがとう……」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400840nko">
「それ、かえして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400850kit">
「え？　これ？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400860nko">
「アザナエル。ミヅハにかえす」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400870kit">
「……駄目だ」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400880nko">
「どうして？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400890kit">
「っていうか、おまえこそなんでこんなもの欲しい――」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400900kit">
「あ。もしかしておまえが……犯人？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(150,true);

//◆演出指定：ノーコ、カッターナイフ振り下ろし

	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("ML",200,true);

	CreateSE("SE11","se戦闘_風切り音10");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ef/efカッター剣閃a.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Shake("絵背景100", 300, 5, 8, 0, 0, 1000, Axl1, false);
	Zoom("絵背景100", 300, 1200, 1200, Dxl2, false);
	Fade("絵色100", 200, 1000, null, true);
	Delete("絵背景100");
	FadeDelete("絵色100", 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400910nko">
「ちがう」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_驚天_shock");
	Shake("@StNameMR/MR*", 500, 0, 25, 0, 0, 500, Dxl1, false);
	Move("@StNameMR/MR*", 500, @100, @0, Dxl3, false);
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400920kit">
「ひえっ！！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400930kit">
「ちょちょっと本気ですかごめんなさい！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400940nko">
「いのちがおしい？」

{	DeleteAllSt(150,true);
	St("MR",700, @100,@0,"bu千秋_通常_cry");
	Shake("@StNameMR/MR*", 200, 10, 0, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400950kit">
「は……はははは、はい！　惜しい！　惜しいです！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400960kit">
「なんでも、なんでもします！
　なんでもするからこの通り！　命だけは！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400400970nko">
「じゅうをもらう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2045);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
{	DeleteAllSt(150,true);
	St("MR",700, @100,@0,"bu千秋_通常_fear");
	FadeSt("MR",200,true);
	Move("@StNameMR/MR*", 200, @0, @50, Dxl3, false);
	DeleteAllSt(150,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400980kit">
「は、はい！　銃ですね！　銃――」

{

	FadeFF("@StNameMR/MR*",0,0,500,0,-50,Dxl2, false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400400990kit">
「銃――銃――返さなきゃ――返す――」

{	St("MR",700, @100,@50,"bu千秋_通常_pinch");
	Move("@StNameMR/MR*", 200, @0, @-50, Dxl3, false);
	FadeSt("MR",200,true);
	St("MR",700, @100,@0,"bu千秋_通常_pain");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401000kit">
「ううっ！　だめだああああッ！！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401010nko">
「かえさない？」

{	DeleteAllSt(150,true);

	St("MR",700, @100,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401020kit">
「この銃は――どうしても――
　どうしてもこれだけは、渡せないんだッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401030nko">
「……ころす」

{	DeleteAllSt(150,true);
	St("MR",700, @100,@40,"bu千秋_通常_pain");
	FadeT("@StNameMR/MR*",0,0,200,0,-40,Dxl1,false);
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401040kit">
「ちょ、調子に乗ってすいません！　許して！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401050kit">
「どうしてもこれだけは、渡せないんです！　はい！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401060nko">
「しにたい？」

{	DeleteAllSt(150,true);
	St("MR",700, @100,@0,"bu千秋_通常_pinch");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401070kit">
「死にたくないです！　死んじゃダメなんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401080kit">
「オレ、恵那の側にいて、それで、コレを取り戻してやらないと、アイツ、なにするかわかんなくて――」

{	St("MR",700, @100,@0,"bu千秋_通常_angry");
	Move("@StNameMR/MR*", 300, @-100, @0, Dxl3, false);
	FadeSt("MR",300,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401090kit">
「必死に取り繕ってたけど、でも、アイツがすごくショックだったって、わかるから！」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401100kit">
「アイツがあんな顔してるの見たの、貫太さんがいなくなって以来だから――」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401110kit">
「だから、今度こそ、オレが――」

{	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401120kit">
「オレが、アイツの側にいて、勇気づけてやらないと」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401130kit">
「だから――この銃、絶対に、渡せない――」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401140kit">
「渡せないんです――……」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401150nko">
「すき？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401160kit">
「え？」

{	DeleteAllSt(150,true);
	SoundPlay("@xbgm25",0,450,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401170nko">
「そのこが、すき？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401180kit">
「……好きとか、嫌いとか、そういう問題じゃなく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2046);}

	DeleteAllSt(200,true);

	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);

//◆演出指定：カッターナイフを振り上げて
	CreateSE("SE01","se戦闘_風切り音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("ML",0,true);

	FadeDelete("絵フラッシュ白", 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401190nko">
「はっきりして」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_pain");
	Shake("@StNameMR/MR*", 200, 0, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401200kit">
「好きです！　好き！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_カッター_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401210nko">
「おどされたからじゃなく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401220nko">
「ほんとうに、すき？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401230kit">
「…………」

{	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401240nko">
「…………」

{

	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401250kit">
「好き、です」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401260kit">
「今まで、全然そういう目で見たことがなくて」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401270kit">
「正直、今日ホントの気持ちを聞かれて、ビビったけど」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401280kit">
「でも、初めて本気で考えたら、それ以外にないです」

{	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401290kit">
「オレは、恵那が、好きです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);

	SetVolumeEX("@xbgm*", 3000, 0, null);

//◆ＳＥ：カッターナイフをしまう
	CreateSE("SE01","se戦闘_カッター_刃出す04単発a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameML/ML*", 600, @-30, @0, Dxl3, false);
	DeleteAllSt(600,true);

	Wait(300);

	St("ML",700, @-30,@0,"buノーコa_通常_normal");
	Move("@StNameML/ML*", 300, @30, @0, Dxl3, false);
	FadeSt("ML",300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401300nko">
「よし」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401310nko">
「これ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(200,true);}

	CreateTextureEX("絵演物", 1010, Center, Middle, "cg/obj/objアザナエル弾丸.png");
	Move("絵演物", 0, @0, @120, null, true);

	Move("絵演物", 500, @0, @-120, DxlAuto, false);
	Fade("絵演物", 500, 1000, null, true);

	Wait(500);

	FadeDelete("絵演物", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0312]
　ノーコがしゃがみ込むと、双六の手からこぼれ落ちた弾丸を手に取り、千秋に渡す。

{	St("ML",700, @0,@00,"buノーコa_通常_normal");
	FadeSt("ML",300,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401320nko">
「こめて」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401330kit">
「…………」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401340nko">
「いや？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401350kit">
「わ……わかったよ」


{	Move("@StNameMR/MR*", 200, @30, @0, Dxl3, false);
	DeleteAllSt(200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401360kit">
「ん、と――」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401370kit">
「んしょ、こうか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：空薬莢落下
	CreateSE("SE01","se銃_空薬莢落とす");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);

	CreateSE("SE02","se銃_シリンダー装填");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(500);

	St("MR",700, @30,@0,"bu千秋_通常_normal");
	Move("@StNameMR/MR*", 200, @-30, @0, Dxl3, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401380kit">
「で？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401390nko">
「まわす」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401400kit">
「まわすって？」

{
	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401410nko">
「ロシアンルーレット」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_worry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401420kit">
「………………え？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401430nko">
「じぶんをうつ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	Wait(150);
	SoundPlay("@xbgm24",0,450,true);

//★カメラ設定
	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/絵背景100a", 500, Center, Middle, "cg/bu/l/buノーコa_銃構え_normal_x01.png");
	Request("カメラ１/絵背景100a", Smoothing);

{	ClockPass(2047);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401440kit">
「意味が……わかんないんだけど」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401450nko">
「せいこうすると、ねがいがかなう」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401460nko">
「アザナエルはとくべつ」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401470kit">
「特別……」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401480kit">
「恵那、確か半田明神の地下にあったとか言ってた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401490kit">
「まさか……ホントにそういういわれが……？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401500nko">
「ほんとう」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_think");
	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 4000);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401510kit">
「…………いやいやいやいや」

{	//★立ち絵プロセス：再定義
	AgainSt("MR",700, @0,@0,"bu千秋_通常_angry");
	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",0,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401520kit">
「そんなの、信じられないし」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401530nko">
「わたしがしょうこ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401540kit">
「……え？」

{	DeleteAllSt(150,true);
	St("ML",700, @20,@0,"buノーコa_幽霊_normal");
	Move("@StNameML/ML*", 200, @-20, @0, Dxl1, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401550nko">
「わたしはにんげんじゃない」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401560kit">
「やっぱり……電波の人？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401570nko">
「わたしはもともと、もうそうのそんざい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401580nko">
「『ＮＯ　ＣＯＮＴＲＯＬ』」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401590kit">
「……ん？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401600nko">
「にとりのどうじんしのなまえ。
　わたしは、そのなかにしかいなかった」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401610kit">
「なんか……聞き憶えがあるような……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401620kit">
「同人誌……『のーこんとろーる』……あれ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401630kit">
「確か、それって……師匠が探してた本？」

{	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401640kit">
「そうか……『２ｂｉｒｄ』ってサークル名！
　『ニトリ』のことか！」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401650nko">
「そう」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401660kit">
「えっと、それじゃ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2048);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401670kit">
「本当におまえ、アザナエルの力で？」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401680nko">
「しんじるかどうかはじゆう」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401690kit">
「いや、でもやっぱりそれでも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	CreateTextureEX("カメラ１/絵背景200a", 500, Center, Middle, "cg/bu/l/buノーコa_銃構え_normal_x03.png");
	Request("カメラ１/絵背景200a", Smoothing);
//	SetShade("カメラ１/絵背景200a", MEDIUM);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0391]
{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401700kit">
「…………って、あれ？」

{	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401710kit">
「おまえ……もしかして、浮いてる？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ギャグ_アフロ");
	CreateTextureEX("カメラ１/絵背景100c", 400, Center, Middle, "cg/fu/fu千秋_朗らか_think.png");
	Request("カメラ１/絵背景100c", Smoothing);
	Move("カメラ１/絵背景100a", 0, @100, @350, null, true);
	Move("カメラ１/絵背景200a", 0, @100, @350, null, true);
	Move("カメラ１/絵背景100c", 0, @-1500, @-50, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
{	DeleteAllSt(150,true);
	MusicStart("SE01",0,700,0,1000,null,false);
	St("ML",100, @0,@0,"buノーコa_通常_shock");
	FadeXB($ML_次,0,0,3000,20,20,Dxl1,false);
	FadeSt("ML",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401720nko">
「おかしい？」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 3600);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401730kit">
「おかしいだろ！　人間が浮くはず――ない――」

{	//★立ち絵プロセス：再定義
	AgainSt("MR",700, @0,@0,"bu千秋_通常_sad");
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",0,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401740kit">
「そう……だよな。
　普通の人間のはずは……ないんだよな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 3000, 0, null);

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Wait(500);

//◆演出指定：ここから緊迫感ある演出・催眠術的な緊迫感
	SoundPlay("@xbgm06",0,450,true);

	CreatePlainSP("上背景", 2005);

	CreateTextureEX("カメラ１/絵背景100b", 300, center, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	CreateTextureEX("カメラ１/絵背景200b", 300, 0, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Request("カメラ１/絵背景100b", Smoothing);
	Request("カメラ１/絵背景200b", Smoothing);
	Zoom("カメラ１/絵背景100b", 0, 3000, 3000, null, true);
	Zoom("カメラ１/絵背景200b", 0, 3000, 3000, null, true);
	SetShade("カメラ１/絵背景200b", MEDIUM);
	Move("カメラ１/絵背景100b", 0, @-400, @0, null, true);
	Move("カメラ１/絵背景200b", 0, @-400, @0, null, true);

	Fade("カメラ１/*", 0, 1000, null, true);
	Fade("カメラ１/絵背景200b", 0, 0, null, true);
	MoveCamera("@カメラ１", 0, @-150, @0, @0, null, true);

	MoveFTP1("@カメラ１/*",7000,14,3);

	FadeDelete("上背景", 800, null, true);

	Wait(300);

	Fade("カメラ１/絵背景200b", 1000, 1000, null, false);
	Fade("カメラ１/絵背景200a", 1000, 0, null, true);

	Wait(200);

//	St("ML",700, @50,@0,"buノーコa_幽霊_normal");
//	Move("@StNameML/ML*", 1500, @-50, @0, Dxl3, false);
//	FadeSt("ML",500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401750nko">
「かくりつは、６ぶんの５」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401760nko">
「あなたにとって、チャンス」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	DeleteAllSt(150,true);
//	St("MR",700, @0,@0,"bu千秋_通常_sad");
//	FadeSt("MR",200,true);
	MoveCamera("@カメラ１", 500, -1200, @0, @0, AxlDxl, false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401770kit">
「チャンス……？」

{
//	St("MR",700, @0,@0,"bu千秋_通常_fear");
//	FadeSt("MR",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401780kit">
「でも６分の１で当たるし。当たったら死ぬし」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401790kit">
「そんな賭け、誰が――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	MoveCamera("@カメラ１", 500, -150, @0, @0, AxlDxl, false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_0", true);

//	DeleteAllSt(150,true);
//	St("ML",700, @0,@0,"buノーコa_通常_sad");
//	FadeSt("ML",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401800nko">
「じじつ、ひとがしんでいる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401810nko">
「それは、おおきなあやまち」

{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401820nko">
「でもアザナエルなら、とりけせる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401830nko">
「アザナエルでしか、とりけせない」

{	DeleteAllSt(150,true);
	St("MR",700, @0,@0,"bu千秋_通常_sad");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401840kit">
「…………」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401850nko">
「あいするひとのあやまちをただすなら、いましかない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	TextBoxDelete(150);

	CreateTextureEX("絵背景BG", 100, Center, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Fade("絵背景BG", 500, 1000, null, true);
	MoveFTP1stop();
	Delete("絵背景*");
	Delete("絵色*");
*/

//マスク準備
//	CreateTextureEX("絵マスク枠", 1610, 300, Middle, "cg/mask/ciスラッシュ_05_00z.png");
	CreateTextureEX("絵マスク枠", 6710, center, Middle, "cg/mask/ciライン_00_01z_ogm.png");
	Rotate("絵マスク枠", 0, @0, @0, 71, null,true);
	CreateMask("絵マスク左", 9000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵マスク左","絵マスク左");
	CreateTextureEX("絵マスク左/絵演背景", 6520, -200, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Zoom("絵マスク左/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵マスク左/絵演背景", MEDIUM);


//立ち絵準備
	CreateTextureEX("絵マスク左/絵演立絵", 6530, center, middle, "cg/fu/fu千秋_朗らか_normal.png");
	Request("絵マスク左/絵演立絵", Smoothing);
	CreateTextureEX("絵マスク左/絵演立絵2", 6530, -100, middle, "cg/fu/fu千秋_通常_shout.png");
	Request("絵マスク左/絵演立絵2", Smoothing);
//	CreateTextureEX("絵マスク左/絵演立絵3", 1530, center, middle, "cg/bu/buミリＰb_ショータイム_angry.png");
//	Request("絵マスク左/絵演立絵3", Smoothing);


//動作準備
	Move("絵マスク左", 0, -1024, 0, null, true);
	Move("絵マスク左/絵演立絵*", 0, -512, -200, null, true);
	Move("絵マスク枠", 0, -1024, 200, null, true);
	Fade("絵マスク枠", 0, 1000, null, true);
	Fade("絵マスク左/絵演背景", 0, 1000, null, true);
	Fade("絵マスク左/絵演色", 0, 1000, null, true);

	Shake_Loop_OGM_CUT("@絵マスク枠","プロセスシェイク");

//イン動作
	Move("絵マスク枠", 200, -20, 200, Dxl3, false);
	Move("絵マスク左", 200, 0, 0, Dxl3, false);
	Fade("絵マスク左/絵演立絵", 200, 1000, null, false);
	Move("絵マスク左/絵演立絵*", 200, -175, -320, Dxl1, true);

	MoveFTP2("@絵マスク左/絵演背景", 10000, 4, 2);
	MoveFTP3("@絵マスク左/絵演立絵*", 10000, 8, 3);

//	DeleteAllSt(150,true);
//	St("MR",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("MR",200,true);
	CreateColorEX("絵色100", 9100, "BLACK");
	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/img/imgアザナエルa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401860kit">
「６分の５……」

{
//	DeleteAllSt(150,true);
//	St("ML",700, @0,@0,"buノーコa_通常_normal");
//	FadeSt("ML",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401870nko">
「そう。６ぶんの５」

{	DeleteAllSt(150,true);
	Move("絵背景100", 0, @0, @100, null, true);
	Move("絵背景100", 300, @0, @-100, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, false);
	Fade("絵色100", 300, 500, null, true);}
　千秋は、手にしたアザナエルをじっと見つめる。

{
//	DeleteAllSt(150,true);
//	St("MR",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("MR",200,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401880kit">
「本当に……過ちは、なかったことになるのか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(150,true);

	FadeDelete("絵背景100", 500, null, true);
	Fade("絵色100", 4000, 1000, Dxl3, false);

/*
	MoveFTP1stop();
	MoveFTP2stop();
	MoveFTP3stop();
	Delete("絵背景*");
*/

//	Fade("絵背景*", 0, 0, null, true);


	St("ML",12700, @0,@0,"buノーコa_通常_normal");
	Move("@StNameML/ML*", 1500, @150, @0, Dxl1, false);
	FadeSt("ML",500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401890nko">
「じんせいにかくじつなことなんてなにもない」

{	Move("@StNameML/ML*", 1000, @100, @0, Dxl1, false);
	DeleteAllSt(200,true);
	St("MR",12700, @200,@0,"buノーコa_通常_normal");
	Move("@StNameMR/MR*", 1500, @-100, @0, Dxl3, false);
	FadeSt("MR",500,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401900nko">
「ほしょうはできない」

{	Move("@StNameMR/MR*", 500, @-40, @0, Dxl3, false);
	DeleteAllSt(500,true);
	St("C",12700, @0,@0,"buノーコa_通常_normal");
	Move("@StNameC/C*", 1500, @-200, @0, Dxl1, false);
	FadeSt("C",500,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401910nko">
「えらぶもえらばないも」

{	Move("@StNameC/C*", 1500, @-120, @0, Dxl1, false);
	DeleteAllSt(400,true);
	St2("C",19000, @150,@0,"fuノーコa_通常_normal","cg2/",".png");
	Move("@StNameC/C*", 1500, @-150, @0, Dxl3, false);
	FadeSt("C",500,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400401920nko">
「あなたのじゆう」

{	DeleteAllSt(150,true);
	St("C",12700, @0,@0,"fu千秋_通常_fear");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401930kit">
「いやいや、でも待てよ！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401940kit">
「こんな不確実なことしなくても、オレは――」

{	St("C",12700, @0,@0,"fu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401950kit">
「オレは――」

{	St("C",12700, @0,@0,"fu千秋_通常_sad");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401960kit">
「…………」

{	St("C",12700, @0,@0,"fu千秋_通常_think");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401970kit">
「それって、逃げだよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateColorSP("絵色黒", 12000, "#000000");
	Delete("絵色100");

{	ClockPass(2049);}

//	Move("絵マスク左", 0, 0, 0, null, true);
//	Move("絵マスク左/絵演立絵2", 0, -100, middle, null, true);
	Fade("絵マスク左/絵演立絵2", 200, 1000, null, false);
	Fade("絵マスク左/絵演立絵", 300, 0, Axl2, false);

	Move("@StNameC/C*", 200, @20, @0, Dxl3, false);
	DeleteAllSt(200,true);


	FadeDelete("絵色黒", 200, null, true);


//	St("C",700, @50,@0,"fu千秋_通常_shout");
//	Move("@StNameC/C*", 300, @-50, @0, Dxl3, false);
//	DeleteAllSt(200,false);
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401980kit">
「オレの師匠は言った！」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400401990kit">
「人間、名前でも身体でもない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//◆ＳＥ：トントン
	CreateSE("SE01","se動作_軽く叩く");
	MusicStart("SE01",0,700,0,1000,null,false);

//	St("C",19000, @0,@0,"fu千秋_通常_normal");
//	Shake("@StNameC/C*", 100, 0, 10, 0, 0, 500, null, false);
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400402000kit">
「大切なのは、ココだって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	TextBoxDelete(150);

	CreateTextureEX("絵背景BG", 19500, Center, Middle, "cg/bg/bg1002100バックギャモン_店内_通常.jpg");
	Fade("絵背景BG", 500, 1000, null, true);
	MoveFTP1stop();
	MoveFTP2stop();
	MoveFTP31stop();
	Request("プロセスシェイク", Stop);
	Delete("プロセスシェイク");
	Delete("絵背景*");
	Delete("絵色*");
	Delete("絵マスク枠*");
	Delete("絵マスク*");
	Delete("カメラ１/*");
	Delete("カメラ*");


//◆演出指定：シリンダを回す
	CreateSE("SE01","se銃_シリンダー回転");
	MusicStart("SE01",0,1400,0,1000,null,false);


	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400402010kit">
「オレは今、恵那の気持ちを知った」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400402020kit">
「だから――オレも、心で応える」

{	St("C",19000, @0,@0,"fu千秋_通常_angry");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400402030kit">
「幸せにしてやる」

{	DeleteAllSt(150,true);
	St("ML",700, @-80,@0,"buノーコa_通常_smile");
	Move("@StNameML/ML*", 1500, @80, @0, Dxl1, false);
	FadeSt("ML",500,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400402040nko">
「――すてき」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400402050nko">
「ひとをすきになるって、すてき」

{	Move("@StNameML/ML*", 1500, @-80, @0, Dxl3, false);
	DeleteAllSt(500,false);}
　ノーコはうっすらと微笑んで、背を向ける。

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400402060kit">
「あのさ」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400402070kit">
「おまえ、名前は？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]

{	DeleteAllSt(150,true);
	St("ML",700, @-30,@0,"buノーコa_幽霊_normal");
	Move("@StNameML/ML*", 600, @30, @0, Dxl3, false);
	FadeSt("ML",500,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400402080nko">
「――ノーコ」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"bu千秋_朗らか_normal");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400402090kit">
「ノーコさん」

{	St("C",700, @0,@0,"bu千秋_朗らか_smile");
	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400402100kit">
「ありがと」

{	DeleteAllSt(150,true);
	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/20/400402110nko">
「どういたしまして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@xsong*", 2000, 0, null);
	SetVolumeEX("@xbgm*", 2000, 0, null);

	TextBoxDelete(150);


	Move("@StNameML/ML*", 1000, @-50, @-50, Dxl3, false);
	DeleteAllSt(200,false);

//◆ＳＥ：ノーコが去っていく
	CreateSE("SE01","se動作_空飛ぶ02");
	MusicStart("SE01",0,700,0,1000,null,false);

//◆演出指定：立ち絵を自分の頭に銃を突きつける者に変更
//cono：次のシーンで銃を見ているので出していません（from徒歩）

	Wait(1800);

	St("C",700, @0,@0,"fu千秋_通常_normal");
	FadeSt("C",200,true);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/400402120kit">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



//	TextBoxDelete(150);

	EndScene();
}
