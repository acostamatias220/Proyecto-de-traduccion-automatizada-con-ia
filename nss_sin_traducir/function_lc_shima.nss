
function Shake_Loop_shima($ループシェイク背景名,$シェイクプロセス名){


	CreateProcess($シェイクプロセス名, 150, 0, 0, "Shake_LoopProcess_shima");
	Request($シェイクプロセス名, Start);
	SetAlias($シェイクプロセス名,$シェイクプロセス名);

}

function Shake_LoopProcess_shima(){

	begin:

	while(1){

		Shake($ループシェイク背景名, 60000, 0, 1, 0, 0, 500, null, true);

	}


}

function Shake_Loop_shima2($ループシェイク背景名,$シェイクプロセス名){


	CreateProcess($シェイクプロセス名, 150, 0, 0, "Shake_LoopProcess_shima2");
	Request($シェイクプロセス名, Start);
	SetAlias($シェイクプロセス名,$シェイクプロセス名);

}

function Shake_LoopProcess_shima2(){

	begin:

	while(1){

		Shake($ループシェイク背景名, 60000, 2, 3, 0, 0, 1000, null, true);

	}


}

function Shake_Loop_shima3($ループシェイク背景名,$シェイクプロセス名){


	CreateProcess($シェイクプロセス名, 150, 0, 0, "Shake_LoopProcess_shima3");
	Request($シェイクプロセス名, Start);
	SetAlias($シェイクプロセス名,$シェイクプロセス名);

}

function Shake_LoopProcess_shima3(){

	begin:

	while(1){

		Shake($ループシェイク背景名, 2000, 1, 4, 0, 0, 1000, null, true);
		Shake($ループシェイク背景名, 4000, 2, 1, 0, 0, 1000, null, true);
		Shake($ループシェイク背景名, 2000, 1, 4, 0, 0, 1000, null, true);
		Shake($ループシェイク背景名, 3000, 3, 5, 0, 0, 1000, null, true);
		Shake($ループシェイク背景名, 4000, 1, 3, 0, 0, 1000, null, true);
		Shake($ループシェイク背景名, 2000, 0, 5, 0, 0, 1000, null, true);

	}


}

function Shake_Loop_shima4($ループシェイク背景名,$シェイクプロセス名){


	CreateProcess($シェイクプロセス名, 150, 0, 0, "Shake_LoopProcess_shima4");
	Request($シェイクプロセス名, Start);
	SetAlias($シェイクプロセス名,$シェイクプロセス名);

}

function Shake_LoopProcess_shima4(){

	begin:

	while(1){

		Shake($ループシェイク背景名, 60000, 0, 1, 0, 0, 500, null, true);

	}


}

function 2320_Shake($2320_背景01,$2320_x座標def01){

	Request("@絵2320_shake01", Stop);
	Delete("@絵2320_shake01");

	CreateProcess("絵2320_shake01", 150, 0, 0, "2320_shakeprocess");
	SetAlias("絵2320_shake01","絵2320_shake01");
	Request("絵2320_shake01", Start);

//	CreateProcess("絵2320_shake02", 150, 0, 0, "2320_shakeprocess2");
//	SetAlias("絵2320_shake02","絵2320_shake02");

	$2320_randtimedef1 = 1000;
	$2320_randtimedef2 = 500;
//	$2320_randtimedef3 = 10;

	$2320_x座標01 = $2320_x座標def01;
	$2320_x座標p01 = $2320_x座標def01-5;
	$2320_x座標p02 = $2320_x座標def01-10;
	$2320_x座標p03 = $2320_x座標def01-20;
	$2320_x座標m01 = $2320_x座標def01+10;
	$2320_x座標m02 = $2320_x座標def01+15;


}

function 2320_shakeprocess(){

	begin:

	while(1){

	$2320_rand1 = Random(3)+1;
	$2320_randtime1 = $2320_rand1 * $2320_randtimedef1;
	$2320_randtime2 = $2320_rand1 * $2320_randtimedef2;

	Shake($2320_背景01, 30000, 0, 1, 0, 0, 300, null, false);

//	Request("@絵2320_shake02", Start);
	Wait($2320_randtime1);
//	Request("@絵2320_shake02", Stop);
//	Move($2320_背景01, 200, @0, 0, Dxl1, true);
	Shake($2320_背景01, 30000, 0, 0, 0, 0, 300, null, false);

	Move($2320_背景01, 50, @0, $2320_x座標p02, Dxl1, true);
	Move($2320_背景01, 75, @0, $2320_x座標01, Axl1, true);

	Shake($2320_背景01, 30000, 0, 1, 0, 0, 300, null, false);
//	Request("@絵2320_shake02", Start);
	Wait($2320_randtime2);
//	Request("@絵2320_shake02", Stop);
//	Move($2320_背景01, 200, @0, 0, Dxl1, true);

	if($2320_rand1==1){
	Shake($2320_背景01, 30000, 0, 0, 0, 0, 300, null, false);
		Move($2320_背景01, 50, @0, $2320_x座標p03, Dxl1, true);
		Move($2320_背景01, 75, @0, $2320_x座標m01, Axl1, true);
		Move($2320_背景01, 75, @0, $2320_x座標01, Axl1, true);
	}else if($2320_rand1==2){
	Shake($2320_背景01, 30000, 0, 0, 0, 0, 300, null, false);
		Move($2320_背景01, 50, @0, $2320_x座標p03, Dxl1, true);
		Move($2320_背景01, 75, @0, $2320_x座標m02, Axl1, true);
		Move($2320_背景01, 50, @0, $2320_x座標p02, Dxl1, true);
		Move($2320_背景01, 75, @0, $2320_x座標m01, Axl1, true);
		Move($2320_背景01, 50, @0, $2320_x座標p01, Dxl1, true);
		Move($2320_背景01, 75, @0, $2320_x座標01, Axl1, true);
	}else if($2320_rand1==3){
	Shake($2320_背景01, 30000, 0, 0, 0, 0, 300, null, false);
		Move($2320_背景01, 50, @0, $2320_x座標p03, Dxl1, true);
		Move($2320_背景01, 75, @0, $2320_x座標m01, Axl1, true);
		Move($2320_背景01, 50, @0, $2320_x座標p02, Dxl1, true);
		Move($2320_背景01, 75, @0, $2320_x座標01, Axl1, true);
	}else if($2320_rand1==4){
	Shake($2320_背景01, 30000, 0, 0, 0, 0, 300, null, false);
		Move($2320_背景01, 50, @0, $2320_x座標p02, Dxl1, true);
		Move($2320_背景01, 75, @0, $2320_x座標m01, Axl1, true);
		Move($2320_背景01, 50, @0, $2320_x座標p01, Dxl1, true);
		Move($2320_背景01, 75, @0, $2320_x座標01, Axl1, true);
	}

	Shake($2320_背景01, 30000, 0, 1, 0, 0, 300, null, false);

	}


}

function 2320_shakeprocess2(){

	begin:

	while(1){

	$2320_rand2 = Random(4)+1;
	$2320_randtime3 = $2320_rand2 * $2320_randtimedef3;

	Move($2320_背景01, $2320_randtime3, @0, 2, Dxl1, true);
	Move($2320_背景01, $2320_randtime3, @0, -2, Axl1, true);
	Move($2320_背景01, $2320_randtime3, @0, 2, Dxl1, true);
	Move($2320_背景01, $2320_randtime3, @0, -2, Axl1, true);
	Move($2320_背景01, $2320_randtime3, @0, 2, Dxl1, true);
	Move($2320_背景01, $2320_randtime3, @0, -2, Axl1, true);
	Move($2320_背景01, $2320_randtime3, @0, 2, Dxl1, true);
	Move($2320_背景01, $2320_randtime3, @0, -2, Axl1, true);

	}


}

function 2320_Shake02($2320_背景02,$2320_x座標def02){

	Request("@絵2320_shake02", Stop);
	Delete("@絵2320_shake02");

	CreateProcess("絵2320_shake02", 150, 0, 0, "2320_shakeprocess02");
	SetAlias("絵2320_shake02","絵2320_shake02");
	Request("絵2320_shake02", Start);

//	CreateProcess("絵2320_shake02", 150, 0, 0, "2320_shakeprocess2");
//	SetAlias("絵2320_shake02","絵2320_shake02");

	$2320_randtimedef1_02 = 1000;
	$2320_randtimedef2_02 = 500;
//	$2320_randtimedef3 = 10;

	$2320_x座標01_02 = $2320_x座標def02;
	$2320_x座標p01_02 = $2320_x座標def02-5;
	$2320_x座標p02_02 = $2320_x座標def02-10;
	$2320_x座標p03_02 = $2320_x座標def02-20;
	$2320_x座標m01_02 = $2320_x座標def02+10;
	$2320_x座標m02_02 = $2320_x座標def02+15;

}

function 2320_shakeprocess02(){

	begin:

	while(1){

		$2320_rand1_02 = Random(3)+1;
		$2320_randtime1_02 = $2320_rand1_02 * $2320_randtimedef1_02;
		$2320_randtime2_02 = $2320_rand1_02 * $2320_randtimedef2_02;
	
		Shake($2320_背景02, 30000, 0, 1, 0, 0, 300, null, false);
	
		Wait($2320_randtime1_02);
		Shake($2320_背景02, 30000, 0, 0, 0, 0, 300, null, false);
	
		Move($2320_背景02, 50, @0, $2320_x座標p02_02, Dxl1, true);
		Move($2320_背景02, 75, @0, $2320_x座標01_02, Axl1, true);
	
		Shake($2320_背景02, 30000, 0, 1, 0, 0, 300, null, false);
		Wait($2320_randtime2_02);
	
		if($2320_rand1_02==1){
		Shake($2320_背景02, 30000, 0, 0, 0, 0, 300, null, false);
			Move($2320_背景02, 50, @0, $2320_x座標p03_02, Dxl1, true);
			Move($2320_背景02, 75, @0, $2320_x座標m01_02, Axl1, true);
			Move($2320_背景02, 75, @0, $2320_x座標01_02, Axl1, true);
		}else if($2320_rand1_02==2){
		Shake($2320_背景02, 30000, 0, 0, 0, 0, 300, null, false);
			Move($2320_背景02, 50, @0, $2320_x座標p03_02, Dxl1, true);
			Move($2320_背景02, 75, @0, $2320_x座標m02_02, Axl1, true);
			Move($2320_背景02, 50, @0, $2320_x座標p02_02, Dxl1, true);
			Move($2320_背景02, 75, @0, $2320_x座標m01_02, Axl1, true);
			Move($2320_背景02, 50, @0, $2320_x座標p01_02, Dxl1, true);
			Move($2320_背景02, 75, @0, $2320_x座標01_02, Axl1, true);
		}else if($2320_rand1_02==3){
		Shake($2320_背景02, 30000, 0, 0, 0, 0, 300, null, false);
			Move($2320_背景02, 50, @0, $2320_x座標p03_02, Dxl1, true);
			Move($2320_背景02, 75, @0, $2320_x座標m01_02, Axl1, true);
			Move($2320_背景02, 50, @0, $2320_x座標p02_02, Dxl1, true);
			Move($2320_背景02, 75, @0, $2320_x座標01_02, Axl1, true);
		}else if($2320_rand1_02==4){
		Shake($2320_背景01_02, 30000, 0, 0, 0, 0, 300, null, false);
			Move($2320_背景02, 50, @0, $2320_x座標p02_02, Dxl1, true);
			Move($2320_背景02, 75, @0, $2320_x座標m01_02, Axl1, true);
			Move($2320_背景02, 50, @0, $2320_x座標p01_02, Dxl1, true);
			Move($2320_背景02, 75, @0, $2320_x座標01_02, Axl1, true);
		}
	
		Shake($2320_背景02, 30000, 0, 1, 0, 0, 300, null, false);

	}


}

function 2320_shakeprocess2(){

	begin:

	while(1){

	$2320_rand2 = Random(4)+1;
	$2320_randtime3 = $2320_rand2 * $2320_randtimedef3;

	Move($2320_背景01, $2320_randtime3, @0, 2, Dxl1, true);
	Move($2320_背景01, $2320_randtime3, @0, -2, Axl1, true);
	Move($2320_背景01, $2320_randtime3, @0, 2, Dxl1, true);
	Move($2320_背景01, $2320_randtime3, @0, -2, Axl1, true);
	Move($2320_背景01, $2320_randtime3, @0, 2, Dxl1, true);
	Move($2320_背景01, $2320_randtime3, @0, -2, Axl1, true);
	Move($2320_背景01, $2320_randtime3, @0, 2, Dxl1, true);
	Move($2320_背景01, $2320_randtime3, @0, -2, Axl1, true);

	}


}


//後ろで会話が繋がっているようなイメージ
function 1820_seprocess(){

//--------//
//※本番用
//--------//
	$1820_01="voice/18/200200900mpt.ogg";
	$1820_02="voice/18/200200910mpt.ogg";
	$1820_03="voice/18/200200920mpt.ogg";
	$1820_04="voice/18/200200930mpt.ogg";
	$1820_05="voice/18/200200940mpt.ogg";
	$1820_06="voice/18/200200950mpt.ogg";
	$1820_07="voice/18/200200960mpt.ogg";

/*======================================
//テスト用
	$1820_01="voice/18/000400320skr.wav";
	$1820_02="voice/18/000400330skr.wav";
	$1820_03="voice/18/000400360skr.wav";
	$1820_04="voice/18/000400370skr.wav";
	$1820_05="voice/18/000400400skr.wav";
	$1820_06="voice/18/000400410skr.wav";
	$1820_07="voice/18/000400440skr.wav";
======================================
*/

	CreateSound("V01", VOICE, $1820_01);
	CreateSound("V02", VOICE, $1820_02);
	CreateSound("V03", VOICE, $1820_03);
	CreateSound("V04", VOICE, $1820_04);
	CreateSound("V05", VOICE, $1820_05);
	CreateSound("V06", VOICE, $1820_06);
	CreateSound("V07", VOICE, $1820_07);
	SetAlias("V01","V01");
	SetAlias("V02","V02");
	SetAlias("V03","V03");
	SetAlias("V04","V04");
	SetAlias("V05","V05");
	SetAlias("V06","V06");
	SetAlias("V07","V07");

	$1820_V01 = RemainTime("V01");
	$1820_V02 = RemainTime("V02");
	$1820_V03 = RemainTime("V03");
	$1820_V04 = RemainTime("V04");
	$1820_V05 = RemainTime("V05");
	$1820_V06 = RemainTime("V06");
	$1820_V07 = RemainTime("V07");

	$1820_ボリューム調整=200;
	$1820_間調整00=300;
//「あ……もしもし？」
	$1820_間調整01=2000;
//「あ、そう。覚悟が決まったのね」
	$1820_間調整02=1000;
//「サポートの人も見つかった？ ミヅハは追い出すアテができてるわけ？」
	$1820_間調整03=3000;
//「……ＯＫ。期待してるわよ」
	$1820_間調整04=2000;
//「口調は気にしないで。こっちも色々あるのよ！」
	$1820_間調整05=1500;
//「そういうこと」
	$1820_間調整06=1500;
//「わかったわ。半田明神ね」
	$1820_間調整07=500;

	SetVolume("V01", 0, $1820_ボリューム調整, NULL);
	SetVolume("V02", 0, $1820_ボリューム調整, NULL);
	SetVolume("V03", 0, $1820_ボリューム調整, NULL);
	SetVolume("V04", 0, $1820_ボリューム調整, NULL);
	SetVolume("V05", 0, $1820_ボリューム調整, NULL);
	SetVolume("V06", 0, $1820_ボリューム調整, NULL);
	SetVolume("V07", 0, $1820_ボリューム調整, NULL);

	Request("@V01",Stop);
	Request("@V02",Stop);
	Request("@V03",Stop);
	Request("@V04",Stop);
	Request("@V05",Stop);
	Request("@V06",Stop);
	Request("@V07",Stop);

	CreateProcess("1820_VOICE", 150, 0, 0, "1820_process");
	SetAlias("1820_VOICE","1820_VOICE");
	Request("1820_VOICE", Start);


}

function 1820_process(){

	begin:


	Wait($1820_間調整00);

	Request("@V01",Play);

	Wait($1820_V01);
	Wait($1820_間調整01);
	Delete("@V01");

	Request("@V02",Play);

	Wait($1820_V02);
	Wait($1820_間調整02);
	Delete("@V02");

	Request("@V03",Play);

	Wait($1820_V03);
	Wait($1820_間調整03);
	Delete("@V03");

	Request("@V04",Play);
	Wait($1820_V04);
	Wait($1820_間調整04);
	Delete("@V04");

	Request("@V05",Play);

	Wait($1820_V05);
	Wait($1820_間調整05);
	Delete("@V05");

	Request("@V06",Play);

	Wait($1820_V06);
	Wait($1820_間調整06);
	Delete("@V06");

	Request("@V07",Play);

	Wait($1820_V07);
	Wait($1820_間調整07);
	Delete("@V07");

	Delete("@V01");
	Delete("@V02");
	Delete("@V03");
	Delete("@V04");
	Delete("@V05");
	Delete("@V06");
	Delete("@V07");

}

function 1820_sedelete(){

	Delete("@V01");
	Delete("@V02");
	Delete("@V03");
	Delete("@V04");
	Delete("@V05");
	Delete("@V06");
	Delete("@V07");
	Delete("@1820_VOICE");


}

function 2150_seprocess(){

	$2150_01="voice/21/500100060wfu.ogg";
	$2150_02="voice/21/500100070wfu.ogg";
	$2150_03="voice/21/500100080wfu.ogg";

	CreateSound("V01", VOICE, $2150_01);
	CreateSound("V02", VOICE, $2150_02);
	CreateSound("V03", VOICE, $2150_03);
	SetAlias("V01","V01");
	SetAlias("V02","V02");
	SetAlias("V03","V03");

	$2150_V01 = RemainTime("V01");
	$2150_V02 = RemainTime("V02");
	$2150_V03 = RemainTime("V03");

	$2150_ボリューム調整=300;

	SetVolume("V01", 0, $2150_ボリューム調整, NULL);
	SetVolume("V02", 0, $2150_ボリューム調整, NULL);
	SetVolume("V03", 0, $2150_ボリューム調整, NULL);

	CreateProcess("2150_VOICE", 150, 0, 0, "2150_process");
	SetAlias("2150_VOICE","2150_VOICE");
	Request("2150_VOICE", Start);


}

function 2150_process(){

	begin:

	while(1){

		$2150_rand = Random(100)+1;
		$2150_rand02 = Random(10)+1;
		$2150_rand02 = $2150_rand02*150;

		if($2150_rand>=1 && $2150_rand<=20){
				Request("@V01",Play);
				Wait($2150_V01);
				Request("@V02",Play);
				Wait($2150_V02);
				Request("@V03",Play);
				Wait($2150_V03);
		}else if($2150_rand>=21 && $2150_rand>=40){
				Request("@V02",Play);
				Wait($2150_V02);
				Request("@V01",Play);
				Wait($2150_V01);
				Request("@V03",Play);
				Wait($2150_V03);
		}else if($2150_rand>=41 && $2150_rand>=60){
				Request("@V03",Play);
				Wait($2150_V03);
				Request("@V01",Play);
				Wait($2150_V01);
				Request("@V02",Play);
				Wait($2150_V02);
		}else if($2150_rand>=61 && $2150_rand>=80){
				Request("@V03",Play);
				Wait($2150_V03);
		}else if($2150_rand>=81 && $2150_rand>=101){
				Request("@V01",Play);
				Wait($2150_V03);
		}

		Wait($2150_rand02);

	}

}

function 2150_sedelete(){

	Delete("@V01");
	Delete("@V02");
	Delete("@V03");
	Delete("@2150_VOICE");


}

function 2340_SlowFade(){

	CreateTexture("2340_01pic", 100, Center, Middle, "cg/bg/bg1501200柳神社_境内_雪.jpg");
	Fade("2340_01pic", 0, 0, null, true);
	SetAlias("2340_01pic","2340_01pic");
	Zoom("2340_01pic", 0, 2000, 2000, null, true);
	SetShade("2340_01pic", MEDIUM);

//フェードにかける時間
	$2340_01time=1000;

//フェード濃度
	$2340_01fade01=300;
	$2340_01fade02=100;

	CreateProcess("2340_process", 150, 0, 0, "2340_SlowFadeProcess");
	SetAlias("2340_process","2340_process");
	Request("2340_process", Start);

}

function 2340_SlowFadeProcess(){

	begin:

	while(1){

		$2340_ranf01 = Random(2)+1;
		$2340_ranf02 = Random(4)+1;
		$2340_ranf01 = $2340_01fade01 * $2340_ranf01;
		$2340_ranf02 = $2340_01fade02 * $2340_ranf02;

		Fade("@2340_01pic", $2340_01time, $2340_ranf01, null, true);
		Fade("@2340_01pic", $2340_01time, $2340_ranf02, null, true);
		Fade("@2340_01pic", $2340_01time, $2340_ranf01, null, true);
		Fade("@2340_01pic", $2340_01time, $2340_ranf02, null, true);

	}


}


function 2340_SlowFadeDelete(){

	Request("@2340_process", Stop);

	Delete("@2340_01pic");
	Delete("@2340_process");
}


function 2320_transition($2320_色,$2320_時間def){

	$2320_時間01 = $2320_時間def / 2;
	$2320_時間02 = $2320_時間01 / 2;
	$2320_時間03 = $2320_時間02 / 2;

	CreateColorEXadd("絵2320色", 15000, $2320_色);

	CreateProcess("絵トランジ", 150, 0, 0, "2320_transitionprocess");
	SetAlias("絵トランジ","絵トランジ");

}

function 2320_transitionstart(){

	Request("@絵トランジ", Start);
	Request("@絵トランジ", Disused);

}

function 2320_transitionprocess(){

	begin:

	Fade("@絵2320色", $2320_時間03, 900, null, false);
	DrawTransition("@絵2320色", $2320_時間02, 0, 1000, 200, null, "cg/data/circle_10_00_0.png", false);
	Wait($2320_時間03);
	Fade("@絵2320色", $2320_時間01, 0, null, true);
	Delete("@絵2320色");


}

function 2320_flash(){

	CreateTextureEXadd("絵背景3002", 3001, -300, -575, "cg/ev/ex/ev2320沙紅羅千秋と地下鉄チェイスc_x01.png");
	SetBlur("絵背景3002", true, 3, 500, 50, false);

	CreateProcess("絵フラッシュ", 150, 0, 0, "2320_flashprocess");
	SetAlias("絵フラッシュ","絵フラッシュ");
	Request("@絵フラッシュ", Start);

}

function 2320_flashprocess(){

	begin:

while(1){

	$2320_flashran01 = Random(10)+1;
	$2320_flashran02 = Random(10)+1;
	$2320_flashran03 = Random(10)+1;
	$2320_flashran04 = Random(10)+1;
	$2320_flashran01 = ($2320_flashran01*10)+30;
	$2320_flashran02 = ($2320_flashran02*10)+30;
	$2320_flashran03 = ($2320_flashran03*10)+30;
	$2320_flashran04 = ($2320_flashran04*10)+30;

	$2320_flashranw = $2320_flashran01+$2320_flashran02+$2320_flashran03+$2320_flashran04;
	$2320_flashranw01 = $2320_flashran01+$2320_flashran02;
	$2320_flashranw02 = $2320_flashran03+$2320_flashran04;

	$2320_flashranm01 = Random(1);
	$2320_flashranm02 = Random(1)+1;

	Shake("@絵背景3002", 500000, $2320_flashranm01, $2320_flashranm02, 0, 0, 500, null, false);
	Fade("@絵背景3002", $2320_flashran01, 700, null, true);
	Fade("@絵背景3002", $2320_flashran02, 0, null, true);
	Wait($2320_flashranw01);
	Fade("@絵背景3002", $2320_flashran03, 800, null, true);
	Fade("@絵背景3002", $2320_flashran04, 0, null, true);
	Fade("@絵背景3002", $2320_flashran02, 900, null, true);
	Fade("@絵背景3002", $2320_flashran01, 0, null, true);
	Wait($2320_flashranw02);
	Fade("@絵背景3002", $2320_flashran04, 700, null, true);
	Fade("@絵背景3002", $2320_flashran03, 0, null, true);
	Fade("@絵背景3002", $2320_flashran03, 800, null, true);
	Fade("@絵背景3002", $2320_flashran01, 0, null, true);
	Fade("@絵背景3002", $2320_flashran02, 900, null, true);
	Fade("@絵背景3002", $2320_flashran04, 0, null, true);

	}


}

function CreateVOICESE($ナット名,$音楽データ,$クラス名)
{
	$VoiceGetN=0;
	$VoiceGet=false;
	$VoiceWhile=0;
	while(#VoiceSetCount>$VoiceWhile){
		if(VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceWhile]+"[0]")==$クラス名){
			$VoiceGetN=$VoiceWhile;
			$VoiceGet=true;
		}
		$VoiceWhile++;
	}


	if(($VoiceGet&&VariableValue(#,"ConfigCV_"+#VoiceName[$VoiceGetN]+"[1]")==false)||(!$VoiceGet&&#SYSTEM_voice_enable_another)){
		$場所指定 = "voice/" + $音楽データ;

		CreateSound($ナット名, SE, $場所指定);
		SetVolume($ナット名, 0, 0, NULL);
		SetAlias($ナット名, $ナット名);
	}
}

function c2300_seprocess(){

	$c2300_01="c23/000100810rkr";
	$c2300_02="c23/000100820rkr";
	$c2300_03="c23/000100830rkr";
	$c2300_04="c23/000100840rkr";
	$c2300_05="c23/000100850rkr";
	$c2300_06="c23/000100860rkr";
	$c2300_07="c23/000100870rkr";
	$c2300_08="c23/000100880rkr";

	CreateVOICEEX("V01_01",$c2300_01,"ロクロー");
	CreateVOICEEX("V02_01",$c2300_02,"ロクロー");
	CreateVOICEEX("V03_01",$c2300_03,"ロクロー");
	CreateVOICEEX("V04_01",$c2300_04,"ロクロー");
	CreateVOICEEX("V05_01",$c2300_05,"ロクロー");
	CreateVOICEEX("V06_01",$c2300_06,"ロクロー");
	CreateVOICEEX("V07_01",$c2300_07,"ロクロー");
	CreateVOICEEX("V08_01",$c2300_08,"ロクロー");

	$c2300_V01 = RemainTime("V01_01");
	$c2300_V02 = RemainTime("V02_01");
	$c2300_V03 = RemainTime("V03_01");
	$c2300_V04 = RemainTime("V04_01");
	$c2300_V05 = RemainTime("V05_01");
	$c2300_V06 = RemainTime("V06_01");
	$c2300_V07 = RemainTime("V07_01");
	$c2300_V08 = RemainTime("V08_01");

	$c2300_ボリューム調整_01=400;

	SetVolume("V01_01", 0, $c2300_ボリューム調整_01, NULL);
	SetVolume("V02_01", 0, $c2300_ボリューム調整_01, NULL);
	SetVolume("V03_01", 0, $c2300_ボリューム調整_01, NULL);
	SetVolume("V04_01", 0, $c2300_ボリューム調整_01, NULL);
	SetVolume("V05_01", 0, $c2300_ボリューム調整_01, NULL);
	SetVolume("V06_01", 0, $c2300_ボリューム調整_01, NULL);
	SetVolume("V07_01", 0, $c2300_ボリューム調整_01, NULL);
	SetVolume("V08_01", 0, $c2300_ボリューム調整_01, NULL);

	CreateProcess("c2300_VOICE", 150, 0, 0, "c2300_process");
	SetAlias("c2300_VOICE","c2300_VOICE");
	Request("c2300_VOICE", Start);


}

function c2300_process(){

	begin:

	while(1){
		Request("@V01_01",Play);
		Wait($c2300_V01);
		Wait(1000);
		Request("@V02_01",Play);
		Wait($c2300_V02);
		Wait(1000);
		Request("@V03_01",Play);
		Wait($c2300_V03);
		Wait(1000);
		Request("@V04_01",Play);
		Wait($c2300_V04);
		Wait(1000);
		Request("@V05_01",Play);
		Wait($c2300_V05);
		Wait(1000);
		Request("@V06_01",Play);
		Wait($c2300_V06);
		Wait(1000);
		Request("@V07_01",Play);
		Wait($c2300_V07);
		Wait(1000);
		Request("@V08_01",Play);
		Wait($c2300_V08);
		Wait(1000);
	}

}

function c2300_sedelete(){

	Delete("@V01_01");
	Delete("@V02_01");
	Delete("@V03_01");
	Delete("@V04_01");
	Delete("@V05_01");
	Delete("@V06_01");
	Delete("@V07_01");
	Delete("@V08_01");
	Delete("@c2300_VOICE");

}

function shima_taiko($太鼓優先度,$太鼓背景01,$太鼓背景02)
{
	$太鼓優先度01=$太鼓優先度;
	$太鼓優先度02=$太鼓優先度01+1;
	$太鼓優先度04=$太鼓優先度01+1;
	$太鼓優先度03=$太鼓優先度02+2;

	$太鼓速度 = 200;
	$太鼓振動 = 0;

	CreateTextureEX("絵太鼓枠", $太鼓優先度03, Center, Middle, "cg/yur/yurIF枠.png");
	CreateMask("絵太鼓マスク", $太鼓優先度03, Center, Middle, "cg/yur/yurIF背景マスク.png", false);
	SetAlias("絵太鼓マスク","絵太鼓マスク");
	CreateTextureEX("絵太鼓背景01", $太鼓優先度01, Center, Middle, $太鼓背景01);
	CreateTextureEX("絵太鼓背景02", $太鼓優先度01, Center, Middle, $太鼓背景02);
	CreateTextureEX("絵太鼓st01", $太鼓優先度02, Center, Middle, "cg2/yur/yurフウリポンa.png");
	CreateTextureEX("絵太鼓st02", $太鼓優先度02, Center, Middle, "cg2/yur/yurフウリポンb.png");
	CreateTextureEX("絵太鼓st03", $太鼓優先度04, Center, Middle, "cg2/yur/yurフウリポンc.png");

	CreateSE("絵太鼓音","se動物_タヌキ_腹鼓03");
	SetVolumeEX("絵太鼓音", 0, 1000, NULL);

	CreateProcess("絵太鼓ぽんぽこ", 150, 0, 0, "shima_taikoprocess01");
	SetAlias("絵太鼓ぽんぽこ","絵太鼓ぽんぽこ");
	Request("絵太鼓ぽんぽこ", Start);
}

function shima_taikopon()
{
	CreateProcess("絵太鼓ぽんぽこぽん", 150, 0, 0, "shima_taikoprocess02");
	SetAlias("絵太鼓ぽんぽこぽん","絵太鼓ぽんぽこぽん");

	Request("@絵太鼓ぽんぽこ", Stop);
	Request("絵太鼓ぽんぽこぽん", Start);
}

function shima_taikopon02()
{
	Request("@絵太鼓ぽんぽこ", Start);
}


function shima_taikoprocess01()
{
	begin:

	Fade("@絵太鼓枠", 0, 1000, null, false);
	Fade("@絵太鼓背景01", 0, 1000, null, false);
	Fade("@絵太鼓背景02", 0, 0, null, false);
	Fade("@絵太鼓st01", 0, 1000, null, false);
	Fade("@絵太鼓st02", 0, 0, null, true);

	while(1){
		Shake("@絵太鼓st02", $太鼓速度, $太鼓振動, 0, 0, 0, 1000, null, false);
		Fade("@絵太鼓st02", 0, 1000, null, true);
		Fade("@絵太鼓st01", 0, 0, null, true);
		Wait($太鼓速度);
		Shake("@絵太鼓st01", $太鼓速度, $太鼓振動, 0, 0, 0, 1000, null, false);
		Fade("@絵太鼓st01", 0, 1000, null, true);
		Fade("@絵太鼓st02", 0, 0, null, true);
		Wait($太鼓速度);
	}

}

function shima_taikoprocess02()
{
	begin:

	Fade("@絵太鼓st01", 0, 1000, null, true);
	Fade("@絵太鼓st02", 0, 0, null, true);
	Wait($太鼓速度);
	Request("@絵太鼓音", Play);

	Shake("@絵太鼓背景02", 300, 1, 0, 0, 0, 1000, null, false);
	Fade("@絵太鼓背景02", 0, 1000, null, false);
	Shake("@絵太鼓st03", 300, 0, 4, 0, 0, 1000, null, false);
	Fade("@絵太鼓st03", 0, 1000, null, true);
	Fade("@絵太鼓st01", 0, 0, null, true);

}

function shima_taikoDelete()
{
	Request("@絵太鼓ぽんぽこ", Stop);
	Request("@絵太鼓ぽんぽこぽん", Stop);
	FadeDelete("@絵太鼓*", 200, null, true);
	Delete("@絵太鼓ぽんぽこ");
	Delete("@絵太鼓ぽんぽこぽん");
	Delete("@絵太鼓音");
}


function fireworks_set($花火優先度){

	$花火_file01="cg/ef/ef花火_x01.png";
	$花火_file02="cg/ef/ef花火_x02.png";
	$花火_pri=$花火優先度;

	$花火_x01 = 300;
	$花火_x02 = 0;
	$花火_x03 = 640;
	$花火_x04 = -87;
	$花火_x05 = -157;
	$花火_x06 = 684;
	$花火_x07 = 212;
	$花火_x08 = 414;
	$花火_y01 = 80;
	$花火_y02 = -80;
	$花火_y03 = -104;
	$花火_y04 = 228;
	$花火_y05 = -160;
	$花火_y06 = 270;
	$花火_y07 = 342;
	$花火_y08 = -16;

/*
	$花火_x01 = 54;
	$花火_x02 = -373;
	$花火_x03 = 511;
	$花火_x04 = -272;
	$花火_x05 = -592;
	$花火_x06 = 0;
	$花火_x07 = 295;
	$花火_x08 = -238;
	$花火_y01 = -163;
	$花火_y02 = -350;
	$花火_y03 = 63;
	$花火_y04 = 22;
	$花火_y05 = -372;
	$花火_y06 = -350;
	$花火_y07 = 35;
	$花火_y08 = -316;
*/

	CreateTextureEXadd("絵花火100", $花火_pri, $花火_x01, $花火_y01, $花火_file01);
	CreateTextureEXadd("絵花火200", $花火_pri, $花火_x02, $花火_y02, $花火_file02);
	CreateTextureEXadd("絵花火300", $花火_pri, $花火_x03, $花火_y03, $花火_file01);
	CreateTextureEXadd("絵花火400", $花火_pri, $花火_x04, $花火_y04, $花火_file02);
	CreateTextureEXadd("絵花火500", $花火_pri, $花火_x05, $花火_y05, $花火_file01);
	CreateTextureEXadd("絵花火600", $花火_pri, $花火_x06, $花火_y06, $花火_file02);
	CreateTextureEXadd("絵花火700", $花火_pri, $花火_x07, $花火_y07, $花火_file01);
	CreateTextureEXadd("絵花火800", $花火_pri, $花火_x08, $花火_y08, $花火_file02);

	Zoom("絵花火*", 0, 0, 0, null, true);
	SetBlur("絵花火100", true, 1, 400, 50, false);
	SetBlur("絵花火200", true, 2, 400, 50, false);
	SetBlur("絵花火300", true, 1, 400, 50, false);
	SetBlur("絵花火400", true, 3, 400, 50, false);
	SetBlur("絵花火500", true, 3, 400, 50, false);
	SetBlur("絵花火600", true, 2, 400, 50, false);
	SetBlur("絵花火700", true, 2, 400, 50, false);
	SetBlur("絵花火800", true, 1, 400, 50, false);

	CreateProcess("fireworks_01", 150, 0, 0, "fireworks_process01");
	SetAlias("fireworks_01","fireworks_01");
	Request("fireworks_01", Start);

	Wait(16);

	CreateProcess("fireworks_02", 150, 0, 0, "fireworks_process02");
	SetAlias("fireworks_02","fireworks_02");
	Request("fireworks_02", Start);

	CreateProcess("fireworks_03", 150, 0, 0, "fireworks_process03");
	SetAlias("fireworks_03","fireworks_03");
	Request("fireworks_03", Start);

	Wait(16);

	CreateProcess("fireworks_04", 150, 0, 0, "fireworks_process04");
	SetAlias("fireworks_04","fireworks_04");
	Request("fireworks_04", Start);

	CreateProcess("fireworks_05", 150, 0, 0, "fireworks_process05");
	SetAlias("fireworks_05","fireworks_05");
	Request("fireworks_05", Start);

	Wait(16);

	CreateProcess("fireworks_06", 150, 0, 0, "fireworks_process06");
	SetAlias("fireworks_06","fireworks_06");
	Request("fireworks_06", Start);

	CreateProcess("fireworks_07", 150, 0, 0, "fireworks_process07");
	SetAlias("fireworks_07","fireworks_07");
	Request("fireworks_07", Start);

	Wait(16);

	CreateProcess("fireworks_08", 150, 0, 0, "fireworks_process08");
	SetAlias("fireworks_08","fireworks_08");
	Request("fireworks_08", Start);

}

function fireworks_Delete($花火フェードタイム,待ち){

	Request("@fireworks_0*", Stop);

	FadeDelete("@絵花火*", $花火フェードタイム, null, 待ち);
	Delete("@fireworks_0*");

}


function fireworks_process01(){

	begin:

	while(1){

//おおきさ
	$花火の大きさ_def = Random(4)+1;
	$花火の大きさ_size = ($花火の大きさ_def*100)+1000;

//標準なんだぜ
	$花火のお時間_def = Random(5)+1;
//大きくなる
	$花火のお時間_01 = $花火のお時間_def*1000;
//表示される
	$花火のお時間_02 = $花火のお時間_def*100;
//消される
	$花火のお時間_03 = ($花火のお時間_def*1000)/2;
//待つ
	$花火のお時間_04 = $花火のお時間_def*10;

		Wait(16);
		Zoom("@絵花火100", $花火のお時間_01, $花火の大きさ_size, $花火の大きさ_size, Dxl2, false);
		Fade("@絵花火100", $花火のお時間_02, 1000, null, true);
		Fade("@絵花火100", $花火のお時間_03, 0, null, true);
		Wait($花火のお時間_04);
		Zoom("@絵花火100", 0, 0, 0, Dxl2, true);
	}

}


function fireworks_process02(){

	begin:

	while(1){

//おおきさ
	$花火の大きさ2_def = Random(4)+1;
	$花火の大きさ2_size = ($花火の大きさ2_def*100)+2000;

//標準なんだぜ
	$花火のお時間2_def = Random(5)+1;
//大きくなる
	$花火のお時間2_01 = $花火のお時間2_def*1000;
//表示される
	$花火のお時間2_02 = $花火のお時間2_def*100;
//消される
	$花火のお時間2_03 = ($花火のお時間2_def*1000)/2;
//待つ
	$花火のお時間2_04 = $花火のお時間2_def*10;

		Wait(16);
		Zoom("@絵花火200", $花火のお時間2_01, $花火の大きさ2_size, $花火の大きさ2_size, Dxl2, false);
		Fade("@絵花火200", $花火のお時間2_02, 1000, null, true);
		Fade("@絵花火200", $花火のお時間2_03, 0, null, true);
		Wait($花火のお時間2_04);
		Zoom("@絵花火200", 0, 0, 0, Dxl2, true);
	}

}

function fireworks_process03(){

	begin:

	while(1){

//おおきさ
	$花火の大きさ3_def = Random(4)+1;
	$花火の大きさ3_size = ($花火の大きさ3_def*100)+2000;

//標準なんだぜ
	$花火のお時間3_def = Random(5)+1;
//大きくなる
	$花火のお時間3_01 = $花火のお時間3_def*2000;
//表示される
	$花火のお時間3_02 = $花火のお時間3_def*100;
//消される
	$花火のお時間3_03 = ($花火のお時間3_def*1000)/2;
//待つ
	$花火のお時間3_04 = $花火のお時間3_def*10;

		Wait(16);
		Zoom("@絵花火300", $花火のお時間3_01, $花火の大きさ3_size, $花火の大きさ3_size, Dxl2, false);
		Fade("@絵花火300", $花火のお時間3_02, 1000, null, true);
		Fade("@絵花火300", $花火のお時間3_03, 0, null, true);
		Wait($花火のお時間3_04);
		Zoom("@絵花火300", 0, 0, 0, Dxl2, true);
	}

}

function fireworks_process04(){

	begin:

	while(1){

//おおきさ
	$花火の大きさ4_def = Random(9)+1;
	$花火の大きさ4_size = ($花火の大きさ4_def*100)+1000;

//標準なんだぜ
	$花火のお時間4_def = Random(5)+1;
//大きくなる
	$花火のお時間4_01 = $花火のお時間4_def*2000;
//表示される
	$花火のお時間4_02 = $花火のお時間4_def*100;
//消される
	$花火のお時間4_03 = ($花火のお時間4_def*1000)/2;
//待つ
	$花火のお時間4_04 = $花火のお時間4_def*10;

		Wait(16);
		Zoom("@絵花火400", $花火のお時間4_01, $花火の大きさ4_size, $花火の大きさ4_size, Dxl2, false);
		Fade("@絵花火400", $花火のお時間4_02, 1000, null, true);
		Fade("@絵花火400", $花火のお時間4_03, 0, null, true);
		Wait($花火のお時間4_04);
		Zoom("@絵花火400", 0, 0, 0, Dxl2, true);
	}

}

function fireworks_process05(){

	begin:

	while(1){

//おおきさ
	$花火の大きさ5_def = Random(4)+1;
	$花火の大きさ5_size = ($花火の大きさ5_def*100)+2000;

//標準なんだぜ
	$花火のお時間5_def = Random(5)+1;
//大きくなる
	$花火のお時間5_01 = $花火のお時間5_def*1000;
//表示される
	$花火のお時間5_02 = $花火のお時間5_def*100;
//消される
	$花火のお時間5_03 = ($花火のお時間5_def*1000)/2;
//待つ
	$花火のお時間5_04 = $花火のお時間5_def*10;

		Wait(16);
		Zoom("@絵花火500", $花火のお時間5_01, $花火の大きさ5_size, $花火の大きさ5_size, Dxl2, false);
		Fade("@絵花火500", $花火のお時間5_02, 1000, null, true);
		Fade("@絵花火500", $花火のお時間5_03, 0, null, true);
		Wait($花火のお時間5_04);
		Zoom("@絵花火500", 0, 0, 0, Dxl2, true);
	}

}

function fireworks_process06(){

	begin:

	while(1){

//おおきさ
	$花火の大きさ6_def = Random(9)+1;
	$花火の大きさ6_size = ($花火の大きさ6_def*100)+1000;

//標準なんだぜ
	$花火のお時間6_def = Random(5)+1;
//大きくなる
	$花火のお時間6_01 = $花火のお時間6_def*2000;
//表示される
	$花火のお時間6_02 = $花火のお時間6_def*100;
//消される
	$花火のお時間6_03 = ($花火のお時間6_def*1000)/2;
//待つ
	$花火のお時間6_04 = $花火のお時間6_def*10;

		Wait(16);
		Zoom("@絵花火600", $花火のお時間6_01, $花火の大きさ6_size, $花火の大きさ6_size, Dxl2, false);
		Fade("@絵花火600", $花火のお時間6_02, 1000, null, true);
		Fade("@絵花火600", $花火のお時間6_03, 0, null, true);
		Wait($花火のお時間6_04);
		Zoom("@絵花火600", 0, 0, 0, Dxl2, true);
	}

}

function fireworks_process07(){

	begin:

	while(1){

//おおきさ
	$花火の大きさ7_def = Random(9)+1;
	$花火の大きさ7_size = ($花火の大きさ7_def*100)+1500;

//標準なんだぜ
	$花火のお時間7_def = Random(5)+1;
//大きくなる
	$花火のお時間7_01 = $花火のお時間7_def*1000;
//表示される
	$花火のお時間7_02 = $花火のお時間7_def*100;
//消される
	$花火のお時間7_03 = ($花火のお時間7_def*1000)/2;
//待つ
	$花火のお時間7_04 = $花火のお時間7_def*10;

		Wait(16);
		Zoom("@絵花火700", $花火のお時間7_01, $花火の大きさ7_size, $花火の大きさ7_size, Dxl2, false);
		Fade("@絵花火700", $花火のお時間7_02, 1000, null, true);
		Fade("@絵花火700", $花火のお時間7_03, 0, null, true);
		Wait($花火のお時間7_04);
		Zoom("@絵花火700", 0, 0, 0, Dxl2, true);
	}

}

function fireworks_process08(){

	begin:

	while(1){

//おおきさ
	$花火の大きさ8_def = Random(9)+1;
	$花火の大きさ8_size = ($花火の大きさ8_def*100)+2000;

//標準なんだぜ
	$花火のお時間8_def = Random(5)+1;
//大きくなる
	$花火のお時間8_01 = $花火のお時間8_def*1000;
//表示される
	$花火のお時間8_02 = $花火のお時間8_def*100;
//消される
	$花火のお時間8_03 = ($花火のお時間8_def*1000)/2;
//待つ
	$花火のお時間8_04 = $花火のお時間8_def*10;

		Wait(16);
		Zoom("@絵花火800", $花火のお時間8_01, $花火の大きさ8_size, $花火の大きさ8_size, Dxl2, false);
		Fade("@絵花火800", $花火のお時間8_02, 1000, null, true);
		Fade("@絵花火800", $花火のお時間8_03, 0, null, true);
		Wait($花火のお時間8_04);
		Zoom("@絵花火800", 0, 0, 0, Dxl2, true);
	}

}

function mizuha_flash(){

	CreateStencil("マスク１",999,-198,-266,128,"cg/st/l/stミヅハノメ_通常_normal_l.png",false);
	Request("マスク１", Smoothing);
	SetAlias("マスク１","マスク１");
	CreateColorEXadd("マスク１/色１", 999, "White");

	CreateStencil("マスク２",999,-198,-266,128,"cg/st/l/stミヅハノメ_通常_normal_l.png",false);
	SetAlias("マスク２","マスク２");
	CreateColorEXadd("マスク２/色１", 1001, "White");

	CreateProcess("ミズハノメ光", 150, 0, 0, "mizuha_flashprocess");
	SetAlias("ミズハノメ光","ミズハノメ光");
	Request("ミズハノメ光", Start);


}


function mizuha_flashprocess(){

	begin:
	while(1){
		Fade("@マスク２/色１", 800, 300, null, false);
		Move("@マスク１", 2500, @0, -219, null, false);
		Zoom("@マスク１", 2500, 1200, 1200, null, false);
		Fade("@マスク１/色１", 1000, 300, null, true);
		Fade("@マスク２/色１", 800, 0, null, false);
		Fade("@マスク１/色１", 1000, 0, null, true);
		Zoom("@マスク１", 0, 1000, 1000, null, true);
		Move("@マスク１", 0, @0, -266, null, true);
	}


}

function mizuha_flashDelete(){

	Request("@ミズハノメ光", Stop);
	Delete("@ミズハノメ光");
	Delete("@マスク１/色１");
	Delete("@マスク１");
	Delete("@マスク２/色１");
	Delete("@マスク２");

}

function nooko_flash(){

	CreateTextureEXadd("絵ノーコ光", 1000, @0, @0, "cg/data/circle_12_00_1.png");

	CreateProcess("ノーコ光", 150, 0, 0, "nooko_flashprocess");
	SetAlias("ノーコ光","ノーコ光");
	Request("ノーコ光", Start);

}

function nooko_flashprocess(){

	begin:

	while(1){
		DrawTransition("@絵ノーコ光", 6000, 100, 600, 100, AxlDxl, "cg/data/circle_12_00_0.png", false);
		Fade("@絵ノーコ光", 500, 200, AxlAuto, true);
		Fade("@絵ノーコ光", 500, 130, DxlAuto, true);
		Fade("@絵ノーコ光", 500, 170, null, true);
		Fade("@絵ノーコ光", 500, 160, Dxl1, true);
		Fade("@絵ノーコ光", 500, 210, Axl1, true);
		Fade("@絵ノーコ光", 500, 140, DxlAuto, true);
		Fade("@絵ノーコ光", 500, 160, AxlAuto, true);
		Fade("@絵ノーコ光", 500, 100, null, true);
		Fade("@絵ノーコ光", 500, 150, DxlAuto, true);
		Fade("@絵ノーコ光", 700, 0, AxlAuto, true);
	}


}

function nooko_flashDelete($ノーコ光時間,待ち){

	Request("@ノーコ光", Stop);
	Fade("@絵ノーコ光", $ノーコ光時間, 0, null, 待ち);
	Request("@絵ノーコ光", Disused);
	Delete("@ノーコ光");

}

.//使用不可
function shima_SE($エコー用ファイル名,$エコー用音量){

	$エコーするよ時間 = RemainTime($エコー用ファイル名);
	$エコーするよ時間 = $エコーするよ時間+32;
	$エコーするよ時間 = $エコーするよ時間+128;

	SoundEffect($エコー用ファイル名,"Echo",100,100,800,800);
	SetVolume($エコー用ファイル名, 0, $エコー用音量, NULL);

	CreateProcess("効果付きＳＥ", 150, 0, 0, "shima_SEprocess");
	SetAlias("効果付きＳＥ","効果付きＳＥ");
	Request("効果付きＳＥ", Start);
	Request("効果付きＳＥ", Disused);

}

function shima_SEprocess(){

	begin:

	Request($エコー用ファイル名, Play);
	Wait($エコーするよ時間);
	Request($エコー用ファイル名, Pause);
	Wait(10000);
	Delete($エコー用ファイル名);

}

function SoundPlay2($SoundPlayName,秒数,$SoundPlayVol,ループ設定)
{
	if(PassageTime($SoundPlayName)<1){
		SetVolume($SoundPlayName, 0, 1, null);
	}

	//エフェクト仕様
	$bgmmoji=Strstr($SoundPlayName, "x");
	if($bgmmoji==1||$bgmmoji==2){
		$SoundPlayName2=$SoundPlayName+"_ef";
		Request($MusicStartName2, Stop);
		SetLoop($SoundPlayName2, ループ設定);
		SetVolume($SoundPlayName2, 0, 1, null);
		SoundEffect($SoundPlayName2,"Echo",60,70,170,170);
		Request($SoundPlayName2, Play);
	}

	Request($SoundPlayName, Play);

//嶋　固定します
	SetFrequency($SoundPlayName, 0, 1000, NULL);
	SetVolumeEX($SoundPlayName, 秒数, $SoundPlayVol, null);

	SetLoop($SoundPlayName, ループ設定);
	Request($SoundPlayName, Disused);
}

