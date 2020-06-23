% Runs the GPSR algorithm - using the default parameters.
% y are the measurements, R is the sensing matrix, and tau is the tradeoff parameter.
% For the rest of the parameters, see the GPSR documentation.
%
function x_BB_mono_cont=applyGPSR(y,R,tau)

first_tau_factor = 0.8*(max(abs(R'*y))/tau);
steps = 5;
debias = 0;
stopCri=3;
tolA=1.e-5;
%keyboard
[x_BB_mono_cont,x_debias_BB_mono_cont,obj_BB_mono_cont,times_BB_mono_cont,debias_start_BB_mono,mse_BB_mono_cont]= GPSR_BB(y,R,tau,'Debias',debias,'Continuation',1,'ContinuationSteps',steps,'FirstTauFactor',first_tau_factor,'Monotone',1,'Initialization',0,'StopCriterion',stopCri,'ToleranceA',tolA,'Verbose',0);


