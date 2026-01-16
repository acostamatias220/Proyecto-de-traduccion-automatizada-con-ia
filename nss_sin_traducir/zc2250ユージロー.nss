
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zc2250ユージロー.nss_MAIN
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

scene zc2250ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zc2250ユージロー.nss"
//title "ガチムチマッチョマンの変態、迷う"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2250);}

//◆場所：泰然堂大学病院_正面
	OnBG(10,"bg1401100泰然堂大学病院_正面_通常");
	FadeBG(0,true);

	CreateSE("SE01","se動作_走る04_l");
	MusicStart("SE01",1000,700,0,0,null,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,200,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);
	Wait(3500);

	MusicStart("SE01",1000,0,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @100,@100,"buユージローa_通常_hard");
	Move("@StNameMR/MR*", 200, @-50, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zc22/500100010ujr">
「お！　なんだ！？
　病院から、ガチムチマッチョマンの変態が！」

{	St("MR",700, @50,@50,"buユージローa_通常_angry");
	Move("@StNameMR/MR*", 200, @-50, @-50, Dxl1, false);
	FadeSt("MR",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zc22/500100020ujr">
「『スズさーん！　ジュッテーム！！』とか叫びながら、全力疾走していったけど」

{	St("MR",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("MR",200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zc22/500100030ujr">
「……あれ？　あっちって、逆方向じゃないか？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
