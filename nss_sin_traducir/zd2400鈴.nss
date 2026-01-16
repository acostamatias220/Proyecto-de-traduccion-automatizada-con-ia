
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zd2400鈴.nss_MAIN
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

scene zd2400鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zd2400鈴.nss"
//title "鈴の決意"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2345);}

//◆場所：柳神社_境内_雪ノーマル新年
	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_歓声_l");
	MusicStart("SE01",1000,300,0,0,null,true);

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zd24/000100010fjr">
（フウリちゃんがそういうつもりなら――）

{	St("C",700, @0,@0,"bu鈴_通常_happy");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zd24/000100020fjr">
（その決心が、失敗だったって思っちゃうくらい、メチャクチャ楽しいライブにしてやるんだからっ！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateSE("SE02","seガヤ_大歓声_l");
	MusicStart("SE02",600,900,0,1000,null,true);

	Wait(3000);

	MusicStart("SE01",1000,0,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	EndScene();
}
