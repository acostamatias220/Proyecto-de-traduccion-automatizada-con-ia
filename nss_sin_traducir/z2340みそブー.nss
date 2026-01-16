
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2340みそブー.nss_MAIN
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

scene z2340みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z2340みそブー.nss"
//title "ロケボーは急に止まれない"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2339);}

	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_大歓声_l");
	MusicStart("SEL01",500,400,0,1000,null,true);

	CreateSE("SE01","se特殊_ロケボー");
	MusicStart("SE01",0,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

	SetVolume("SE01", 2000, 300, null);

	Wait(1000);

	St("L",700, @-100,@0,"buみそa_オラオラ_shout");
	Move("@StNameL/L*", 200, @200, @0, Dxl1, false);
	FadeSt("L",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/400200010mso">
「いよっしゃ！　無事到着！」

{	Move("@StNameL/L*", 200, @100, @0, Dxl3, false);
	DeleteAllSt(200,true);
	St("R",700, @-300,@0,"buブーa_オラオラ_shout");
	Move("@StNameR/R*", 200, @250, @0, Dxl3, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/400200020buu">
「そしてスルー！！」

{	Move("@StNameR/R*", 200, @100, @-50, Dxl1, false);
	DeleteAllSt(200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z23/400200030mso">
「しまった！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/z23/400200040buu">
「火薬の量が多すぎた！」

//【そに子】
<voice name="そに子" class="そに子" src="voice/z23/400200050snk">
「えええええええええええええ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
