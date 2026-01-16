
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1950ユージロー.nss_MAIN
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

scene z1950ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z1950ユージロー.nss"
//title "ミヅハ捜索隊"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1954);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",500,350,0,1000,null,true);

	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/500300010ujr">
「…………マズい」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/500300020ujr">
「匂いを嗅ぐことに集中していたら……村崎とすれ違いざまに入った廃ビルの中に、閉じ込められちまったらしい」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);
	SetVolumeEX("SE01", 300, 700, null);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/500300030ujr">
「どこから脱出すれば――と思ったオレの耳元に、風」

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/500300040ujr">
「あのロッカーの、奧からか……！？」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/500300050ujr">
「扉を開けたオレの目の前には……
　地下への道が、続いていた」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
