void main() {
  int number = 4;
  bool isFibonacci = checkIfFibonacci(number);

  if (isFibonacci) {
    print('$number pertence à sequência de Fibonacci.');
  } else {
    print('$number não pertence à sequência de Fibonacci.');
  }
}

bool checkIfFibonacci(int number) {
  if (number == 0 || number == 1) {
    return true;
  }

  int prev = 0;
  int current = 1;

  while (current < number) {
    int next = prev + current;
    prev = current;
    current = next;
  }

  return current == number;
}
