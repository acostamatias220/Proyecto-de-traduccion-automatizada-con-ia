
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1900ユージロー.nss_MAIN
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

scene z1900ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "z1900ユージロー.nss"
//title "ユージロー、はいていないへの疑問"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1905);}

	OnBG(10,"bg0101111秋葉原_裏通り_通常");
	FadeBG(0,true);

//	CreateSE("SEL01","seガヤ_交通少_l");
//	MusicStart("SEL01",500,400,0,1000,null,true);
	CreateSE("SEL02","se動物_イヌ_走る_l");
	MusicStart("SEL02",500,450,0,1000,null,true);

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/000300010ujr">
「オレは走った――」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/000300020ujr">
「パンツには目もくれず、追いかけた！」

{	St("C",700, @0,@0,"buユージローa_通常_sad");
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2500);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/000300030ujr">
「いや、目くらいはくれたかもしれないけど追いかけた！」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2500);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/000300040ujr">
「途中女の人にドスン！　とぶつかって『いやでもこの人のパンツはどうなってるんだろう？』とか思ったけど！」

{	AgainSt("C",700, @0,@0,"buユージローa_通常_sad");
	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/000300050ujr">
「思ったけど！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buユージローa_通常_hard");
	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/000300060ujr">
「っていうか思うよな、みんな！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
