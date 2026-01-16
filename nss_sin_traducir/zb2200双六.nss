
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2200双六.nss_MAIN
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

scene zb2200双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="20">
////////////header////////////
//file name "zb2200双六.nss"
//title "助言"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2208);}

//◆場所：あにのあな_正面

	CreateTextureSP("絵背景", 10, Center, 576, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	$MoveSetPos=576-ImageVertical("絵背景");
	Move("絵背景", 0, @0, $MoveSetPos, null, true);
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",0,true);}

	CreateSE("SE01","seガヤ_交通少_l");
	CreateSE("SE02","seガヤ_街中_l");
	MusicStart("SE01",2000,400,0,1000,null,true);
	MusicStart("SE02",2000,600,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zb22/000300010ksr">
「ふぅ……なんとか間に合ったか」

{	St("C",700, @0,@0,"bu双六a_横向き_normal");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zb22/000300020ksr">
「後はカゴメアソビがどうなるか、見物だな――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
