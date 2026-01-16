
//■ベースナット
function DialogBase($ダイアログ画像名)
{

//	CreateName("MSGWND");

	//▲画像ロード


	//■定義「背景」
	if(!$InDialog){
		CreateColor("MSGWND/MSG_bak", 1010000, Center, Middle, 1024, 576, BLACK);
	}

	//■定義「選択肢」
	//box
	CreateTexture("MSGWND/MSG_msg",1010000,333,-99,"cg/sys/dialog/絵馬ベース.png");
	Request("MSGWND/MSG_msg", Smoothing);

	if($ダイアログ画像名=="text_初期設定"){
		$DialogNut="cg/sys/dialog/"+$ダイアログ画像名+".png";
	}else{
		if($GameCircle&&!$PLACE_reco&&$GameName!="0000キャラクター選択.nss"&&Substr($GameName,0,1)!="z"&&!Strstr($GameName,"カゴメ")&&!$PLACE_end){
			$DialogNut="cg2/sys/dialog/"+$ダイアログ画像名+".png";
		}else{
			$DialogNut="cg/sys/dialog/"+$ダイアログ画像名+".png";
		}
	}
	CreateTexture("MSGWND/MSG_txt",1010000,377,242,$DialogNut);
	Request("MSGWND/MSG_txt", Smoothing);
	//YES
	CreateTexture("MSGWND/MSG_img_yes",1012000,382,305,"cg/sys/dialog/はいoff.png");
	CreateChoice("MSGWND/MSG_yes");
	CreateTexture("MSGWND/MSG_yes/MouseUsual/img",1012000,382,305,"cg/sys/dialog/はいhit.png");
	//CreateTexture("MSGWND/MSG_yes/MouseUsual/img2",1012000,382,305,"cg/sys/dialog/はいoff.png");
	CreateTexture("MSGWND/MSG_yes/MouseOver/img",1011000,382,305,"cg/sys/dialog/はいover.png");
	CreateTexture("MSGWND/MSG_yes/MouseClick/img",1011000,382,305,"cg/sys/dialog/はいon.png");
	Request("MSGWND/MSG_yes/MouseUsual/img", Erase);
	//NO
	CreateTexture("MSGWND/MSG_img_no",1012000,526,305,"cg/sys/dialog/いいえoff.png");
	CreateChoice("MSGWND/MSG_no");
	CreateTexture("MSGWND/MSG_no/MouseUsual/img",1012000,526,305,"cg/sys/dialog/はいhit.png");
	//CreateTexture("MSGWND/MSG_no/MouseUsual/img2",1012000,526,305,"cg/sys/dialog/いいえoff.png");
	CreateTexture("MSGWND/MSG_no/MouseOver/img",1011000,526,305,"cg/sys/dialog/いいえover.png");
	CreateTexture("MSGWND/MSG_no/MouseClick/img",1011000,526,305,"cg/sys/dialog/いいえon.png");
	Request("MSGWND/MSG_no/MouseUsual/img", Erase);

	//▲セットフォーカス
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",LEFT);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",RIGHT);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",DOWN);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",UP);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",LEFT);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",RIGHT);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",DOWN);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",UP);

	//●最終準備
	Fade("MSGWND/MSG_*",0,0,null,false);
	Fade("MSGWND/MSG_*/*/*",0,0,null,false);
	Move("MSGWND/MSG_img_no", 0, @0, @-400, null, false);
	Move("MSGWND/MSG_img_yes", 0, @0, @-400, null, false);
	Move("MSGWND/MSG_msg", 0, @0, @-400, null, false);
	Move("MSGWND/MSG_txt", 0, @0, @-400, null, true);
//	Move("MSGWND/MSG_*/MouseUsual/*", 0, @0, @-400, null, true);

	//★描画開始
	Fade("MSGWND/MSG_img_*",0,1000,null,false);
	Fade("MSGWND/MSG_msg",0,1000,null,false);
	Fade("MSGWND/MSG_txt",0,1000,null,false);
	Fade("MSGWND/MSG_*/MouseUsual/*",0,1000,null,true);
	//Fade("MSGWND/MSG_bak",150,800,null,false);

	Move("MSGWND/MSG_img_no", 150, @0, @400, Axl2, false);
	Move("MSGWND/MSG_img_yes", 150, @0, @400, Axl2, false);
	Move("MSGWND/MSG_msg", 150, @0, @400, Axl2, false);
	Move("MSGWND/MSG_txt", 150, @0, @400, Axl2, true);
//	Move("MSGWND/MSG_*/MouseUsual/*", 150, @0, @400, Axl2, true);

	Shake("MSGWND/MSG_img_no", 100, 0, 30, 0, 0, 300, Dxl1, false);
	Shake("MSGWND/MSG_img_yes", 100, 0, 30, 0, 0, 300, Dxl1, false);
	Shake("MSGWND/MSG_msg", 100, 0, 30, 0, 0, 300, Dxl1, false);
	Shake("MSGWND/MSG_txt", 100, 0, 30, 0, 0, 300, Dxl1, false);
//	Shake("MSGWND/MSG_*/MouseUsual/*", 100, 0, 30, 0, 0, 300, Dxl1, false);
	FadePC2_Dialog("MSGWND/MSG_img_no",0,1000,150,0,30,null,false);
	FadePC2_Dialog("MSGWND/MSG_img_yes",0,1000,150,0,30,null,false);
	FadePC2_Dialog("MSGWND/MSG_msg",0,1000,150,0,30,null,false);
	FadePC2_Dialog("MSGWND/MSG_txt",0,1000,150,0,30,null,false);
//	FadePC2_Dialog("MSGWND/MSG_*/MouseUsual/*",0,1000,150,0,30,null,false);

	WaitAction("MSGWND/MSG_*",null);
}

//■終了演出
function DialogEnd()
{
	Move("MSGWND/MSG_*/MouseOver/*", 150, @0, @-450, Axl2, false);
	Move("MSGWND/MSG_*/MouseClick/*", 150, @0, @-450, Axl2, false);

	Move("MSGWND/MSG_img_yes", 150, @0, @-450, Axl2, false);
	Move("MSGWND/MSG_img_no", 150, @0, @-450, Axl2, false);
	Move("MSGWND/MSG_msg", 150, @0, @-450, Axl2, false);
	Move("MSGWND/MSG_txt", 150, @0, @-450, Axl2, false);
//	Move("MSGWND/MSG_*/MouseUsual/*", 150, @0, @-450, Axl2, false);
	WaitAction("MSGWND/MSG_*",null);

	Delete("MSGWND");
}





//■ダイアログツイッター
function Dialogtwitter()
{
	if(!$SYSTEM_twitter_lock){
		call_chapter nss/sys_twitter.nss;
	}
}

//■ダイアログフルスクリーン
function DialogFull()
{
	if(!#SYSTEM_window_full_lock){
		#SYSTEM_window_full=!#SYSTEM_window_full;
		#SYSTEM_window_full_lock=false;
		Wait(300);
		$SYSTEM_keydown_f=false;
	}
}

//■ダイアログクローズ
function DialogClose()
{
	DialogGo();

	$InDialog=true;
	if($Title_Config){call_chapter nss/sys_close.nss->main2;}
	else{call_chapter nss/sys_close.nss;}
	$InDialog=false;

	DialogReturn();
}

//■ダイアログタイトル
function DialogTitle()
{
	DialogGo();

	$InDialog=true;
	call_chapter nss/sys_reset.nss;
	$InDialog=false;

	DialogReturn();
}

//■ダイアログバックセレクト
function DialogBack()
{
	DialogGo();

	$InDialog=true;
	call_chapter nss/sys_backselect.nss;
	$InDialog=false;

	DialogReturn();
}












function DialogGo()
{
	//▽移行演出
	Move("MSGWND/MSG_*/MouseOver/*", 150, @0, @-450, Axl2, false);
	Move("MSGWND/MSG_*/MouseClick/*", 150, @0, @-450, Axl2, false);

	Move("MSGWND/MSG_img_yes", 150, @0, @-450, Axl2, false);
	Move("MSGWND/MSG_img_no", 150, @0, @-450, Axl2, false);
	Move("MSGWND/MSG_msg", 150, @0, @-450, Axl2, false);
	Move("MSGWND/MSG_txt", 150, @0, @-450, Axl2, false);
//	Move("MSGWND/MSG_*/MouseUsual/*", 150, @0, @-450, Axl2, false);
	WaitAction("MSGWND/MSG_*",null);

	Fade("MSGWND/MSG_*/MouseOver/*", 0, 0, null, true);
	Fade("MSGWND/MSG_*/MouseClick/*", 0, 0, null, true);
	Move("MSGWND/MSG_*/MouseOver/*", 0, @0, @450, Axl2, true);
	Move("MSGWND/MSG_*/MouseClick/*", 0, @0, @450, Axl2, true);
}
function DialogReturn()
{
	//▽戻り演出
	Move("MSGWND/MSG_img_yes", 0, @0, @50, Axl2, false);
	Move("MSGWND/MSG_img_no", 0, @0, @50, Axl2, false);
	Move("MSGWND/MSG_msg", 0, @0, @50, Axl2, false);
	Move("MSGWND/MSG_txt", 0, @0, @50, Axl2, true);
//	Move("MSGWND/MSG_*/MouseUsual/*", 0, @0, @50, Axl2, true);

	Move("MSGWND/MSG_img_yes", 150, @0, @400, Axl2, false);
	Move("MSGWND/MSG_img_no", 150, @0, @400, Axl2, false);
	Move("MSGWND/MSG_msg", 150, @0, @400, Axl2, false);
	Move("MSGWND/MSG_txt", 150, @0, @400, Axl2, true);
//	Move("MSGWND/MSG_*/MouseUsual/*", 150, @0, @400, Axl2, true);

	Shake("MSGWND/MSG_img_yes", 100, 0, 30, 0, 0, 300, Dxl1, false);
	Shake("MSGWND/MSG_img_no", 100, 0, 30, 0, 0, 300, Dxl1, false);
	Shake("MSGWND/MSG_msg", 100, 0, 30, 0, 0, 300, Dxl1, false);
	Shake("MSGWND/MSG_txt", 100, 0, 30, 0, 0, 300, Dxl1, false);
//	Shake("MSGWND/MSG_*/MouseUsual/*", 100, 0, 30, 0, 0, 300, Dxl1, false);
	FadePC2_Dialog("MSGWND/MSG_img_yes",0,1000,150,0,30,null,false);
	FadePC2_Dialog("MSGWND/MSG_img_no",0,1000,150,0,30,null,false);
	FadePC2_Dialog("MSGWND/MSG_msg",0,1000,150,0,30,null,false);
	FadePC2_Dialog("MSGWND/MSG_txt",0,1000,150,0,30,null,false);
//	FadePC2_Dialog("MSGWND/MSG_*/MouseUsual/*",0,1000,150,0,30,null,false);

	WaitAction("MSGWND/MSG_*",null);

	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;
}

function FadePC2_Dialog("ナット名",描画時間,透過度,t,$x,$y,テンポ, 待ち)
{
	$X1 = $x;
	$Y1 = $y;
	$X2 = - $x / 2;
	$Y2 = - $y / 2;


	Fade("ナット名",描画時間,透過度,null,false);
	BezierMove("ナット名", t, (@0,@0){@$X1,@$Y1}{@$X1,@$Y1}(@0,@0){@$X2,@$Y2}{@$X2,@$Y2}(@0,@0), テンポ, 待ち);
}
function FadePC3_Dialog("ナット名",描画時間,透過度,t,$x,$y,テンポ, 待ち)
{
	$X1 = $x;
	$Y1 = $y;
	$X2 = - $x / 2;
	$Y2 = - $y / 2;
	$X3 = $x / 3;
	$Y3 = $y / 3;

	Fade("ナット名",描画時間,透過度,null,false);
	BezierMove("ナット名", t, (@0,@0){@$X1,@$Y1}{@$X1,@$Y1}(@0,@0){@$X2,@$Y2}{@$X2,@$Y2}(@0,@0){@$X3,@$Y3}{@$X3,@$Y3}(@0,@0), テンポ, 待ち);
}



//■オートセーブ
function SaveAXNL()
{
	if($GameCircle&&!$PLACE_reco&&$GameName!="0000キャラクター選択.nss"&&Substr($GameName,0,1)!="z"&&!Strstr($GameName,"カゴメ")&&!$PLACE_end){
		if(!#START_FLAG){
			//▽アザナエル：ラテ到達前セーブ
			Save(10000);
		}else{
			//時刻表最新地点
			AXNL_IsFree($GameName);

			//▽アザナエル：事刻表用「途中から始める」セーブ
			if(#RouteName=="トゥルー"){$_route=1;}
			else if(#RouteName=="a"){$_route=2;}
			else if(#RouteName=="aa"){$_route=3;}
			else if(#RouteName=="ab"){$_route=4;}
			else if(#RouteName=="aba"){$_route=5;}
			else if(#RouteName=="abb"){$_route=6;}
			else if(#RouteName=="b"){$_route=7;}
			else if(#RouteName=="ba"){$_route=8;}
			else if(#RouteName=="baa"){$_route=9;}
			else if(#RouteName=="bab"){$_route=10;}
			else if(#RouteName=="bb"){$_route=11;}
			else if(#RouteName=="c"){$_route=12;}
			else if(#RouteName=="d"){$_route=13;}
			else if(#RouteName=="e"){$_route=14;}
			$_num=String("1%06d%02d",AXNL_GetTimezoneScriptSerialNumber($GameName,#CharaName),$_route);
			#SYSTEM_save_thumbnail_width=1024;
			#SYSTEM_save_thumbnail_height=576;
			Save($_num);
		}
	}
}


