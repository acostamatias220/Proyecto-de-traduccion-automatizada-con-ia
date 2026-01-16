
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene a2020似鳥_ノーコ.nss_MAIN
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
	$GameName = "a2030似鳥_ノーコ.nss";
//	$GameCircle=false;

}

scene a2020似鳥_ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="710">
////////////header////////////
//file name "a2020似鳥_ノーコ.nss"
//title "ふりだしにもどる"
//previous "2020カゴメ1.nss"

////////////footer////////////
//next "似鳥" "a2030似鳥_ノーコ.nss"
//next "ノーコ" "a2030似鳥_ノーコ.nss"

////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2020);}


//◆場所：バックギャモン_店内
	OnBG(10,"bg1002100バックギャモン_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);


	SoundPlay("@xbgm06",0,450,true);


{	St("C",700, @0,@0,"buノーコa_通常_rage");
	FadeSt("C",200,true);
		}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　弾丸は、前を塞いだノーコに当たり――

{
	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);
}

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100010nko">
「だめえええええっ！！」

{
//あきゅん「修正指示：弾丸視点な感じでノーコを抜けて双六に命中す、のような感じにお願いします」

	CreateTextureEX("絵背景11", 11, Center, Middle, "cg/bg/m/bg1002100バックギャモン_店内_通常_m.jpg");
	Zoom("絵背景11", 0, 700, 700, null, true);
	Zoom("@StNameC/C*", 500, 2000, 2000, null, false);
	DeleteSt("C",500,false);

	CreateTextureEX("絵背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景", 100, 700, null, false);

	Zoom("絵背景11", 500, 800, 800, null, false);
	Fade("絵背景11", 500, 1000, null, true);


}
　すり抜け――

{
	St("C",700, @0,@0,"bu双六a_通常_shock");
	FadeSt("C",200,true);}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/200100020ksr">
「ぁ…………」

//◆ＳＥ：ぽとっ！　弾丸が落ちる

{
	Fade("絵背景", 500, 0, null, true);
//	St("C",700, @0,@0,"bu双六a_通常_shock");
//	FadeSt("C",200,true);
	Shake("@StNameC/C*", 100, 5, 5, 0, 0, 500, null, false);
	CreateSE("SE01","se銃_空薬莢落とす");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@xbgm*", 1500, 0, null);
	}
//【河原屋双六】
<voice name="河原屋双六" class="河原屋双六" src="voice/a20/200100030ksr">
「ぁ……ぁ……ぁぁ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：どさっ！
	Move("@StNameC/C*", 300, @0, @200, Dxl2, false);
	DeleteSt("C",300,true);
	CreateSE("SE01","se人体_倒れる01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);
	Fade("絵背景11", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
{	St("ML",700, @0,@0,"buノーコa_通常_shock");
	FadeSt("ML",200,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100040nko">
「あたった……」

{
//	St("ML",700, @0,@0,"buノーコa_通常_shock");
//	FadeSt("ML",200,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100050nko">
「にとりのたま、あたって……」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 2010, Center, Middle, "cg/img/img双六死に手.jpg");
	Fade("絵背景", 500, 1000, null, true);

{	St("ML",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("ML",0,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024a]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100060nko">
「ひとを……ころ……し……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{	DeleteAllSt(0,false);
	St("MR",700, @0,@0,"bu似鳥_通常_pride");
	FadeSt("MR",0,true);}

	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024b]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100070nki">
「ふ、ふふ……ふふふふ……」

{	St("MR",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("MR",200,true);
	Shake("@StNameMR/MR*", 300, 0, 10, 0, 0, 500, null, false);
	}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100080nki">
「ふは……ふはは……ふはははははは！！
　ふははははは……！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	{
	SoundPlay("@xbgm26",0,450,true);

	}



{	ClockPass(2021);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
{	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100090nki">
「ダメだ……ダメだ……オシマイ……」

{	St("MR",700, @0,@0,"bu似鳥_通常_smile");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100100nki">
「オレ……オレ……犯罪者で……
　警察に捕まって、一生、棒に振る……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100110nko">
「ちがう。せいとうぼうえい。
　せつめいすれば、きっと……」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100120nki">
「突然、ロシアンルーレットを強要された？
　そんな話、警察が信じるわけないだろ！？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100130nki">
「だってオレ……動機があるじゃないか。
　借金があったんだぞ。殺せば、逃げられたんだ」

{	St("MR",700, @0,@0,"bu似鳥_通常_shout");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100140nki">
「ああ……もうだめだ！　嫌だ！　全部嫌だ！
　終わりだ！　最初から終わってたんだ！」

{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100150nki">
「オレに、生きてる意味なんて……意味なんて……
　死ねばよかった……死んでしまえば……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100160nko">
「わたしが、ころしてあげる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	SetVolumeEX("@xbgm*", 10000, 0, null);
	SoundPlay("@xbgm09",10000,450,true);


{	ClockPass(2022);}


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100170nki">
「ノーコ……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100180nko">
「わたしなら、しにたいなら、なんどでも。
　なんどでもころしてあげられる」

{	St("ML",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100190nko">
「だから、いまはにげよう。
　にげればたすかる」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100200nki">
「逃げればって、でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100210nko">
「しゃっきんにはおわれない。
　にとりがころしたなんておもわない」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100220nko">
「これは、かみさまがあなたにくれた、チャンス」

{	St("ML",700, @0,@0,"buノーコa_通常_fear");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100230nko">
「わるくない。にとりはわるくない。
　ぜんぜん、これっぽっちも」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100240nko">
「わるいのはせかい。わたしたちをじゃまするすべて。
　あなたはずっとむかしからしっている」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


{	ClockPass(2023);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100250nki">
「悪いのは……世界……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_幽霊_think");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100260nko">
「わたしはみかた。
　わたしだけがにとりのみかた」

{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100270nko">
「わたしはにとりのそばにいる。にとりがどんなことをしてもどこにいてもいつだれがなんといっても」

{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100280nko">
「わたしはあなたのもの。あなたはわたしのもの。ゆびもつめもへそもことばもしせんもこえもこころもみんな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100290nko">
「だからにとりはなにもかんがえなくてもいい。かなしみもふあんもわたしがきもちでうめつくす」

{	St("ML",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100300nko">
「だいじょうぶあなたはなにもわるくない。わたしがそばにいる。わたしだけがそばにいるから、だいじょうぶ」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100310nko">
「ね、にとりそうでしょう？　だいじょうぶでしょう？　いままでどおりでしょう？　もんだいないでしょう？」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100320nki">
「ノーコ……」


{	ClockPass(2024);}


{	DeleteAllSt(200,false);
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	
//SoundPlay("@xbgm24",0,450,true);
	St("C",700, @0,@120,"bu村崎_通常_fear");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 200, @0, @-120, Dxl2, false);
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 10, 10, 0, 0, 500, null, false);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/200100330msi">
「ぎゃああああああああああッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	DeleteAllSt(200,false);
	CreateSE("SE02","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE02",0,700,0,1000,null,false);
	St("ML",700, @60,@0,"buノーコa_カッター_pinch");
	Move("@StNameML/ML*", 200, @-60, @0, Dxl2, false);
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100340nko">
「――だれ？」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/200100350msi">
「ひ、ひひひひひひひ――」

//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/200100360msi">
「ひとごろしいいいいいいいッッ！！」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100370nki">
「そうか……気絶、してたんだ」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_カッター_angry");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100380nko">
「じゃまもの――」

{	DeleteAllSt(200,false);
	St("C",700, @0,@0,"bu村崎_通常_fear");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/200100390msi">
「た、たたたた、助けてッ！！
　どうか、私、見逃してくださいッ！！」

{	St("C",700, @0,@0,"bu村崎_通常_cry");
	FadeSt("C",200,true);}
//【村崎勇】
<voice name="村崎勇" class="村崎勇" src="voice/a20/200100400msi">
「命！　命だけはお助け――
　あぎゃああああああぁぁぁぁ――――……！！」

{
	Shake("@StNameC/C*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);

	CreateSE("SE01","se擬音_ギャグ_逃げる");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 600, @-512, @0, Dxl2, false);
	DeleteSt("C",200,true);}

{
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100410nki">
「消えた……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100420nko">
「ちがう。このおくに、ちかへのつうろ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(2025);}


//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100430nki">
「本当だ……下に続いてる」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100440nko">
「……おいかけましょう」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_shock");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100450nki">
「追いかける……？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100460nko">
「にとりがひとをころしたとしってる。
　わたしたちのみらいをじゃまするもの」

{	St("ML",700, @0,@0,"buノーコa_通常_smile");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100470nko">
「はいじょするべき」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100480nki">
「排除……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100490nko">
「おねがい」

{	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100500nko">
「それをもって、おいかけましょう」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_sigh");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100510nki">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteAllSt(200,true);
	TextBoxDelete(150);


// 11/10指定素材を入れました
	CreateTextureEX("イベント1", 10000, Center, Middle, "cg/obj/objアザナエル弾丸.png");
	Fade("イベント1", 500, 1000, null, true);

//あきゅん「素材：objアザナエル弾丸」
//あきゅん「修正指示：素材の使用をお願いします」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　ノーコが指さしたのは、双六の指からこぼれ落ちた弾丸。

{
	Fade("イベント1", 500, 0, null, true);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100520nko">
「にとりのために」

{
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100530nko">
「わたしのために」

{
	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,true);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100540nko">
「ころして」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SetVolumeEX("@xbgm*", 3000, 0, null);




{	ClockPass(2026);}





//◆場所：地下_通路_バックギャモン
	SceneOut(11000, 1000, "blind_01_00_0");
	DeleteSt("C",0,true);
	Delete("イベント1");
	
	OnBG(10,"bg0701600地下_通路_バックギャモン");
	FadeBG(0,true);
	DeleteAllSt(200,true);

	CreateColorEX("絵色黒", 2000, "#000000");
	Fade("絵色黒", 0, 800, null, true);

	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",0,true);

	Wait(500);

	CreateSE("SE00L","se動作_歩く02_l");
	MusicStart("SE00L",0,700,0,700,null,true);

	SceneIn(1000, "blind_01_00_1");


//あきゅん「修正指示：この音量は意図しておりますでしょうか？」
// 11/10修正しました
//	SoundPlay("@xbgm21", 0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100550nki">
「暗い……」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100560nko">
「そこに、ライトが」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_normal");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100570nki">
「脱出用か……？」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ライトがつく

	SetVolumeEX("SE00L", 300, 0, null);
	DeleteAllSt(200,true);

	SoundPlay("@xbgm24", 0,450,true);

	CreateSE("SE01","se動作_ライト点ける");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵色黒", 500, null, true);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100580nki">
「ずいぶん古いな」

{	St("MR",700, @0,@0,"bu似鳥_通常_sad");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100590nki">
「なんで、こんなものが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

{
//	SetVolumeEX("@xbgm*", 500, 0, null);

	DeleteAllSt(200,true);
}

//	TextBoxDelete(150);




{	ClockPass(2027);}

{	St("C",700, @0,@50,"buユージローa_通常_normal");
	CreateSE("SE01","se擬音_ギャグ_ぴょこ");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("@StNameC/C*", 300, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ユージロー】
<voice name="ユージロー" class="ユージロー" src="voice/a20/200100600ujr">
「わうわうわうわうっ！！」

{	DeleteAllSt(200,false);
	St("R",700, @-50,@0,"buブーa_通常_happy");
	Move("@StNameR/R*", 300, @50, @0, Dxl2, false);
	FadeSt("R",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/a20/200100610buu">
「こっちか！　でかした犬！」

{	DeleteAllSt(200,false);
	St("L",700, @-50,@0,"buみそa_通常_angry");
	Move("@StNameL/L*", 300, @50, @0, Dxl2, false);
	FadeSt("L",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/a20/200100620mso">
「おい！　オレ様を置いていくな！　怖いい！」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_sad");
	FadeSt("ML",200,true);
//	SetVolumeEX("@xbgm03", 1500, 0, null);
	}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100630nko">
「まだいた」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100640nki">
「なんだあいつら？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
{
//	SoundPlay("@xbgm03",0,1000,true);
	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100650nko">
「ばか」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_worry");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100660nki">
「バカ？」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100670nko">
「むこうはむし」

{	St("ML",700, @0,@0,"buノーコa_幽霊_normal");
	FadeSt("ML",200,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100680nko">
「おいかける」

{
	DeleteAllSt(200,true);
}

　ノーコが壁際を指さす。

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);

{	ClockPass(2028);}



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　よく見ると、床に真新しい足跡がついていた。

　明らかに、今すれ違ったみそブーたちの物とは違う。

{	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100690nki">
「そうか。灯りがないから、壁伝いに――」

{	DeleteAllSt(200,false);
	St("ML",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("ML",200,true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/a20/200100700nko">
「おいかける」

{	DeleteAllSt(200,false);
	St("MR",700, @0,@0,"bu似鳥_通常_hard");
	FadeSt("MR",200,true);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/a20/200100710nki">
「ああ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	SceneOut(20000, 1000, "blind_01_00_0");



	EndScene();
}
