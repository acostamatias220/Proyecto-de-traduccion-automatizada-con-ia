
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2140みそブー.nss_MAIN
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

scene z2140みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z2140みそブー.nss"
//title "ミリＰの質問"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//◆場所：秋葉原駅_正面
	OnBG(10,"bg0201111秋葉原駅_正面_通常");
	FadeBG(0,true);

{	ClockPass(2140);}

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",1000,700,0,1000,null,true);

{	St("C",700, @0,@0,"buミリＰa_通常_sad");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z21/400200010mrp">
「ねえ、ふたりとも。
　そんな格好して恥ずかしくないの？」

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"buみそa_オラオラ_angry");
	Shake("@StNameL/L*", 500, 0, 30, 0, 0, 500, Dxl3, false);
	FadeSt("L",200,false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z21/400200020mso">
「ああん！？
　オレたちのこの正装が、恥ずかしいかだとォ！？」

{	St("R",700, @0,@0,"buブーa_オラオラ_angry");
	Shake("@StNameR/R*", 500, 0, 30, 0, 0, 500, Dxl3, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z21/400200030buu">
「ふざけんじゃねぇッ！
　オレたちゃ誇りを持って、この服着てんだよ！！」

{	St("C",700, @0,@0,"buミリＰa_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z21/400200040mrp">
「ふーん、やっぱりそうなんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミリＰa_通常_normal");
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミリＰ】
<voice name="ミリＰ" class="ミリＰ" src="voice/z21/400200050mrp">
「沙紅羅ちゃんに似て……
　その態度、少し憧れちゃうわん」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
