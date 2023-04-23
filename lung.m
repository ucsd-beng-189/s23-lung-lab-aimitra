%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;
beta = [0:0.1:1];
setup_lung
cvsolve
outchecklung
plot(beta,Pv)
hold on
plot(beta, Pabar)
hold on
plot(beta,PAbar)
hold on
plot(beta,PI)

