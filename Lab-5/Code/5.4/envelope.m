function [t_env,env] = envelope(a,d,s,sd,r,fs)

% Attack: amplitude linearly increases from 0 to 1 in ‘a’ seconds
tattack = 0:1/fs:a;
env =(1/a)*tattack;
t_env = tattack;

% Decay: amplitude linearly decreases from 1 to ‘s’ in ‘d’ seconds
tdecay = a+1/fs:1/fs:a+d;
t_env = [t_env, tdecay];
env = [env, 1-((1-s)/d)*(tdecay-a)];

% Sustain: amplitude stays at ‘s’ for ‘sd’ seconds
tsustain = a+d+1/fs:1/fs:a+d+sd;
t_env = [t_env, tsustain];
env = [env, s+0*tsustain];

% Release: amplitude linearly decreases from ‘s’ to 0 in ‘r’ seconds
trelease = a+d+sd+1/fs:1/fs:a+d+sd+r;
t_env = [t_env, trelease];
env = [env, s-(s/r)*(trelease-(a+d+sd))];

end
