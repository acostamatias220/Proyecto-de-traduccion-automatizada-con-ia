
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2230双六.nss_MAIN
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

scene zba2230双六.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zba2230双六.nss"
//title "非常事態宣言"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2235);}

//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

{	St("C",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("C",0,false);}

	SoundPlay("@xsong01",4000,450,true);

	FadeDelete("上背景", 500, null, true);

/*
//※下倉注：会話相手を平次からミヅハに……

{	St("C",700, @0,@0,"bu双六a_通常_shout");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/300400010ksr">
「おい、平次！　聞こえるか！？」
*/

{	St("C",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("C",200,false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/300400020ksr">
「ああ！　こうなったら、昔のいざこざはチャラだ。
　とにかく、被害を最小限に止めよう」

{	St("C",700, @0,@0,"bu双六a_通常_hard");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/300400030ksr">
「河原屋組を向かわせる！
　思う存分、使ってやってくれ！」

{	St("C",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("C",200,false);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/300400040ksr">
「オレ？
　オレは、地下に潜るさ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	St("C",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("C",200,false);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/zba22/300400050ksr">
「確かあのスパコン館の下に、地下道が繋がっているはずだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
