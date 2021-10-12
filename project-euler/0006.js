const sumOfSquares = (num) => {
  sequence = Array.from(Array(num).keys());
  sequence.push(num);
  sequence.shift();
  return sequence.reduce((acc, val) => acc + val * val, 0);
};

const squareOfSum = (num) => {
  triangularSum = num * (num + 1) / 2; // sum from 1 to 10 is equal to 10 * 11 / 2. Proof of this is left to the code reviewer.
  return triangularSum * triangularSum;
}

console.log(squareOfSum(100) - sumOfSquares(100));