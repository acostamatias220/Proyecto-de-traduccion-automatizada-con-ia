
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2300ミヅハ.nss_MAIN
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

scene zc2300ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zc2300ミヅハ.nss"
//title "思い出"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2309);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603200半田明神_境内_ペンキ");
	FadeBG(0,true);

//	CreateTextureSP("背景", 200, Center, 0, "cg/bg/bg0602211半田明神_境内_ペンキ.jpg");
//	Move("背景", 1500, @0, @-750, null, false);

{	St("C",700, @0,@0,"buミヅハ_通常_smile");
	FadeSt("C",0,true);}

	CreateSE("SE01","seガヤ_ざわざわ02_l");
	MusicStart("SE01",2000,350,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//inc久保田　ここはミヅハとブーでよろしいのでしょうか？　喋り方的には全部ミヅハのようなのですが。
//※下倉注：その通りです。修正よろしくお願いいたします。 2010/11/18

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zc23/000300010mzh">
「ふふふ……腕が鳴るのう！」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zc23/000300020mzh">
「この桜！　このわらわが！」

{	St("C",700, @0,@0,"buミヅハ_手構え_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zc23/000300030mzh">
「全力で、飾り付けてやろうではないか！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
