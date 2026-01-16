
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2340ミヅハ.nss_MAIN
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

scene z2340ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z2340ミヅハ.nss"
//title "謝罪"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2345);}

//◆場所：半田明神_社務所_雪
	OnBG(10,"bg0604211半田明神_社務所_雪");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_大歓声_l");
	MusicStart("SEL01",500,150,0,1000,null,true);

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z23/400300010mzh">
（うう……もう、時間がない！）

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z23/400300020mzh">
（こうなれば、あの名探偵が到着したその瞬間！
　ぶっつけ本番で、なんとか……）

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z23/400300030mzh">
（いや、しかし……
　それでは、フウリたちを騙すことになってしまう）

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z23/400300040mzh">
（先にきちんと説明しておきたいのじゃが。
　間に合うのじゃろうか……？）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
