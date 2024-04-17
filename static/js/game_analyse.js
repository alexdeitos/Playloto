document.addEventListener('DOMContentLoaded', function() {
    let dezena = document.querySelectorAll('td');
    let	count1 = 0 ;
    let	count2 = 0 ;
    let	count3 = 0 ;
    let	count4 = 0 ;
    let	count5 = 0 ;
    let	count6 = 0 ;
    let	count7 = 0 ;
    let	count8 = 0 ;
    let	count9 = 0 ;
    let	count10 = 0 ;
    let	count11 = 0 ;
    let	count12 = 0 ;
    let	count13 = 0 ;
    let	count14 = 0 ;
    let	count15 = 0 ;
    let	count16 = 0 ;
    let	count17 = 0 ;
    let	count18 = 0 ;
    let	count19 = 0 ;
    let	count20 = 0 ;
    let	count21 = 0 ;
    let	count22 = 0 ;
    let	count23 = 0 ;
    let	count24 = 0 ;
    let	count25 = 0 ;
    var countFibo = 0;
    var countPrimo = 0;
    var countImpar = 0;
    var countMoldura = 0;
    let moldura = ['1','2','3','4','5','6','11','16','21','10','15','20','25'];
    const lista = document.getElementById("table-dark");
    const ft = document.getElementById("ft");
    
    dezena.forEach(element => {
        if (element.innerHTML === '1'){
            count1 += 1;
            countFibo += 1;
            countImpar += 1;
            countPrimo +=1 ;
        }   
        if (element.innerHTML === '2'){
            count2 += 1;
            countFibo += 1;
        }
        if (element.innerHTML === '3'){
            count3 += 1;
            countFibo += 1;
            countImpar += 1;
            countPrimo += 1 ;
        }
        if (element.innerHTML === '4'){
            count4 += 1;
        }
        if (element.innerHTML === '5'){
            count5 += 1;
            countFibo += 1;
            countImpar += 1;
            countPrimo +=1 ;
        }
        if (element.innerHTML === '6'){
            count6 += 1;
        }
        if (element.innerHTML === '7'){
            count7 += 1;
            countImpar += 1;
            countPrimo +=1 ;
        }
        if (element.innerHTML === '8'){
            count8 += 1;
            countFibo += 1;
        }
        if (element.innerHTML === '9'){
            count9 += 1;
            countImpar += 1;
        }
        if (element.innerHTML === '10'){
            count10 += 1;
        }
        if (element.innerHTML === '11'){
            count11 += 1;
            countImpar += 1;
            countPrimo +=1 ;
        }
        if (element.innerHTML === '12'){
            count12 += 1;
        }
        if (element.innerHTML === '13'){
            count13 += 1;
            countFibo += 1;
            countImpar += 1;
            countPrimo +=1 ;
        }
        if (element.innerHTML === '14'){
            count14 += 1;
        }
        if (element.innerHTML === '15'){
            count15 += 1;
            countImpar += 1;
        }
        if (element.innerHTML === '16'){
            count16 += 1;
        }
        if (element.innerHTML === '17'){
            count17 += 1;
            countImpar += 1;
            countPrimo +=1 ;
        }
        if (element.innerHTML === '18'){
            count18 += 1;
        }
        if (element.innerHTML === '19'){
            count19 += 1;
            countImpar += 1;
            countPrimo +=1 ;
        }
        if (element.innerHTML === '20'){
            count20 += 1;
        }
        if (element.innerHTML === '21'){
            count21 += 1;
            countFibo += 1;
            countImpar += 1;
        }
        if (element.innerHTML === '22'){
            count22 += 1;
        }
        if (element.innerHTML === '23'){
            count23 += 1;
            countImpar += 1;
            countPrimo +=1 ;
        }
        if (element.innerHTML === '24'){
            count24 += 1;
        }
        if (element.innerHTML === '25'){
            count25 += 1;
            countImpar += 1;
        }
    })   
    const list = [count1, count2, count3, count4, count5, count6, count7, count8, count9, count10, count11, count12, count13, count14, count15, count16, count17, count18, count19, count20, count21, count22, count23, count24, count25];
    var red = 7;
    var yellow = 3;
    var green = 6;
    var minimo = 3;
    var divisor = 8;
    for (var i=0 ; i < 25; i++){
        v = "d"+(i+1);
        v = document.createElement('td');
        v.textContent = list[i]
        v.style.color = 'black';
        v.style.fontWeight = "bolder";
        if (list[i] >= red) {
            v.style.backgroundColor = "red";
        } 
        if (list[i] <= yellow ){
            v.style.backgroundColor = "yellow";
        }
        if(list[i] > minimo && list[i] <= green){
            v.style.backgroundColor = "green";
        }
       //console.log(list[i]);
        lista.appendChild(v);
    }

    fb = document.createElement("tboby");
    fr = document.createElement("tr");
    ir = document.createElement("tr");
    pr = document.createElement("tr");
  
    fb.appendChild(fr);
    fb.appendChild(ir);
    fb.appendChild(pr);
   
    ft.appendChild(fb);

    mediafibo = document.createElement("td");
    mediafibo1 = document.createElement("td");
    f = document.createElement("td");
    f1 = document.createElement("td");
    f.innerHTML = countFibo;
    //var nome_fibo = "Fibonacci";
    f1.innerHTML = "Fibonacci";
    mediafibo.innerHTML = "Media por jogo:";
    mediafibo1.innerHTML = Math.round(countFibo / divisor) ;
    f1.style.padding = "10px";
    f.style.padding = "10px";
    mediafibo.style.padding = "10px";
    mediafibo1.style.padding = "10px";
    fr.appendChild(f1);
    fr.appendChild(f);
    fr.appendChild(mediafibo);
    fr.appendChild(mediafibo1);

    i = document.createElement("td");
    i1 = document.createElement("td");
    mediai = document.createElement("td");
    mediai1 = document.createElement("td");
    i.innerHTML = countImpar;
    i1.innerHTML = "Impar:";
    mediai.innerHTML = "Media por jogo:";
    mediai1.innerHTML = Math.round(countImpar / divisor) ;
    i1.style.padding = "10px";
    i.style.padding = "10px";
    mediai.style.padding = "10px";
    mediai1.style.padding = "10px";
    ir.appendChild(i1);
    ir.appendChild(i);
    ir.appendChild(mediai);
    ir.appendChild(mediai1);

    p = document.createElement("td");
    p1 = document.createElement("td");
    mediap = document.createElement("td");
    mediap1 = document.createElement("td");
    p.innerHTML = countPrimo;
    p1.innerHTML = "Primo:";
    mediap.innerHTML = "Media por jogo:";
    mediap1.innerHTML = Math.round(countPrimo / divisor) ;
    p1.style.padding = "10px";
    p.style.padding = "10px";
    mediap.style.padding = "10px";
    mediap1.style.padding = "10px";
    pr.appendChild(p1);
    pr.appendChild(p);
    pr.appendChild(mediap);
    pr.appendChild(mediap1);

    console.log(countMoldura,moldura);
});
 
