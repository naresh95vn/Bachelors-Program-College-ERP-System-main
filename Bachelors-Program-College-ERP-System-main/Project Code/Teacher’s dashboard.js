window.onload=init;
var data1,data2,data3,data4,data5,data6;
function init()
{
var pass = document.querySelector("#cp1");
pass.addEventListener("click", function()
{
 window.location="cp.php";
 });
var lagout = document.querySelector("#logout1");
logout1.addEventListener('click',function(){
window.location="loginform.php";
});
classList();
userDetails();
var addStu = document.querySelector('#sub');
addStu.addEventListener('click', function(){
var th1 = document.querySelector('#th1').value;
var th2 = document.querySelector('#th2').value;
var th3 = document.querySelector('#th3').value;
var th4 = document.querySelector('#th4').value;
var th5 = document.querySelector('#th5').value;
var th6 = document.querySelector('#th6').value;
var th7 = document.querySelector('#th7').value;
var th8 = document.querySelector('#th8').value;
var th10 = document.querySelector('#th9').value;
var th9 = document.querySelector('#selectCllass').value;
$.post('subjects1.php', {classname: th9},function(result){
data6 = JSON.parse(result);
$.post('addStudent.php',{sub1:data6[0].subID,sub2:data6[1].subID,sub3:data6[2].subID,sub4:data6[3].subID,
sub5:data6[4].subID,sub6:data6[5].subID,sub7:data6[6].subID,sub8:data6[7].subID,usn: th2, DOB : 
th3,
name: th1, bg:th4, email:th6, gen:th7,pass:th8,nat:th5,phno: th10, classname: th9},function(result)
{
alert("student added to class " +th9);
});
});
});
var submitAtt =document.querySelector('#submitAtt');
submitAtt.addEventListener('click', function()
{
var va=document.querySelectorAll('#tBody input');
var va1=document.querySelectorAll('#tBody tr td');
var va2=document.querySelector('#subName');
var subID = va2.innerHTML;
var obj1 =[]
var index1 =0;
va.forEach(function(current){
obj1[index1]=current.value;
index1++;
});
var obj = []
var index=0;
va1.forEach(function(current){
if(current.innerHTML.charAt(0)!='<')
{
obj[index]=current.innerHTML;
index++;
}
});
for(var i=0;i<obj.length;i +=2)
{
$.post('updateAtt.php', {subID: subID, name: obj[i+1], TC: obj1[i],CA: obj1[i+1]});
if(i==obj.length-2)
{
alert("update sucessful");
}
}
});
var submitMarks =document.querySelector('#submitMarks');
submitMarks.addEventListener('click', function()
{
var va=document.querySelectorAll('#marksTable input');
var va1=document.querySelectorAll('#marksTable tr td');
var va2=document.querySelector('#subNAme');
var subID = va2.innerHTML;
var obj1 =[]
var index1 =0;
va.forEach(function(current){
obj1[index1]=current.value;
index1++;
});
var obj = []
var index=0;
va1.forEach(function(current){
if(current.innerHTML.charAt(0)!='<')
{
obj[index]=current.innerHTML;
index++;
}
});
var i,j=0;
for(i=0;i<obj.length;i +=2)
{
var k=obj.length;
$.post('updateMarks.php', {subID: subID, name: obj[i+1], iat1: obj1[j],iat2: obj1[j+1], iat3: 
obj1[j+2],ass: obj1[j+3]});
if(i==obj.length-2)
{
alert("update sucessful");
}
j =j+4;
}
});
}
function classList()
{
var request = new XMLHttpRequest();
 request.open("GET", "classist.php", true)
 request.send();
 request.onreadystatechange = function() 
 {
 if (request.readyState == 4 && request.status == 200)
 {
 data1 = JSON.parse(request.response);
 var left=0;
 if(data1.length>1)
 {
for(var i=0;i<data1.length-1;i++)
{
 if(data1[i].class_name!=data1[i+1].class_name)
 {
 var classList=document.querySelector(".selectClass");
var div=document.createElement('p');
div.innerHTML=data1[i].class_name;
div.style.left= left+'%';
classList.appendChild(div);
div.addEventListener('click',function(e){
var left1=0;
var subList =document.querySelector(".selectSub1");
subList.innerHTML="";
var x=e.target.innerHTML;
for(var j=0;j<data1.length;j++){
if(x==data1[j].class_name)
{
var p=document.createElement('p');
p.innerHTML=data1[j].subName;
p.style.left= left1+'%'
subList.appendChild(p);
p.addEventListener('click',function(ev){
var classs=ev.target.innerHTML;
subName.innerHTML = classs;
$.post('studentList.php', {classname: classs},function(result){
data2 = JSON.parse(result); var 
tBody=document.querySelector('#tBody');
tBody.innerHTML = "";
for(var i=0;i<data2.length;i++)
{
var tr=tBody.insertRow();
tr.innerHTML = "<td>" + data2[i].name + "</td><td>" +data2[i].usn+ "</td>";
var TC = document.createElement('input');
TC.setAttribute("type", 'number');
TC.setAttribute("value", data2[i].TC);
var td3= document.createElement('td');
td3.appendChild(TC);
tr.appendChild(td3);
var CA = document.createElement('input');
CA.setAttribute("type", 'number');
CA.setAttribute("value", data2[i].CA
var td4= document.createElement('td');
td4.appendChild(CA);
tr.appendChild(td4);
}
}); });
left1 +=12;
 }
}
});
var classList12=document.querySelector(".selectClass1");
var div2=document.createElement('p');
div2.innerHTML=data1[i].class_name;
div2.style.left= left+'%';
classList12.appendChild(div2);
div2.addEventListener('click',function(e)
{
var stuList =document.querySelector("#studentsList");
stuList.innerHTML="";
var x=e.target.innerHTML;
$.post('studentsList.php', {classname: x},function(result)
{
data5 = JSON.parse(result);
for(var i=0;i<data5.length;i++)
{
var tr = stuList.insertRow();
tr.innerHTML = "<td>" +data5[i].name +"</td>";
}
});
});
var selectClass=document.querySelector('#selectCllass'); var option = 
document.createElement('option');
option.text = data1[i].class_name;
selectClass.add(option);
left +=12;
}
}
var classList=document.querySelector(".selectClass");
var div=document.createElement('p');
div.innerHTML=data1[data1.length-1].class_name;
div.style.left= left+'%';
classList.appendChild(div);
div.addEventListener('click',function(e){
var left1=0;
var subList =document.querySelector(".selectSub1");
subList.innerHTML="";
for(var j=0;j<data1.length;j++)
{
var x=e.target.innerHTML;
if(x==data1[j].class_name)
{
var p=document.createElement('p');
p.innerHTML=data1[j].subName;
p.style.left= left1+'%';
subList.appendChild(p);
p.addEventListener('click',function(ev)
{
var classs=ev.target.innerHTML;
var subName=document.querySelector("#subName");
subName.innerHTML = classs;
$.post('studentList.php', {classname: classs},function(result){
 data2 = JSON.parse(result):
var tBody=document.querySelector('#tBody');
tBody.innerHTML = "";
for(var i=0;i<data2.length;i++)
{
var tr=tBody.insertRow();
tr.innerHTML = "<td>" + data2[i].name + "</td><td>" +data2[i].usn+ "</td>";
var TC = document.createElement('input');
TC.setAttribute("type", 'number');
TC.setAttribute("value", data2[i].TC);
var td3= document.createElement('td');
td3.appendChild(TC);
tr.appendChild(td3);
var CA = document.createElement('input');
CA.setAttribute("type", 'number');
CA.setAttribute("value", data2[i].CA);
var td4= document.createElement('td');
td4.appendChild(CA);
tr.appendChild(td4);
}
});
});
left1 +=12;
}
}
});
var classList12=document.querySelector(".selectClass1");
var div2=document.createElement('p');
div2.innerHTML=data1[data1.length-1].class_name;
div2.style.left= left+'%';
classList12.appendChild(div2);
div2.addEventListener('click',function(e)
{
var stuList =document.querySelector("#studentsList");
stuList.innerHTML="";
var x=e.target.innerHTML;
$.post('studentsList.php', {classname: x},function(result)
{
data5 = JSON.parse(result);
for(var i=0;i<data5.length;i++)
{
var tr = stuList.insertRow();
tr.innerHTML = "<td>" +data5[i].name +"</td>";
}
});
});
var selectClass=document.querySelector('#selectCllass');
var option = document.createElement('option');
option.text = data1[data1.length-1].class_name;
selectClass.add(option);
left +=12; 
}
}
}
function userDetails()
{
var request = new XMLHttpRequest();
 request.open("GET", "tuserdetails.php", true)
 request.send();
 request.onreadystatechange = function() 
 {
 if (request.readyState == 4 && request.status == 200)
 {
 data4 = JSON.parse(request.response);
 var usn =document.querySelector("#usn");
 var name =document.querySelector("#name");
 var mobnum =document.querySelector("#mobnum");
 var email =document.querySelector("#email");
 var bg =document.querySelector("#bg");
 var dropdownname = document.querySelector('#dropdownname');
 dropdownname.innerHTML = data4[0].name;
 usn.innerHTML += " "+ data4[0].teacherID;
 name.innerHTML += " "+ data4[0].name;
 mobnum.innerHTML += " "+ data4[0].phno;
 email.innerHTML += " "+ data4[0].email;
 bg.innerHTML += " "+ data4[0].website;
}
 };
}
