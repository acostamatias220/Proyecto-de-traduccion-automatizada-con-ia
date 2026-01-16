
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2310鈴_ＡＤ.nss_MAIN
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
	EndScript();

}

scene z2310鈴_ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="140">
////////////header////////////
//file name "z2310鈴_ＡＤ.nss"
//title "鬱憤晴らし"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//※下倉注：雪が降ってきている。背景はそのまま

{	ClockPass(2315);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("MR",0,true);}

	SnowDrop(0);
	Wait(1500);
	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/100400010fjr">
「まさかあなたが、テレビ局で働いてるなんてね」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/100400020adi">
「といっても、下請けの万年ＡＤだけど。
　家飛び出したけど、夢のドラマ脚本家には、全然」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/100400030fjr">
「ふーん、そうなんだ」

{	St("MR",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/100400040fjr">
「でもま、ン年振りに帰ってきた秋葉原でこうやって会えたの、奇跡かもねッ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_pride");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/100400050adi">
「そうかも……うん！
　なんか、やる気出てきた！」

/*
//※下倉注：この台詞カット 2010/10/26

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/100400060adi">
「あ、ところで星ちゃんってどうなった？」
*/

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/100400070fjr">
「あ、ちなみに今星ちゃんがどうなってるか、知ってる？」

{	DeleteAllSt(200,false);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/100400080adi">
「星って……あの、神社の娘さんの？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/100400090fjr">
「そうそう。
　『みーちゃんのひとりあそび』の元になった……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/100400100adi">
「あー、そっか！
　そういえばそんな悪巧みも……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/100400110fjr">
「悪巧み？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buＡＤ_通常_smile");
	FadeSt("ML",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z23/100400120adi">
「そうそう。妹さんに、怪談を創作させたんだよね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/100400130fjr">
「…………あれ？」

{	St("MR",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/100400140fjr">
「そ、そうだっけ？　忘れてた……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
