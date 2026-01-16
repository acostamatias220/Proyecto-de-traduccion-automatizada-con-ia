
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2040ユージロー_みそブー.nss_MAIN
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

scene z2040ユージロー_みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "z2040ユージロー_みそブー.nss"
//title "地下道での邂逅"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2046);}

//◆場所：地下_通路_あにのあな
	OnBG(10,"bg0701400地下_通路_あにのあな");
	FadeBG(0,true);

	CreateSE("SEL01","se環境_風低音_l");
	MusicStart("SEL01",500,700,0,1000,null,true);

	CreateSE("SE02","se動作_歩く01_l");
	MusicStart("SE02",500,700,0,1000,null,true);

	CreateSE("SE03","se動作_歩く01_l");
	MusicStart("SE03",500,700,0,1000,null,true);

	CreateSE("SE04","se動物_イヌ_歩く_l");
	MusicStart("SE04",500,700,0,1000,null,true);

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/400300010buu">
「おい犬、まだかよ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_hard");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/400300020mso">
「ってか、ホントに道を知ってんのか<RUBY text="きょうだい">義兄弟</RUBY>」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buユージローb_通常_normal");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/400300030ujr">
（大丈夫、オレに任せろ――）

{	SetVolume("SE0*", 1000, 0, null);}
{	St("C",700, @0,@0,"buユージローb_通常_angry");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z20/400300040ujr">
（――こらっ！　そこに誰かいるな！）

{	DeleteAllSt(200,false);
	St("L",700, @-100,@0,"bu村崎_通常_fear");
	Shake("@StNameL/L*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("L",200,false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z20/400300050msi">
「ひぃっ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z20/400300060mso">
「うおっ！　な――何だ？！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z20/400300070buu">
「誰だッ！！　出てこいッ！！」

{	DeleteAllSt(200,false);
	St("L",700, @-100,@0,"bu村崎_通常_fear");
	Move("@StNameL/L*", 1500, @150, @0, Dxl1, false);
	FadeSt("L",200,false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z20/400300080msi">
「そんな、声を荒げなくてもイイじゃないですか」

{	St("L",700, @50,@0,"bu村崎_通常_pinch");
	Move("@StNameL/L*", 500, @250, @0, Dxl1, false);
	FadeSt("L",200,false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z20/400300090msi">
「一緒に、出口を探しましょ？　ね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
