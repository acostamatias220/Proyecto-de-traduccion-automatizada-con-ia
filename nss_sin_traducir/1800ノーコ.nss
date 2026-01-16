
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene 1800ノーコ.nss_MAIN
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
	$GameName = "1810ノーコ_フウリ.nss";
}

scene 1800ノーコ.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="1160">
////////////header////////////
//file name "1800ノーコ.nss"
//title "コミマのあとのあにのあなはなんかちょっとにおいがする"
//previous "y1750ノーコ.nss"

////////////footer////////////
//next "ノーコ" "1810ノーコ_フウリ.nss"


////////////body////////////


//■再定義定型文

{	ClockPass(1800);}

	PrintGO("上背景", 30000);

//◆場所：秋葉原_中央通り
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);

//秋葉原の雑踏。ＦＩするガヤ。
//イメージはサンクス前です。
	//★徒歩：ＳＥ環境音ガヤ
	CreateSE("SE00","seガヤ_街中_l");
	CreateSE("SE05","seガヤ_交通_l");

	MusicStart("SE00",3000,700,0,1000,null,true);
	MusicStart("SE05",3000,700,0,1000,null,true);

	FadeDelete("上背景", 1000, null, true);

	Wait(3000);


	CreateColorEX("絵色１", 10000, "#FFFFFF");

//◆ＳＥ：ガラスが割れる
	//★徒歩：ＳＥガラスが割れる
	CreateSE("SE01","se戦闘_ガラス割れる02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色１", 0, 1000, null, true);
	PlainShake(10, 500, 0, 30, 0, 0, 500, Dxl1, false);

	FadeDelete("絵色１", 500, null, true);

	//★徒歩：ＳＥ転がり出る
	CreateSE("SE02","se人体_倒れる03");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolume("@SE*", 3000, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100010e13">
「んがはッ！！」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100020e13">
「がはっ、がはっ、けほけほけほ……」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100030e13">
「いた、いたたたたたた……ん……くぅっ……」

　コンビニからガラスを割って店員が飛び出し、大晦日の中央通りがシンと静まりかえる。

//◆音声指示：小声
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/18/000100040e07">
「おい、なんだアレ？」

//◆音声指示：小声
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/18/000100050e08">
「ケンカ？　コンビニのガラスが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆演出指示：みそ登場
//★徒歩：ここ大き目の立ち絵を用意して厚めにしたほうが良いと思います。

	CreatePlainSP("絵上背景１", 10000);

	CreateTextureEX("絵背景１", 2000, 0, -200, "cg/bg/bg0103111秋葉原_中央通り_通常.jpg");
	Zoom("絵背景１", 0, 2000, 2000, Dxl2, true);
	SetShade("絵背景１", MEDIUM);

	CreateTextureEX("絵人物１", 2000, -619, InBottom, "cg/bu/l/buブーa_通常_hard_x01.png");
	CreateTextureEX("絵人物２", 2000, 738, InBottom, "cg/bu/l/buみそa_通常_normal_x01.png");
	Move("絵人物１", 0, @200, @400, Axl1, true);
	Move("絵人物２", 0, @-250, @400, Axl1, true);

	Zoom("絵人物１", 0, 800, 800, Dxl2, true);
	Zoom("絵人物２", 0, 800, 800, Dxl2, true);

	Fade("絵背景１", 0, 1000, null, false);
	Fade("絵人物１", 0, 1000, null, false);
	Fade("絵人物２", 0, 1000, null, false);

	MusicStart("@xbgm07",0,450,0,1000,null,true);

//◆ＳＥ：足音近づく
	//★徒歩：ＳＥ足音近づく
	CreateSE("SE01","se動作_歩く03_l");
	//★徒歩：ＳＥプロセス２
	MusicStartPro2("@SE01",0,700,0,1000,null,true,0,6000,2000);

	Wait(1000);

	CreateCome1("@絵人物１",1100,-50,170,null,10);
	CreateCome2("@絵人物２",1100,50,170,null,10);

	Move("絵背景１", 10000, @0, 288, null, false);
	Zoom("絵人物１", 10000, 1000, 1000, Axl1, false);
	Zoom("絵人物２", 10000, 1000, 1000, Axl1, false);

	Fade("絵上背景１", 3000, 0, null, true);

	//★徒歩：フラッシュプロセス開始
	FlashPro("@絵上背景１", 1000, 1000, 6000, 0, 1000, 0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆音声指示：小声
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/18/000100060e07">
「え？　なにアレ？」

//◆音声指示：小声
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/18/000100070e08">
「コスプレ……だよな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	//★徒歩：ＳＥプロセス停止（継続するなら必要なし）
	DustMusic("@SE01", 1000, 0, NULL);

	//★徒歩：フラッシュプロセス停止
	DustFlash("@絵上背景１",1000,1000,null,true);

	Delete("絵背景１");
	Delete("絵人物１");
	Delete("絵人物２");
	StopCome1();
	StopCome2();
	Delete("絵上背景１");

{	ClockPass(1801);}

	//★徒歩：ＳＥ足音ザッ！
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",700, @0,@0,"buみそa_通常_normal");
	FadeSt("C",300,false);
	MoveEX($C_今, 1000, 0, -20, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100080mso">
「おい、バイト君」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100090e13">
「は……はい？」

//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100100mso">
「コンビニってなんだ？」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100110e13">
「へ？」

{	St("C",700, @0,@0,"buみそa_通常_hard");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100120mso">
「コンビニって、な・ん・だ？」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100130e13">
「あ、ええと、ああいうお店の形態を――」

{	St("C",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100140mso">
「オレを、オレを――」

{	St("C",700, @0,@0,"buみそa_オラオラ_angry");
	Shake($C_次, 300, 0, 20, 0, 0, 500, Dxl2, false);
	MoveEX($C_次, 300, 0, -50, Dxl2, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100150mso">
「バカにしたなあああああああああああッ！！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100160mso">
「許さん！　ペットボトルで弁当が傾くくらい許さん！」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100170e13">
「ひえええええっ……！！」

{	St("C",700, @0,@0,"buみそa_通常_angry");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100180mso">
「郡山にだって、コンビニくらいあるんだよッ！」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100190e13">
「は、はぃい！　すいませんでしたぁ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100200mso">
「すんませんですめば、警察いらねぇんだ――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	St("ML",700, @0,@0,"buブーa_通常_normal");

	//★徒歩：ＳＥ足音ザッ！
	CreateSE("SE01","se動作_足踏み");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteSt("C",200,false);
	MoveEX($ML_次, 200, 40, 0, Dxl1, false);
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100210buu">
「まぁまぁ、みそよ。少し落ち着け」

{	St("MR",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("ML",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100220mso">
「ん？　ブーか」

//◆音声指示：小声
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/18/000100230e07">
「また出た！」

//◆音声指示：小声
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/18/000100240e08">
「な、なんなんだ？　コント？」

{	St("C",700, @0,@0,"buブーa_通常_shout");
	DeleteSt("MR",200,false);
	Shake($C_次, 300, 0, 10, 0, 0, 500, Dxl1, false);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100250buu">
「コントじゃねぇ！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

/*

//◆音声指示：同時
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/18/000100260e07">
「ひぇっ！」

//◆音声指示：同時
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/18/000100270e08">
「ひぇっ！」
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
//◆音声指示：同時
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/18/000100260e07">
「ひぇっ！」
{WaitAddText();}<BR>

//◆音声指示：同時
//【オタクＤ】
//<voice name="オタクＤ" class="その他男声" src="voice/18/000100270e08">
//「ひぇっ！」

</PRE>
	SetText();
	AddText(1,"「ひぇっ！」","その他男声","18/000100260e07",false,false,1000);
	AddText(2,"「ひぇっ！」","その他男声","18/000100270e08",true,true,1400);
	TypeBeginD();//―――――――――――――――――――――――――――

	St("C",700, @0,@0,"buブーa_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100280buu">
「まあいい。コンビニは何か、オレが教えてやる」

{	St("C",700, @0,@0,"buブーa_通常_normal");
	St("C",700, @0,@0,"buブーa_通常_hard");
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 2000);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100290buu">
「コンビニエンスそれは……便利なこと！」

{	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"buブーa_通常_hard");}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100300e13">
「ぁ……そういうこと」

{	St("MR",700, @0,@0,"buみそa_通常_smile");
	DeleteSt("C",200,false);
	FadeSt("MR",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100310mso">
「さすがはブーだ……学があるぜ……」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


{	ClockPass(1802);}

{	St("C",700, @0,@0,"buブーa_通常_smile");
	DeleteSt("MR",200,false);
	FadeSt("C",200,true);}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100320buu">
「へっへっへ……」

{	St("C",700, @0,@0,"buみそa_通常_hard");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100330mso">
「いいか、コンビニは、便利」

{	St("C",700, @0,@0,"buみそa_通常_pinch");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100340mso">
「便利なのに、便利なのにッ！！」

{	St("C",700, @0,@0,"buみそa_オラオラ_angry");
	Shake($C_次, 300, 0, 20, 0, 0, 500, Dxl2, false);
	MoveEX($C_次, 300, 0, -50, Dxl2, false);//③
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100350mso">
「肉まんがおいてねぇとはどーゆーこったああああ！！」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100360e13">
「ひええええええ！　すいませんでしたあああああ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteSt("C",200,false);

	TextBoxDelete(150);

	CreateSE("SEP01","se擬音_ギャグ_寒い風");
	MusicStart("SEP01",0,700,0,1000,null,false);

//	MusicStart("SE00",1000,1,0,1000,null,true);
//	MusicStart("SE05",1000,1,0,1000,null,true);

	Wait(3000);

//	MusicStart("SE00",1000,500,0,1000,null,true);
//	MusicStart("SE05",1000,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆音声指示：小声
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/18/000100370e07">
「え？　それだけ？」

//◆音声指示：小声
//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/18/000100380e08">
「それだけで、ガラス割ったり？」


{	St("C",700, @0,@0,"buブーa_通常_shout");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100390buu">
「オイコラ外野ァ！」

//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/18/000100400e07">
「ひっ！」

{	St("C",700, @0,@0,"buブーa_通常_hard");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100410buu">
「てめぇらオレを食いしん坊キャラだと思っただろ！」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/18/000100420e08">
「え、いや、全然――」

{	St("C",700, @0,@0,"buブーa_通常_shout");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100430buu">
「このクソ<RUBY text="さみ">寒</RUBY>ぃ中、秋葉原くんだりまでバイクで駆けつけたってのによォ！」

{	St("C",700, @0,@0,"buみそa_通常_pinch");
	St("C",100, @0,@0,"buみそa_通常_angry");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);
	//★立ち絵プロセス：開始
	FadeStPro("C", 200, 1000);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100440mso">
「１軒！　２軒！　３軒！　たくさん！」

{	//★立ち絵プロセス：再定義
	AgainSt("C",700, @0,@0,"buみそa_通常_angry");
	St("C",700, @0,@0,"buみそa_オラオラ_angry");
	//DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100450mso">
「５軒！　５軒コンビニ回って、どこにも肉まんがねぇのはどういうこった！！」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100460e13">
「いや、だからさっき女性のお客さんが全部――」

{	St("C",700, @0,@0,"buみそa_通常_hard");
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100470mso">
「言い訳はいらんッ！　ブー！」

{	DeleteAllSt(150,true);
	St("C",700, @0,@0,"buブーa_通常_smile");
	St("C",700, @40,@0,"buブーa_オラオラ_normal");
	Move("@StNameC/C*", 400, @-40, @0, Dxl1, false);
	FadeSt("C",200,true);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100480buu">
「デデデデッデデー！　アブトロ按摩！」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100490e13">
「ひぇっ！　な、な、なんだそれ！」

//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100500buu">
「家に眠っていたＥＭＳを不法改造した」

{	St("C",700, @0,@0,"buブーa_オラオラ_hard");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100510buu">
「威力――１０倍！」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100520e13">
「１０倍！？」

{	St("C",700, @0,@0,"buみそa_通常_smile");
	DeleteSt("C",200,true);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100530mso">
「レッツ按摩！」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(150);
	Move($C_今, 200, @0, @50, Axl1, false);//②
	DeleteSt("C",200,true);

	//★徒歩：ＳＥ
	CreateSE("SE01","se動作_バッグ渡す");
	CreateSE("SE02","se戦闘_絞める");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100540e13">
「え？　いや、やだ！　やめ――放せ！」

//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100550e13">
「ってか何！？　なんか毛が――」

{	St("C",700, @0,@0,"buブーa_通常_pride");
	MoveEX($C_次, 200, 0, -40, Dxl1, false);
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100560buu">
「かーちゃんの毛だ！」

{	CreateSE("SE01","se戦闘_打撃音06");
	MusicStart("SE01",0,650,0,1000,null,false);
	Move($C_今, 200, @0, @40, Axl1, false);
	DeleteSt("C",200,true);}
//【バイトＡ】
<voice name="バイトＡ" class="その他男声" src="voice/18/000100570e13">
「いやああああ！　堪忍！」

{	St("C",700, @0,@0,"buみそa_通常_smile");
	MoveEX($C_次, 200, 0, -40, Dxl1, false);
	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100580mso">
「暴れんな！　観念しろ！」

//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100590mso">
「だいたいなあ、そもそもが肉まんおいてねーのが――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


//◆ＳＥ：キリキリ……キリキリ……カッターナイフの音
//演出：ＢＧＭＦＯで背景ブラックフェードででカメラが徐々にみそに寄って――世界はカッターのキリキリ音とみそだけ、というイメージ

{	ClockPass(1803);}

	//★徒歩：ＳＥカッターループ
	CreateSE("SE03","se戦闘_カッター_刃出す03遅い");
	MusicStart("SE03",0,700,0,1000,null,true);
//	MusicStart("SE00",5000,1,0,1000,null,true);
//	MusicStart("SE05",5000,1,0,1000,null,true);
	SetVolume("@xbgm*", 5000, 0, NULL);

	St("C",700, @0,@0,"buみそa_通常_hard");
	St("C",700, @0,@0,"buみそa_通常_pinch");
	Request("@StNameC/C*", Smoothing);
	Fade("@OnBG*", 4000, 0, null, false);
	Zoom("@StNameC/C*", 12000, 1300, 1300, null, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
{	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100600mso">
「ん……？」

{	FadeSt("C",200,true);}
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100610mso">
「なんだ、この音――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//背景の黒から、徐々に怖い目のノーコがＦＩしてくる
//	PrintFadeNut("上背景", 500, true);

//	St("C",700, @0,@0,"buみそa_通常_pinch");
//	Request("@StNameC/C*", Smoothing);
//	Zoom($C_次, 0, 1300, 1300, null, false);
//	FadeSt("C",500,true);

//	FadeDelete("上背景", 500, null, true);

	Wait(1500);

	DeleteSt("C",500,true);

	Wait(2000);

//	St("C",700, @0,@0,"buみそa_通常_pinch");
//	Zoom($C_次, 0, 1300, 1300, null, true);
	St2("C",600, @0,@0,"fuノーコa_通常_mad","cg2/",".png");
//	Zoom($C_次, 0, 950, 950, Dxl1, true);

	SetVolume("SE03", 0, 0, NULL);

//	Move($ML_次, 500, @-100, @0, Dxl2, false);
//	Move($C_今, 500, @100, @0, Dxl2, false);
//	Zoom($C_今, 500, 1300, 1300, Dxl2, false);
//	Zoom($C_次, 0, 1000, 1000, Dxl1, false);
//	FadeSt("C",500,true);
	FadeSt("C",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//◆音声指示：囁き
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100620nko">
「じゃま」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	PrintFadeNut("上背景", 500, true);

//	MusicStart("SE00",0,500,0,1000,null,true);
//	MusicStart("SE05",0,700,0,1000,null,true);

	PrintGO("上背景", 30000);
	OnBG(10,"bg0103111秋葉原_中央通り_通常");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);

	FadeDelete("上背景", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【みそ】
<voice name="みそ" class="みそ" src="voice/18/000100630mso">
「ぎゃああああああああ！！！！」

{	St("C",700, @0,@0,"buブーa_通常_hard");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100640buu">
「え？　おい、みそ？　どした？」

{	St("C",700, @0,@0,"buブーa_通常_shock");
	FadeSt("C",200,true);}
//【ブー】
<voice name="ブー" class="ブー" src="voice/18/000100650buu">
「みそ！　みそ――――――――ッ！！」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//	MusicStart("SE00",3000,350,0,1000,null,true);
//	MusicStart("SE05",3000,400,0,1000,null,true);

	OnBG_mono(10,"bg0103111秋葉原_中央通り_通常");

	//★徒歩：ＳＥ
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いb");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	DeleteSt("C",1500,false);
	FadeBG(1500,true);

	Wait(1000);

	St("C",700, @0,@0,"fuノーコa_幽霊_normal");
	FadeSt("C",500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100660nko">
「のたうちまわって」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100670nko">
「しね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//◆場所：あにのあな_正面


//あにのあなは戦場として表現されるので、たぶんアオリのラジ館的なアレがあると良い
	PrintFadeNut("上背景", 1000, true);
	//PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

	Wait(1000);
{	ClockPass(1805);}

	CreateTextureEX("絵背景１", 10, 0, -1152, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("絵背景１", 0, 1000, null, true);

	//★徒歩：ＳＥ環境音ガヤ
	CreateSE("SE00","seガヤ_街中_l");
	CreateSE("SE05","seガヤ_交通_l");

	MusicStart("SE00",1000,500,0,1000,null,true);
	MusicStart("SE05",1000,700,0,1000,null,true);

	FadeDelete("上背景", 1000, null, true);
	//DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	Wait(1000);
	Move("絵背景１", 3000, @0, @1152, null, true);
	Wait(3000);

//◆ＳＥ：キリキリ……キリキリ……カッターナイフの音

	//★徒歩：ＳＥカッター
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,700,0,1000,null,false);

	MusicStart("SE00",3000,250,0,1000,null,false);
	MusicStart("SE05",3000,300,0,1000,null,true);

	MusicStart("@xbgm24",3000,450,0,1000,null,true);

	CreateTextureEX_mono("絵背景２", 10, 0, 0, "cg/bg/bg0301111あにのあな_正面_通常.jpg");
	Fade("絵背景２", 2000, 1000, null, true);
	Delete("絵背景１");
	Wait(1000);

	St("C",700, @0,@1000,"buノーコa_通常_normal");
	FadeSt("C",0,true);

	Move("絵背景２", 6000, @0, @-1152, null, false);
	Move($C_今, 6000, @0, @-1000, null, false);//②

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100680nko">
「ここに」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100690nko">
「いる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100700nko">
「いなきゃ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100710nko">
「きる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//背後で延々カッターナイフの音がしながら
	MusicStart("SE00",1000,0,0,1000,null,false);
	MusicStart("SE05",1000,0,0,1000,null,true);

//◆場所：あにのあな_店内
	PrintFadeNut("上背景", 500, true);
	//PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

	OnBG_mono(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

	Wait(1000);

	FadeDelete("上背景", 500, null, true);
	//DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	//★徒歩：ＳＥカッターループ
	CreateSE("SE01","se戦闘_カッター_刃出す03遅い");
	MusicStart("SE01",0,500,0,1000,null,true);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100720nko">
「せまい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100730nko">
「くるしい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100740nko">
「はながまがる」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100750nko">
「どこ？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100760nko">
「にとり、どこに――」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

//※下倉注：地下扉のシークエンス削る？？　あとで確認

	MusicStart("SE01",1000,0,0,1000,null,false);

	Move($C_今, 400, @0, @40, Axl1, false);
	DeleteSt("C",400,true);

	PrintFadeNut("上背景", 1000, true);

//◆場所：あにのあな_地下扉
	//人がいない
	OnBG_mono(10,"bg0302100あにのあな_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	MoveEX($C_次, 400, 0, 40, Dxl1, false);
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100770nko">
「これは？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100780nko">
「へん」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100790nko">
「まあいい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100800nko">
「かんけいない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

{	ClockPass(1806);}

	Move($C_今, 400, @0, @-40, Axl1, false);
	DeleteSt("C",400,true);

	PrintFadeNut("上背景", 1000, true);
	//PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);

//◆場所：あにのあな_店内
	OnBG_mono(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);
	//DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	MoveEX($C_次, 400, 0, -40, Dxl1, false);
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100810nko">
「にとりは」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100820nko">
「いない」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100830nko">
「うえ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――


//以下、一言ごとに上下ワイプとかで同じ絵を表示。
//徐々に苛立ちが募っていくため、ＳＥを徐々に大きくする。

	Move($C_今, 400, @0, @-40, Axl1, false);
	DeleteSt("C",400,true);

//◆ＳＥ：キリキリ……キリキリ……カッターナイフの音
	//★徒歩：ＳＥカッター
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,700,0,1000,null,false);

	PrintFadeNut("上背景", 500, true);
	//PrintDrawNut("上背景", 500, 100, "slide_01_00_0", true);

	OnBG_mono(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);
	//DrawDelete("上背景", 500, 100, null, "slide_01_00_1", true);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	MoveEX($C_次, 400, 0, -40, Dxl1, false);
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100840nko">
「いない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


{	ClockPass(1807);}

	Move($C_今, 400, @0, @-40, Axl1, false);
	DeleteSt("C",400,true);

//◆ＳＥ：キリキリ……キリキリ……カッターナイフの音
	//★徒歩：ＳＥカッター
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いb");
	MusicStart("SE01",0,900,0,1000,null,false);

	PrintFadeNut("上背景", 500, true);
	//PrintDrawNut("上背景", 500, 100, "slide_01_00_0", true);

	OnBG_mono(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);
	//DrawDelete("上背景", 500, 100, null, "slide_01_00_1", true);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	MoveEX($C_次, 400, 0, -40, Dxl1, false);
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100850nko">
「いない」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($C_今, 400, @0, @-40, Axl1, false);
	DeleteSt("C",400,true);

//◆ＳＥ：キリキリ……キリキリ……カッターナイフの音
	//★徒歩：ＳＥカッター
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,1100,0,1000,null,false);

	PrintFadeNut("上背景", 500, true);
	//PrintDrawNut("上背景", 500, 100, "slide_01_00_0", true);

	OnBG_mono(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);
	//DrawDelete("上背景", 500, 100, null, "slide_01_00_1", true);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	MoveEX($C_次, 400, 0, -40, Dxl1, false);
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100860nko">
「いやだ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($C_今, 400, @0, @-40, Axl1, false);
	DeleteSt("C",400,true);

//◆ＳＥ：キリキリ……キリキリ……カッターナイフの音
	//★徒歩：ＳＥカッター
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いb");
	MusicStart("SE01",0,1300,0,1000,null,false);

	PrintFadeNut("上背景", 500, true);
	//PrintDrawNut("上背景", 500, 100, "slide_01_00_0", true);

	OnBG_mono(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);
	//DrawDelete("上背景", 500, 100, null, "slide_01_00_1", true);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	MoveEX($C_次, 400, 0, -40, Dxl1, false);
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100870nko">
「みんな」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move($C_今, 400, @0, @-40, Axl1, false);
	DeleteSt("C",400,true);

//◆ＳＥ：キリキリ……キリキリ……カッターナイフの音
	//★徒歩：ＳＥカッター
	CreateSE("SE01","se戦闘_カッター_刃出す03遅いa");
	MusicStart("SE01",0,1500,0,1000,null,false);

	PrintFadeNut("上背景", 500, true);
	//PrintDrawNut("上背景", 500, 100, "slide_01_00_0", true);

	OnBG_mono(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

	FadeDelete("上背景", 500, null, true);
	//DrawDelete("上背景", 500, 100, null, "slide_01_00_1", true);

	St2("C",700, @0,@0,"fuノーコa_通常_normal","cg2/",".png");
	MoveEX($C_次, 400, 0, -40, Dxl1, false);
	FadeSt("C",400,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100880nko">
「しね」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	DeleteSt("C",300,false);
	Zoom($C_今, 300, 1200, 1200, Axl2, false);

	PrintFadeNut("上背景", 300, true);

{	ClockPass(1808);}



	Wait(2000);

//◆ＳＥ：キリキリ……キリキリ……カッターナイフの音
	//★徒歩：ＳＥカッター
	CreateSE("SE01","se戦闘_カッター_刃出す03遅い");
	MusicStart("SE01",0,950,0,1000,null,true);

	CreateTextureEX_mono("絵背景１", 2000, 0, InBottom, "cg/bg/bg0301100あにのあな_正面_通常.jpg");
	Rotate("絵背景１", 0, @0, @0, @-180, null, true);
	CreateTextureEX_mono("絵背景２", 2000, 0, 0, "cg/bg/bg0302111あにのあな_店内_通常.jpg");
//	Rotate("絵背景２", 0, @0, @0, @-180, null, true);
	Request("絵背景２", OverlayRender);
	CreateTextureEX("絵人物１", 2000, 0, 0, "cg/bu/l/buノーコa_通常_normal_x03.png");

	CreateTextureSPsub("エフェクト３", 18000, 0, 0, "cg/data/noize_01_00_0.png");
	CreateTextureSPsub("エフェクト４", 18000, 0, 0, "cg/data/noize_01_00_0.png");
	SetTone("@エフェクト３", Monochrome);
	SetTone("@エフェクト４", Monochrome);
	Rotate("エフェクト４", 0, @180, @180, @0, null, true);
	//▼繰り返し
	CreateAFB1("@エフェクト３","@エフェクト４",64,200,300,2);

	Fade("絵人物１", 1000, 600, null, false);
	Move("絵人物１", 100000, @0, @-2100, null, false);

	Fade("絵背景１", 1000, 1000, null, false);
	Move("絵背景１", 100000, @0, 0, null, false);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100890nko">
「…………」

{	Fade("絵背景２", 0, 1000, null, true);
	Fade("絵背景２", 500, 0, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100900nko">
「……たえられない」

{	Fade("絵背景２", 0, 1000, null, true);
	Fade("絵背景２", 500, 0, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100910nko">
「いないなんて」

{	Fade("絵背景２", 0, 1000, null, true);
	Fade("絵背景２", 500, 0, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100920nko">
「おかしい」

{	Fade("絵背景２", 0, 1000, null, true);
	Fade("絵背景２", 500, 0, null, false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100930nko">
「わたしは」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//◆ＳＥ：キリキリ……キリキリ……カッターナイフの音
	SetVolume("@x*", 0, 1, NULL);

	//★徒歩：ＳＥカッター
	CreateSE("SE01","se戦闘_カッター_刃出す02早いa");
	MusicStart("SE01",0,1800,0,1000,null,false);

	TextBoxDelete(0);

	PrintFadeNut("上背景", 0, true);
	//PrintDrawNut("上背景", 500, 100, "slide_01_00_0", true);

	//▼繰り返し：停止
	AFB1stop();

	Delete("エフェクト３");
	Delete("エフェクト４");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0222]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100940nko">
「すてられた？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Wait(1000);

	//★徒歩：ＳＥ環境音ガヤ
	CreateSE("SE00","seガヤ_ざわざわ_l");
	MusicStart("SE00",1000,400,0,1000,null,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0223]
//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/18/000100950e07">
「さっきのヤンキー、なんだったんだ？」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	OnBG(10,"bg0302111あにのあな_店内_通常");
	FadeBG(0,true);

	St("C",700, @0,@0,"buノーコa_通常_normal");
	FadeSt("C",200,true);

	FadeDelete("上背景", 500, null, true);
	//DrawDelete("上背景", 500, 100, null, "slide_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0224]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100960nko">
「じゃま」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/18/000100970e08">
「コスプレ……じゃないっぽいよな」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000100980nko">
「どけ」

//【オタクＣ】
<voice name="オタクＣ" class="その他男声" src="voice/18/000100990e07">
「突然大声出したけど、大丈夫か？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101000nko">
「どかないと」

//【オタクＤ】
<voice name="オタクＤ" class="その他男声" src="voice/18/000101010e08">
「さあ、でもそのおかげでバイトも――」

{	St("C",700, @0,@-100,"fuノーコa_カッター_angry");
	Move($C_今, 200, @40, @0, Axl1, false);
	DeleteSt("C",200,true);
	MoveEX($C_次, 1000, 50, 0, Dxl1, false);
	FadeSt("C",1000,false);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101020nko">
「きる」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//◆ＳＥ：ザシュッ！　切る
	//★徒歩：ＳＥ切る
	CreateSE("SE01","se戦闘_切断01");
	MusicStart("SE01",0,1200,0,1000,null,false);

	SetVolume("@SE00", 0, 0, NULL);
	SetVolume("@x*", 0, 0, NULL);



	PrintFadeNut("上背景", 0, true);
	//PrintDrawNut("上背景", 1000, 100, "blind_01_00_0", true);
	Wait(3000);


{	ClockPass(1809);}

//◆場所：あにのあな_屋上
	OnBG_mono(10,"bg0303100あにのあな_屋上_通常");
	FadeBG(0,true);

//◆ＳＥ：雨音
	//★徒歩：ＳＥ
	CreateSE("SE00","se環境_雨_l");
	MusicStart("SE00",5000,500,0,1000,null,true);

	$SYSTEM_effect_rain_dencity=32;
	$SYSTEM_effect_rain_speed=128;
	CreateEffect("絵エフェクト１", 2000, 0, 0, 1024, 576, "Rain");
	SetAlias("絵エフェクト１", "絵エフェクト１");

//◆ＥＶ："ev/ev1800ノーコ雨風に濡れる.txt"
	CreateTextureEX("絵背景０", 3000, -1024, -76, "cg/ev/l/ev1800ノーコ雨風に濡れる_l_x01.jpg");
	CreateTextureEX("絵背景１", 3000, -1024, -76, "cg/ev/l/ev1800ノーコ雨風に濡れる_l.jpg");
	CreateTextureEX("絵背景２", 3000, -110, 0, "cg/ev/m/ev1800ノーコ雨風に濡れる_m.jpg");


	FadeDelete("上背景", 3000, null, true);
	//DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

	//St("C",700, @0,@0,"buノーコa_通常_normal");
	//FadeSt("C",500,true);

	Wait(500);

//◆演出指定：ＢＧＭナシで雨音のみ


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101030nko">
「いなかった」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101040nko">
「…………」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101050nko">
「いらいらする」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101060nko">
「どうして？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101070nko">
「どうして、おちつかないの？」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101080nko">
「こんなこと、なかった」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	Move("絵背景０", 5000, @0, @-500, Dxl2, false);
	Move("絵背景１", 5000, @0, @-500, Dxl2, false);
	Fade("絵背景０", 2000, 1000, null, false);
	Wait(2000);
	Fade("絵背景１", 1000, 1000, null, false);
	Wait(1000);
//	Move("絵背景２", 2000, @0, -60, Dxl1, false);
	Move("絵背景２", 2000, @0, -30, Dxl1, false);
	Fade("絵背景２", 2000, 1000, null, true);

	Delete("絵エフェクト１");
	Delete("絵背景０");
	Delete("絵背景１");

	CreateTextureEX("絵背景０", 3000, -1024, Middle, "cg/bg/l/bg0108200秋葉原_俯瞰_閉店_l.jpg");
	CreateTextureEX("絵背景１", 3000, 0, 0, "cg/ev/ev1800ノーコ雨風に濡れる.jpg");
	CreateTextureEX("絵背景３", 3000, -220, -80, "cg/ev/l/ev1800ノーコ雨風に濡れる_l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
//★徒歩：この台詞いるかな？
　ふらり……ノーコは、屋上の端に立つ。

{	Move("絵背景０", 60000, 0, @0, null, false);
	Fade("絵背景０", 2000, 500, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101090nko">
「ひとが、ごみみたい」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101100nko">
「きえて、しまえ」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101110nko">
「せかい……」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101120nko">
「ここは、せかいのおわり」

{	Fade("絵背景１", 2000, 1000, null, true);
	Delete("絵背景０");}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101130nko">
「おわってしまう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101140nko">
「にとりが、いなくなってしまう」

//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101150nko">
「にとりが、いないせかいなんて」

{	Fade("絵背景３", 0, 1000, null, true);}
//【ノーコ】
<voice name="ノーコ" class="ノーコ" src="voice/18/000101160nko">
「きらい」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);


	Request("絵背景３", Lock);
	ClearFadeNut(200, true);
	Request("絵背景３", UnLock);

//ノーコ、屋上から飛び降りる
//	CreateTextureEX("絵背景３", 2000, 0, -576, "cg/ev/l/ev1800ノーコ雨風に濡れる_l.jpg");
	Fade("絵背景３", 0, 0, null, true);
	Move("絵背景３", 0, 0, -576, null, true);
	SetBlur("絵背景３", true, 3, 500, 50, false);

	CreateColorEX("絵色１", 10000, "#000000");
	CreateTextureEX("絵背景１", 3000, 0, 0, "cg/bg/bg2401100空_上空_通常.jpg");

	CreateTextureEX("絵人物１", 3000, -550, -700, "cg/bu/l/buノーコa_通常_normal_x02.png");
	Request("絵人物１", Smoothing);
	Rotate("絵人物１", 0, @0, @0, -55, null, true);
	Zoom("絵人物１", 0, 2500, 2500, Dxl2, true);
	SetShade("絵人物１", MEDIUM);

	SetVolume("SE00", 1000, 0, NULL);

	Fade("絵背景３", 300, 1000, null, false);
	Move("絵背景３", 650, 0, 0, Axl1, false);
	Fade("絵色１", 600, 1000, null, true);
	Delete("絵背景３");

	Fade("絵人物１", 0, 1000, null, false);
	Fade("絵背景１", 0, 1000, null, false);

	Move("絵人物１", 2000, @-50, @-25, Dxl3, false);
	Fade("絵色１", 400, 0, null, true);
	Wait(500);

	Move("絵人物１", 400, @-20, @-20, Axl1, false);
	Zoom("絵人物１", 400, 2600, 2600, Axl1, false);
	Fade("絵色１", 400, 1000, null, true);

	EndScene();

}




















