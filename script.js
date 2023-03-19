// const loginlink =document.querySelect('.loginlink');
// const registerlink =document.querySelect('.registerlink');
 const Loginbtn = document.querySelector('.Loginbtn');
 const navigation =document.querySelector('.navigation');
 const logged =document.querySelector('.logged');

// Loginbtn.addEventListener('click', ()=> {
//     mono.classList.add('active');
// }); 
Loginbtn.addEventListener('click' , function() {
    logged.classList.add('pop-up')
})

// loginlink.addEventListener('click',()=>{
//     logged.classList.remove('active');
// });

function myfunc() {
    var ele = document.getElementById("formregister");
    var ele2 = document.getElementById("formlogin");
    ele.style.display = "none";
    ele2.style.display = "block";
    
}

function myfunc2() {
    var ele = document.getElementById("formregister");
    var ele2 = document.getElementById("formlogin");
    ele.style.display = "block";
    ele2.style.display = "none";
    
}



const closeicon =document.querySelector('.closeicon');

closeicon.addEventListener('click', ()=>{
    logged.classList.remove('pop-up')
})




// function func3(){
//     var ele3 = document.getElementById("logged");
//     ele3.style.display = "flex";
// }

// (function(){
//     alert("hello");
// })();






