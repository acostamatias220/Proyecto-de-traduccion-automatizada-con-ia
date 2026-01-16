
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene baa2351千秋_恵那.nss_MAIN
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
//	$GameName = "";
//	$GameCircle=false;

	//★徒歩：フラグ修正
	if(#RouteName=="baa"){
		$GameName="baa2352千秋_恵那.nss";//★エンディング中（baa）
	}else if(#RouteName=="bab"){
		$GameName="bab2352千秋_恵那.nss";//★エンディング中（bab）
	}
}

scene baa2351千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="160">
////////////header////////////
//file name "baa2351千秋_恵那.nss"
//title ""
//previous "baa2330似鳥_ノーコ_h.nss"
//previous "bab2350千秋_恵那.nss"


////////////footer////////////
//next （"flkagome2b" = false） "bab2352千秋_恵那.nss"
//next "baa2352千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
//	FadeDelete("上背景", 0, null, true);

{	ClockPass(2358);}
//◆場所：半田明神_鳥居
//	OnBG(10,"bg0602112半田明神_鳥居_通常");
//	FadeBG(0,true);

	if($PreGameName=="bab2350千秋_恵那.nss"){
	CreateTextureSP("絵背景100", 10, Center, 0, "cg/bg/bg0602112半田明神_鳥居_通常.jpg");
	DrawDelete("上背景", 1000, 10, null, "blind_01_00_1", true);
	}else{
	CreateTextureSP("絵背景100", 10, Center, 0, "cg/bg/bg0602112半田明神_鳥居_通常.jpg");
	FadeDelete("上背景", 500, null, true);
	}

	CreateSE("SE11_baa2351千秋_恵那","seガヤ_ざわざわ_l");
	MusicStart("SE11_baa2351千秋_恵那",5000,700,0,1000,null,true);

	Move("絵背景100", 3000, @0, @-900, DxlAuto, true);

	Wait(500);

//◆演出指示：年越し直前

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("MR",700, @0,@0,"bu千秋_通常_think");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/510100010kit">
「街は大変なことになってるけど……」

{	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/510100020kit">
「みんな、初詣には来るんだな」


{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100030fje">
「まあ、なんていうのかな
　困ったときの神頼みとか、そういう心境？」

{	St("ML",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("ML",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100040fje">
「あと、普通に街を見ていきたい人も多いだろうし」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/510100050kit">
「でも、暢気すぎねぇか？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_pride");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100060fje">
「日本人って、そういう所があるんじゃない？
　荒ぶるカミの仕業だから、まあ仕方ない！　みたいな」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_sigh");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/510100070kit">
「そういうモンかなあ……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_sigh");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100080fje">
「でも、父さんもかり出されちゃって大変」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2359);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("ML",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("ML",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100090fje">
「なんか、河原屋組の人たちも協力するって言ってくれてるんだけど」

{	St("ML",700, @0,@0,"bu恵那_一休_think");
	FadeSt("ML",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100100fje">
「でも、考えれば考えるほど不思議なのよね」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100110fje">
「なぜ、河原屋組組長双一は、今回のアザナエル盗難を試みたのか……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100120fje">
「その動機が、全く掴めない」

{	St("ML",700, @0,@0,"bu恵那_一休_sigh");
	FadeSt("ML",200,false);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100130fje">
「ってかそもそも、双一って何者？」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100140fje">
「ぜんっぜん、わかんないんだよなあ……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu千秋_通常_shout");
	FadeSt("MR",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/baa23/510100150kit">
「って、そんなことしてる場合じゃなくて！　ほら！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"bu恵那_通常_happy");
	FadeSt("ML",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/baa23/510100160fje">
「あ、ホントだ！　もう年が明ける――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Request("SE*", Lock);


	EndScene();
}
//next （"flkagome2b" = false） "bab2352千秋_恵那.nss"
//next "baa2352千秋_恵那.nss"
