
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2100みそブー_鈴_双六.nss_MAIN
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

scene z2100みそブー_鈴_双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="130">
////////////header////////////
//file name "z2100みそブー_鈴_双六.nss"
//title "スーパーノヴァで打ち上げ"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2108);}

//◆場所：スーパーノヴァ_ライブ会場
	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_通常");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("MR",0,true);}

	MusicStart("@xbgm20",1000,450,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z21/000100010fjr">
「あ……ああ……ああ……！！」

{	St("MR",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z21/000100020fjr">
「すごい……すごいよ、みんなっ……！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z21/000100030fjr">
「まさかこんな早く、窓ガラスを直しちゃうなんてッ！」

{	St("ML",700, @0,@0,"buみそa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/000100040mso">
「へへ……そう言われると、照れるぜ。な、ブー？」

{	St("MR",700, @0,@0,"buブーa_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/000100050buu">
「伊達に学校のガラス、１００枚張り直しはしてません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"bu鈴_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z21/000100060fjr">
「うーん、これで心置きなくライブができる！
　最高の気分よ！」

{	St("ML",700, @0,@0,"bu村崎_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z21/000100070msi">
「じゃあ……許してもらえるんですか？」

{	St("MR",700, @0,@0,"bu鈴_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z21/000100080fjr">
「もちろんっ！」

{	St("MR",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z21/000100090fjr">
「さあ、みんなで乾杯――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);
//	St("C",700, @0,@0,"bu双六a_通常_normal");
//	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z21/000100100ksr">
「――は、次の仕事が終わってからにしてもらおうか」

{	St("ML",700, @0,@0,"buみそa_オラオラ_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/000100110mso">
「…………え？」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/000100120buu">
「なんで？」

{	St("ML",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z21/000100130msi">
「ゆゆゆゆ、ユーレイッ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();

}
