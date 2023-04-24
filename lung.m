%filename: lung.m (main program)
clear all
clf
beta = 1;
betaArr = [0:0.1:1];
maxArr = [3 3 3 3 3 3 3 3 3 3 3]
global Pstar cstar n maxcount M Q camax RT cI;
% i = [0:0.1:1]

    setup_lung
    cvsolve
    outchecklung
plot(betaArr, maxArr)
%}
%TASK 1
%{
Pvs = []
Pabars = []
PAbars = []
PIs = []


betaArr = [0:0.1:1]
global Pstar cstar n maxcount M Q camax RT cI;

for i=1:length(betaArr)
    beta = betaArr(i)

    setup_lung
    
    nexttile
    figure(1)
    plot(Q,VA,'.')

    cvsolve
    outchecklung

    nexttile
    figure(2)
    plot(r,cblood,'.')

    nexttile
    figure(3)
    plot(r,cair  ,'.')

    nexttile
    figure(4)
    plot(r,Pressures,'.')

    Pvs = [Pvs, Pv]
    Pabars = [Pabars, Pabar]
    PAbars = [PAbars, PAbar]
    PIs = [PIs, PI]

   
   
end





figure(5)
plot(betaArr,Pvs)
hold on
plot(betaArr, Pabars)
hold on
plot(betaArr,PAbars)
hold on
plot(betaArr,PIs)
legend('Pvs', 'Pabars', 'PAbars', 'PIs')
%}
