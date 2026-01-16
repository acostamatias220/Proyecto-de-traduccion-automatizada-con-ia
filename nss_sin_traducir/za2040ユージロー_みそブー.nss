
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene za2040ユージロー_みそブー.nss_MAIN
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

scene za2040ユージロー_みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "za2040ユージロー_みそブー.nss"
//title "逃走劇"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2045);}

	
	OnBG(100, "bg0201111秋葉原駅_正面_通常");
	FadeBG(0, true);

	CreateSE("SE01","se動作_走る01_l");
	MusicStart("SE01",500,300,0,1000,null,true);
	CreateSE("SE02","se動作_走る02_l");
	MusicStart("SE02",500,300,0,1000,null,true);

	CreateSE("SEL01","seガヤ_街中_l");
	MusicStart("SEL01",500,700,0,1000,null,true);

{	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/za20/400300010mso">
「くそっ！　なんでオレたちが追われなきゃ――」

{	DeleteSt("L",200,false);
	St("R",700, @0,@0,"buブーa_通常_pinch");
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/za20/400300020buu">
「絶対誤解されてるし――」

{	DeleteSt("R",200,false);
	St("L",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/za20/400300030mso">
「このままじゃ、すぐに追いつかれて――」

{	SetVolumeEX("SE0*", 500, 0, null);
	DeleteSt("L",200,false);
	St("C",700, @0,@80,"buユージローa_通常_hard");
	Move("@StNameC/C*", 200, @0, @-80, Dxl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/za20/400300040ujr">
（心配するな！　オレが助ける！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteSt("C",200,false);
	St("L",700, @0,@0,"buみそa_通常_shout");
	St("R",700, @0,@0,"buブーa_通常_shout");
	FadeAllSt(200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//◆音声指示：同時
//【ブー】
<voice name="ブー" class="ブー" src="voice/za20/400300050buu">
「<RUBY text="きょうだい">義兄弟</RUBY>ッ！！」
{WaitAddText();}<BR>

/*
//◆音声指示：同時
//【みそ】
<voice name="みそ" class="みそ" src="voice/za20/400300060mso">
「<RUBY text="きょうだい">義兄弟</RUBY>ッ！！」
*/

</PRE>
	SetText();
	AddText(1,"「<RUBY text=きょうだい>義兄弟</RUBY>ッ！！」","ブー","za20/400300050buu",false,false,1000);
	AddText(2,"「<RUBY text=きょうだい>義兄弟</RUBY>ッ！！」","みそ","za20/400300060mso",true,true,1000);
	TypeBeginD();//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
