cd ..

node src/ulisp.js tests/fib.lisp --backend x86 && time ./build/tests/fib.lisp/prog.out

0m2.606s

node src/ulisp.js tests/fib.lisp --backend llvm --no-tail-call && time ./build/tests/fib.lisp/prog.out

0m0.582s

node src/ulisp.js tests/print.lisp --backend llvm  && ./build/tests/print.lisp/prog.out