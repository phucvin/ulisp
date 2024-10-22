cd ..

node src/ulisp.js tests/fib.lisp --backend x86

./build/prog

llvm not working yet

node src/ulisp.js tests/fib.lisp --backend llvm