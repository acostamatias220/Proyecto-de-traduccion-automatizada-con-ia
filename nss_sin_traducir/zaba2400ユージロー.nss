
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaba2400ユージロー.nss_MAIN
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

scene zaba2400ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zaba2400ユージロー.nss"
//title "夢？"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1859);}

//※下倉注：ユージロー雷喰らってグロッキーです……

//◆場所：半田明神_涸れ井戸
	OnBG(10,"bg0606100半田明神_涸れ井戸_通常");
	FadeBG(0,true);

	CreateSE("SEL01","se環境_風と葉っぱ_l");
	MusicStart("SEL01",500,700,0,1000,null,true);

{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaba24/000300010ujr">
「なんで……なんで……」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaba24/000300020ujr">
「なんでオレがこんな目に……」

{	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaba24/000300030ujr">
「ってか普通、雷なんて落ちないような……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
