var array;

function setOptionbg() {
	var x ="";
	var i;
	for (i=2; i<=15; i++) {
		x = "sel" + i.toString();
		if(document.getElementById(x).value == "")
		{
 			document.getElementById(x).style.backgroundColor = "rgba(255, 0, 0,0.9)";
		}
		else {
 		document.getElementById(x).style.backgroundColor = "rgba(0, 255, 0,0.9)";
		}
	}
}

function reset() {
	document.getElementById('sel2').options[0].selected = true;
	document.getElementById('sel3').options[0].selected = true;
	document.getElementById('sel4').options[0].selected = true;
	document.getElementById('sel5').options[0].selected = true;
	document.getElementById('sel6').options[0].selected = true;
	document.getElementById('sel7').options[0].selected = true;
	document.getElementById('sel8').options[0].selected = true;
	document.getElementById('sel9').options[0].selected = true;
	document.getElementById('sel10').options[0].selected = true;
	document.getElementById('sel11').options[0].selected = true;
	document.getElementById('sel12').options[0].selected = true;
	document.getElementById('sel13').options[0].selected = true;
	document.getElementById('sel14').options[0].selected = true;
	document.getElementById('sel15').options[0].selected = true;
}

function set() {
	var i;
	var x = "";
	for (i=1; i<array.length; i++) {
		x = i+1;
		x = "sel" + x.toString();
		console.log(x);
		if(array[i] == "1" || array[i] == "F")
		{
 			document.getElementById(x).options[1].selected = true;
		}
		else {
 			document.getElementById(x).options[0].selected = true;
		}
	}
}



var maxprogress = 270;   // total to reach
var actualprogress = 0;  // current value
var itv = 0;  // id to setinterval
function prog()
{
  document.getElementById("pwidget").style.display = "block";
  
  if(actualprogress >= maxprogress) 
  {
    clearInterval(itv);   	
    return;
  }	
  var progressnum = document.getElementById("progressnum");
  var indicator = document.getElementById("indicator");
  actualprogress += 1;	
  indicator.style.width=actualprogress + "px";
  progressnum.innerHTML = actualprogress;
  if(actualprogress == maxprogress) clearInterval(itv);   
}