
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ba2220千秋_恵那.nss_MAIN
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

	//★徒歩：フラグ修正
	if($CharaName=="千秋"){
		if(Substr($myRoute,0,2)=="ba"){
			$GameName="ba2221千秋_恵那.nss";
		}else if(Substr($myRoute,0,2)=="bb"){
			$GameName="bb2221千秋_恵那_h.nss";
		}
	}else if($CharaName=="恵那"){
		if(Substr($myRoute,0,2)=="ba"){
			$GameName="ba2221千秋_恵那.nss";
		}else if(Substr($myRoute,0,2)=="bb"){
			$GameName="bb2221千秋_恵那_h.nss";
		}
	}
}

scene ba2220千秋_恵那.nss
{
	$スクリプトバージョン = "  Version $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//<continuation number="110">
////////////header////////////
//file name "ba2220千秋_恵那.nss"
//title "未遂事件！！"
//previous "b2210千秋_恵那.nss"

////////////footer////////////
//next "千秋"（flkagome2a = true） "ba2221千秋_恵那.nss"
//next "恵那"（flkagome2a = true） "ba2221千秋_恵那.nss"

//next "千秋"（flkagome2a = false） "bb2221千秋_恵那_h.nss"
//next "恵那"（flkagome2a = false） "bb2221千秋_恵那_h.nss"


////////////body////////////

//■再定義定型文
	PrintBG("上背景", 30000);

{	ClockPass(2220);}

//◆場所：小碓家_自室
	OnBG(10,"bg1601100小碓家_自室_通常");
	FadeBG(0,true);

	CreateTextureEX("絵背景", 11, @0, @0, "cg/bg/l/bg1601100小碓家_自室_通常_l.jpg");
	Move("絵背景", 0, @-200, @-300, Dxl2, true);
	Fade("絵背景", 0, 1000, null, false);
	Move("絵背景", 0, @200, @0, Dxl2, true);
	FadeDelete("上背景", 0, null, true);

//◆ＥＶ："ev/ev2220千秋恵那押し倒し.txt"

	ClockDelete(1000,false);
	CreateTextureEX("絵背景１", 2000, 0, 0, "cg/ev/ev2220千秋恵那押し倒しa.jpg");
	Fade("絵背景１", 1000, 1000, null, true);

	ClockTime(2220);

	CreateSE("SE01","se動作_抱く");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ベッドに倒れ込んだ。

{
	MusicStart("@xbgm29",0,450,0,1000,null,true);
}
//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/200200010kit">
「…………」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/200200020fje">
「…………」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(150);

	CreateTextureEX("絵背景２", 2000, 0, 0, "cg/ev/m/ev2220千秋恵那押し倒しa_m.jpg");
	Fade("絵背景２", 1000, 1000, null, true);
	Delete("絵背景１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　至近距離から見上げられ、千秋の鼓動が速くなる。

　視線が、唇に吸い寄せられる。

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/200200030kit">
「え……と……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/200200040kit">
「あの……その……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/200200050fje">
「…………うん」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/200200060fje">
「いいよ……」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/200200070kit">
「あ……」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/200200080fje">
「な、なに？」

//【小碓千秋】
<voice name="小碓千秋" class="小碓千秋" src="voice/ba22/200200090kit">
「そんな声、初めて――」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/200200100fje">
「…………」

//【富士見恵那】
<voice name="富士見恵那" class="富士見恵那" src="voice/ba22/200200110fje">
「バカ」

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	SetVolumeEX("@x*", 2000, 0, NULL);

	TextBoxDelete(150);

// 次ファイル状態つなぎ未処理


	EndScene();
}
