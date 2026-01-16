
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1920みそブー_ＡＤ.nss_MAIN
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

scene z1920みそブー_ＡＤ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="100">
////////////header////////////
//file name "z1920みそブー_ＡＤ.nss"
//title "みーちゃんのひとりあそびじゃなかった！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1925);}

//◆場所：銭形公園_全景
	OnBG(10,"bg1701100銭形公園_全景_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,400,0,1000,null,true);

	St("C",700, @0,@0,"buＡＤ_通常_sad");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/200100010adi">
「ソトカンダーの代わりになるものなんて……
　ホントに見つかるの……？」

{	DeleteAllSt(200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/200100020buu">
「た……た……たすけてください……」

{	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/200100030adi">
「ん？」

{	DeleteAllSt(200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/200100040mso">
「誰か、誰かー！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/200100050adi">
「え？　この声はもしかして――」

{	St("C",700, @0,@0,"buＡＤ_通常_shock");
	FadeSt("C",200,true);}
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/200100060adi">
「『みーちゃんのひとりあそび』！？」

//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/200100070adi">
「そ、そうだッ！！
　この怪事件を中継すれば、もしかして――」

{	DeleteAllSt(200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z19/200100080mso">
「だれか――斧を――買ってきてください――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buＡＤ_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ＡＤ】
<voice name="ＡＤ" class="ＡＤ" src="voice/z19/200100090adi">
「え？　斧？」

{	DeleteAllSt(200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z19/200100100buu">
「出ようとして……天井に挟まっちゃいました……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
