
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1940ユージロー.nss_MAIN
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

scene z1940ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z1940ユージロー.nss"
//title "女人センサー発動！！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1940);}

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	CreateSE("SE02","seガヤ_交通_l");
	MusicStart("SE02",500,700,0,1000,null,true);

	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】

<voice name="ユージロー" class="ユージロー" src="voice/z19/400300010ujr">
「ん……どっかから電話を受けて、急に平次のおやっさんが焦りだしたぞ？」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/400300020ujr">
「いったい誰から電話だったんだ……？」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/400300030ujr">
「まあ何にせよ、誘拐犯を捜してミヅハを取り戻すのを手伝えという、平次のおやっさんからの命令だ」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/400300040ujr">
「警察犬志望のオレにはうってつけの事件！」

{	St("C",700, @0,@0,"buユージローa_通常_pride");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/400300050ujr">
「名犬ユージローの<RUBY text="にょにん">女人</RUBY>センサーが、火を噴くぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
