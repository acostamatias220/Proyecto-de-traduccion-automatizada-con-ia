
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2300鈴.nss_MAIN
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

scene zc2300鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zc2300鈴.nss"
//title "偶然？　必然？"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2302);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",0,true);}

	CreateSE("SE01","se環境_風と葉っぱ_l");
	CreateSE("SE02","seガヤ_交通少_l");
	MusicStart("SE01",2000,700,0,1000,null,true);
	MusicStart("SE02",4000,300,0,1000,null,true);


	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zc23/000600010fjr">
「ふぅ……落ち着かないと……」

{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zc23/000600020fjr">
「なんか、困ったことがあるとここに戻って来ちゃうのよね……」

{	St("C",700, @0,@0,"bu鈴_通常_shock");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zc23/000600030fjr">
「ん？　あそこにいるのは――フウリちゃん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
