
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1920ユージロー.nss_MAIN
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

scene z1920ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "z1920ユージロー.nss"
//title "ちんちんさぎ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1920);}

	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	CreateSE("SE02","seガヤ_交通_l");
	MusicStart("SE02",500,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/200300010ujr">
「その直前まで、オレはアイツを追いかけていた……」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/200300020ujr">
「だが、突如として目の前に現れた少女とヤンキー！」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/200300030ujr">
「ヤンキーはとりあえず怖いのでやめといて、オレは紳士のたしなみとしてすり抜けざまに少女のパンツを――」

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	St("C",700, @0,@0,"buユージローa_通常_angry");
	Shake("@StNameC/C*", 3000, 0, 5, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 3600);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/200300040ujr">
「……もっこりしている！？」

{	AgainSt("C",700, @0,@0,"buユージローa_通常_angry");
	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/200300050ujr">
「その途端、オレはなにかこう、口ではとても表現できない種類の、堪えようのない怒りを覚えた！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/200300060ujr">
「詐欺だ！」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/200300070ujr">
「そしてその途端、オレは自分でも気付かぬうちに、その男を追いかけて走り出していたのである――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
