%1.11 & 1.12
N = 10000;
K3 = 3;
K8 = 8;
X3 = randn([K3, N]);
Y3 = sum(X3);

[counts, centers] = hist(Y3,100);
bar(centers, counts/N/(centers(2)-centers(1)));

%1.13
sigma = sqrt(((1/N)*sum(y*y')))
meanx3 = 0;
rangex3 = (min(Y3):0.1:max(Y3));
px3 = (1/(sqrt(2*pi)*sigma))*exp(-(rangex3-meanx3).*(rangex3-meanx3)/(2*sigma*sigma));
hold on;
plot(rangex3, px3, 'r')

%1.14

%1.15

%1.16

%1.17
