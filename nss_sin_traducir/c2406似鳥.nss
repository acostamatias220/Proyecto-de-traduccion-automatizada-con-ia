
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene c2406似鳥.nss_MAIN
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

	//★エンディング中（c）
	//★エンドロール
	PreSetRoll(0);
	TheEND(0);

	$GameName = "";
	$GameCircle=false;
	$GameClear=true;
}

scene c2406似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="70">
////////////header////////////
//file name "c2406似鳥.nss"
//title "厭覇薔薇"
//previous "c2405フウリ.nss"

////////////footer////////////
//flag "flc"
//next オシマイ

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);


//◆場所：半田明神_屋根_ペンキ
	OnBG(10,"bg0605200半田明神_屋根_ペンキ");
	FadeBG(0,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/l/bg0603911半田明神_境内_厭覇薔薇新年新カンダー_l.jpg");
	#bg0603900半田明神_境内_厭覇薔薇新年新カンダー = true;
	#imgソトカンダー真イラスト = true;
	#imgソトカンダー真イラスト_big = true;

//★inc櫻井　このファイルの時点で年はあけているので下記のSEを使用しています。
//※下倉注：エンディングＢＧＭのためコメントアウト

//	CreateSE("SE", "seガヤ_半田明神01_l");
//	MusicStart("SE", 1000, 700, 0, 1000, null,true);


	FadeDelete("上背景",1000,null,true);


//あきゅん「修正指示：なんかいまいちな見た目なので、似鳥はソトカンと併記しない」
//あきゅん「修正指示：と言うかソトカンの絵を出すなら背景の方で」
//★inc櫻井　修正　立ち絵のみに。
//嶋：背景にします

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c24/060100010nki">
「ノーコ、聞こえるか？」

{	Move("絵背景100", 1000, @0, @-50, Dxl1, false);
	Fade("絵背景100", 300, 1000, null, true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c24/060100020nki">
「コレ……おまえのおかげで、描けた絵だ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c24/060100030nki">
「やっと……やっと、自分の弱さに向き合えた」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c24/060100040nki">
「だからきっと、ひとりでも進んでいける」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆演出指示：カッターナイフを見つめるとか
	CreateTextureEX("絵カッター", 2000, -920, 0, "cg/img/l/imgカッター刃元a_l.jpg");
	Move("絵カッター", 2000, -1020, @0, null, false);
	Fade("絵カッター", 1000, 1000, null, true);

	DeleteSt("ML",0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c24/060100050nki">
「まだまだ先は、長いけど。
　でも絶対、プロになってやる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c24/060100060nki">
「だから……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/c24/060100070nki">
「見ててくれよ、ノーコ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*
	TextBoxDelete(150);
	CreateColorEX("絵色100", 2500, "BLACK");
	Fade("絵色100", 3000, 1000, null, true);
*/

	EndingReady();
	EndScene();
}
