
function checkFileSize() {
    var fileInput = document.getElementById('cv');
    var fileSize = fileInput.files[0].size;
    var maxSize = 10 * 1024 * 1024; // 10 MB
    if (fileSize > maxSize) {
      alert('Le fichier est trop volumineux. La taille maximale autorisée est de 10 MB.');
      fileInput.value = ''; 
  }}
/*
function disable(){
    var others = document.getElementsByName("candi");
    var Poste = document.getElementById("Poste");
    var Entreprise = document.getElementById("Entreprise");
    var Domaine =document.getElementByName("domaine");
    var Diplome =document.getElementByName("diplome");

    for(var i = 0; i< others.length;i++){
        if(others[i].type="radio" && others[i].checked && others[i].value==="1"){
           alert("1111111");
            Poste.disabled=true;
            Entreprise.disabled=true;
            Domaine.disabled=false;
            Diplome.disabled=false;
        }
    }

    for(var i = 0; i< others.length;i++){
        if(others[i].type="radio" && others[i].checked && others[i].value==="2"){
            alert("2222222");
            Poste.disabled=false;
            Entreprise.disabled=false;
            Domaine.disabled=true;
            Diplome.disabled=true;
        }
    }

   /* pos.disabled=others.checked? false:true;
    entr.disabled=others.checked? false:true;

    pos.value="";
    entr.value="";
    if(!pos.disabled && !entr.disabled){
        pos.focus();
        entr.focus();
    }*/
    

