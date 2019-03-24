#include <stdio.h>

void foo(int i){
    printf("Blimey! \n");
}

void bar(int i){
    if (i > 0){
        bar(i-1);
    }
}

int main(int argc, char** argv){
    for (unsigned i=0; i<10;++i){
        void (*fptr)(int) = (i % argc) ? foo:bar;
        fptr(i);
        }
    return 0;
}
