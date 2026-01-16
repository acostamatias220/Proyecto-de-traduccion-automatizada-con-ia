
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene y1752恵那.nss_MAIN
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
	$GameName = "1800恵那.nss";

	#START_FLAG=true;
	$SYSTEM_backselect_lock=false;
}

scene y1752恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "y1752恵那.nss"
//title "名探偵誕生の秘密"
//previous "y1751千秋_恵那.nss"

////////////footer////////////
//next "恵那" "1800恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	CreateSE("SE10","seガヤ_交通少_l");
	MusicStart("SE10",0,400,0,1000,null,true);

{	ClockPass(1759);}

//◆場所：小碓家_正面
	OnBG(10,"bg1601100小碓家_正面_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",200,true);}

	SetVolumeEX("@xbgm*", 1, 0, null);

	FadeDelete("上背景", 0, null, true);


//【ユージロー】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
<voice name="ユージロー" class="ユージロー" src="voice/y17/520100010ujr">
「わうわうっ！　わうわうわうっ！！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	St("C",700, @0,@0,"bu恵那_通常_smile");
	FadeSt("C",200,true);
	FadeStPro("C", 200, 1800);
}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/520100020fje">
「あ……うん、ごめんごめんユージロー。
　ちょっと考え事してた」

{	AgainSt("C",700, @0,@0,"bu恵那_通常_smile");
	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/520100030fje">
「…………ふぅ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);

//あきゅん「素材：obj恵那携帯ストラップ」
	CreateTextureEX("絵演", 2010, Center, Middle, "cg/obj/obj恵那携帯ストラップ.png");
	Move("絵演", 0, @0, @100, null, true);

	Move("絵演", 500, @0, @-100, DlxAuto, false);
	Fade("絵演", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/520100040fje">
「千秋、このストラップ、つけてくれてるのにさ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵演", 1000, null, true);

	//TextBoxDelete(150);

{	St("C",700, @0,@0,"bu恵那_通常_think");
	FadeSt("C",200,true);}
//【富士見恵那】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
<voice name="富士見恵那" class="富士見恵那" src="voice/y17/520100050fje">
「もうちょっと、私を大切にしてくれても――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//TextBoxDelete(150);

	SetVolumeEX("SE*", 1000, 0, null);
	WaitPlay("SE*", null);

	EndScene();
}
