
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2330みそブー.nss_MAIN
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

scene z2330みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "z2330みそブー.nss"
//title "ニコちゃん確保！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2330);}

//※下倉注：ここ、背景は飯田橋でないので、空とか電柱とかで誤魔化したいです……雪は降り止んで積もってます

//▼べー：仮入れ
//	OnBG(10,"bg0104300秋葉原_万世橋_雪");
//	FadeBG(0,true);

	OnBG(10,"bg2401100空_上空_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,350,0,1000,null,true);

//	St("C",700, @0,@0,"buそに子_通常_smile");
//	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【そに子】
<voice name="そに子" class="そに子" src="voice/z23/300100010snk">
「わ！　わ！　ホントにきちゃいました」

//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/300100020mso">
「よおおおし！　あんたがニコちゃんだな！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/300100030buu">
「オレたちの後ろに掴まれッ！！」

//【そに子】
<voice name="そに子" class="そに子" src="voice/z23/300100040snk">
「え……本当に、それに乗るんですか？」

//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/300100050mso">
「モチの」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	CreateSE("SE01","se特殊_ロケボー");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolume("SE01", 3500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/300100060buu">
「ロン！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
