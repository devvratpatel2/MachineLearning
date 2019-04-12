clear ; close all; clc



%% Load Data
data = load('gradientDescentPredictionsAttempt1.txt');
act = data(:, 1);
pre = data(:, 2);
m = rows(act);

mse = (1/m)*sum((act-pre).^2);
c1 = corr(act,pre);
fprintf('This is the R squared value of G1 %f \n \n', c1);
fprintf('This is the MSE value of G1 %f \n \n \n', mse);
pause;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data2 = load('gradientDescentPredictionsAttempt2.txt');
act2 = data2(:, 1);
pre2 = data2(:, 2);
m2 = rows(act2);

mse2 = (1/m2)*sum((act2-pre2).^2);
c2 = corr(act2,pre2);
fprintf('This is the R squared value of G2 %f \n \n', c2);
fprintf('This is the MSE value of G2 %f \n \n \n', mse2);
pause;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data3 = load('normalequationspredictionAttempt1.txt');
act3 = data3(:, 1);
pre3 = data3(:, 2);
m3 = rows(act3);

mse3 = (1/m3)*sum((act3-pre3).^2);
c3 = corr(act3,pre3);
fprintf('This is the R squared value of N1 %f \n \n', c3);
fprintf('This is the MSE value of N1 %f \n \n \n', mse3);
pause;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data4 = load('normalequationspredictionAttempt2.txt');
act4 = data4(:, 1);
pre4 = data4(:, 2);
m4 = rows(act4);

mse4 = (1/m4)*sum((act4-pre4).^2);
c4 = corr(act4,pre4);
fprintf('This is the R squared value of N2 %f \n \n', c4);
fprintf('This is the MSE value of N2 %f \n \n \n', mse4);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data5 = load('gradientDescentPredictionsE1.txt');
act5 = data5(:, 1);
pre5 = data5(:, 2);
m5 = rows(act5);

mse5 = (1/m5)*sum((act5-pre5).^2);
c5 = corr(act5,pre5);
fprintf('This is the R squared value of GE1 %f \n \n', c5);
fprintf('This is the MSE value of N2 %f \n \n \n', mse5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data6 = load('normalequationspredictionE1.txt');
act6 = data6(:, 1);
pre6 = data6(:, 2);
m6 = rows(act6);

mse6 = (1/m6)*sum((act6-pre6).^2);
c6 = corr(act6,pre6);
fprintf('This is the R squared value of NEE1 %f \n \n', c6);
fprintf('This is the MSE value of NEE1 %f \n \n \n', mse6);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data7 = load('gradientDescentPredictionsE2.txt');
act7 = data7(:, 1);
pre7 = data7(:, 2);
m7 = rows(act7);

mse7 = (1/m7)*sum((act7-pre7).^2);
c7 = corr(act7,pre7);
fprintf('This is the R squared value of GE2 %f \n \n', c7);
fprintf('This is the MSE value of GE2 %f \n \n \n', mse7);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data8 = load('normalequationspredictionE2.txt');
act8 = data8(:, 1);
pre8 = data8(:, 2);
m8 = rows(act8);

mse8 = (1/m8)*sum((act8-pre8).^2);
c8 = corr(act8,pre8);
fprintf('This is the R squared value of NEE2 %f \n \n', c8);
fprintf('This is the MSE value of NEE2 %f \n \n \n', mse8);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data9 = load('gradientDescentPredictionsE3.txt');
act9 = data9(:, 1);
pre9 = data9(:, 2);
m9 = rows(act9);

mse9 = (1/m9)*sum((act9-pre9).^2);
c9 = corr(act9,pre9);
fprintf('This is the R squared value of GE3 %f \n \n', c9);
fprintf('This is the MSE value of GE3 %f \n \n \n', mse9);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data10 = load('normalequationspredictionE3.txt');
act10 = data10(:, 1);
pre10 = data10(:, 2);
m10 = rows(act10);

mse10 = (1/m10)*sum((act10-pre10).^2);
c10 = corr(act10,pre10);
fprintf('This is the R squared value of NEE3 %f \n \n', c10);
fprintf('This is the MSE value of NEE3 %f \n \n \n', mse10);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data11 = load('gradientDescentPredictionsF1.txt');
act11 = data11(:, 1);
pre11 = data11(:, 2);
m11 = rows(act11);

mse11 = (1/m11)*sum((act11-pre11).^2);
c11 = corr(act11,pre11);
fprintf('This is the R squared value of GF1 %f \n \n', c11);
fprintf('This is the MSE value of GF1 %f \n \n \n', mse11);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
data12 = load('normalequationspredictionF1.txt');
act12 = data12(:, 1);
pre12 = data12(:, 2);
m12 = rows(act12);

mse12 = (1/m12)*sum((act12-pre12).^2);
c12 = corr(act12,pre12);
fprintf('This is the R squared value of NEF1 %f \n \n', c12);
fprintf('This is the MSE value of NEF1 %f \n \n \n', mse12);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
