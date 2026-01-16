
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbaa2400ユージロー.nss_MAIN
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

scene zbaa2400ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zbaa2400ユージロー.nss"
//title "ユージローの願い３"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);}

	CreateSE("SE01","seガヤ_半田明神01_l");
	SoundEffect("SE01","ARENA");
	MusicStart("SE01",3000,700,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbaa24/000400010ujr">
「どうか、もう一度……」

{	St("C",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbaa24/000400020ujr">
「あの輝かしいパンチランドへと辿り着けますように！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
