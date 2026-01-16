
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1800みそブー.nss_MAIN
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

scene z1800みそブー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="80">
////////////header////////////
//file name "z1800みそブー_双六.nss"
//title "霊感が強い"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1804);}

//◆場所：パチンコ屋_正面
	OnBG(10,"bg2301111パチンコ屋_正面_通常");
	FadeBG(0,true);

	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",0,true);

	CreateSE("SE01","seガヤ_交通少_l");
	MusicStart("SE01",1000,700,0,1000,null,true);
	CreateSE("SE02","seガヤ_パチンコ屋店内_l");
//	SoundEffect("SE02","GENERIC");
	MusicStart("SE02",1000,300,0,1000,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/000200010buu">
「おいみそ、待てよ！　なにがあったんだ？」

{	St("ML",700, @0,@0,"buみそa_通常_fear");
	DeleteAllSt(200,false);
	FadeFF("@StNameML/ML*",0,0,500,0,-50,Dxl2, false);
	FadeSt("ML",200,false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/000200020mso">
「知ってるだろ？
　オレ……霊感、強いんだ」

//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/000200030mso">
「さっき、いたんだよ。
　オレの後ろに……」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/000200040buu">
「……いやいや、ないないない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("ML",700, @0,@0,"buみそa_通常_sad");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 200, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/000200050mso">
「でも！　ほら！　ここ！　グサっと――」

{	St("MR",700, @0,@0,"buブーa_通常_hard");
	St("MR",700, @0,@0,"buブーa_通常_happy");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 3000);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/000200060buu">
「大丈夫！　刺されてないから！　な？」

{	//★立ち絵プロセス：再定義
	AgainSt("MR",700, @0,@0,"buブーa_通常_happy");
	St("ML",700, @0,@0,"buみそa_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z18/000200070mso">
「でもよう……」

{	St("C",700, @200,@0,"buブーa_通常_smile");
	DeleteAllSt(200,false);
	Move("@StNameC/C*", 500, @-200, @0, Dxl3, false);
	FadeSt("C",200,false);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z18/000200080buu">
「ほら、いいから……
　憂さ晴らしに、パチでも打とうぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
