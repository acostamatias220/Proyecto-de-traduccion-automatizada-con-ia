
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z1910鈴.nss_MAIN
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

scene z1910鈴.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="100">
////////////header////////////
//file name "z1910鈴.nss"
//title "機材到着"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(1917);}

	OnBG(10,"bg0501200スーパーノヴァ_正面_ガラス割れ");
	FadeBG(0,true);

	SoundPlay("@xbgm20",2000,450,true);

	St("C",700, @0,@0,"bu鈴_シリアス_hard");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/100300010fjr">
（さっき、お店の前にいたのって……フウリちゃんだよね）

//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/100300020fjr">
（入らないでどこか行っちゃったのは、私が怒っちゃったから……かな？）

{	St("C",700, @0,@0,"bu鈴_シリアス_think");
	FadeSt("C",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/100300030fjr">
（やっぱりフウリちゃん、私を嫌って――）

//◆ＳＥ：プップー、トラックの音
{	DeleteAllSt(200,true);}
//◆ＳＥ：トラック停車
{	CreateSE("SE01","seメカ_車_トラック停車");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","seメカ_車_クラクション_l");
	MusicStart("SE02",0,700,0,1000,null,false);}
{	WaitPlay("SE01");
	CreateSE("SE03","seメカ_車_ドア開ける");
	MusicStart("SE03",0,700,0,1000,null,false);
	WaitPlay("SE03");
	CreateSE("SE04","seメカ_車_ドア閉める");
	MusicStart("SE04",0,700,0,1000,null,false);
	WaitPlay("SE04");
	Wait(300);}
{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z19/100300040msi">
「あー、どうもこんにちはー！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/100300050fjr">
「え？」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z19/100300060msi">
「機材の配達に伺いましたー！」

{	St("MR",700, @0,@0,"bu鈴_シリアス_shout");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/100300070fjr">
「機材？　って、え！？　これ、ライブの――」

{	St("ML",700, @0,@0,"bu村崎_通常_normal");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z19/100300080msi">
「フウリさんが、ジャブルさんに頼み込んだみたいですよ。
　いやあ、急な連絡でビビったビビったビビりました！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/z19/100300090msi">
「今、荷物下ろしちゃいますね」

{	St("MR",700, @0,@0,"bu鈴_シリアス_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【富士見鈴】
<voice name="富士見鈴" class="富士見鈴" src="voice/z19/100300100fjr">
「は……はあ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
