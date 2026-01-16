
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene z2210みそブー_ミヅハ.nss_MAIN
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

scene z2210みそブー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="90">
////////////header////////////
//file name "z2210みそブー_ミヅハ.nss"
//title "アザナエルの弾丸"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2210);}

//◆場所：半田明神_拝殿
	OnBG(10,"bg0607100半田明神_拝殿_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm15",0,450,true);

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",200,true);}

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z22/100200010mzh">
「のう、みそブーよ」

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z22/100200020mzh">
「ノーコは、何のためにこの弾を欲しがるのじゃ？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buブーa_通常_hard");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z22/100200030buu">
「ん……オレも、あんまり良くわかんねーけど」

{	St("MR",700, @0,@0,"buブーa_通常_sad");
	FadeSt("MR",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/z22/100200040buu">
「なんか、男を追いかけてるらしいし。
　そいつの気持ち、変えるつもりなんじゃね？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	St("C",700, @0,@0,"buミヅハ_通常_hard");
	St("C",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z22/100200050mzh">
「人の気持ちを……？
　そんなことが、本当に許されるのか？」

{	AgainSt("C",700, @0,@0,"buミヅハ_通常_sigh");
	St("ML",700, @-50,@0,"buみそa_オラオラ_pinch");
	DeleteAllSt(200,false);
	Move("@StNameML/ML*", 200, @50, @0, Dxl3, false);
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z22/100200060mso">
「いやいや、いいワケねーだろ！」

{	St("ML",700, @0,@0,"buみそa_オラオラ_pride");
	FadeSt("ML",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z22/100200070mso">
「自分の願いは、自分の力で叶える！
　ソレを教えるためにも――」

{	St("ML",700, @0,@0,"buみそa_オラオラ_shout");
	Shake("@StNameML/ML*", 400, 0, 20, 0, 0, 500, Dxl3, false);
	FadeSt("ML",200,false);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/z22/100200080mso">
「この弾を、渡すわけにはいかねぇぜ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,true);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/z22/100200090mzh">
「うむ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	EndScene();
}
