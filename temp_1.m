N = 10000;
K3 = 3;
X3 = randn([K3, N]);
Y3 = sum(X3);

[counts, centers] = hist(Y3,100);
%bar(centers, counts/N/(centers(2)-centers(1)));

sigma = sqrt(((1/N)*sum(Y3*Y3')))
meanx3 = 0;
rangey3 = (min(Y3):0.1:max(Y3));
py3 = (1/(sqrt(2*pi)*sigma))*exp(-(rangey3-meanx3).*(rangey3-meanx3)/(2*sigma*sigma));
hold on;
%plot(rangey3, py3, 'r')
X_chi2=X3.*X3;
z=sum(X_chi2);
[counts, centers] = hist(z,100);
bar(centers, counts/N/(centers(2)-centers(1)));

hold on
range_z=(min(z):0.1:max(z));
pz=(range_z.^((K3/2)-1).*exp(-range_z/2))/(2^(K3/2)*gamma(K3/2));
plot(range_z,pz,'r');

var_z=var(z)
mean_z=mean(z)
