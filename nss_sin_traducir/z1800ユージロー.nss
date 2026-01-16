
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1800ユージロー.nss_MAIN
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

scene z1800ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "z1800ユージロー.nss"
//title "走馬燈―パンツ篇―"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

//▼べー：背景指定がありませんので適当にいれました
//▼べー：自宅前にいるらしいのですが、富士見家がないため黒幕で

{	ClockPass(1802);}

//	CreateColorSP("絵色黒", 490, "#000000");

//cono：背景変更
	OnBG(10,"bg1601100小碓家_正面_通常");
	FadeBG(0,true);

	CreateMask("マスク１",75, 0,0, "cg/data/slide_01_00_1.png",true);
	CreateTextureEX("マスク１/事故",75, -380,-502, "cg/ev/l/ev1800ユージロー事故a_l.jpg");

	St("MR",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("MR",0,true);

	CreateSE("SE01","seガヤ_交通少_l");
	MusicStart("SE01",500,300,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

	Fade("マスク１/事故",1000,1000,null,false);
	Move("マスク１/事故",2000, -738,-502, Dxl3,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/000400010ujr">
「オレが車にはね飛ばされたその瞬間――」

{	Request("マスク１/事故",Smoothing);
	Move("マスク１/事故", 200, -545, -679, null, false);
	Zoom("マスク１/事故", 200, 2000, 2000, null, false);
	Shake("マスク１/事故", 500, 20, 10, 4, 6, 500, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/000400020ujr">
「脳裏を、走馬燈が過ぎった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Move("@StNameMR/MR*", 200, @-400, @0, Dxl1,false);
//	DeleteAllSt(200,false);

	CreateColorEX("絵色白", 500, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);

	CreateTextureEX("走馬灯", 600, -300, 0, "cg/bu/buユージローa_通常_hard.png");
	Rotate("走馬灯", 0, @0, @0, @45, null, true);
	Zoom("走馬灯", 0, 2000, 2000, null, false);
	Request("走馬灯",Smoothing);
	Move("走馬灯", 10000, @500, @200, Dxl1, false);
	Fade("走馬灯", 2000, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/000400030ujr">
「パンツ……パンツ……パンツ……」

{	St("MR",700, @-400,@0,"buユージローa_通常_ero");
	FadeSt("MR",200,false);}
{	CreateTextureEX("走馬灯２", 501, -400, 0, "cg/bu/buユージローa_通常_ero.png");
	Rotate("走馬灯２", 0, @0, @0, @45, null, true);
	Fade("走馬灯", 1000, 0, null, false);
	Zoom("走馬灯２", 0, 2500, 2500, null, false);
	Request("走馬灯２",Smoothing);
	Move("走馬灯２", 8000, @500, @200, Dxl1, false);
	Fade("走馬灯２", 2000, 500, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/000400040ujr">
「パンツ……パンツ……パンツ……パンツ……！」

{	St("MR",700, @-400,@0,"buユージローa_通常_angry");
	FadeSt("MR",200,false);}
{	CreateTextureEX("走馬灯３", 502, 100, 200, "cg/bu/buユージローa_通常_angry.png");
	Rotate("走馬灯３", 0, @0, @0, @45, null, true);
	Zoom("走馬灯３", 0, 2500, 2500, null, false);
	Request("走馬灯３",Smoothing);
	Fade("走馬灯２", 200, 0, null, false);
	Fade("走馬灯３", 200, 500, null, false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/000400050ujr">
「いやだ！　いやだあ！　まだ死にたくないッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	Move("@StNameMR/MR*", 200, @200, @0, Dxl3,false);

	CreateColorEXadd("絵色白２", 520, "#FFFFFF");
	Fade("絵色白２", 100, 1000, null, true);

	Delete("絵色白");
	Delete("走馬灯");
	Delete("走馬灯２");
	Delete("走馬灯３");
	Delete("マスク１");

	Wait(100);

	Shake("@StNameMR/MR*", 1000, 0, 40, 0, 0, 500, null, false);
	Fade("絵色白２", 200, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/000400060ujr">
「もっとくんかくんかしたいヨォ！！」

{	St("MR",700, @-200,@0,"buユージローa_通常_normal");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z18/000400070ujr">
「その石の信念が、オレをこの世に蘇らせたのサ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
