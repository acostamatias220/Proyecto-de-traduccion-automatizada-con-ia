
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ab2110似鳥.nss_MAIN
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
	$GameName = "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss";
//	$GameCircle=false;

//※↑ab2051ノーコ.nssの飛び方を参考に設定（mngw 10/14）

}

scene ab2110似鳥.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="720">
////////////header////////////
//file name "ab2110似鳥.nss"
//title "似鳥戴斗の恐怖"
//previous "ab2108沙紅羅_似鳥_フウリ.nss"

////////////footer////////////
//next "似鳥" "2120沙紅羅_恵那_似鳥_ノーコ_フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2110);}

//◆場所：ＵＰ＋_屋外セット_炎上
	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	DrawDelete("上背景", 300, 1000, null, "blind_01_00_1", true);

	CreateAXLWindowEX("横割り", "Y",1500, 100,384, false);
	WindowAXLZoom("横割り", "Y",0, 0, null, true);
	CreateTextureSP("横割り/絵背景", 1400, 0, Middle, "cg/bg/bg1203100ＵＰ＋_セット裏_通常.jpg");
//	Rotate("横割り/絵背景", 0, @0, @0, -29, null, true);
	SetShade("横割り/絵背景", HEAVY);
	Zoom("横割り/絵背景", 0, 2000, 2000, null, true);

	CreateTexture("横割り/ミヅハ", 1410, 150, 0, "cg/bu/buミヅハ_通常_angry.png");
	Fade("横割り/ミヅハ", 0, 0, null, true);
	SetAlias("横割り/ミヅハ","横割り/ミヅハ");

	CreateTexture("横割り/ユージロー", 1420, 500, 192, "cg/bu/buユージローa_通常_ero.png");
	SetAlias("横割り/ユージロー","横割り/ユージロー");

	WindowAXLZoom("横割り", "Y",300, 1000, Dxl2, false);

	Move("横割り/ユージロー", 500, 250, 192, DxlAuto, true);



/*
{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buミヅハ_通常_angry");
	St("R",800, @0,@0,"buユージローa_通常_ero");
	Shake("@StNameR/R*", 500, 10, 5, 0, 0, 500, null, false);
	FadeSt("C",200,false);
	FadeSt("R",200,true);}
*/
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/100200010ujr">
「ハッハッハッハッ！」

{	Fade("横割り/ミヅハ", 200, 1000, null, false);
	Shake("横割り/ミヅハ", 200, 5, 5, 0, 0, 500, null, false);
	}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200020mzh">
「ばかー！　やめぬかー！　はなせー！」

{	Shake("横割り/ユージロー", 500, 10, 5, 0, 0, 500, null, false);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/100200030ujr">
「ハッハッハッハッ！」

{	Shake("横割り/ミヅハ", 200, 5, 5, 0, 0, 500, null, false);
	}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200040mzh">
「やめろー！　たすけてたもれー！」

{	Shake("横割り/ユージロー", 500, 10, 5, 0, 0, 500, null, false);
	}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/100200050ujr">
「ハッハッハッハッ！」


{	Shake("横割り/ミヅハ", 100, 5, 5, 0, 0, 500, null, false);
	}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200060mzh">
「っておい！　そこの者！
　わらわを早く助けんか！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	WindowAXLZoom("横割り", "Y",300, 0, Dxl2, false);
	Fade("横割り/ミヅハ", 300, 0, Dxl2, false);
	Fade("@横割り/ユージロー", 300, 0, Dxl2, true);

	SetVolumeEX("@xbgm*", 1500, 0, null);

	St("ML",700, @0,@0,"bu似鳥_通常_lost");
	FadeSt("ML",200,true);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);

	Delete("@横割り*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200070nki">
「ひぐっ、ん……んん……！！
　ん……ん……んんんん…………ッ！！」


{	DeleteAllSt(200,false);
	SoundPlay("@xbgm26",0,450,true);
	St("C",700, @-60,@0,"buミヅハ_通常_sigh");
	Move("@StNameC/C*", 500, @-60, @0, DxlAuto, false);
	FadeSt("C",500,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200080mzh">
「お、おい……」

{	St("R",800, @-60,@0,"buユージローa_通常_normal");
	Move("@StNameR/R*", 500, @-60, @0, DxlAuto, false);
	FadeSt("R",500,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/100200090ujr">
「わう？」

{	St("C",700, @-120,@0,"buミヅハ_通常_sad");
	FadeSt("C",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200100mzh">
「似鳥……大丈夫か？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2111);}


	PrintGO("上背景", 30000);

	DeleteAllSt(0,false);

	CreateTextureEX("絵背景100", 60, Center, Middle, "cg/bg/l/bg1203100ＵＰ＋_セット裏_通常_l.jpg");
	Move("絵背景100", 0, @500, @0, null, true);
	Fade("絵背景100", 0, 1000, null, false);

	CreateMask("絵マスク", 6000, 0, 0, "cg/data/slide_05_00_1.png", false);
	SetAlias("絵マスク","絵マスク");
	CreateColorEX("絵マスク/絵演色", 1510, "#000000");
	Fade("絵マスク/絵演色", 0, 1000, null, true);

	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	St("C",19010, @-50,@0,"fu似鳥_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("上背景", 1000, null, true);
	

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200110nki">
（描かなきゃ……オレ、描かなきゃ……！）


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200120nki">
（アザナエルがくれたチャンスなら！
　オレ、このチャンスを生かさなきゃ――）

{	St("C",19010, @-50,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200130nki">
（描かなきゃ……いけないのに……）

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200140nki">
（全然……手が……震えて……進まない……
　こんなこと、いままで一度もなかったのに……）



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200150nki">
（変だ……オレ、変になっちゃったのかな……？）



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200160nki">
（なんで……なんで、描けないんだ？）


{	DeleteAllSt(200,false);
	Fade("絵背景100", 200, 0, null, false);
	Fade("絵マスク/絵演色", 200, 0, null, false);
	Fade("絵マスク", 200, 0, null, true);
//	Shake("@OnBG*", 100, 5, 5, 0, 0, 500, null, false);
	BGPlainShake(50, 100, 5, 8, 0, 0, 1000, Dxl1, false);
}

//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200170mzh">
「とりゃあああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2112);}

	TextBoxDelete(0);

	SetVolumeEX("@xbgm*", 1500, 0, null);

	CreateColorSP("絵色白", 710, "#FFFFFF");
	DeleteAllSt(200,true);

	CreateSE("SE00","se環境_水に落ちる");
	MusicStart("SE00",0,700,0,1000,null,false);
//	Shake("@OnBG*", 700, 5, 5, 0, 0, 500, null, false);
	BGPlainShake(50, 700, 10, 10, 0, 0, 1000, Dxl1, false);
	FadeDelete("絵色白", 500, null, true);
	SetVolumeEX("SE00", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	St("ML",700, @0,@0,"bu似鳥_通常_pain");
	Shake("@StNameML/ML*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200180nki">
「うおっ！ なんだッ！？　み――水！？
　って、どっからそんな――」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 100, 0, 10, 0, 0, 500, null, false);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200190mzh">
「ようやく気付いたか、この馬鹿者めが！」

{	St("ML",700, @0,@0,"bu似鳥_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200200nki">
「なんだよ急に！」

{	St("MR",700, @0,@0,"buミヅハ_手構え_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200210mzh">
「それはこっちのセリフじゃ！
　おぬしがわらわを助けに来ぬから――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	SoundPlay("@xbgm13",0,450,true);

	DeleteAllSt(200,true);

	St("C",690, @0,@0,"buユージローa_通常_hard");
	FadeSt("C",200,true);

	St("R",700, @60,@0,"st沙悟浄_通常_normal");
	Move("@StNameR/R*", 200, @-60, @0, DxlAuto, false);
	FadeSt("R",200,true);


	St("L",700, @-60,@0,"st九千坊_通常_normal");
	Move("@StNameL/L*", 200, @60, @0, DxlAuto, false);
	FadeSt("L",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]


{	Move("@StNameR/R*", 100, @0, @-60, Dxl1, true);
	Move("@StNameR/R*", 200, @0, @60, Axl1, true);
	Wait(30);
	Move("@StNameR/R*", 100, @0, @-60, Dxl1, true);
	Move("@StNameR/R*", 200, @0, @60, Axl1, false);
	}
//【沙悟浄】
<voice name="沙悟浄" class="その他男声" src="voice/ab21/100200220e01">
「ヒョーヒョー！」


{	Move("@StNameL/L*", 100, @0, @-60, Dxl1, true);
	Move("@StNameL/L*", 200, @0, @60, Axl1, true);
	Wait(30);
	Move("@StNameL/L*", 100, @0, @-60, Dxl1, true);
	Move("@StNameL/L*", 200, @0, @60, Axl1, false);
	}
//【九千坊】
<voice name="九千坊" class="その他男声" src="voice/ab21/100200230e02">
「ガワッガワッ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2113);}


//	TextBoxDelete(150);


//沙悟浄攻撃
	
	CreateSE("SE04","se戦闘_打撃音01");
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 10, 10, 0, 0, 1000, Dxl1, false);
	MusicStart("SE04",0,700,0,1000,null,false);
	
	Move("@StNameR/R*", 100, @-150, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	Move("@StNameR/R*", 300, @150, @0, DxlAuto, true);
	WaitKey(50);

	CreateSE("SE05","se戦闘_打撃音01");
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 10, 10, 0, 0, 1000, Dxl1, false);
	MusicStart("SE05",0,700,0,1000,null,false);

	Move("@StNameR/R*", 100, @-150, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	Move("@StNameR/R*", 200, @150, @0, DxlAuto, true);
	
//九千坊攻撃
	
	CreateSE("SE06","se戦闘_打撃音01");
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 10, 10, 0, 0, 1000, Dxl1, false);
	MusicStart("SE06",0,700,0,1000,null,false);
	
	Move("@StNameL/L*", 100, @200, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	Move("@StNameL/L*", 300, @-200, @0, DxlAuto, true);
	WaitKey(50);

	CreateSE("SE07","se戦闘_打撃音01");
//	Shake("@OnBG*", 300, 10, 10, 0, 0, 500, null, false);
	BGPlainShake(50, 300, 10, 10, 0, 0, 1000, Dxl1, false);
	MusicStart("SE07",0,700,0,1000,null,false);

	Move("@StNameL/L*", 100, @200, @0, Axl1, true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	Move("@StNameL/L*", 200, @-200, @0, DxlAuto, true);
	

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]

{	St("C",690, @0,@0,"buユージローa_通常_sad");
	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);
	FadeSt("C",200,true);}
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/ab21/100200240ujr">
「キャゥンッ！　キャゥキャゥンッ！」


{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200250mzh">
「ユージローが犠牲になってしもうた……」

{	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200260nki">
「え……？　その生物……何？」


{	St("MR",700, @0,@0,"buミヅハ_手構え_pride");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200270mzh">
「沙悟浄と九千坊じゃ！」

{	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200280nki">
「ええと……河童、だよな……
　ってことはおまえ、ホントに神様？」

{	St("MR",700, @0,@0,"buミヅハ_通常_angry");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200290mzh">
「そうだと言っておろう！」

{	SetVolumeEX("@xbgm*", 4000, 0, null);
	St("ML",700, @0,@0,"bu似鳥_通常_shout");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200300nki">
「神様！　お願いだ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200310nki">
「オレがノーコの絵、描けるようにしてください！」


{	St("MR",700, @0,@0,"buミヅハ_通常_sigh");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200320mzh">
「い、いきなり現金な奴じゃな……」


//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200330mzh">
「しかし、なぜ自分の力ではできんのじゃ？
　これまでたくさん、描いてきたのじゃろう？」



//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200340mzh">
「それなのに、なぜ急に描けなくなったのじゃ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2114);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200350nki">
「そ……それは……」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200360mzh">
「皆の前で絵を描くのが怖いのか？」

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200370nki">
「怖くなんてない。
　ただオレは、武者震いで――」

{	St("MR",700, @0,@0,"buミヅハ_通常_think");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200380mzh">
「そうか？
　わらわには、何か怯えているように見えたぞ」

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200390nki">
「怯えて……？　そ、そんなわけ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


	DeleteAllSt(200,true);

//◆ＳＥ：メール着信
	CreateSE("SE01","seメカ_携帯_メール着信_似鳥_l");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(3000);

	SetVolumeEX("SE*", 300, 0, null);

{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200400nki">
「あ、メール……」

{	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200410nki">
「なんだ？　今頃大刀刃那から――」

{	St("ML",700, @0,@0,"bu似鳥_眼鏡上げ_angry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200420nki">
「コミマ来ないでおいて、今さら謝罪のメールとか――
　ん？　なんだこのＵＲＬ」

{	DeleteAllSt(200,true);

	SetVolumeEX("SE01", 0, 0, null);

//◆ＳＥ：ぴっ、とボタンを押す
	CreateSE("SE02","seメカ_携帯_電子音01");
	MusicStart("SE02",0,700,0,1000,null,false);
	WaitKey(500);
}

{	St("ML",700, @0,@0,"bu似鳥_通常_pain");
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200430nki">
「ひっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2115);}

//	TextBoxDelete(150);

//◆ＳＥ：携帯落ちる
	CreateSE("SE01","se銃_落とす01");
	MusicStart("SE01",0,700,0,1200,null,false);

//※該当するＳＥなし（mngw）


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200440mzh">
「なんじゃ？」

{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200450mzh">
「ええと……テレビ中継板……？
　『【混乱】全国ゆるキャラバン☆９【錯綜】』」

{	St("ML",700, @0,@0,"bu似鳥_通常_rage");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200460nki">
「読むな！　返せ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
{	St("MR",700, @0,@0,"buミヅハ_フラット_shock");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200470mzh">
「『ノーコさんって、きもちわるくね？』
　『こんな下手くそな絵でデザイナーとか――』」

{	St("ML",700, @0,@0,"bu似鳥_通常_rage");
	DeleteAllSt(200,false);
	Shake("@StNameML/ML*", 100, 5, 5, 0, 0, 500, null, false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200480nki">
「読むなって！！」

{
	SoundPlay("@xbgm12",0,450,true);
	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200490mzh">
「おぬしの絵……中傷されていたようじゃの」

{	St("ML",700, @0,@0,"bu似鳥_ラッパー_rage");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200500nki">
「そんなことない！
　オレが……オレが、中傷されるわけ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2116);}

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130a]



{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200510nki">
「ノーコの絵が……認められないなんて、そんな……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：コミマ会場で閑古鳥イメージ絵再使用
//あきゅん「β演出：ゆる絵」


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130b]
{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200520nki">
「そんなわけ……ないのに……」



{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200530mzh">
「やはり、おぬしは怖いのじゃな」


{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200540nki">
「オレが……怖がってる……のか……？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2117);}

//	TextBoxDelete(150);

	DeleteAllSt(200,true);

	PrintGO("上背景", 30000);

	CreateTextureEX("絵背景blur", 100, Center, Middle, "cg/bg/m/bg1203100ＵＰ＋_セット裏_通常_m.jpg");
	SetShade("絵背景blur", HEAVY);
	Move("絵背景blur", 0, @200, @100, null, true);
	Request("絵背景blur", Smoothing);

	Fade("絵背景blur", 0, 1000, null, true);

	St("C",19010, @-110,@0,"fu似鳥_通常_hard");
	FadeSt("C",0,true);

	FadeDelete("上背景", 500, null, false);
	Move("@StNameC/C*", 1000, @60, @0, DxlAuto, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200550nki">
「もしノーコをマスコットキャラにして、失敗したら？」

{	St("C",19010, @-50,@0,"fu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200560nki">
「オレの、心の支えのノーコが……
　誰にも代えられないノーコが……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200570nki">
「いきなりの全国放送で、もし笑いものになったら？」

{	St("C",19010, @-50,@0,"fu似鳥_通常_worry");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200580nki">
「オレは……オレはいったい、どうすれば……！？」



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200590nki">
「何を……頼りに、生きていけるんだ？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

	OnBG(10,"bg1203100ＵＰ＋_セット裏_通常");
	FadeBG(0,true);

	DeleteSt("C", 500,false);
	Fade("絵背景blur", 500, 0, null, true);

	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	FadeSt("MR",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]


//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200600mzh">
「おぬしにとって……
　ノーコはそこまで大切な存在なのじゃな……？」


{	St("ML",700, @0,@0,"bu似鳥_通常_sad");
	DeleteAllSt(200,false);
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200610nki">
「……オレ、ずっと、ノーコの存在から目を逸らしてきた」



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200620nki">
「単なる脳内彼女だって。
　自分は恥ずかしいことをしてるって」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2118);}

//	TextBoxDelete(150);
	Delete("絵背景blur");
	Delete("絵背景black");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200630nki">
「いつかは、絶対、別れなきゃならないって」


{	St("ML",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200640nki">
「でも、今日、やっとわかったんだ」



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200650nki">
「オレが最後に、頼みにするのは、ノーコだって」



//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200660nki">
「アイツが、最後の最後の頼りなんだって」

{	St("ML",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200670nki">
「だから……オレ……
　アイツの絵を、描いてやりたくて……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200680nki">
「それがきっと、オレの本当の望みだって……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 4000, 0, null);

	DeleteAllSt(200,false);
	TextBoxDelete(150);



//◆演出指定：フォン、マイクがハウり、辺りが暗闇に音いる
//おがみ：ＳＥマイクハウリング
	CreateSE("SE00","se環境_ハウリング");
	MusicStart("SE00",0,700,0,1000,null,false);

	OnBG(10,"bg1203200ＵＰ＋_セット裏_暗闇");
	FadeBG(3000,false);
	WaitKey(3000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]

{	St("ML",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("ML",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/ab21/100200690nki">
「ん……なんだ？」

{	St("MR",700, @0,@0,"buミヅハ_通常_hard");
	DeleteAllSt(200,false);
	FadeSt("MR",200,true);}
//【ミヅハ】
<voice name="ミヅハ" class="ミヅハ" src="voice/ab21/100200700mzh">
「この気配は……もしや！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(2119);}

	DeleteAllSt(200,true);
	TextBoxDelete(150);

//◆演出指定：暗闇から浮き出るように


//			SceneOut(5000, 2000, "effect_01_00_0");
//
//			Delete("@OnBG*");
//
//			Wait(500);
//
//			St("C",700, @0,@60,"buノーコa_通常_sad");
//			SceneIn(0, "effect_01_00_0");
//			Move("@StNameC/C*", 2000, @0, @-60, DxlAuto, false);
//			FadeSt("C",2000,true);
//
//			OnBG(10,"bg1201311ＵＰ＋_屋外セット_暗闇");
//			FadeBG(4000,true);


	CreateSE("SE01","se戦闘_カッター_刃出す01普通a");
	CreateSE("SE02","se擬音_光迸る");
	MusicStart("SE01",0,1500,0,250,null,false);
	MusicStart("SE02",0,700,0,900,null,false);


//◆演出指定：暗闇から浮き出るように
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	CreateColorSP("絵色100", 500, "BLACK");

	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	FadeSt("C",0,true);

	CreatePlainSP("浮出用", 1500);
	Request("浮出用", AddRender);
	Delete("絵色100");
	CreateTextureSP("絵背景200", 800, Center, Middle, "cg/bg/bg1203200ＵＰ＋_セット裏_暗闇.jpg");
	DrawTransition("絵背景100", 1500, 1000, 0, 100, null, "cg/data/random_01_00_0.png", false);
	Fade("絵背景100", 1500, 0, null, true);
	Fade("絵背景200", 500, 0, null, false);

	SetVolumeEX("SE*", 2000, 0, null);

	Fade("浮出用", 500, 0, null, true);
	Delete("浮出用");
	Delete("絵背景*");

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100810nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/21/100100820nko">
「にとりは、どこ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	Delete("浮出用");
	Delete("絵背景*");

//	TextBoxDelete(150);



	EndScene();
}
