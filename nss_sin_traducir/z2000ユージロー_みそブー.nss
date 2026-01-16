
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2000ユージロー_みそブー.nss_MAIN
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

scene z2000ユージロー_みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "z2000みそブー.nss"
//title "犬から逃げろ！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2005);}


//◆場所：地下_通路_あにのあな
	OnBG(10,"bg0701400地下_通路_あにのあな");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",500,700,0,1000,null,true);

	CreateSE("SE02","se動作_走る01_l");
	MusicStart("SE02",500,700,0,1000,null,true);

	CreateSE("SE03","se動作_走る01_l");
	MusicStart("SE03",500,700,0,1000,null,true);

	CreateSE("SE04","se動物_イヌ_走る_l");
	MusicStart("SE04",500,700,0,1000,null,true);

	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

	Shake("@StNameC/C*", 1000, 0, 20, 0, 0, 500, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
<voice name="ユージロー" class="ユージロー" src="voice/z20/000300010ujr">
（待て待て待て待てぇいっ！）

{	St("ML",700, @0,@0,"buみそa_通常_cry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/000300020mso">
「わあああああああああああああ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_cry");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/000300030buu">
「ぎゃああああああああああああ！！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/000300040buu">
「犬！　犬！　犬！　いででっ！！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_cry");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/000300050mso">
「おいブー！　灯りは！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/000300060buu">
「さっきの所に落とした！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/000300070mso">
「な！　なんだってェ！？」

{	St("C",700, @0,@0,"buユージローa_通常_pride");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/000300080ujr">
（はっはっはっはっは！　幼女誘拐犯め！
　主人の命に従って、逮捕だあッ！！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
