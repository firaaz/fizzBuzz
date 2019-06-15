// as it cannot have command line arguments only from 1 - 100
function fizzbuzz(n){
    if (n % (5 *3)) {
        console.log("FizzBuzz");
    }else if (n % 3) {
        console.log("Fizz");
    } else if (n % 5) {
        console.log("Buzz");
    } else {
        console.log(n)
    }
}

for (var i = 1; 1 <= 100; i++) {
    fizzbuzz(i);
}
