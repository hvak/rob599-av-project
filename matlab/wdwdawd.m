clc; clear; close all

load("TestTrack.mat");

X = [287,5,-176,0,2,0]; 
% X.x = x0(1);
% X.u = x0(2);
% X.y = x0(3);
% X.v = x0(4);
% X.psi = x0(5);
% X.r = x0(6); 

figure
hold on
plot(TestTrack.bl(1,:), TestTrack.bl(2,:))
plot(TestTrack.br(1,:), TestTrack.br(2,:))
trajectory = animatedline(X(1), X(3));

verbose = true;
while true
    U = braindeadController(X, TestTrack, verbose);
    [X, T] = forwardIntegrateControlInput(U, X);
    X = X(end,:);
    addpoints(trajectory, X(1), X(3))
    disp(X)
    drawnow
end
