#!/bin/sed -f
# BrainFucktoC (c) 2005, herm1t
# bfcc.sed<program.bf|gcc -xc -
1i\
#include<stdio.h>\
#include<string.h>\
int main(){char c[30000],*p=c;\
bzero(c,30000);
s/\]/}/g
s/[^}\[<>,\.+\-]//g
s/\[/while(*p)\{/g
s/+/++*p;/g
s/-/--*p;/g
s/</--p;/g
s/>/++p;/g
s/\./putchar(*p);/g
s/\,/*p=getchar();/g
$a\
return 0;}
