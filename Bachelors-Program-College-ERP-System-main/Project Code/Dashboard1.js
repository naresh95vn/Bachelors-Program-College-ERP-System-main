window.onload = init;
var canvas,ctx;
var h,w;
var data,data1,data2,data3;
function init()
{
 timetable();
 addIaDetails();
 subjects();
 drawgraph();
 studentdetails();
 var logout = document.querySelector("#logout1");
 logout.addEventListener("click", function()
 {
 window.location="loginform.php";
 });
 var pass = document.querySelector("#changePW");
 pass.addEventListener("click", function()
 {
 window.location="cp.php";
 });
}
function timetable()
{
 var request = new XMLHttpRequest();
 request.open("GET", "timetable.php", true)
 request.send();
 request.onreadystatechange = function() 
 {
 if (request.readyState == 4 && request.status == 200)
 {
 data5 = JSON.parse(request.response);
 var div = document.querySelector(".classtable");
 var oImg = document.createElement("img");
 oImg.setAttribute('src', data5[0].timeTable);
 oImg.setAttribute('alt', 'na');
 oImg.setAttribute('height', '100%');
 oImg.setAttribute('width', '100%');
 div.appendChild(oImg);
 }
 };
}
function subjects()
{
 var request = new XMLHttpRequest();
 request.open("GET", "subjects.php", true)
 request.send();
 request.onreadystatechange = function() 
 {
if (request.readyState == 4 && request.status == 200)
 {
 data4 = JSON.parse(request.response);
 var tr1 = document.querySelector("#tr1");
 var tr2 = document.querySelector("#tr2");
 var tr3 = document.querySelector("#tr3");
 var tr4 = document.querySelector("#tr4");
 var tr5 = document.querySelector("#tr5");
 var tr6 = document.querySelector("#tr6");
 var tr7 = document.querySelector("#tr7");
 var tr8 = document.querySelector("#tr8");
 var p1= document.querySelector("#teachername");
 var p2= document.querySelector("#syllabus");
 var p3= document.querySelector("#website");
 tr1.innerHTML = "<td>"+data4[0].subName+"</td>";
 tr2.innerHTML = "<td>"+data4[1].subName+"</td>";
 tr3.innerHTML = "<td>"+data4[2].subName+"</td>";
 tr4.innerHTML = "<td>"+data4[3].subName+"</td>";
 tr5.innerHTML = "<td>"+data4[4].subName+"</td>";
 tr6.innerHTML = "<td>"+data4[5].subName+"</td>";
 tr7.innerHTML = "<td>"+data4[6].subName+"</td>";
 tr8.innerHTML = "<td>"+data4[7].subName+"</td>";
 p1.innerHTML = data4[0].name;
 p2.innerHTML = data4[0].syllabus;
 p3.innerHTML = data4[0].website;
 p3.setAttribute('href','data4[0].website');
 tr1.addEventListener('click', function(e){
 p1.innerHTML = data4[0].name;
 p2.innerHTML = data4[0].syllabus;
 p3.innerHTML = data4[0].website;
 p3.setAttribute('href','data4[0].website');
 });
}
function addIaDetails()
{
 var request = new XMLHttpRequest();
 request.open("GET", "iadetails.php", true)
 request.send();
 request.onreadystatechange = function() 
 {
 if (request.readyState == 4 && request.status == 200)
 {
 data3 = JSON.parse(request.response);
 var iadet = document.querySelector("#iadetails tbody");
 for(var i=0;i<data3.length;i++)
 {
 var marksarray = [data3[i].iat1,data3[i].iat2,data3[i].iat3];
 marksarray.sort();
 var avg = (((marksarray[1]*1)+(marksarray[2]*1))*0.15) +(data3[i].assigment*1);
 avg = Math.round(avg);
 
 var tr = iadet.insertRow();
 tr.innerHTML = "<td>" +data3[i].subName+ "</td><td>" +data3[i].iat1+ "</td><td>" +data3[i].iat2+ 
"</td><td>" +data3[i].iat3+ "</td><td>" +data3[i].assigment+"</td><td>" +avg+"</td>";
 }
 
 }
 };
}
function studentdetails()
{
 var request = new XMLHttpRequest();
 request.open("GET", "userdetails.php", true)
 request.send();
 request.onreadystatechange = function() 
 {
 if (request.readyState == 4 && request.status == 200)
 {
data2 = JSON.parse(request.response);
 var usn =document.querySelector("#usn");
 var name =document.querySelector("#name");
 var mobnum =document.querySelector("#mobnum");
 var email =document.querySelector("#email");
 var dob =document.querySelector("#dob");
 var bg =document.querySelector("#bg");
 var gender =document.querySelector("#gender");
 var nation =document.querySelector("#nation");
 var dropdownname = document.querySelector('#dropdownname');
 dropdownname.innerHTML = data2[0].name;
 usn.innerHTML += " "+ data2[0].usn;
 name.innerHTML += " "+ data2[0].name;
 mobnum.innerHTML += " "+ data2[0].phno;
 email.innerHTML += " "+ data2[0].email;
 }
 };
}
function drawgraph()
{
 var request = new XMLHttpRequest();
 request.open("GET", "att.php", true)
 request.send();
 request.onreadystatechange = function() 
 {
 if (request.readyState == 4 && request.status == 200) 
 {
 data1 = JSON.parse(request.response);
 var table =document.querySelector("#tableatt");
 canvas = document.querySelector("#graph1");
 ctx =canvas.getContext('2d'); 
 ctx.fillStyle = 'steelblue';
 w = canvas.width;
 h = canvas.height;
 ctx.fillRect(0,4 ,(w/100)*data1[0].TC*1.5,5);
ctx.fillStyle= "deepskyblue";
 ctx.fillRect(0,9,( w/100)*data1[0].CA*1.5,5);
 }; 
}