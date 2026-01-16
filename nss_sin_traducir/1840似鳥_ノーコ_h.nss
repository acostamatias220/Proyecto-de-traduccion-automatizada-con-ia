
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1840似鳥_ノーコ_h.nss_MAIN
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

	$LFlag_NowFile = "1840似鳥_ノーコ_h.nss";

	if($CharaName=="似鳥"){
		$GameName = "1900似鳥.nss";
	}else if($CharaName=="ノーコ"){
		$GameName = "1900ノーコ.nss";
	}else{
		$GameName = "1900ノーコ.nss";
	}

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#1840似鳥_ノーコ_h=true;
	if($PLACE_reco){
		RecoOut();
	}else{
	//■ムービー再生
		Quake_IsChaeck();
	}
}

scene 1840似鳥_ノーコ_h.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="2120">
////////////header////////////
//file name "1840似鳥_ノーコ_h.nss"
//title "似鳥の異常な愛情　または私は如何にして心配するのを止めてノーコを愛するようになったか"
//previous "1830似鳥_ノーコ.nss"


////////////footer////////////
//next "似鳥" "1900似鳥.nss"
//next "ノーコ" "1900ノーコ.nss"


////////////body////////////

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

//■再定義定型文
	PrintBG("上背景", 30000);

	ClockPass(1840);

//◆場所：似鳥マンション_リビング
//	PrintGO("上背景", 30000);
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, null, true);

	CreateColorEX("絵色１", 10000, "#FFFFFF");

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{
	OnBG(10,"bg1304100似鳥マンション_リビング_通常");
	FadeBG(0,true);

	CreateColorEX("絵色１", 10000, "#FFFFFF");

	ClockPass(1840);

	//リコ背景抹消
	RecoIn();
}
//========================================================

//◆ＳＥ：ジッパー下ろす
	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_ジッパー開ける01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200010nki">
「ああ……あ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	MusicStart("@xbgm29",0,450,0,1000,null,true);

	ClockDelete(1000,false);

//◆ＥＶ："ev/ev1840ノーコフェラチオ.txt" 差分Ａ
	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev1840ノーコフェラチオa.jpg");
	Fade("絵背景１", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200020nko">
「ほら」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200030nko">
「いつもとおなじ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200040nko">
「きたいしてる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200050nki">
「…………」

{	ClockTime(1841);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200060nko">
「このくちびる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200070nko">
「このした」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200080nko">
「にとりを、つつむよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200090nko">
「そうぞうしてる？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200100nko">
「この……ちゅ、くちびると」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200110nko">
「この……した」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200120nki">
「……やめろ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200130nko">
「いやならにげる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200140nko">
「でもにとりはにげない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200150nko">
「ううん。それどころか」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200160nko">
「おっきくなってる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200170nko">
「みてるよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200180nko">
「もうそうして」

{	ClockTime(1842);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200190nko">
「こうふんして」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200200nko">
「きたいしてる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200210nko">
「ほしいの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200220nko">
「すきでしょ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200230nko">
「すきだよね」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200240nki">
「…………」



//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200250nko">
「ここはしょうじき」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200260nko">
「れろ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200270nko">
「ぴちゃ……ぴちゃぴちゃ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200280nki">
「――――っ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200290nko">
「すき？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(1843);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200300nko">
「れろ――れろ――うらすじ、すき？
　んれろ――れろ――ん――ん――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200310nko">
「それとも」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200320nko">
「んん――れろちゅ、かりくび、すき？
　れろ――れろれろ――ちゅ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200330nko">
「あとは」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200340nko">
「ちゅっ、ちゅっちゅ――すずくち、すき？
　んちゅっ、ちゅちゅ――れろれろれ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200350nko">
「もしかして」

{	ClockTime(1844);}
//◆音声指示：玉袋を口に含んで
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200360nko">
「はあむ――ん――んれろ――
　<RUBY text="たまたま">はまはま</RUBY>は――ちゅぽっ！　いいの？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200370nki">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200380nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200390nko">
「ほっぺたに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200400nko">
「みゃくうってる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200410nko">
「こんなに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200420nko">
「おおきいよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200430nko">
「ほしい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200440nko">
「ほしいよね？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200450nko">
「ほっぺたのなかにいれたいよね」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200460nko">
「にとりはすき」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200470nko">
「がまんできない」

{	ClockTime(1845);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200480nko">
「こじあけて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200490nko">
「すわれながら」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200500nko">
「つっこんで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200510nko">
「なめあげられて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200520nko">
「ねもとまでだえきまみれで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200530nko">
「いきをさせないくらい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200540nko">
「せきこんでもとめなくて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200550nko">
「のどのおく」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200560nko">
「おくのおく、いちばんおくまで」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200570nko">
「なみだめのわたしに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200580nko">
「ひきぬいたさきをむけて」

{	ClockTime(1846);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200590nko">
「しゃせいするの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200600nko">
「がんしゃするの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200610nko">
「すきだもんね」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200620nko">
「にとり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200630nko">
「いいよ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200640nko">
「いつもどおり」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200650nko">
「かみ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200660nko">
「つかんで」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200670nki">
「…………ふざけんな」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200680nki">
「ふざけんな」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200690nki">
「ふざけんなふざけんなふざけんなよっ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200700nki">
「こんなの――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200710nki">
「我慢できるかあああああああッッッッッ！！！！」

　ノーコの髪の結び目を、左右とも手で掴んで――

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(1847);

	TextBoxDelete(150);

//◆ＥＶ："ev/ev1840ノーコフェラチオ.txt" 差分Ｂ
	CreateTextureEX("絵背景２", 2000, 0, 0, "cg/ev/ev1840ノーコフェラチオb.jpg");

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_抱く");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeFF("絵背景２",0,0,1000,0,0,Dxl1,false);
	Fade("絵背景２", 1000, 1000, null, true);
	Delete("絵背景１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200720nki">
「――――ッ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200730nko">
「ふぐ――――っ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200740nki">
「ほら！　ほらほらほらほら！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200750nki">
「お望み通りっ、やってやるよ！」


//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200760nko">
「ぁぐっ、んっ、んんっ、んむっ、ん――！！
　んぁ、あがっ、あぐっ、ん――んん――！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200770nko">
「んんっ、んっ！　んっ！　んっ、んっ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200780nki">
「くわえてるだけじゃ全然気持ちよくないだろ！
　ほら、ちゃんとしゃぶれ！　しゃぶれよ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200790nko">
「んぁっ、ふぁ、ふぁい――んちゅっ、ちゅぅっ！
　ちゅばっ！　ちゅぅっ！　んじゅる――んっ！！」

{	ClockTime(1848);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200800nko">
「んじゅるっ！　んじゅっ！　んむじゅっ！　んっ！
　じゅる――じゅるる――じゅるっ、んっんっ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200810nki">
「オラもっと奧！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200820nko">
「んんん！！？　んじゅむっ！　んぁじゅるっ！
　んんぐっ、んぐっ、が……が……けほっけほっ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200830nko">
「はぅっ、んぐぅっ？　ん……んんんんん！！
　んぐ……じゅるるっ、ん、んんんんん――！！」


//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200840nki">
「いいんだろ？　これがいいんだろ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	ClockTime(1849);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200850nko">
「んじゅっ、ん――はひ――
　これが――いい――んんっ、れす――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200860nki">
「大好きなんだよな？
　コレが欲しかったんだよな！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200870nko">
「んぐぐぐ――――っ！！　は……はひ。
　らいす――きっ、んっ、けほっけほっけほっ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200880nki">
「ほら、じゃあ――やるよ！
　おまえに――好きなのを、思いっきり、かけてやる！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200890nko">
「んじゅるっ、はひっ、んっ、んちゅっ、んちゅぅっ！
　くらさい――にほりさんのくだ――ングッ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200900nko">
「んがっ、んぐっ、んっ、んっ、ん――
　んっ！　んんッ！　んんんんんん――！！！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(1850);


	TextBoxDelete(150);

//◆ＥＶ："ev/ev1840ノーコフェラチオ.txt" 差分Ｃ
	CreateTextureEX("絵背景３", 2000, 0, 0, "cg/ev/ev1840ノーコフェラチオc.jpg");

	Fade("絵色１", 0, 1000, null, true);
	Fade("絵色１", 200, 0, null, true);
	Fade("絵色１", 0, 1000, null, true);
	Fade("絵色１", 200, 0, null, true);
	Wait(300);
	Fade("絵色１", 2000, 1000, null, 1500);
	Fade("絵背景３", 500, 1000, null, true);
	Delete("絵背景２");
	Fade("絵色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200910nko">
「んぁっ、んんんっ！　んっ、んっ！
　んぐぅっ！　んぐっ、んぐ――んぐ――んぐぅ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200920nko">
「んぐっ、んんっ、んんんんん……
　はふ……れる……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200930nko">
「んぐっ、んっ、んっ、ん――んぷはぁっ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400200940nki">
「まだまだっ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);



//◆ＥＶ："ev/ev1840ノーコフェラチオ.txt" 差分Ｄ
//◆演出指示：ここ、半分妄想だからスゲエ勢いで精子が出ます

	CreateTextureEX("絵背景４", 2000, 0, 0, "cg/ev/ev1840ノーコフェラチオd.jpg");

	Fade("絵色１", 0, 1000, null, true);
	Fade("絵色１", 200, 0, null, true);
	Fade("絵色１", 0, 1000, null, true);
	Fade("絵色１", 200, 0, null, true);
	Wait(200);

	Fade("絵背景４", 3000, 1000, null, false);

	Fade("絵色１", 0, 1000, null, true);
	Fade("絵色１", 200, 0, null, true);
	Fade("絵色１", 0, 1000, null, true);
	Fade("絵色１", 200, 0, null, true);
	Wait(200);

	Fade("絵色１", 1000, 1000, null, true);
	Fade("絵背景４", 0, 1000, null, false);
	Fade("絵色１", 1000, 0, null, true);
	Delete("絵背景３");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200950nko">
「かはっ、かはっ！　かはっ……
　はぁ……はぁ……はぁ……！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200960nko">
「あ……あ……あ……ぁ……ぁ……ぁ……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200970nko">
「にとり……しゃせい……たくさん……」

{	ClockTime(1851);
}//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200980nko">
「かみにも……いっぱい……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400200990nko">
「いっぱい……とまらないね……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201000nko">
「きもち……よかった……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201010nko">
「わたし」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201020nko">
「にとりに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201030nko">
「おぼれる」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201040nki">
「ああ。でも――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：ばらららら！　本の山が崩れる音
	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_バッグ漁る");
	MusicStart("SE01",0,700,0,1000,null,false);

//	PlainShake(2000, 500, 0, 0, 0, 5, 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　すぐ側の同人誌の山に手をかけ、崩す。

　ノーコひとり横たわれる分のスペースができた。

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201050nki">
「まだ、満足できない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201060nko">
「わかった」



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(1852);

	TextBoxDelete(150);

//◆ＥＶ："ev1840ノーコ同人誌再現正常位.txt" 差分Ａ
	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev1840ノーコ同人誌再現正常位a.jpg");
	Fade("絵背景１", 1000, 1000, null, true);
	Delete("絵背景４");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201070nko">
「にとり……きて」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201080nki">
「ちがう」

　拒否されて、ノーコの視線がちらりと横を向く。

　山から崩れ、開きっぱなしの同人誌。

　その１コマの台詞を無感情に読み上げるように――

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201090nko">
「おにいちゃんの、ちょうだい」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201100nki">
「ちがう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201110nko">
「べ、べつにいれてほしいわけじゃないんだから」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201120nki">
「ちがう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201130nko">
「だんせいきのぼっきをかくにん。そうにゅうをきょか」

{	ClockTime(1853);
}//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201140nki">
「ちがう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201150nko">
「いれるの？　まじでキモいんだけど」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201160nki">
「ちがう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201170nko">
「わかるでしょ？　イエローのいのちがおしければ――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201180nki">
「ちがう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201190nko">
「ごしゅじんさまの、いちもつを、わたくしめに……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201200nki">
「それだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	ClockTime(1854);


//◆ＥＶ："ev1840ノーコ同人誌再現正常位.txt" 差分Ｂ
//◆演出指示：挿入
	CreateTextureEX("絵背景２", 2000, 0, 0, "cg/ev/ev1840ノーコ同人誌再現正常位b.jpg");
	Fade("絵背景２", 1000, 1000, null, true);
	Delete("絵背景１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201210nko">
「――――ッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201220nki">
「どうだ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201230nko">
「は……はい……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201240nko">
「ごしゅじんさまの……いちもつが……なかを……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201250nko">
「でたり……んんっ！　はいったり……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201260nko">
「ゆっくりと……じらすように……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201270nki">
「気持ちいいか？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201280nko">
「はい……たいへん……きもちよく……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201290nki">
「焦らされるのが、良いんだな」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201300nko">
「…………」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201310nki">
「ん？　なんだ、そんな辛そうな顔して」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201320nko">
「……かまいません」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201330nko">
「わたくしは……いまのままでも」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201340nko">
「ごしゅじんさまがよければ……まんぞく……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201350nki">
「これでいいのか？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201360nko">
「はい……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201370nki">
「これで……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201380nki">
「これで、いいわけねぇだろっ！！」

{	ClockTime(1855);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201390nko">
「ぁあっ！！　あっ！！　あ！！　あ！　あ！！」

　似鳥の動きが、一気に速くなる。

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201400nki">
「奴隷のクセにまだわかんねえのか？
　あんなでオレが気持ちいいわけねぇだろ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201410nko">
「は、はいッ！　すみませんッ！
　すみまッ、せ……んんんっ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201420nko">
「ばかで……ごめんなさい……ッ！
　やくたたずで……ごめんなさいっ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201430nki">
「ああっ！　ほんとに！　役立たずで！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201440nki">
「なんでッ！　おまえみたいなヤツがッ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201450nki">
「オレの！　側にッ！　いるのか――！！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(1856);

	TextBoxDelete(150);

//◆ＥＶ："ev1840ノーコ同人誌再現正常位.txt" 差分Ｃ
	CreateTextureEX("絵背景３", 2000, 0, 0, "cg/ev/ev1840ノーコ同人誌再現正常位c.jpg");
	Fade("絵背景３", 1000, 1000, null, true);
	Delete("絵背景２");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201460nko">
「きらい……？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201470nko">
「にとり、きらい？」

//【似鳥戴斗】
[text0340]
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201480nki">
「あ……？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201490nki">
「おい、それ違うだろ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201500nki">
「今はホラ。主人と下僕プレイだから、な」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201510nko">
「わたし、どうおもう？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201520nko">
「きらい？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201530nki">
「は？　なに言って――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201540nko">
「わたし、きらい？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201550nki">
「バカか？　いつも言ってんだろ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201560nki">
「病みつきだよ」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201570nki">
「おまえのここ――好きだ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201580nko">
「ちがう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201590nko">
「ここじゃ、ないの」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201600nko">
「わたしの、ここじゃ、なくて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201610nko">
「わたし」

{	ClockTime(1857);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201620nko">
「わたしを、どうおもうの？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201630nki">
「いや、いいから元に――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201640nko">
「いや」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201650nki">
「嫌、じゃなくて――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201660nko">
「ほんとうのきもちをきかせて」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201670nko">
「わたしが、きらい？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201680nko">
「それとも――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201690nki">
「嫌いだったら、こんなことしないし」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201700nko">
「ほんとう？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201710nki">
「……ああ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201720nko">
「いって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201730nko">
「すきって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201740nko">
「わたしをすきって、いって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201750nko">
「ひゃっかいいって。せんかいいって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201760nko">
「いちまんかい……ひゃくまんかい……いちおくかい……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201770nko">
「ずっと、ずっと、ずっと……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	ClockTime(1858);

	TextBoxDelete(150);


//◆ＥＶ："ev1840ノーコ同人誌再現正常位.txt" 差分Ｄ
	CreateTextureEX("絵背景４", 2000, 0, 0, "cg/ev/ev1840ノーコ同人誌再現正常位d.jpg");
	Fade("絵背景４", 1000, 1000, null, true);
	Delete("絵背景３");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201780nki">
「おまえ……」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201790nki">
「オレの奴隷のクセに、頼み事なんて！
　百年早ぇんだよッ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201800nko">
「ぁぅっ！！　ぁっ！　ぁっ！　あっあっ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201810nki">
「こうすればしゃべれねぇだろ！
　これが好きで好きでたまんねぇんだろ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201820nki">
「余計なことしゃべってるヒマねぇだろ？
　気持ちよくて、みんな忘れちまうだろ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201830nko">
「ぁぅっ、そんな、こと、ない――！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201840nko">
「おぼえる、きもち、ずっと、ずっと――
　わすれたり、しないよ、にとり、にとり――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201850nki">
「だから――ああクソっ！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201860nki">
「なんで名前で呼ぶんだよ！
　なんで今日はそんななんだよッ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201870nko">
「だって、わたし、にとり、かわるの、いやで――！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201880nki">
「なくなっつーの！！　奴隷！！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201890nki">
「萎えんだよ！
　オレを気持ちよくさせんだろ！」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201900nki">
「オレの幸せがおまえの幸せなんだろ！
　おまえの役割はそれだろ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201910nko">
「ぁ……ぁ……ん……んんっ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201920nko">
「は――はっ、はい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201930nko">
「わたし――にとり――にとりのもので――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201940nko">
「にとりのためなら、わたし、なんでも――
　なんでも、します、だから――！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201950nko">
「だから、わたしを、おいてかないで――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201960nko">
「わたしと――いっしょに――
　ずっと――いっしょに――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400201970nki">
「オラ行くぞ！　出すぞ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201980nko">
「いやっ！　あっ、あ――でも、まだ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400201990nko">
「まだ、こたえ――きいて――ない――」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400202000nki">
「出すからな！　合わせろ！　合わせろよ！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400202010nko">
「は――はひっ、んっ、んんっ、んんん――！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400202020nko">
「あわせます――にとり――さきに――わたし――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400202030nko">
「いきます――いいですか？　いいですか？」

{	ClockTime(1859);}
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400202040nki">
「おう！　ほら！　いっちまえ！！」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400202050nko">
「きて――わたし――いく――いく――
　ぁっ、ん――んく――ん――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400202060nko">
「ぁ――ぁ、あ、ああああ――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400202070nko">
「ああああああああああああ――――ッ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


	TextBoxDelete(150);

	CreateTextureSP("絵背景裏", 2000, 0, 0, "cg/ev/ev1840ノーコ同人誌再現正常位d.jpg");
//	CreateTextureEX("絵背景５", 2000, 0, 0, "cg/ev/ev1840ノーコ同人誌再現正常位e.jpg");
	CreateTextureEX("絵背景５", 2000, 0, 0, "cg/ev/ev1840ノーコ同人誌再現正常位d.jpg");

	//★徒歩：ＳＥ
	CreateSE("SE00","se環境_地鳴り02_l");
	MusicStart("SE00",3000,400,0,1000,null,true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@絵背景４",1000,3,5);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@絵背景５",1000,3,5);

	//▼精液開始
	CreateSemen("SemenProcess","@絵背景５");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400202080nki">
「オレも――んっ、んんんッ！　ん――ん？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Fade("絵色１", 0, 1000, null, true);

	SetVolumeEX("@x*", 1000, 0, NULL);

	//★徒歩：ＳＥ
	CreateSE("SE01","se日常_冊子崩れる");
	MusicStart("SE01",0,700,0,1000,null,false);

	MusicStart("SE00",0,600,0,1000,null,true);

	//▼精液停止
	StopSemen();
	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();
	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP2stop();
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@絵背景５",1000,3,10);

//あきゅん「演出：射精差分はここでは出さない」
//	CreateTextureSP("絵背景裏", 1999, 0, 0, "cg/ev/ev1840ノーコ同人誌再現正常位e.jpg");
	CreateTextureSP("絵背景裏", 1999, 0, 0, "cg/ev/ev1840ノーコ同人誌再現正常位d.jpg");
	Fade("絵背景５", 0, 1000, null, true);
	Delete("絵背景４");

	Fade("絵色１", 500, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400202090nki">
「んおっ？　んっ？　んんんん？　あれ？」

//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400202100nki">
「なんか、地面、揺れて――」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/400202110nko">
「にとり？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	MusicStart("SE00",500,1200,0,1000,null,true);

	//▼シェイク
	MoveSSP1("@絵背景５",100000,0,5,0,10,500,null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【似鳥戴斗】
<voice name="似鳥戴斗" class="似鳥戴斗" src="voice/18/400202120nki">
「ぎゃあああああああああッッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆ＳＥ：どさどさどさっ！！　同人誌が落ちる。
//◆演出指示：画面暗転
	//★徒歩：ＳＥ
	CreateSE("SE01","se日常_冊子崩れる");
	CreateSE("SE02","se環境_荷物崩れる");
	CreateSE("SE03","se環境_地鳴り03");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE03",0,700,0,1000,null,false);

	SetVolumeEX("@SE00", 1000, 0, NULL);

	ClearFadeNut(2000, true);

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();
	//▼シェイク：停止
	MoveSSP1stop();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}
//============================================

	PrintBG("上背景", 30000);
	ClockDelete(0,true);
	Delete("上背景");

	EndScene();
}
