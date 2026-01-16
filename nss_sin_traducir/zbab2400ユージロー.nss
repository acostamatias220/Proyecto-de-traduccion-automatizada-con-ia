
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbab2400ユージロー.nss_MAIN
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

scene zbab2400ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zbab2400ユージロー.nss"
//title "ユージローの願い４"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603411半田明神_境内_ノーマル新年");
	FadeBG(0,true);

	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",0,true);

	CreateSE("SE01","seガヤ_半田明神02_l");
	MusicStart("SE01",1500,700,0,1000,null,true);


	FadeDelete("上背景", 500, null, true);

	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeStPro("C", 200, 2400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbab24/000300010ujr">
「な……なんかすごく、スケベなシーンを見逃した気が！」

{	AgainSt("C",700, @0,@0,"buユージローa_通常_angry");
	St("C",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbab24/000300020ujr">
「どうか今年は、ラッキーパンツがいっぱいいっぱい見られますように……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	//MusicStart("SE01",1000,0,0,1000,null,false);


	EndScene();
}
