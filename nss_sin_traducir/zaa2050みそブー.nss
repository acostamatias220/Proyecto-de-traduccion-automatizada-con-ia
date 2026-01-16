
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2050みそブー.nss_MAIN
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

scene zaa2050みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zaa2050みそブー.nss"
//title "泣き言"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2050);}


//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);


	CreateSE("SE11","se動作_走る01_l");
	MusicStart("SE11",500,300,0,1000,null,true);
	CreateSE("SE12","se動作_走る02_l");
	MusicStart("SE12",500,300,0,1000,null,true);

	CreateSE("SEL01","seガヤ_街中_l");
	MusicStart("SEL01",500,700,0,1000,null,true);

{	St("C",700, @0,@0,"bu平次_御用だ_shout");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zaa20/500200010fjh">
「御用だ御用だあッ！！」

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zaa20/500200020mso">
「な、なんなんだよアイツッ！！」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zaa20/500200030buu">
「秋葉原だと、警官もコスプレなのか……？」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_angry");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zaa20/500200040mso">
「何のコスプレだよッ！」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zaa20/500200050buu">
「ええと……犬？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("SE*", 2000, 0, null);


	TextBoxDelete(150);



	EndScene();
}
