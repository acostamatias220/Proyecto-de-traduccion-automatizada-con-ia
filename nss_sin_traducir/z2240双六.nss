
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2240双六.nss_MAIN
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

scene z2240双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z2240双六.nss"
//title "行く先を変更せよ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2240);}

	CreateSE("人ごみ", "seガヤ_交通少_l");
	MusicStart("人ごみ", 500, 700, 0, 1000, null,true);

//◆場所：秋葉原駅_正面
//◆ＳＥ：電話
	CreateSE("SE01","seメカ_携帯_メール着信_双六_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(2000);

	OnBG(10,"bg0201211秋葉原駅_正面_閉店");
	FadeBG(0,true);

	CreateSE("SE01","seメカ_携帯_電子音01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/400400010ksr">
「あ、はい。もしもし」

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/z22/400400020ksi">
『おう、双六か』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/z22/400400030ksi">
『悪いが、目的地を変更だ』

//◆音声指示：電話越し
//【河原屋双一】
<voice name="河原屋双一" class="その他男声" src="voice/z22/400400040ksi">
『柳神社に行け』

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z22/400400050ksr">
「柳神社……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
