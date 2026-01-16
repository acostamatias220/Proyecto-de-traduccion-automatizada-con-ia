
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene d2311ノーコ.nss_MAIN
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
	SnowDropDelete(0);
	$GameName = "c2340恵那.nss";//★エンディングへ（d）
}

scene d2311ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="210">
////////////header////////////
//file name "d2311ノーコ.nss"
//title "フウリのいばしょ"
//previous "2310ノーコ.nss"

////////////footer////////////
//next  "c2340恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	SnowDrop(0);

//※下倉注：ここ雪が降ってきます 2010/11/19

//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201211秋葉原駅_正面_閉店");
	FadeBG(0,true);

	Wait(2000);

	CreateSE("走る", "se動作_走る01_l");
	MusicStart("走る", 300, 1000, 0, 1000, null,true);

//あきゅん「修正指示：時間帯的にもう深夜なので静かめのガヤに」
//★inc櫻井　修正
//※下倉注：ここはＢＧＭ前のシーンから引っ張ってくるのでガヤ削除。ノーコの心情にフォーカスを合わせる。
//	CreateSE("人ごみ", "seガヤ_交通少_l");
//	MusicStart("人ごみ", 300, 700, 0, 1000, null,true);

	SoundPlay("@xbgm26",0,450,true);
	DrawDelete("上背景", 300, 100, null, "slide_01_01_1", true);

{	ClockPass(2311);}

{	St("C",700, @60,@0,"buノーコb_幽霊_sad");
	Move("@StNameC/C*", 200, @-60, @0, Dxl1, false);
	FadeSt("C",200,true);
	SetVolumeEX("走る*", 400, 0, null);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100010nko">
「フウリ――フウリ――」

{	St("C",700, @0,@0,"buノーコb_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100020nko">
「どこにいったの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100030nko">
「かえってきて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100040nko">
「やくそくした」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100050nko">
「ライブをみせるって、やくそく」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2312);}

	CreateSE("SE01", "se動作_走る01_l");
	MusicStart("SE01", 300, 1000, 0, 1000, null,true);

//◆場所：ショウビル_正面
	SceneOut(20000, 300, "slide_01_01_0");
	DeleteSt("C",0,false);
	OnBG(10,"bg1901100ショウビル_正面_通常");
	FadeBG(0,true);

	SceneIn(300, "slide_01_01_1");

{	St("ML",700, @60,@0,"buノーコb_幽霊_sad");
	Move("@StNameML/ML*", 200, @-60, @0, Dxl1, false);
	FadeSt("ML",200,true);
	SetVolumeEX("SE*", 400, 0, null);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100060nko">
「だって、わたしたちは、ともだち――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100070nko">
「せっかく、ともだちになれたのに――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100080nko">
「ふうりのともだちも――
　みんな、みんな、まってるのに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2313);}

	CreateSE("SE01", "se動作_走る01_l");
	MusicStart("SE01", 300, 1000, 0, 1000, null,true);

//◆場所：秋葉原_中央通り
	SceneOut(20000, 1000, "slide_01_01_0");
	DeleteSt("ML",0,false);
	OnBG(10,"bg0103200秋葉原_中央通り_閉店");
	FadeBG(0,true);

	SceneIn(1000, "slide_01_01_1");

{	St("MR",700, @-60,@0,"buノーコb_通常_sad");
	Move("@StNameMR/MR*", 200, @60, @0, Dxl1, false);
	FadeSt("MR",200,true);
	SetVolumeEX("SE*", 400, 0, null);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100090nko">
「ちゃんと、ごめんなさいが、したかった」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100100nko">
「それなのに――それなのに――」


{	St("MR",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100110nko">
「どこに、いったの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100120nko">
「どうして、かえってこないの？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(2314);}

	CreateSE("SE01", "se動作_走る01_l");
	MusicStart("SE01", 300, 1000, 0, 1000, null,true);

//◆場所：秋葉原_万世橋
	SceneOut(20000, 1000, "slide_01_01_0");
	DeleteSt("MR",0,false);
	OnBG(10,"bg0104200秋葉原_万世橋_閉店");
	FadeBG(0,true);

//★inc櫻井　現実の秋葉原ではこのあたりで喧騒は途切れているので、ガヤ音をここで消しています。
//	SetVolume("人ごみ", 1000, 0, null);
//	SetVolumeEX("@xbgm*", 1000, 0, null);

	Wait(2000);

	SceneIn(1000, "slide_01_01_1");

{	St("C",700, @0,@0,"buノーコb_幽霊_sad");
	FadeSt("C",200,true);
	SetVolumeEX("SE*", 400, 0, null);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100130nko">
「かえってこないのは――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100140nko">
「フウリが、カゴメアソビにしっぱいして――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100150nko">
「のぞみが、かなわなかったから――？」

{	SetVolumeEX("@xbgm*", 1000, 0, null);
	SetVolume("走る", 1000, 0, null);
	DeleteSt("C",200,false);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/d23/110100160okt">
「違う！」

//あきゅん「修正指示：表示時にアクセルテンポは格好悪いので全体的に調整」
//★inc櫻井　Dxl1に修正
{	St("L",700, @60,@0,"buノーコb_幽霊_normal");
	Move("@StNameL/L*", 300, @-60, @0, Dxl1, false);
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100170nko">
「え……？　あなたは――」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("R",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/d23/110100180okt">
「フウリのケガを、治した男だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buノーコb_通常_normal");
	FadeSt("L",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/d23/110100190nko">
「――フウリの場所を、知ってる？」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"bu貫太_通常_sad");
	FadeSt("R",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/d23/110100200okt">
「フウリは、今――」

{	St("R",700, @0,@0,"bu貫太_通常_smile");
	FadeStPro("R", 200, 2000);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/d23/110100210okt">
「願いが叶って、好きな人と、一緒にいるよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	AgainSt("R",700, @0,@0,"bu貫太_通常_smile");

	TextBoxDelete(150);

//	ClearWaitAll(2000, 2000);
	EndFileBlackOut(20000,2000);

	EndScene();
}
