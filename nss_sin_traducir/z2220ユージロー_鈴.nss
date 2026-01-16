
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2220ユージロー_鈴.nss_MAIN
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

scene z2220ユージロー_鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "z2220ユージロー_鈴.nss"
//title "病院へ"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2220);}


//◆場所：スーパーノヴァ_正面_ガラス車イン
	OnBG(10,"bg0501400スーパーノヴァ_正面_ガラス車イン");
	FadeBG(0,true);

//◆音声指示：狂気
	St("C",700, @0,@0,"bu鈴_もじゃ_shock");
	FadeSt("C",0,true);

	MusicStart("@xbgm20",1000,350,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z22/200300010fjr">
「あ……あはは……髪が……かみが……」

{	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
	Shake("@StNameC/C*", 500, 0, 40, 0, 0, 500, Dxl3, false);
	FadeSt("C",200,false);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z22/200300020fjr">
「もじゃああああああああああああああああああっ！！」

{	St("MR",700, @0,@0,"bu村崎_通常_fear");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z22/200300030msi">
「あの……鈴さん、気を確かに」

{	St("C",700, @0,@0,"bu鈴_もじゃ_angry");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 200, @-200, @0, Dxl3, false);
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z22/200300040fjr">
「あんたのせいでしょ６４文ロケットキ――――ック！！」

{	Move("@StNameC/C*", 200, @200, @50, Dxl3, false);
	DeleteAllSt(200,false);
	CreateSE("SE01","se戦闘_打撃_ドロップキック01");
	MusicStart("SE01",0,700,0,1000,null,false);
	St("MR",700, @0,@0,"bu村崎_通常_cry");
	Move("@StNameMR/MR*", 200, @100, @50, Dxl3, false);
	Shake("@StNameMR/MR*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,true);
	Move("@StNameMR/MR*", 200, @0, @80, AxlDxl, false);
	CreateSE("SE02","se擬音_ギャグ_ドカーン");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se人体_骨砕ける01");
	MusicStart("SE03",0,700,0,1000,null,false);
	DeleteAllSt(200,false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z22/200300050msi">
「ふぎゃああああああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,true);
	Wait(500);

{	St("R",700, @50,@0,"buユージローa_通常_angry");
	Move("@StNameR/R*", 200, @-50, @0, Dxl3, false);
	FadeSt("R",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/200300060ujr">
（ちょ、ちょっとちょっとちょっと！）

{	St("R",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("R",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/200300070ujr">
（鈴！　村崎に何やってんの！）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
