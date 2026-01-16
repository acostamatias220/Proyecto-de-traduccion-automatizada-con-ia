
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2240みそブー.nss_MAIN
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

scene zba2240みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "zba2240みそブー.nss"
//title "決意"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2240);}

//◆場所：スパコン館_裏面_廃墟
	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"buみそa_通常_hard");
	FadeSt("MR",0,true);}

	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",4000,700,0,500,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zba22/400200010mso">
「いいや……姐さんは……オレたちを、裏切らない！」

{	SoundPlay("@xbgm07",0,450,true);
	St("MR",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zba22/400200020mso">
「絶対、絶対、帰ってくる！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buブーa_通常_hard");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zba22/400200030buu">
「あ……ああ、そうだ！」

{	St("ML",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zba22/400200040buu">
「オレたちが、ここで諦めてどうするよッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buみそa_オラオラ_shout");
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zba22/400200050mso">
「あのタヌキ――オレたちの手で！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buブーa_オラオラ_shout");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zba22/400200060buu">
「ギャフンと言わせてやるッ！！　ギャフンと！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
