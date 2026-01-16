
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2310双六.nss_MAIN
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

scene z2310双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="40">
////////////header////////////
//file name "z2310双六.nss"
//title "後悔"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2310);}

//◆場所：地下_通路_スパコン館
	OnBG(10,"bg0701500地下_通路_スパコン館");
	FadeBG(0,true);

//◆演出指示：歌門星に追われて逃げる双六
//◆ＳＥ：走る足音
	CreateSE("SE01","se環境_風低音_l");
	MusicStart("SE01",1000,700,0,1000,null,true);
	CreateSE("SE02","se動作_走る02_l");
	MusicStart("SE02",1000,700,0,1000,null,true);

{	St("C",700, @0,@0,"bu双六a_通常_angry");
	FadeSt("C",0,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z23/100300010ksr">
「はぁっ……はぁっ……はぁっ……はぁっ……」

//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z23/100300020ksr">
「クソッ！　とんだ災難だ！」

{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z23/100300030ksr">
「けど――沙紅羅はオレが惚れた女」

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/z23/100300040ksr">
「アイツはきっと、帰ってくるはずだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
