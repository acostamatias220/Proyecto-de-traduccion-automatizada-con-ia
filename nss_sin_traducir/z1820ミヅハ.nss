
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1820ミヅハ.nss_MAIN
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

scene z1820ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "z1820ミヅハ.nss"
//title "星への反感"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1820);}

//◆場所：半田明神_境内
	OnBG(10,"bg0603111半田明神_境内_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",0,true);

	CreateSE("SE01", "seガヤ_交通少_l");
	MusicStart("SE01", 500, 350, 0, 1000, null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/200300010mzh">
「うう……星のやつ！
　いつもより２割は強く叩きおって！」

{	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/200300020mzh">
「わらわを思って……などと言うが、怪しいもんじゃ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/200300030mzh">
「だって星は、肉まんもくれぬ！
　フウリの方が、よほど優しくしてくれたではないか！」

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/200300040mzh">
「うう……もう堪忍ならん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buミヅハ_手構え_hard");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/200300050mzh">
「わらわは今晩、ここを脱出して――」

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/200300060mzh">
「…………」

{	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/200300070mzh">
「いや、しかし裏道を抜けるのは怖い……
　表は星に見張られておるし……」

{	St("C",700, @0,@0,"buミヅハ_通常_think");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z18/200300080mzh">
「何かこう……良い方法はないものか……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
