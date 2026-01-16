
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2240鈴.nss_MAIN
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

scene zba2240鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zba2240鈴.nss"
//title "脅迫"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2244);}


//◆場所：半田明神_男坂
	OnBG(10,"bg0107400秋葉原_遠景_破壊");
	FadeBG(0,true);

	St("C",700, @0,@0,"bu鈴_通常_sad");
	FadeSt("C",0,true);

	MoveEX("@StNameC/C*", 500, 0, -200, Dxl1, false);
//	Shake("@StNameC/C*", 1500, 10, 0, 0, 0, 1000, Dxl1, false);

	SoundPlay("@xbgm20_noeff",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zba22/400500010fjr">
「まだまだアタシ、ドロップキック出し足りない――」

{	St("ML",700, @0,@0,"bu村崎_通常_cry");
	DeleteSt("C", 200,false);
	Shake("@StNameML/ML*", 300, 8, 0, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/zba22/400500020msi">
「ひぃいい！　すいません！　すいませんでしたぁ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,0,null,false);
	Move("@StNameML/ML*", 150, @-250, @0, Dxl1, false);
	DeleteSt("ML", 150,true);

	TextBoxDelete(150);

	EndScene();
}
