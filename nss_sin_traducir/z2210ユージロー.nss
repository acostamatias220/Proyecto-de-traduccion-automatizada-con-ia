
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2210ユージロー.nss_MAIN
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

scene z2210ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "z2210ユージロー.nss"
//title "平次の根性"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2210);}

//◆場所：スパコン館_裏面
	OnBG(10,"bg1101300スパコン館_裏面_電柱折れ");
	FadeBG(0,true);

	CreateSE("SEL01","seガヤ_街中_l");
	MusicStart("SEL01",500,500,0,1000,null,true);

	CreateSE("SE03","se動作_走る05_l");
	MusicStart("SE03",0,700,0,1000,null,true);
	CreateSE("SE05","se動物_イヌ_走る_l");
	MusicStart("SE05",0,700,0,1000,null,true);

	St("MR",700, @-50,@0,"bu平次_御用だ_shout");
	St("MR",700, @-50,@0,"bu平次_御用だ_pain");
	Move("@StNameMR/MR*", 200, @50, @0, Dxl1, false);
	FadeSt("MR",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("MR", 200, 4000);

	FadeDelete("上背景", 500, null, true);

	SetVolume("SE0*", 1300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/z22/100300010fjh">
「待てぇぇい、金閣寺――イデッ！
　イデデデデデ！」

{	AgainSt("MR",700, @0,@0,"bu平次_御用だ_pain");
	St("ML",700, @-80,@0,"buユージローa_通常_angry");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @80, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/100300020ujr">
「ちょっと、平次のオヤジさん！」

//▼修正：汚して→怪我して
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/100300030ujr">
「足、怪我してるんだから！
　そんな走ったり、無理だって！」

{	St("ML",700, @0,@0,"buユージローa_通常_hard");
	FadeSt("ML",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/100300040ujr">
「ほら……すぐ逃げられちゃったし」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/z22/100300050ujr">
「しょうがないよ。
　早く、スーパーノヴァに行こう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
