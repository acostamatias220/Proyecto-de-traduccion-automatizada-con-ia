
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2108ノーコ.nss_MAIN
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
	$GameName = "ab2110ノーコ.nss";
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）

}

scene ab2108ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="120">
////////////header////////////
//file name "ab2108ノーコ.nss"
//title "はじめてのアルバイト"
//previous "ab2107沙紅羅_似鳥_ノーコ_フウリ.nss"

////////////footer////////////
//next "ノーコ" "ab2110ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2108);}

	OnBG(10,"bg1201211ＵＰ＋_屋外セット_炎上");
	FadeBG(0,true);

	CreatePlainSP("絵板写", 1000);
	SetShade("絵板写", MEDIUM);

	CreateTextureSPover("絵演効果", 1010, Center, Middle, "cg/ef/efテレビ画面用効果フィルター.jpg");

	FadeDelete("上背景", 1000, null, true);

	WaitKey(1000);

//◆演出指示：スーパーノヴァにテレビ戻る
//◆場所：スーパーノヴァ_控え室
	PrintBG("上背景", 30000);
	OnBG(10,"bg0503100スーパーノヴァ_控え室_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, null, true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/m/bg0503100スーパーノヴァ_控え室_通常_m.jpg");
	SetShade("絵背景100", HEAVY);
	Request("絵背景100", Smoothing);

//※BGM24がab2100沙紅羅_似鳥_フウリ.nssから継続。
	SoundPlay("@xbgm24",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	DeleteSt("C", 200,true);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100010nko">
「にとり……かけない……」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100020nko">
「わたしのゆめをかなえるって、ちかったのに……」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100030nko">
「かけないんだ……」

{	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100040nko">
「だめなんだ……」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100050nko">
「わたしは、うんめいでも、なんでもなくて……」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100060nko">
「みんなのまえで、かくのがこわくて……」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100070nko">
「わたしは、むいみで……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2109);}

//	TextBoxDelete(150);

	St2("MR",19010, @-150,@0,"fuノーコa_通常_fear","cg2/",".png");

	DeleteAllSt(300,false);
	FadeSt("MR",300,false);
	Fade("絵背景100", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100080nko">
「あ……」

{	St2("MR",19010, @-150,@0,"fuノーコa_通常_cry","cg2/",".png");
	FadeSt("MR",1000,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100090nko">
「ああ……」


{	Shake("@StNameMR/MR*", 100, 5, 5, 0, 0, 500, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100100nko">
「ああああ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100110nko">
「……うん」




//◆ＳＥ：キリキリキリ
{	CreateTextureEX("絵背景200", 2000, 0, 0, "cg/img/imgカッター刃元a.jpg");
	CreateTextureEX("絵背景300", 2000, 0, 0, "cg/img/imgカッター刃元b.jpg");

	DeleteAllSt(200,false);
	Fade("絵背景200", 500, 1000, null, true);

	CreateSE("SE02","se戦闘_カッター_刃出す01普通b");
	MusicStart("SE02",0,1500,0,1000,null,false);

	Delete("絵背景100");
	DeleteAllSt(0,true);
	Fade("絵背景300", 2000, 1000, null, true);

	St("C",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("C",0,true);
	Fade("絵背景200", 0, 0, null, true);
	WaitKey(500);
	Fade("絵背景300", 500, 0, null, true);
	}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ab21/080100120nko">
「しのう」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);

	TextBoxDelete(150);

	DeleteAllSt(200,true);
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵背景300");

	EndScene();
}
