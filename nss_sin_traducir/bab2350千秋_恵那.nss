
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene bab2350千秋_恵那.nss_MAIN
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
	$GameName = "baa2351千秋_恵那.nss";//★エンディング中（bab）
}

scene bab2350千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "bab2350千秋_恵那.nss"
//title "神様の意味"
//previous "bab2340千秋_恵那_h.nss"

////////////footer////////////
//next "baa2351千秋_恵那.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
{	ClockPass(2345);}

//★ inc櫻井　次のファイルまで鳥居のみ表示とのこと。
//あきゅん「修正指示：表示位置悪い調子」
//★ inc遠藤 どちらなのでしょう…とりあえず初期のものにもどしました。立ち絵会話アリ版です。
//おがみ：ライター確認とりまして、背景を変更しました。101126
//	CreateTextureSP("絵背景10", 10, Center, @-990, "cg/bg/bg0602112半田明神_鳥居_通常.jpg");
//	Move("絵背景10", 0, @0, @-290, null, true);


//◆場所：半田明神_鳥居
	CreateTextureSP("絵背景10", 10, Center, middle, "cg/bg/bg0604100半田明神_社務所_通常.jpg");
	FadeDelete("上背景",1500,null,true);


//◆演出指示：年越し直前
	Wait(300);
	CreateSE("SE01","se環境_風と葉っぱ_l");
	MusicStart("SE01",1000,400,0,1000,null,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/500100010fje">
「なんか、すごいところ見かけちゃったね……」

{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu千秋_通常_normal");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/500100020kit">
「う……うん」

{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/500100030kit">
「あ、あのさ……もう少し、見てても……」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu恵那_通常_hard");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/500100040fje">
「駄目！」

{	St("ML",700, @0,@0,"bu恵那_通常_angry");
	FadeSt("ML",200,false);}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/500100050fje">
「ああいうの、邪魔しちゃ駄目に決まってるでしょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteSt("ML", 200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shy");
	FadeSt("MR",200,true);}

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/bab23/500100060kit">
「でも、アレは事件――」

{	DeleteSt("MR", 200,false);
	St("ML",700, @0,@0,"bu恵那_通常_pinch");
	FadeSt("ML",200,true);}

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/bab23/500100070fje">
「ほら、良いから初詣初詣！
　表に並びましょ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	MusicStart("SE01",2000,0,0,1000,null,false);
	DeleteAllSt(200,true);
	Wait(500);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//	CreateTextureSP("絵背景100", 10, Center, 0, "cg/bg/bg0602112半田明神_鳥居_通常.jpg");
//	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	Wait(2000);

	EndScene();
}
