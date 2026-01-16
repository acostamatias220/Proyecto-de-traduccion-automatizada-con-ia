
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2248沙紅羅_似鳥_ノーコ.nss_MAIN
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

	if($CharaName=="沙紅羅"){
		$GameName = "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss";
	}else if($CharaName=="似鳥"){
		$GameName = "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss";
	}else{
		$GameName = "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss";
	}


}

scene ba2248沙紅羅_似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="150">
////////////header////////////
//file name "ba2248沙紅羅_似鳥_ノーコ.nss"
//title "使命"
//previous "ba2240沙紅羅.nss"
//previous "ba2240似鳥_ノーコ.nss"

////////////footer////////////
//next "沙紅羅" "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss"
//next "似鳥" "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss"
//next "ノーコ" "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2248);}


	Request("@SE01", UnLock);

	OnBG(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

	SoundPlay("@xbgm22_onint",0,450,true);

	FadeDelete("上背景", 0, null, true);

	St("R",700, @-50,@-50,"bu似鳥堕皇_通常_hard");
	St("L",710, @50,@-50,"buノーコa_通常_normal");

	Move("@StNameL/L*", 800, @0, @50, Dxl2, false);
	Move("@StNameR/R*", 800, @0, @50, Dxl2, false);

	FadeSt("L",200,false);
	FadeSt("R",200,true);

	CreateSE("SE01","se動作_着地");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　似鳥とノーコが、ゆっくりと高度を下げあにのあなの屋上に降りた。


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/480100010skr">
「さっき、なにも侵せねぇとか言ってたよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：アザナエルを構えて

//	TextBoxDelete(150);
	DeleteAllSt(200,true);
	CreateSE("SE02","se銃_構える");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("絵背景キャラ", 700, Center, Middle, "cg/bu/l/bu沙紅羅_銃構え_x01_ogm.png");


	Move("絵背景キャラ", 300, @-50, @0, Dxl2, false);
	Fade("絵背景キャラ", 200, 1000, null, true);

//	St("C",19010, @50,@0,"fu沙紅羅_銃構え");
//	Move("@StNameC/C*", 500, @-50, @0, Dxl2, false);
//	FadeSt("C",200,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/480100020skr">
「――これでもだめか？」

{	FadeDelete("絵背景キャラ", 200, null, true);
	St("C",19010, @0,@0,"fu似鳥堕皇_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/480100030nki">
「アザナエルッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/480100040nki">
「そうか、アザナエルを使ってアイツを退治すれば――」


{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_通常_hard");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/480100050skr">
「違う」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/480100060nko">
「タヌキのねがいを、かなえるき？」


{	DeleteAllSt(200,false);
	St("C",19010, @0,@0,"fu沙紅羅_通常_smile");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/480100070skr">
「わかってるじゃねぇか」

{	St("C",19010, @0,@0,"fu沙紅羅_通常_normal");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/480100080skr">
「どうだ？　行けるか？」

{	ClockPass(2249);}

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/ba22/480100090nko">
「あのかわをはがないと、たぶんむり」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/480100100skr">
「そうか……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥堕皇_通常_pinch");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ba22/480100110nki">
「でもそれじゃ……どうすれば……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]

{	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu双六a_通常_pinch");
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/480100120ksr">
「……背に腹は代えられねぇな」

{	St("L",700, @0,@0,"bu双六a_通常_normal");
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/480100130ksr">
「平次のとっつぁんに、電話してみる」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu沙紅羅_頭かき_sigh");
	FadeSt("C",200,true);}
//【沙紅羅】
<voice name="沙紅羅" class="沙紅羅" src="voice/ba22/480100140skr">
「あのモジャモジャに……？」

{
	DeleteAllSt(200,false);
	St("L",700, @0,@0,"bu双六a_通常_pride");
	FadeSt("L",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/ba22/480100150ksr">
「こういう時、一番頼りになるのがあいつなんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	DeleteAllSt(200,false);

	SetVolumeEX("@x*", 2000, 0, NULL);

	CreateSE("SE01","seメカ_携帯_電子音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(3000);



	EndScene();
}
//next "沙紅羅" "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss"
//next "似鳥" "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss"
//next "ノーコ" "ba2250沙紅羅_千秋_恵那_似鳥_ノーコ.nss"
