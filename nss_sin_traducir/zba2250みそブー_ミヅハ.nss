
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2250みそブー_ミヅハ.nss_MAIN
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

scene zba2250みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zba2250みそブー_ミヅハ.nss"
//title "打ち上げ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：半田明神_男坂

{	ClockPass(2256);}

	CreateTextureEX("絵背景200", 100, Center, -650, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");
	Fade("絵背景200", 0, 1000, null, true);

{	St("MR",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("MR",0,true);}

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",3000,700,0,300,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zba22/500100010mso">
「オレたちが好きなもの、ソレは！」

{	St("ML",700, @0,@0,"buブーa_オラオラ_shout");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zba22/500100020buu">
「火遊びと、高いところだ！」

{	St("C",700, @0,@0,"buミヅハ_通常_smile");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/500100030mzh">
「ということは、おぬしらにぴったりの武器じゃな！」

{	St("R",700, @0,@0,"buみそa_オラオラ_angry");
	DeleteAllSt(200,false);
	FadeSt("R",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zba22/500100040mso">
「その通りッ！！」

{	St("L",700, @0,@0,"buブーa_オラオラ_angry");
	FadeSt("L",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zba22/500100050buu">
「さあ、化けダヌキ！　覚悟しやがれッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
