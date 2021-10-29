'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });
    
    main();    
});

function readLine() {
    return inputString[currentLine++];
}

function getLetter(s) {
    let letter;
    // Write your code here
    
    switch(true) {
        case /^[aeiou]/.test(s):
            letter='A';
            break;
        case 'bcdfg'.includes(s[0]):
            letter='B';
            break;
        case 'hjklm'.has(s[0]):
            letter='C';
            break;
        case Set(['n','p','q','r','s','t','v','w','x','y','z']).has(s[0]):
            letter='D';
            break;
    }

    return letter;
}


function main() {
    const s = readLine();
    
    console.log(getLetter(s));
}
