
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene y1750恵那.nss_MAIN
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
	$GameName = "y1751千秋_恵那.nss";
}

scene y1750恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="210">
////////////header////////////
//file name "y1750恵那.nss"
//title "名探偵誕生の秘密"

////////////footer////////////
//next "恵那" "y1751千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 1000);

{	ClockTime(1750);}

//◆場所：小碓家_自室
	OnBG(10,"bg1602100小碓家_自室過去_通常");
	FadeBG(0,true);

	CreateSE("SE01","se環境_雷01");
	MusicStart("SE01",0,800,0,1000,null,false);

	$SETime = RemainTime("SE01")-1500;
	WaitKey($SETime);

	CreateSE("SEL01","se環境_嵐_l");
	MusicStart("SEL01",2000,1200,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300010fje">
（それは、激しい嵐の夜のことだった）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300020fje">
（その日は遅くまで、父さんが帰ってこなくて）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300030fje">
（私と鈴姉は、お向かいの千秋の家に預けられていた）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SEL*", 2000, 500, null);
	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/500300040ktc">
「あ、あの……」

//【小碓千秋（幼年）】
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/500300050ktc">
「オレ、父さんの部屋で寝るから！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

//【小碓千秋（幼年）】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
<voice name="小碓千秋（幼年）" class="小碓千秋" src="voice/y17/500300060ktc">
「ふたりとも、何かあったらすぐに言えよな！」


//【富士見恵那（幼年）】
<voice name="富士見恵那（幼年）" class="富士見恵那" src="voice/y17/500300070fec">
「え……でも……」

//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/y17/500300080frc">
「うん、アリガト。でも、大丈夫だよ」

//【富士見鈴（幼年）】
<voice name="富士見鈴（幼年）" class="富士見鈴" src="voice/y17/500300090frc">
「大丈夫だよね、恵那ちん？」

//【富士見恵那（幼年）】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300100fec">
「……うん。大丈夫」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	WaitKey(500);

	SetVolumeEX("SE*", 2000, 1, null);
	CreatePlainEX("絵板写", 100);
	SetTone("絵板写", Sepia);
	Fade("絵板写", 2000, 1000, null, true);

{	St("C",700, @0,@0,"fu恵那_哀愁_sad");
	FadeSt("C",200,true);}

//【富士見恵那】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300110fje">
（大丈夫なはずなんて、なかった）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300120fje">
（大切なものが、壊れてしまう）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300130fje">
（もう二度と、元の生活には戻れない）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300140fje">
（そんな恐怖が、ずっと頭から離れずに――）

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300150fje">
（結局私はその夜、ほとんど眠れなかった）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockTime(1751);}

	//TextBoxDelete(150);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 2000, 500, null);
	FadeDelete("絵板写", 2000, null, true);

	WaitKey(1000);

	SetVolumeEX("SE*", 3000, 0, null);
	CreateColorEX("絵色黒", 2000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	$SETime = RemainTime("SE01");
	WaitKey($SETime);

	WaitKey(1000);

//【富士見平次】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
<voice name="富士見平次" class="富士見平次" src="voice/y17/500300160fjh">
「……身体は……屈しても……」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/y17/500300170fjh">
「心まで……悪には……屈しない……」



//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/y17/500300180fjh">
「鈴……恵那……」

//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/y17/500300190fjh">
「すまねぇ……本当に、すまねぇ……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300200fje">
（夜更けに聞いたその声が、夢の中のものなのか、それとも――）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);







//【富士見恵那】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/500300210fje">
（そして、その日以来、母さんは帰ってこなかった）


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);



	EndScene();
}
