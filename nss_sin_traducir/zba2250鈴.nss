
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2250鈴.nss_MAIN
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

scene zba2250鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zba2250鈴.nss"
//title "逆襲のコスプレイヤー"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2256);}

//◆場所：半田明神_男坂

	CreateTextureSP("絵背景200", 100, Center, -650, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");

{	St("C",700, @0,@0,"bu鈴_シリアス_angry");
	FadeSt("C",0,true);}

	SoundPlay("@xbgm20_noeff",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zba22/500400010fjr">
「よくもやってくれたわね化け狸！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@20,"bu鈴_もじゃ_angry");
	Move("@StNameC/C*", 200, @, @-20, Dxl1, false);
	Shake("@StNameC/C*", 1500, 0, 4, 0, 0, 1000, Dxl1, false);
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/zba22/500400020fjr">
「スーパーノヴァをメチャクチャにした仇、取ってやる！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
