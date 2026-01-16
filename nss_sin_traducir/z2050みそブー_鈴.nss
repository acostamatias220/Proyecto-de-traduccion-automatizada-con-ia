
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2050みそブー_鈴.nss_MAIN
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

scene z2050みそブー_鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="140">
////////////header////////////
//file name "z2050みそブー_鈴.nss"
//title "スーパーノヴァで打ち上げ"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2054);}

//◆場所：スーパーノヴァ_ライブ会場_ガラス補修
	OnBG(10,"bg0502211スーパーノヴァ_ライブ会場_ガラス補修");
	FadeBG(0,true);

{	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",0,true);}

	MusicStart("@xbgm20",1000,450,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z20/500100010msi">
「お邪魔しますよーん！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/500100020fjr">
「あ！　村崎さん――」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_happy");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/500100030mso">
「おお！　すげえ！
　なんかソレっぽい」

{	DeleteAllSt(200,false);
	St("ML",700, @50,@0,"buブーa_通常_normal");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/500100040buu">
「まさかここが――
　件の、オタ芸の聖地！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/500100050fjr">
「ええと……３名様ですか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_happy");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z20/500100060msi">
「イエース！　席、空いてますか？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/500100070fjr">
「今ならギリギリ……
　っていうか、テンション高いですね」

{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/500100080fjr">
「なにか良いこと、あったんですか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z20/500100090msi">
「いやいや、良いことなんて、ね！」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/500100100mso">
「もちろん！　人の不幸を喜ぶわけがない！」

{	DeleteAllSt(200,false);
	St("ML",700, @50,@0,"buブーa_通常_pinch");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/500100110buu">
「ただ僕たちは、お互いに、河原屋組の魔手から自由になったことを祝っているのです！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/500100120fjr">
「河原屋組……？」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/500100130fjr">
「なんか良くわかんないけど……ちゃんとマークしておいた方が良さそうね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z20/500100140fjr">
「これ以上いざこざを起こされたら、たまったもんじゃないわ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
