
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbab2300ユージロー.nss_MAIN
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

scene zbab2300ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zbaa2300ユージロー.nss"
//title "めでたしめでたし……"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2300);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg0107400秋葉原_遠景_破壊");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",0,true);}

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",3000,700,0,300,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbab23/000300010ujr">
「これで一件落着、めでたしめでたし……」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbab23/000300020ujr">
「しかし……」

{	St("C",700, @0,@0,"buユージローa_通常_pride");
	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,false);
	FadeStPro("C", 200, 8000);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbab23/000300030ujr">
「果たして再び、この街でメイドさんのパンチラを拝み、股間をクンカクンカできる日は……くるのだろうか？」

{	AgainSt("C",700, @0,@0,"buユージローa_通常_normal");
	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbab23/000300040ujr">
「…………不安だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
