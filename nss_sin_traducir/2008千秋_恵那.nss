
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 2008千秋_恵那.nss_MAIN
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

	if($CharaName=="千秋"){
		$GameName = "2010千秋_恵那.nss";
	}else if($CharaName=="恵那"){
		$GameName = "2010千秋_恵那.nss";
	}else{
		$GameName = "2010千秋_恵那.nss";
	}

}

scene 2008千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="140">
////////////header////////////
//file name "2008千秋_恵那.nss"
//title "一難去ってまた一難"
//previous "2007千秋_恵那_ノーコ.nss"

////////////footer////////////
//next "千秋" "2010千秋_恵那.nss"
//next "恵那" "2010千秋_恵那.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);
	//FadeDelete("上背景", 0, null, true);

{	ClockPass(2008);}

	SetVolumeEX("@xbgm*", 2000, 0, null);

	CreateSE("SE11","seガヤ_交通少_l");
	MusicStart("SE11",2000,700,0,1000,null,true);


//◆場所：スパコン館_スタジオ
//	OnBG(10,"bg1104100スパコン館_スタジオ_通常");
	OnBG(10,"bg1101200スパコン館_裏面_閉店");
	FadeBG(0,true);
{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	FadeSt("C",200,true);}

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/080200010fje">
「見つけたと思ったのに、手がかりすらないなんて……」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/080200020kit">
「おい恵那？　大丈夫か？」

{	St("C",700, @0,@0,"bu恵那_哀愁_shock");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/080200030fje">
「う……うん、たぶんダイジョブ……」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/080200040kit">
「いや、全然大丈夫に見えないし」

{	St("ML",700, @0,@0,"bu千秋_通常_angry");
	FadeSt("ML",200,false);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/080200050kit">
「アザナエルとかいうの、探してたんだろ？
　オレも手伝うよ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2009);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"bu恵那_哀愁_worry");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/080200060fje">
「でもアッキーちゃんはほら、自分の探すものが――」

{	St("ML",700, @0,@0,"bu千秋_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/080200070kit">
「大切なものなんだろ？」

{	St("C",700, @0,@0,"bu恵那_哀愁_sad");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/080200080fje">
「…………」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/080200090fje">
「アリガト。気持ちだけ、もらってく」

{	St("ML",700, @0,@0,"bu千秋_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/080200100kit">
「でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("C",700, @0,@0,"bu恵那_ハルヒ_pride");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/080200110fje">
「なーに、取り返しがつかないワケじゃないわ。
　この灰色の頭脳を使えばちょちょいのちょい！」

{	St("C",700, @0,@0,"bu恵那_通常_normal");
	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/080200120fje">
「ね、ミヅハちゃん。
　でぶっちょとは、どこではぐれ――」

{	DeleteAllSt(200,true);}
//	St("C",700, @0,@0,"bu恵那_通常_sigh");
//	FadeSt("C",200,true);}
//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/20/080200130fje">
「……あれ？」


//	St("C",700, @0,@0,"bu千秋_通常_normal");
//	FadeSt("C",200,true);}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/20/080200140kit">
「いなくなってる……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 2000, 0, null);
	SetVolume("SE*", 2000, 0, null);



	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	EndScene();
}
