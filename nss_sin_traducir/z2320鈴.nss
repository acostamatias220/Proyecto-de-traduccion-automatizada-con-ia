
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2320鈴.nss_MAIN
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

scene z2320鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z2320鈴.nss"
//title "メンバーへの祈り"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2329);}

//◆場所：半田明神_境内
//	OnBG(10,"bg0603200半田明神_境内_ペンキ");
//	FadeBG(0,true);
	OnBG(10,"bg0603300半田明神_境内_雪ライブ");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu鈴_シリアス_shout");
	FadeSt("C",0,true);}

	CreateSE("SEL01", "seガヤ_交通少_l");
	MusicStart("SEL01", 500, 350, 0, 1000, null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/200600010fjr">
「第一宇宙速度……大丈夫だよね！」

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/200600020fjr">
「みんなみんな、集まってくれるよね！」

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z23/200600030fjr">
「お願いッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
