     

function toolnote(el){
    var tt = el.getElementsByTagName('td'); // «--- You are missing a ;
    //alert(tt[0].innerText);
    document.getElementById('codeInsee').value = tt[0].innerText;
    document.getElementById('nomCommune').value = tt[1].innerText;
    document.getElementById('codePostal').value = tt[2].innerText;
    document.getElementById('libelles').value = tt[3].innerText;
    document.getElementById('ligne5').value = tt[4].innerText;
    document.getElementById('latitude').value = tt[5].innerText;
    document.getElementById('longitude').value = tt[6].innerText;
}


