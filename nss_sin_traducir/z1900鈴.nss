
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1900鈴.nss_MAIN
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

scene z1900鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z1900鈴.nss"
//title "秘密のトラブル"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1907);}

	OnBG(10,"bg0502300スーパーノヴァ_ライブ会場_地震後");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",0,true);}

	SoundPlay("@xbgm20",2000,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/000500010fjr">
（フウリちゃんに求めてばかりで、アタシの方こそ心を開いてなかった……？）

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/000500020fjr">
（…………）

{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/000500030fjr">
（わかんないけど……確かに、そうなのかも……）

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/000500040fjr">
（フウリちゃんにも、隠してることはあるよね）

{	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/000500050fjr">
（でも、もしソレが私に言えないことだとしたら、今日のライブまでに、ちゃんと問題を解決してもらわなきゃ……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
