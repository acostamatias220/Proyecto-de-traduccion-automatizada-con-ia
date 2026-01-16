
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2120ユージロー.nss_MAIN
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

scene zaa2120ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "zaa2120ユージロー.nss"
//title "現実へ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2121);}

//◆場所：銭形公園_トイレ正面
	OnBG(10,"bg1702100銭形公園_トイレ正面_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,400,0,1000,null,true);

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa21/200300010ujr">
「あ……あれ……？」

{	St("C",700, @0,@0,"buユージローa_通常_normal");
	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",0,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 7000);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa21/200300020ujr">
「ここは……パンツパラダイス（略してパンパラ）じゃ、ない……？」

{	AgainSt("C",700, @0,@0,"buユージローa_通常_angry");
	St("C",700, @0,@0,"buユージローa_通常_sad");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 1000, 15, 0, 0, 0, 500, Dxl3, false);
	Move("@StNameC/C*", 1000, @0, @50, Dxl1, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa21/200300030ujr">
「ひぐっ、う……うう……」

{	St("C",700, @0,@50,"buユージローa_通常_angry");
	FadeSt("C",0,true);
	Move("@StNameC/C*", 200, @-100, @300, AxlDxl, false);
	CreateSE("SE01","se人体_倒れる04");
	MusicStart("SE01",0,300,0,1000,null,false);
	DeleteAllSt(200,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zaa21/200300040ujr">
「うわああああああああああああああん…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
