
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1930鈴.nss_MAIN
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

scene z1930鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z1930鈴.nss"
//title "ガラス屋からの電話"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1931);}

	OnBG(10,"bg0502111スーパーノヴァ_ライブ会場_ガラス割れ");
	FadeBG(0,true);

	SoundPlay("@xbgm20",2000,450,true);

	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/300500010fjr">
（そっか……）

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/300500020fjr">
（こんなに早く、機材を届けてくれるなんて。
　これがフウリちゃんの想い……か）

{	St("C",700, @0,@0,"bu鈴_通常_normal");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/300500030fjr">
（ならアタシも、その想いに応え――）

//◆ＳＥ：着信
{	CreateSE("SE01","seメカ_携帯_メール着信_鈴_l");
	MusicStart("SE01",0,700,0,1000,null,rtue);}
{	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/300500040fjr">
「ん？　ああ。
　やっとガラス屋から電話ね……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
