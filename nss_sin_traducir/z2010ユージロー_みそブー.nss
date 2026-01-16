
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2010ユージロー_みそブー.nss_MAIN
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

scene z2010ユージロー_みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="120">
////////////header////////////
//file name "z2010みそブー.nss"
//title "犬をたらし込め！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2010);}



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
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/100800010ujr">
（待て待て待て待てぇいっ！）

{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/100800020buu">
「クソッ！　逃げても逃げてもラチがあかねぇ！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/100800030mso">
「こうなったら……色仕掛けだ！」

{	St("MR",700, @0,@0,"buブーa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/100800040buu">
「色仕掛け？　どうやって？」

{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/100800050mso">
「そりゃあ……ええと……ほら！　なんかあるだろ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/100800060mso">
「そうだッ！　ミヅハも一応女だろ？
　だったらパンツで――」

{	St("C",700, @0,@40,"buユージローa_通常_angry");
	DeleteAllSt(200,false);
	FadeT("@StNameC/C*",0,0,200,0,-40,Dxl1,false);
	CreateSE("SE05","se擬音_ギャグ_エロセンサー");
	MusicStart("SE05",0,700,0,1000,null,false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/100800070ujr">
（パンツッ！？）

{	St("MR",700, @0,@0,"buブーa_通常_cry");
	DeleteAllSt(200,false);
	Shake("@StNameMR/MR*", 1000, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/100800080buu">
「死んでも嫌だあッ！　アレはオレの――」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/100800090buu">
「心のふるさと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buユージローa_通常_ero");
	DeleteAllSt(200,false);
	Shake("@StNameC/C*", 1000, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/100800100ujr">
（パンツ！　パンツ寄越せ！　パンツ下さい！！
　独り占め！　ダメ！）

{	St("ML",700, @0,@0,"buみそa_通常_pinch");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/100800110mso">
「ってかアレ？　あのバッグは？」

{	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/100800120mso">
「あ！　ミヅハに預けたまま――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
