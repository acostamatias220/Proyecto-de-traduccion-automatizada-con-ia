
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1920似鳥_ノーコ_フウリ.nss_MAIN
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
	if($CharaName=="フウリ"){
		$GameName = "1930フウリ.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "1930ノーコ.nss";
	}else{
		$GameName = "1930似鳥.nss";
	}
//	$GameCircle=false;

}

scene 1920似鳥_ノーコ_フウリ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1090">
////////////header////////////
//file name "1920似鳥_ノーコ_フウリ.nss"
//title "幻"
//previous "1900似鳥.nss"
//previous "1910ノーコ_フウリ.nss"

////////////footer////////////
//next "似鳥" "1930似鳥.nss"
//next "ノーコ" "1930ノーコ.nss"
//next "フウリ" "1930フウリ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

	if($PreGameName=="1900似鳥.nss"){
{	ClockPass(1920);}
	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);
	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",0,true);
	FadeDelete("上背景", 300, null, true);
	}else{
	OnBG(10,"bg1304200似鳥マンション_リビング_同人誌散乱");
	FadeBG(0,true);
	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",0,true);
	FadeDelete("上背景", 0, null, true);
{	ClockPass(1920);}
	}




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600010wfu">
「似鳥さん！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600020nko">
「きかれた……？」

{	DeleteAllSt(200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600030nki">
「ん……んん……」

{	St("ML",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600040wfu">
「たぶん譫言なんで、大丈夫だと思います」

{	St("ML",700, @0,@0,"buフウリ_前のめり_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600050wfu">
「似鳥さん！　似鳥さん！
　聞こえますか！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600060nki">
「ぁ……ぁぁ、ん……」

{	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600070nko">
「にとり、おきて」

{	SoundPlay("@xbgm24",0,450,true);

	DeleteAllSt(200,false);
	St("C",700, @0,@100,"bu似鳥_眼鏡上げ_shock");
	Move("@StNameC/C*", 400, @0, @-100, Dxl1, false);
	FadeSt("C",400,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600080nki">
「あ……ノーコ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600090nki">
「それに……あなたは……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600100wfu">
「フウリと言います」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600110nki">
「なんで……なに？　なんでうちに……？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600120nko">
「わたしがよんだ」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600130nki">
「は？　ノーコが呼んだ！？　どうして――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600140wfu">
「似鳥さんは、地震で本棚の下敷きでした。
　ノーコちゃんが、私に救助を求めたのです」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1921);}

	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600150nki">
「オレ以外に……助けを？」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600160nki">
「ノーコ、何があった？　今日はおかしいぞ」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_幽霊_sad");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600170nko">
「…………」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600180wfu">
「おかしくなんてありません！」

{	St("ML",700, @0,@0,"buフウリ_通常_angry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600190wfu">
「むしろ、こっちの方が本当のノーコちゃんです！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600200nki">
「え……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600210wfu">
「さあ、ノーコちゃん！
　あなたの気持ちを、似鳥さんに！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600220nko">
「やめて」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600230wfu">
「でも、ここで言わないと――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600240nko">
「いいの」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600250wfu">
「よくありません！
　だって、ノーコちゃんは――」

//◆ＳＥ：チャキーン！　カッターナイフを構える
{	DeleteAllSt(200,false);
	CreateSE("SE01","se戦闘_カッター_刃出す02早いa");
	St("MR",700, @0,@50,"buノーコa_カッター_pinch");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StNameMR/MR*", 300, @0, @-50, Dxl1, false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600260nko">
「だまれ」

//◆音声指示：びっくりして
{	DeleteAllSt(200,false);
	St("ML",700, @50,@0,"buフウリ_通常_fear");
	Move("@StNameML/ML*", 300, @-50, @0, Dxl1, false);
	Shake("@StNameML/ML*", 300, 5, 0, 0, 0, 1000, Dxl1, false);
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600270wfu">
「きゅ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1922);}


	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600280nko">
「フウリには、かんしゃしてる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600290nko">
「でも、ここからさきはわたしのもんだい」

{	St("C",700, @0,@0,"buノーコa_カッター_pinch");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600300nko">
「かえって」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600310wfu">
「…………」

{	Move("@StNameML/ML*", 300, @0, @50, Axl1, false);
	DeleteAllSt(200,true);}
　カッターナイフを掲げたまま、静かに言い放つノーコ。

　フウリはジッと頭を垂れたまま――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 200, 0, null);

	Wait(300);

{	St("ML",700, @0,@50,"buフウリ_胸手_worry");
	Move("@StNameML/ML*", 300, @0, @-50, Dxl1, false);
	FadeSt("ML",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600320wfu">
「あれ？」

{	St("ML",700, @0,@0,"buフウリ_胸手_hard");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600330wfu">
「この本……ノーコちゃん？」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコa_通常_rage");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600340nko">
「だめっっ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600350nko">
「みないで！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/img/imgノーコントロール11.jpg");
	Fade("絵背景100", 500, 1000, null, true);


	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　地震で倒れた同人誌の山に、一冊の本があった。

　古び、折れ曲がったコピー本。

{
//	St("MR",700, @0,@0,"buノーコa_通常_fear");
//	FadeSt("MR",200,true);
}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600360nko">
「それは、わたしのたいせつな――」

{
//	DeleteAllSt(200,true);
//	St("ML",700, @0,@0,"buフウリ_通常_hard");
//	FadeSt("ML",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600370wfu">
「あ……」

{
//	St("ML",700, @0,@0,"buフウリ_通常_shock");
//	FadeSt("ML",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600380wfu">
「あれ？」

{
//	St("ML",700, @0,@0,"buフウリ_通常_normal");
//	FadeSt("ML",200,true);
}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600390wfu">
「ノーコちゃんの、絵……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1923);}


	TextBoxDelete(150);
	Fade("絵背景100", 500, 0, null, true);
	Delete("絵背景100");

	St("ML",700, @20,@50,"buフウリ_頬手_shock");
	Move("@StNameML/ML*", 300, @-20, @-50, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600400wfu">
「マンガにしてもらってるなんて、すごい！」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコa_通常_rage");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600410nko">
「かえして！！」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_通常_fear");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600420wfu">
「わ、わかりましたよ、もう……
　そんなに恥ずかしがらなくてもいいのです」

{	St("ML",700, @0,@0,"buフウリ_通常_normal");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600430wfu">
「はい、どうぞ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);
	DeleteAllSt(200,true);

	Wait(300);

	CreateTextureEX("絵背景100", 800, Center, Middle, "cg/bg/bg1304200似鳥マンション_リビング_同人誌散乱.jpg");
	CreateSE("SE01","se擬音_ノイズ_l");


	St("MR",700, @0,@0,"buノーコa_通常_fear");
	Move("@StNameMR/MR*", 200, @0, @0, Dxl1, false);
	FadeSt("MR",200,true);

	MusicStart("SE01",800,1500,0,1000,null,false);
	Fade("絵背景100", 800, 500, Axl2, true);

	Wait(1000);

	SetVolumeEX("SE*", 800, 0, null);
	Fade("絵背景100", 500, 0, Axl2, true);
	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600440nko">
「あ……」

{	DeleteAllSt(200,true);}
　フウリがノーコに手渡そうとした同人誌が、そのまま、ノーコの指をすり抜けた。

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600450wfu">
「…………はれ？」

//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600460wfu">
「今……すり抜けた？」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600470nko">
「あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	SoundPlay("@xbgm09",0,450,true);

	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600480wfu">
「もしかして……
　わざわざ私を呼びに来たのも、そういう理由？」

//	St("ML",700, @0,@0,"buフウリ_通常_hard");
//	FadeSt("ML",200,true);
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600490wfu">
「自分が物には触れないから――？」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600500nko">
「そんなこと――」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600510wfu">
「ということは、もしかして……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1924);}


//	St("ML",700, @0,@0,"buフウリ_胸手_worry");
//	FadeSt("ML",200,true);

	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600520wfu">
「ノーコちゃん、人では、ない？」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコa_通常_rage");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600530nko">
「ちがう！」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600540wfu">
「なら、どうして私との会話に戸惑っていたんですか？」

{	St("ML",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600550wfu">
「他の人と、話せないからではないですか？」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600560nko">
「ちがう」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600570wfu">
「どうしてカッターで刺されても、私は傷つかなかったんですか？」

{	St("ML",700, @0,@0,"buフウリ_胸手_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600580wfu">
「どうして屋上から飛び降りても、ノーコちゃんは無事着地できたんですか？」

{	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600590wfu">
「どうして周りの人は、全然、ノーコちゃんに興味を示そうともしなかったんですか？」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコa_発狂_normal");
	Move("@StNameMR/MR*", 200, @0, @30, Dxl1, false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600600nko">
「ちが……う……」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600610wfu">
「もしかして……ノーコちゃんをモデルに……
　この本を書いたのではなく、逆に――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1925);}


	DeleteAllSt(200,true);
	St("MR",700, @0,@30,"buノーコa_発狂_normal");
	Shake("@StNameMR/MR*", 200, 0, 4, 0, 0, 600, null, false);
	FadeSt("MR",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600620nko">
「だめ……」

{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_胸手_think");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600630wfu">
「本当の気持ちを伝えたいなら、隠し事は駄目です」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコa_発狂_normal");
	Shake("@StNameMR/MR*", 200, 0, 8, 0, 0, 600, null, false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600640nko">
「やめて」


{	DeleteAllSt(200,true);
	St("ML",700, @0,@0,"buフウリ_通常_sad");
	FadeSt("ML",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200600670wfu">
「ノーコちゃんの、正体は――」

{	DeleteAllSt(200,true);
	St("MR",700, @0,@0,"buノーコa_発狂_normal");
	Shake("@StNameMR/MR*", 200, 0, 16, 0, 0, 600, null, false);
	FadeSt("MR",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600660nko">
「やめて、やめて――やめないと――」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@xbgm*", 200, 0, null);

//◆演出指示：ナイフ振り下ろす
	CreateSE("SE01","se戦闘_風切り音09");
	CreateSE("SE02","se戦闘_刃物01");


	TextBoxDelete(100);
	DeleteAllSt(100,true);


//窓準備
	CreateWindow("絵窓", 1500, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#CC3322");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

//キャラ準備
	CreateTextureEX("絵窓/絵演立絵", 1910, center, middle, "cg/bu/l/buノーコa_カッター_smile_x01.png");
	Zoom("絵窓/絵演立絵", 0, 500, 500, null, true);
	Move("絵窓/絵演立絵",0, @500, @150, null, true);
	SetBlur("絵窓/絵演立絵", true, 2, 500, 50, false);

	CreateTextureEX("絵背景枠01", 2000, Center, Middle, "cg/mask/ciライン_00_00z_ogm.png");
	CreateTextureEX("絵背景枠02", 2000, Center, Middle, "cg/mask/ciライン_00_01z_ogm.png");

//動作
	Fade("絵背景枠01", 100, 1000, null, false);
	Fade("絵背景枠02", 100, 1000, null, false);
	Move("絵背景枠01", 200, @0, 80, Dxl2, false);
	Move("絵背景枠02", 200, @0, 464, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);
	Move("絵窓/絵演立絵", 500, @-500, @0, Dxl2, false);
	Fade("絵窓/絵演立絵", 200, 1000, null, true);

	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(100);
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵窓/絵演立絵", 150, @0, @150, Dxl1, false);
	Zoom("絵窓/絵演立絵", 150, 1000, 1000, Dxl1, true);

	CreateEffect("ネガポジ", 2500, 0, 0, 1024, 576, "NegaPosi");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600680nko">
「ともだちでも、ころす――！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateColorEXadd("絵色100", 5500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);


	CreateSE("SE01","se戦闘_風切り音10");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Zoom("絵窓", 200, 1000, 0, null, true);
	Delete("絵窓*");
	Delete("ネガポジ");
	Delete("絵背景枠*");
	FadeDelete("絵色100", 200, null, true);


	Wait(100);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600690nki">
「知ってる」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600700nko">
「ぇ――――！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1926);}


	DeleteAllSt(200,true);

	SoundPlay("@xbgm12",0,450,true);

	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600710nki">
「おまえ、オレが創った幻なんだろ？」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600720nko">
「あ……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600730nki">
「限界だ。もうたくさんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600740nki">
「おまえの言い訳も、自分への言い訳も、もう要らない」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600750nki">
「最初から、上手くいくはずなんてなかったんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600760nko">
「う……うそ」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600770nki">
「オレは、最初から、知ってた」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600780nki">
「オレを好きになってくれる人間なんていない」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600790nki">
「ゴスロリメンヘル女との同棲なんてあり得ない」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600800nki">
「偽物だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"bu似鳥_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600810nki">
「おまえは偽物だ」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600820nki">
「オレの妄想の産物だ」

{	St("C",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600830nki">
「そんなこと、知ってたんだ！」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600840nko">
「どうして……？」

{	St("C",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600850nko">
「どうして、しっていたのに、そばに？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1927);}


	TextBoxDelete(150);

	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600860nki">
「……離れられなかった」

{	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600870nki">
「こんなことは間違ってるって知ってるのに」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600880nki">
「離れられなかった！　離れたくなかった！」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600890nki">
「みんな、オレが悪いんだ。オレがクソなんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600900nki">
「そんなのは知ってるんだ。おかしいってわかるんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600910nki">
「それでも……それでも！」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600920nki">
「離れられなかった」

{	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600930nki">
「偽物でも……ずっと……側にいて欲しかったんだ……」

{	St("C",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600940nki">
「それが嬉しくて……」

{	St("C",700, @0,@0,"bu似鳥_通常_happy");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600950nki">
「心が落ち着いて……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1928);}


	St("C",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600960nki">
「気持ちよくて……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200600970nko">
「に……にとり……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600980nki">
「裏切ったのは、騙してたのは、おまえじゃない」

{	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200600990nki">
「オレが、自分を裏切って」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200601000nki">
「オレが、自分を騙したんだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200601010nki">
「でも、もう終わりだ」

{	St("C",700, @0,@0,"bu似鳥_通常_pinch");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200601020nki">
「変わらなきゃならないんだ」

{	St("C",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200601030nki">
「だから、オレは、認める」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200601040nko">
「あ……うそ……いや……」

{	DeleteAllSt(200,true);
	St("C",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("C",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/19/200601050nki">
「おまえは、オレの創った幻だ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	ClockPass(1929);}


	DeleteAllSt(200,true);
	St("C",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200601060nko">
「――、――っ、――ぅっ」

//◆音声指示：泣きながら
{	St("C",700, @0,@0,"buノーコa_通常_cry");
	FadeSt("C",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/19/200601070nko">
「――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("@StNameC/C*", 200, @-200, @0, Axl1, false);
	DeleteAllSt(200,true);
	Wait(800);

	St("C",700, @0,@0,"buフウリ_胸手_worry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200601080wfu">
「ノーコちゃん！」

{	St("C",700, @0,@0,"buフウリ_胸手_shout");
	FadeSt("C",200,true);}
//【綿抜フウリ】
<voice name="綿抜フウリ" class="綿抜フウリ" src="voice/19/200601090wfu">
「ま――待ってください！　ノーコちゃあん！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//おがみ：ＳＥ走り去る
	CreateSE("SE00","se動作_走る02_l");
	MusicStart("SE00",0,700,0,1000,null,false);


	TextBoxDelete(150);
	DeleteAllSt(200,true);


//◆ＳＥ：フウリの駆け足とドア開く音

//◆演出指定：ノーコの足音は流さない。ドアもすり抜けるため無音

	Wait(500);
	SetVolumeEX("SE*", 1000, 0, null);

//おがみ：キャラによって移動演出変更
	if($CharaName=="フウリ"){

	SetVolume("@xbgm*", 1000, 0, null);


	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	}else if($CharaName=="ノーコ"){

	SetVolume("@xbgm*", 1000, 0, null);

	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 500, 1000, null, true);

	}else{

	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 1000, 1000, null, true);
	Wait(500);

	}

	Wait(500);


	EndScene();
}
