cd ..

node src/ulisp.js tests/fib.lisp --backend x86 && time ./build/prog

fib in llvm is currently wrong

node src/ulisp.js tests/fib.lisp --backend llvm  && time ./build/prog

node src/ulisp.js tests/print.lisp --backend llvm  && ./build/prog