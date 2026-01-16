
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zab2100ユージロー.nss_MAIN
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

scene zab2100ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zaa2100ユージロー.nss"
//title "パンツの匂い"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2101);}

//◆場所：ＵＰ＋_セット上
	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	SoundPlay("@xbgm16_noint",0,450,true);

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/000300010ujr">
「ん……？　この匂い……」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/000300020ujr">
「違う！　アイツは、千秋じゃない！」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/000300030ujr">
「アイツの身体からは……
　今日、オレを轢いた車の匂いがするッ！！」

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	Move("@StNameC/C*", 200, @-250, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/000300040ujr">
「追いかけなきゃ――
　と、飛び出しかけたオレだが」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @-250,@0,"buユージローa_通常_normal");
	Move("@StNameC/C*", 500, @250, @0, Dxl1, false);
	FadeSt("C",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zab21/000300050ujr">
「パンツの誘惑には、勝てなかったのサ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
