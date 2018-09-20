clc;
load('matlab.mat')
%%
%jzg
Ts = 0.0017;
%i
Toi = 0.002;
Tsgmi = Ts+Toi;
%n
Ton = 0.01;
%%
%T1>Tsgmi
ti = T1;
KI = 0.5/Tsgmi
Ki = KI*ti*R/(Ks*beta)
%%
w_ci = KI;
disp('校验')
[1/(3*Ts)>w_ci;
sqrt(1/(Tm*T1))<w_ci;
sqrt(1/(Ts*Toi))>w_ci;]
%%
Tsgmn = 1/KI + Ton
h=5;
tn = h*Tsgmn
KN = (h+1)/(2*h^2*Tsgmn^2)
Kn = tn*beta*Ce*Tm*KN/(alpha*R)
w_cn = KN*tn
disp('校验')
[sqrt(KI/Tsgmi)/3>w_cn;
sqrt(KI/Ton)/3>w_cn;]


%% over


asr = [Kn, Kn/tn]
acr = [Ki, Ki/ti]









