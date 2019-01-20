N = 10000;
K = 100;
X = randn([K, N]);
Y = sum(X);
%histo y
[counts, centers] = hist(Y,100);
bar(centers, counts/N/(centers(2)-centers(1)));

sigma = sqrt(((1/N)*sum(Y*Y')))
meanx = 0;
rangey = (min(Y):0.1:max(Y));
py = (1/(sqrt(2*pi)*sigma))*exp(-(rangey-meanx).*(rangey-meanx)/(2*sigma*sigma));
%superposition théorique y
hold on;
plot(rangey, py, 'r')

figure
X_chi2=X.*X;
z=sum(X_chi2);
%histo z
[counts, centers] = hist(z,100);
bar(centers, counts/N/(centers(2)-centers(1)));

hold on
range_z=(min(z):0.1:max(z));
pz=(range_z.^((K/2)-1).*exp(-range_z/2))/(2^(K/2)*gamma(K/2));
%superposition théorique z
plot(range_z,pz,'r');
