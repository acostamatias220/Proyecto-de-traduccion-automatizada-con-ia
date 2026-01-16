
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ze2400鈴.nss_MAIN
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

scene ze2400鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "z2400鈴.nss"
//title "鈴の願い"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2400);}

//◆場所：半田明神_境内_雪ライブ
	OnBG(10,"bg0603311半田明神_境内_雪ライブ");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_大歓声_l");
	MusicStart("SE01",1000,700,0,0,null,true);

{	St("C",700, @0,@0,"bu鈴_通常_smile");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);


	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeStPro("C", 200, 2000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ze24/000400010fjr">
（最高のライブ――の、はずなんだけど）

{	AgainSt("C",700, @0,@0,"bu鈴_シリアス_sad");
	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ze24/000400020fjr">
（なんか……微妙に、しっくり来ないっていうか……）

{	St("C",700, @0,@0,"bu鈴_シリアス_sad");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/ze24/000400030fjr">
（何が、変なんだろう？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	MusicStart("SE01",1000,0,0,1000,null,false);

	EndScene();
}
