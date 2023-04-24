%filename: lung.m (main program)
clear all
clf
%{
beta = 1;
betaArr = [0:0.1:1];
maxArr = [3 3 3 3 3 3 3 3 3 3 3]
global Pstar cstar n maxcount M Q camax RT cI;
% i = [0:0.1:1]

    setup_lung
    cvsolve
    outchecklung
plot(betaArr, maxArr)
}%
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
%TASK 5
%{
Pvs = []
Pabars = []
PAbars = []
PIs = []
camaxs = []
cIArr = [0.008:0.0001:0.009]
global Pstar cstar n maxcount M Q camax RT cI;

for i=1:length(cIArr)
    cI = cIArr(i)

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
    camaxs = [ camaxs, camax]

   
   
end





figure(5)
plot(cIArr,Pvs)
hold on
plot(cIArr, Pabars)
hold on
plot(cIArr,PAbars)
hold on
plot(cIArr,PIs)
hold on
plot(cIArr,camaxs)
legend('Pvs', 'Pabars', 'PAbars', 'PIs','camaxs')
%}

%TASK 6
Pvs = [];
Pabars = [];
PAbars = [];
PIs = [];
camaxs = [];
PIArr = [100:10:300];
global Pstar cstar n maxcount M Q camax RT cI;

for i=1:length(PIArr)
    PI = PIArr(i)

    setup_lung
    
    

    cvsolve
    outchecklung



    Pvs = [Pvs, Pv];
    Pabars = [Pabars, Pabar];
    PAbars = [PAbars, PAbar];
    PIs = [PIs, PI];
    camaxs = [ camaxs, camax];

   
   
end





figure(5)
plot(PIArr,Pvs)
hold on
plot(PIArr, Pabars)
hold on
plot(PIArr,PAbars)
hold on
plot(PIArr,PIs)
hold on
plot(PIArr,camaxs)
legend('Pvs', 'Pabars', 'PAbars', 'PIs','camaxs')
