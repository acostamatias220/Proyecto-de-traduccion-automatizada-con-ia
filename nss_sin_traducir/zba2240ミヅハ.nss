
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2240ミヅハ.nss_MAIN
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

scene zba2240ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="50">
////////////header////////////
//file name "zba2240ミヅハ.nss"
//title "力を尽くす"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2245);}

//◆場所：半田明神_男坂
	CreateTextureEX("絵背景200", 100, Center, -650, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");
	Fade("絵背景200", 0, 1000, null, true);

{	St("C",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("C",0,true);}

	CreateSE("SE01","se環境_燃える_l");
	MusicStart("SE01",3000,900,0,300,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/400300010mzh">
「そうか……」

{	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/400300020mzh">
「もしかしたらわらわは、彼らの力を過小評価していたのやもしれぬ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu歌門_通常_hard");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zba22/400300030kms">
「ミヅハ様！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_通常_normal");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/400300040mzh">
「うむ！」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buミヅハ_手構え_pride");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zba22/400300050mzh">
「彼らなりのやり方で――
　この悲劇を、終わらせてやろう！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



	EndScene();
}
