
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zbb2230ユージロー_みそブー.nss_MAIN
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

scene zbb2230ユージロー_みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "zbb2230ユージロー_みそブー.nss"
//title "男の遠吠え"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2230);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);}

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",3000,700,0,300,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbb22/300100010ujr">
（聞こえる……遠くから、聞こえるぞ……）

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbb22/300100020ujr">
（涙……悲しみが、オレの胸を打つ……）

{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 3500, 1, 0, 0, 0, 1000, Axl1, false);
	Move("@StNameC/C*", 1500, @0, @100, null, false);
	DeleteSt("C", 1000,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbb22/300100030ujr">
（まるで、スカートだと思ってめくったらキュロットだった時みたいな悲しみが……）

{	St("C",700, @0,@200,"buユージローa_通常_angry");
	Move("@StNameC/C*", 250, @0, @-200, null, false);
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zbb22/300100040ujr">
（同志よ！）

{	DeleteSt("C", 200,true);
	Wait(150);
	St("MR",700, @0,@0,"buみそa_通常_fear");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zbb22/300100050mso">
「な、なんで犬が泣いてるんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteSt("MR", 200,true);
	St("ML",700, @0,@0,"buブーa_通常_sad");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zbb22/300100060buu">
「さあ……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
