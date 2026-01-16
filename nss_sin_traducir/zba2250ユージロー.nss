
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene zba2250ユージロー.nss_MAIN
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

scene zba2250ユージロー.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="30">
////////////header////////////
//file name "zba2250ユージロー.nss"
//title "パンチランド！"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2250);}


//◆場所：スパコン館_裏面_廃墟　→　変更
//	OnBG(10,"bg1101500スパコン館_裏面_廃墟");
//	FadeBG(0,true);

	CreateTextureEX("絵背景200", 100, Center, -650, "cg/bg/bg0107400秋葉原_遠景_破壊.jpg");
	Fade("絵背景200", 0, 1000, null, true);


{	St("C",700, @0,@250,"buユージローa_通常_hard");
	FadeSt("C",0,true);}

	CreateSE("SE01","se擬音_ギャグ_ぴょこ");

	MusicStart("SE01",0,700,0,0,null,false);
	Move("@StNameC/C*", 350, @0, @-250, Dxl1, false);

	CreateSE("SEL01","se環境_風低音_l");
	MusicStart("SEL01",3000,700,0,300,null,true);

	FadeDelete("上背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zba22/500200010ujr">
「ヤバイ！　ヤバいぞ！」

{	St("C",700, @0,@0,"buユージローa_通常_pride");
	St("C",700, @0,@0,"buユージローa_通常_angry");
	FadeSt("C",200,false);
	FadeStPro("C", 200, 3200);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zba22/500200020ujr">
「みんなタヌキに夢中で、足元がお留守――！」

{	AgainSt("C",700, @0,@0,"buユージローa_通常_angry");
	St("C",700, @0,@0,"buユージローa_通常_ero");
	St("C",700, @0,@0,"buユージローa_通常_pride");
	CreateSE("SE01","se擬音_ギャグ_じゃじゃーん");
	Shake("@StNameC/C*", 300, 0, 8, 0, 0, 500, null, false);
	FadeSt("C",200,false);
	FadeStPro("C", 200, 3000);
	MusicStart("SE01",0,700,0,1000,null,false);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/zba22/500200030ujr">
「新大陸発見！
　ココをパンチランドと命名するッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	AgainSt("C",700, @0,@0,"buユージローa_通常_pride");
	Move("@StNameC/C*", 200, @0, @150, Dxl1, false);
	DeleteSt("C", 200,true);

	TextBoxDelete(150);



	EndScene();
}
