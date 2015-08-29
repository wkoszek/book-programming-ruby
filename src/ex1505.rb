# Sample code from Programing Ruby, page 684
require 'nkf'

NKF.guess("Yukihiro Matsumoto")
NKF.guess("\e$B$^$D$b$H$f$-$R$m\e(B")
NKF.guess("\244\336\244\304\244\342\244\310\244\346\244\255\244\322\244\355")
NKF.guess("\202\334\202\302\202\340\202\306\202\344\202\253\202\320\202\353")
