
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2210みそブー_ミヅハ.nss_MAIN
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

scene zb2210みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zb2210みそブー_ミヅハ.nss"
//title "別れ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2210);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"buみそa_通常_smile");
	FadeSt("MR",0,true);}

	SoundPlay("@xbgm15",0,450,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【みそ】
<voice name="みそ" class="みそ" src="voice/zb22/100200010mso">
「こっちの方のことは、オレたちに任せろ」

{	DeleteSt("MR", 200,true);
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb22/100200020mzh">
「本当に……助けてくれるんじゃな？」

{	DeleteSt("C", 200,true);
	St("ML",700, @0,@0,"buブーa_通常_normal");
	FadeSt("ML",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zb22/100200030buu">
「大丈夫！　貫太もついてる」

{	DeleteSt("ML", 200,true);
	St("C",700, @0,@0,"bu貫太_通常_hard");
	FadeSt("C",200,true);}
//【太四郎（織田貫太）】
<voice name="太四郎（織田貫太）" class="織田貫太" src="voice/zb22/100200040okt">
「フウリは絶対に、助けてみせる。
　大人しく待っててくれるね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb22/100200050mzh">
「……頼んだぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
