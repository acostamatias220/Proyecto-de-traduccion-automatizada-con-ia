
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2300ユージロー.nss_MAIN
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

scene z2300ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="60">
////////////header////////////
//file name "z2300ユージロー.nss"
//title "忠犬ユージロー"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2300);}

//◆場所：泰然堂大学病院_正面
	OnBG(10,"bg1401100泰然堂大学病院_正面_通常");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_交通少_l");
	MusicStart("SEL01",500,200,0,1000,null,true);

{	St("MR",700, @50,@50,"buユージローa_通常_sad");
	FadeSt("MR",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/000300010ujr">
「平次のオヤジさん、まだかな？」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/000300020ujr">
「足、早く治ると良いな……」

{	St("MR",700, @50,@50,"buユージローa_通常_hard");
	FadeSt("MR",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/000300030ujr">
「でも……そろそろ、帰った方がいいか？」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/000300040ujr">
「前は、母さんを捜して、恵那に迷惑かけちゃったもんな」

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/000300050ujr">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("MR",700, @50,@50,"buユージローa_通常_normal");
	FadeSt("MR",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z23/000300060ujr">
「でも、もう少し、待ってみよう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
