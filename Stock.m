%%
Published=datestr(now, 21);
clc;clear;close all;

%% Question 1
clc;clear;close all;
load fordstock
load gmstock
a=(ford<gm);
b=sum(a);
fprintf('Ford''s stock closed higher than GM''s on %2.0d days.\n',b);

%% Question 2
clc;clear;close all;
load fordstock
load gmstock
a=(ford<gm);
b=find(a==1);
c=b(1);
fprintf('Ford''s stock fell below GM''s for the first time on day %2.0d. Ford''s stock was %2.0f on that day.\n',c,ford(c));

%% Question 3
clc;clear;close all;
load fordstock
load gmstock
a=(ford>gm);
b=find(a==1);
c=b(end)+1;
fprintf('Ford''s stock fell below GM''s for the last time on day %2.0d. Ford''s stock that day was %2.0f.\n',c,ford(c));

%% Question 4
clc;clear;close all;
load fordstock
load gmstock
a=ford-gm;
b=find(diff(sign(a)));
c=(b>0);
c=sum(c);
fprintf('The two stocks crossed %2.0d times on days:\n',c);
fprintf('%2.0d ',b);
fprintf('\n');

%% Question 5
clc;clear;close all;
load netflixstock.csv
a=max(netflixstock);
b=min(netflixstock);
c=find(netflixstock==a);
d=find(netflixstock==b);
fprintf('Max is %2.0f. Min is %2.0f.\nThe max occured on day %2.0d and the min occured on day %2.0d.\n',a,b,c,d);
plot(netflixstock)