function myFunction() {
 var x = document.getElementById("logoutDropdown");
 if (x.style.display == "block") {
 x.style.display = "none";
 } else {
 x.style.display = "block";
 }
}
function Navigation(id){
if (id=='AttendanceSlot') {
document.getElementById('Attendance').style.background = 'white';
document.getElementById('Timetable').style.background = 'transparent'
document.getElementById('Subject').style.background = 'transparent';
document.getElementById('IA Details').style.background = 'transparent';
document.getElementById('User Details').style.background = 'transparent';
 document.getElementById('AttendanceSlot').style.display = 'block';
 document.getElementById('TimetableSlot').style.display = 'none';
document.getElementById('SubjectSlot').style.display = 'none';
document.getElementById('IASlot').style.display = 'none';
document.getElementById('UserSlot').style.display = 'none';
}
else if(id=='TimetableSlot'){
document.getElementById('Attendance').style.background = 'transparent';
document.getElementById('Timetable').style.background = 'white';
document.getElementById('Subject').style.background = 'transparent';
document.getElementById('IA Details').style.background = 'transparent';
document.getElementById('User Details').style.background = 'transparent';
document.getElementById('AttendanceSlot').style.display = 'none';
 document.getElementById('TimetableSlot').style.display = 'block';
document.getElementById('SubjectSlot').style.display = 'none';
document.getElementById('IASlot').style.display = 'none';
document.getElementById('UserSlot').style.display = 'none';
}
else if(id=='SubjectSlot'){
document.getElementById('Attendance').style.background = 'transparent';
document.getElementById('Timetable').style.background = 'transparent';
document.getElementById('Subject').style.background = 'white';
document.getElementById('IA Details').style.background = 'transparent';
document.getElementById('User Details').style.background = 'transparent';
 document.getElementById('AttendanceSlot').style.display = 'none';
document.getElementById('TimetableSlot').style.display = 'none';
 document.getElementById('SubjectSlot').style.display = 'block';
document.getElementById('IASlot').style.display = 'none';
document.getElementById('UserSlot').style.display = 'none';
}