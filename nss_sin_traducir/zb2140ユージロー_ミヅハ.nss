
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zb2140ユージロー_ミヅハ.nss_MAIN
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

scene zb2140ユージロー_ミヅハ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="120">
////////////header////////////
//file name "zb2140ユージロー_ミヅハ.nss"
//title "不可能を可能に……"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2148);}

//◆場所：秋葉原_裏通り
	OnBG(10,"bg0101200秋葉原_裏通り_閉店");
	FadeBG(0,true);

	CreateSE("SE01","se動作_走る02_l");
	MusicStart("SE01",500,700,0,0,null,true);

	MusicStart("@xbgm03",0,450,0,1000,null,true);
	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	St("C",700, @400,@0,"bu平次_通常_shock");
	Move("@StNameC/C*", 200, @-200, @0, Dxl1, false);
	SetVolume("SE01", 100, 0, NULL);
	FadeSt("C",200,true);}
//◆音声指示：遠くから
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zb21/400100010fjh">
「うお！　発見！」

//◆音声指示：遠くから
{	DeleteSt("C", 200,false);
	St("C",700, @200,@0,"bu平次_御用だ_shout");
	FadeSt("C",200,true);}
//【富士見平次】
<voice name="富士見平次" class="富士見平次" src="voice/zb21/400100020fjh">
「待てぇいッ！！　御用だ御用だ御用だッ！！」

{	Move("@StNameC/C*", 150, @-200, @0, Dxl1, false);
	DeleteSt("C", 150,true);
	Wait(500);
	St("C",700, @100,@0,"buミヅハ_通常_sigh");
	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/400100030mzh">
「ひえっ、ダメじゃ！　今捕まっては――」

{	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteSt("C", 200,true);
	St("C",200, @-400,@0,"bu歌門_威圧_shout");
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,0,null,false);
	Move("@StNameC/C*", 200, @400, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zb21/400100040kms">
「もう、逃しません！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("C",700, @0,@0,"buミヅハ_通常_angry");
	Move("@StNameC/C*", 300, @150, @0, Dxl1, false);
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/400100050mzh">
「ぎゃあああ！　反対側からも来たッ！！」

{	DeleteSt("C", 200,false);
	St("C",700, @150,@0,"buミヅハ_通常_sigh");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/400100060mzh">
「うう……これは、覚悟を決めるしか……」

{	DeleteSt("C", 200,true);
	CreateSE("SE01","se動物_イヌ_走る_l");
	MusicStart("SE01",0,700,0,0,null,false);
	St("C",700, @200,@0,"buユージローa_通常_hard");
	Wait(1500);
	Move("@StNameC/C*", 300, @-200, @0, Dxl1, false);
	FadeSt("C",200,true);
	MusicStart("SE01",0,0,0,200,null,false);
	Wait(50);
	St("C",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("C",200,true);
	CreateSE("SE02","se動作_ジャンプ");
	MusicStart("SE02",0,700,0,0,null,false);
	Wait(300);
	Move("@StNameC/C*", 50, @-200, @0, Dxl1, false);
	DeleteSt("C", 50,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb21/400100070ujr">
「巫女さん、いただきイイイ――――ッッ」

{	St("C",700, @0,@0,"bu歌門_威圧_hard");
	FadeSt("C",200,true);
	Wait(150);
	St("C",700, @0,@0,"bu歌門_口覆い_fear");
	FadeSt("C",200,true);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zb21/400100080kms">
「え？　いやっ！　きゃああああああ！！」

{	CreateSE("SE02","se擬音_ギャグ_逃げる");
	MusicStart("SE02",0,700,0,0,null,false);
	Move("@StNameC/C*", 300, @-150, @0, Dxl1, false);
	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"buミヅハ_フラット_happy");
	FadeSt("C",200,true);
	Wait(10);
	Move("@StNameC/C*", 160, @0, @-50, DxlAout, true);
	Move("@StNameC/C*", 100, @0, @50, DxlAout, true);	
	Move("@StNameC/C*", 130, @0, @-50, DxlAout, true);
	Move("@StNameC/C*", 100, @0, @50, DxlAout, false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/400100090mzh">
「な……なんだかよくわからんが良くやったぞ犬！
　誉めてつかわす！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteSt("C", 200,true);
	St("C",700, @-400,@0,"bu歌門_威圧_hard");
	Move("@StNameC/C*", 300, @400, @0, Dxl1, false);
	FadeSt("C",200,true);
	Wait(350);
	Move("@StNameC/C*", 120, @100, @0, null, true);
	Wait(350);
	Move("@StNameC/C*", 170, @100, @0, null, true);
	Wait(750);
	CreateSE("SE02","se擬音_ギャグ_逃げる");
	MusicStart("SE02",0,700,0,0,null,false);
	Move("@StNameC/C*", 300, @400, @0, Dxl1, false);
	DeleteSt("C", 200,true);
	St("C",700, @-200,@0,"buユージローa_通常_hard");
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,0,null,false);
	Move("@StNameC/C*", 300, @200, @0, Dxl1, false);
	FadeSt("C",200,true);
	Wait(50);
	St("C",700, @0,@0,"buユージローa_通常_ero");
	FadeSt("C",200,true);
	Wait(300);
	CreateSE("SE01","se動作_集団走る");
	MusicStart("SE01",0,700,0,0,null,false);
	Move("@StNameC/C*", 100, @100, @0, Dxl1, false);
	DeleteSt("C", 100,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zb21/400100100ujr">
「はっはっは！　はっはっは！
　巫女さん萌え――――――っ！！」

{	St("C",700, @400,@0,"bu歌門_口覆い_shock");
	Move("@StNameC/C*", 300, @-400, @0, Dxl1, false);
	FadeSt("C",200,true);
	Move("@StNameC/C*", 300, @-400, @0, Dxl1, false);
	DeleteSt("C", 200,false);}
//【歌門星】
<voice name="歌門星" class="歌門星" src="voice/zb21/400100110kms">
「きゃあああああッ！！」

{	St("C",700, @400,@0,"buユージローa_通常_ero");
	Move("@StNameC/C*", 300, @-400, @0, null, false);
	FadeSt("C",300,true);
	Move("@StNameC/C*", 300, @-400, @0, null, false);
	DeleteSt("C", 300,true);
	Wait(300);
	St("C",700, @0,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/zb21/400100120mzh">
「別にわらわを助けに来たわけじゃないのじゃな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 1000, 0, null);

	EndScene();
}
