% X = randn returns a random scalar drawn from the standard normal distribution.
% example
% X = randn(n) returns an n-by-n matrix of normally distributed random numbers.
% example
% X = randn(sz1,...,szN) returns an sz1-by-...-by-szN array of random numbers where sz1,...,szN indicate the size of each dimension. For example, randn(3,4) returns a 3-by-4 matrix.
% example
% X = randn(sz) returns an array of random numbers where size vector sz defines size(X). For example, randn([3 4]) returns a 3-by-4 matrix.
% example
% X = randn(___,typename) returns an array of random numbers of data type typename. The typename input can be either 'single' or 'double'. You can use any of the input arguments in the previous syntaxes.
% example
% X = randn(___,'like',p) returns an array of random numbers like p; that is, of the same object type as p. You can specify either typename or 'like', but not both.

N = 1000;
X = randn([1, N]);
[counts, centers] = hist(X,100);
bar(centers, counts/N/(centers(2)-centers(1)));
%Les valeurs sont comprises entre -4 et 4 plutôt centrées vers 0 mais les
%résultats ne sont pas distribués uniformément


N = 100000;
X = randn([N, 1]);
[counts, centers] = hist(X,100);
figure
bar(centers, counts/N/(centers(2)-centers(1)));
%Avec un plus grand nombre de réalisations, les valeurs sont également 
%comprises entre -4 et 4 mais convergent plus vers 0, on observe mieux la
%"cloche" caractéristique d'une distribution gaussienne
%1.2
sigma = 1;%variance
meanx = 0;
rangex = (min(X):0.1:max(X));
px = (1/(sqrt(2*pi)*sigma))*exp(-(rangex-meanx).*(rangex-meanx)/(2*sigma*sigma));
hold on
plot(rangex, px, 'r')
hold off
% min_x= pdf('min_x',x,A,B)
% max_x=
%mean_Y=E(Y)=E(10+sqrt(2)*X)=E(10)+E(sqrt(2)*X)=10+sqrt(2)*mean_X=10
%variance_Y=EY(Y-my)^2)
%variance_Y=EY(10+sqrt(2)*X-(10+sqrt(2)*mean_X))^2)
%variance_Y=EY(sqrt(2)*X-sqrt(2)*mean_X)^2)
%variance_Y=EY(sqrt(2)*X)^2)
%1.3
Y = 10 + sqrt(2)*X;
%mean_Y=mean2(Y)
%variance = var(Y)
mean_Y = 10;
variance = 2;
sigma = sqrt(variance)
gy = mean_Y + sigma*randn([N, 1]);

%1.4
% On réalise l'expérience uniquement qvec 10 000 réalisations
figure

[counts, centers] = hist(gy,100);
bar(centers, counts/N/(centers(2)-centers(1)));
rangey = (min(Y):0.1:max(Y));
py = (1/(sqrt(2*pi)*sigma))*exp(-(rangey-mean_Y).*(rangey-mean_Y)/(2*sigma*sigma));
hold on
plot(rangey, py, 'r')