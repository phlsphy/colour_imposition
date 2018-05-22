function ReplaceText() {
    var str = document.getElementById("element").innerHTML;
    var res = str.replace(/A/g,"<br />&#9644;<br />").replace("[","").replace("]","");
    document.getElementById("clean").innerHTML = res;
    }
window.onload = ReplaceText;
