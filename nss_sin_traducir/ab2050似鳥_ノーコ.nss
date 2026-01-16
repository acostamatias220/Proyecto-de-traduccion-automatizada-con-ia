
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2050似鳥_ノーコ.nss_MAIN
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

	if($CharaName=="似鳥"){
		$GameName = "ab2051似鳥.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "ab2051ノーコ.nss";
	}else{
		$GameName = "ab2051似鳥.nss";
	}

//	$GameName = "";
//	$GameCircle=false;

}

scene ab2050似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="120">
////////////header////////////
//file name "ab2050似鳥_ノーコ.nss"
//title "退却"
//previous "a2050カゴメアソビ.nss"

////////////footer////////////
//next "似鳥" "ab2051似鳥.nss"
//next "ノーコ" "ab2051ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：籠_正面_ブラックライト
	OnBG(10,"bg0801200籠_正面_ブラックライト");
	FadeBG(0,true);

{	ClockPass(2050);}

//◆演出指定：願いが叶う
//あきゅん「修正指示：2020似鳥.nssを参考に成功演出を入れてください」
//※2020似鳥.nssより演出部分を移植しました（mngw 11/16）
	Kagome_AllEffect_Set(3000);

	FadeDelete("上背景", 0, null, true);

	Kagome_AllEffect_Start();

	SetVolume("@xbgm*", 1500, 0, null);

	Wait(3500);

	Kagome_AllEffect_Delete(4000);

{	St("MR",700, @0,@0,"bu似鳥_通常_pain");
	FadeSt("MR",1000,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/500100010nki">
「――――」

{	St("C",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/500100020msi">
「――あれ？」

{	St("C",700, @0,@0,"bu村崎_通常_pinch");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/500100030msi">
「外れ――？」


{	St("ML",700, @0,@0,"buノーコa_通常_rage");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/500100040nko">
「にげてッ！！」

{	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/500100050nki">
「え――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm01_noint",0,450,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/500100060nko">
「あれは、ロシアンルーレット！
　たまがでないのは、うんめい！」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/500100070nko">
「わたしを、しあわせにするっていった！」

{	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/500100080nko">
「だから、おねがい――！！」

{	St("ML",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab20/500100090nko">
「いきのびて――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/500100100nki">
「お……おお……」

{	St("MR",700, @0,@0,"bu似鳥_通常_rage");
	Shake("@StNameMR/MR*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab20/500100110nki">
「うおおおおおおお――――ッ！！」

{	Zoom("@StNameMR/MR*", 200, 1500, 1500, DxlAuto, false);
	DeleteSt("MR", 200,true);
	St("C",700, @0,@0,"bu村崎_通常_fear");
	CreateSE("SE00","se戦闘_打撃音01");
	MusicStart("SE00",0,700,0,1000,null,false);
	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/ab20/500100120msi">
「ぎゃっ！」


{	Move("@StNameC/C*", 100, @0, @60, Dxl1, false);
	DeleteSt("C", 100,true);
	}



//◆ＳＥ：拳銃が落ちる
{
	CreateSE("SE01","se銃_落とす01");
	MusicStart("SE01",0,700,0,1000,null,false);
	WaitKey(1000);
}

　低く突進し、村崎の手からアザナエルを弾き飛ばす。

　似鳥はそのまま、灯りも持たず暗闇の中へ――



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	if($CharaName == "似鳥")
	{
	TextBoxDelete(150);

	PrintGO("上背景", 5000);

	DeleteSt("C", 0,true);
	Delete("@OnBG*");
	WaitKey(1000);

	FadeDelete("上背景", 1000, null, true);

	}else if($CharaName == "ノーコ")
	{
	}

	EndScene();
}
