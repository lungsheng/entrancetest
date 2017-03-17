// JavaScript Document
$(function(){
$("#commercial102").click(function(e) {
	var s="<h1>102年商概統測試題</h1>";
	$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;//alert(99);
	totalque=qend-qbegin+1;
	que=commercialque102;
$("#backlist").attr("href","#pagecommercial");
	clearqueright();
	totalscore=0;
 putque();able();
});
$("#commercial103").click(function(e) {
	var s="<h1>103年商概統測試題</h1>";
	$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;
	totalque=qend-qbegin+1;
	que=commercialque103;
$("#backlist").attr("href","#pagecommercial");
	clearqueright();que=commercialque103;
	totalscore=0;
 putque();able();
});
$("#commercial104").click(function(e) {
	var s="<h1>104年商概統測試題</h1>";
	$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;
	totalque=qend-qbegin+1;
	que=commercialque104;
$("#backlist").attr("href","#pagecommercial");
	clearqueright();
	totalscore=0;
 putque();able();
});



$("#computer104").click(function(e) {
	var s="<h1>104年計概統測試題</h1>";
		$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;
	totalque=qend-qbegin+1;
$("#backlist").attr("href","#pagecomputer");
	que=computerque104;
	clearqueright();
	totalscore=0;
 putque();able();
});
$("#computer103").click(function(e) {
	var s="<h1>103年計概統測試題</h1>";
	$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;
	totalque=qend-qbegin+1;
$("#backlist").attr("href","#pagecomputer");
	que=computerque103;
	clearqueright();
	totalscore=0;
 putque();able();
});
$("#computer102").click(function(e) {
	var s="<h1>102年計概統測試題</h1>";
	$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;
	totalque=qend-qbegin+1;
	que=computerque102;
$("#backlist").attr("href","#pagecomputer");
	clearqueright();
	totalscore=0;
 putque();able();
});

$("#account102").click(function(e) {
	var s="<h1>102年會計統測試題</h1>";
	$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;
	totalque=qend-qbegin+1;
	que=accountque102;
$("#backlist").attr("href","#pageaccount");
	clearqueright();
	totalscore=0;
 putque();able();
});
$("#account103").click(function(e) {
	var s="<h1>103年會計統測試題</h1>";
	$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;
	totalque=qend-qbegin+1;
	que=accountque103;
$("#backlist").attr("href","#pageaccount");

	clearqueright();
	totalscore=0;
 putque();able();
});
$("#account104").click(function(e) {
	var s="<h1>104年會計統測試題</h1>";
	$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;
	totalque=qend-qbegin+1;
	que=accountque104;
$("#backlist").attr("href","#pageaccount");
	clearqueright();
	totalscore=0;
 putque();able();
});

$("#economic102").click(function(e) {
	var s="<h1>102年經濟統測試題</h1>";
	$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;
	totalque=qend-qbegin+1;
	que=economicque102;
$("#backlist").attr("href","#pageeconomic");

	clearqueright();
	totalscore=0;
 putque();able();
});
$("#economic103").click(function(e) {
	var s="<h1>103年經濟統測試題</h1>";
	$("#title").html(s);
	qbegin=0;questionindex=qbegin;
	qend=24;
	que=economicque103;
	totalque=qend-qbegin+1;$("#backlist").attr("href","#pageeconomic");
//alert(queright.length);
	clearqueright();
	totalscore=0;
 putque();able();
});
$("#economic104").click(function(e) {
	var s="<h1>104年經濟統測試題</h1>";
	$("#title").html(s);
	qbegin=00;questionindex=qbegin;
	qend=24;
	totalque=qend-qbegin+1;
$("#backlist").attr("href","#pageeconomic");
	que=economicque104;
	clearqueright();
	totalscore=0;
 putque();able();
});
var ans;
var questionindex=0;
var totalscore=0;
var eachscore=4;
var ansindex=0;
var queright=[];
var totalque=0;
var pageshownumb=1;
var qbegin=0;
var qend=0;
var k=0;
var clickyesno="yes";
var que=[];
 //que=commercialque102;


$("#b2").click(function(e) {
    $.mobile.changePage("#page2");
});
$("#result").click(function(e) {
		putresult();//alert(99);
        $.mobile.changePage("#page3");
		
    });
function putque(){
	clickyesno="yes";
$("#chooseitem_0").css("background-color","#CF9");
$("#chooseitem_1").css("background-color","#CF9");
$("#chooseitem_2").css("background-color","#CF9");
$("#chooseitem_3").css("background-color","#CF9");
var quest="共"+totalque+"題目前第"+(questionindex-qbegin+1)+"題:<br>"+que[questionindex].que;
$("#question").html(quest);
$("#choose0label").html("<div>A:"+que[questionindex].ans1+"</div>");

$("#choose1label").html("<div>B:"+que[questionindex].ans2+"</div>");

$("#choose2label").html("<div>C:"+que[questionindex].ans3+"</div>");

$("#choose3label").html("<div>D:"+que[questionindex].ans4+"</div>");
var im=que[questionindex].img;
if(im!=null){
var im="img/"+im
$("#imgdiv").attr("src",im);
$("#imgdiv").show();
}else{
	$("#imgdiv").hide();	
	}

ans=que[questionindex].ans;
st="目前分數為:"+totalscore+"分";			
		$("#judge").html(st);
	
	}
	
$("#chooseitem_0").click(function(e) {
   if(clickyesno=="yes"){ check(1);clickyesno="no"}
   
});
$("#chooseitem_1").click(function(e) {
    if(clickyesno=="yes"){check(2);clickyesno="no"}
});
$("#chooseitem_2").click(function(e) {
    if(clickyesno=="yes"){check(3);clickyesno="no"}
});
//$("#chooseitem_3").attr("checked",false);
$("#chooseitem_3").click(function(e) {
    if(clickyesno=="yes"){check(4);clickyesno="no"}
});

$("#nextque").unbind("click");
//}

function check(anspass){
	var t;
	clickyesno="yes";
if(ans==1){$("#chooseitem_0").css("background-color","#aaf");t="A";};
if(ans==2){$("#chooseitem_1").css("background-color","#aaf");t="B";};
if(ans==3){$("#chooseitem_2").css("background-color","#aaf");t="C";};
if(ans==4){$("#chooseitem_3").css("background-color","#aaf");t="D";};
	if(anspass==ans){
		totalscore+=eachscore;
st="YES答對了!目前分數為:"+totalscore+"分答案為:"+t;
		$("#judge").html(st);
		queright.push(1);
		}else{
st="NO答錯了!目前分數為:"+totalscore+"分答案為:"+t;			
		$("#judge").html(st);
		queright.push(0);	
			}//if
if(qend==questionindex){
	alert("結束!看結果!");
	questionindex=0;
	return;
	}
	questionindex++;
$("#nextque").click(function(e) {
	//$("#choosep").html(stchoose);
    //
	putque();able();
	
});

	}
	
function putresult(){
	//alert(queright.length);
	var s="",s1,sans;
	var k=0;
	//if(pageshownumb==1){
		s1="總分:100分得分:"+totalscore+"分";
		$("#scoreresult").html(s1);
		//alert(queright.length);
		//alert(queright.length);
	for(i=qbegin;i<queright.length+qbegin;i++){
		k++;
	if(que[i].ans==1){sans=que[i].ans1};
	if(que[i].ans==2){sans=que[i].ans2};
	if(que[i].ans==3){sans=que[i].ans3};
	if(que[i].ans==4){sans=que[i].ans3};
		if(queright[i-qbegin]==1){
s=s+k+"<div class='libg1'>答對:"+que[i].que+":"+sans+"</div>"
		}else{
s=s+k+"<div class='libg2'>答錯:"+que[i].que+":"+sans+"</div>"	
			}
		
		}
		$("#rightlist").html(s);
	}
function clearqueright(){
	if(queright.length!=0){
		
		queright.length=0;
		}//}
		//alert(99);//alert(queright.length);
	}
	
	
	
	
	
	
})