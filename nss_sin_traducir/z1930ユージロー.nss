
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1930ユージロー.nss_MAIN
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

scene z1930ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z1930ユージロー.nss"
//title "噛み心地の違いがわかる男"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1932);}

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

	CreateSE("SE01","seガヤ_街中_l");
	MusicStart("SE01",500,700,0,1000,null,true);
	CreateSE("SE02","seガヤ_交通_l");
	MusicStart("SE02",500,700,0,1000,null,true);

	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

	Shake("@StNameC/C*", 2000, 0, 20, 0, 0, 500, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/300300010ujr">
「がうがう！　がうがうがうっ！！」

{	St("C",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/300300020ujr">
「ん……この噛み心地は、まさか！？」

{	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/300300030ujr">
「千秋なのか！？」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/300300040ujr">
「マジで！？」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z19/300300050ujr">
「変態じゃね！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
