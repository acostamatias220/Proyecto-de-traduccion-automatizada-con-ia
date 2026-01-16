
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zaa2100みそブー.nss_MAIN
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

scene zaa2100みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "zaa2100みそブー.nss"
//title "ブー、ピンローを持っていることが発覚"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2105);}

//◆場所：スパコン館_通路
	OnBG(10,"bg1102100スパコン館_通路_通常");
	FadeBG(0,true);

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/zaa21/000200010buu">
「しかし姐さんのエロに対する反感は、すげえモンがあるよな。なにが彼女をそうさせたのか……」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_shout");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zaa21/000200020mso">
「あ、姐さんは、ただ純粋なだけだよ！」

{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buブーa_通常_shout");
	Shake("@StNameMR/MR*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("MR",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zaa21/000200030buu">
「オレたちの性欲だって純粋だ！」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_shout");
	Shake("@StNameML/ML*", 500, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zaa21/000200040mso">
「……確かに！
　オレたちだって、純粋に……気持ちよくなりたいッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	DeleteSt("ML",200,false);
	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zaa21/000200050buu">
「でもよ、さすがに知識がなさすぎんだろ」

{	St("MR",700, @0,@0,"buブーa_通常_smile");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zaa21/000200060buu">
「この間オレの部屋からローター見つけてさ、『ただのマッサージ器ですよ』つったらさ、胸ん所に当てて――」

{	St("MR",700, @0,@20,"buブーa_通常_ero");
	FadeT("@StNameMR/MR*",0,0,200,0,-20,Dxl1,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/zaa21/000200070buu">
「『あれ？　あれれ？　なんだこれ……なんか、気持ちよくなってきた……』」

{	DeleteSt("MR",200,false);
	St("ML",700, @0,@0,"buみそa_通常_fear");
	Shake("@StNameML/ML*", 500, 5, 0, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/zaa21/000200080mso">
「キモいからやめろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
