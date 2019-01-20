
%2.5
N = 100000;
x11 = randn([1, N]);
x12 = randn([1, N]);
X1 = [x11; x12];

%2.6
plot(X1(1,:),X1(2,:), '.b');
%On voit que le nuage de points est centré sur 0 en abscisses et en
%ordonnées.

%2.7
var21 = 2;
var22 = 0.2;
x21 = 10 + sqrt(var21)*randn([1, N]);
x22 = 2 + sqrt(var22)*randn([1, N]);
X2 = [x21; x22];
figure;
plot(X2(1,:),X2(2,:), '.b');
%Ici, le nuage de points est centré sur 10 en abscisses et 2 en ordonnées,
%ce qui est cohérent avec les moyennes données

%2.8 et 2.9
x31 = x11;
x321 = x12 + 1*x11;
x325 = x12 + 5*x11;
X31 = [x31; x321];
X35 = [x31; x325];
figure;
plot(X31(1,:),X31(2,:), '.b');
figure;
plot(X35(1,:),X35(2,:), '.b');

%Le nuage de points "s'étend", sur les ordonnéees, les points vont de -6 à
%6 avec a = 1, alors qu'ils vont de -20 à 20 avec a = 5.

%2.10
%meanx3=E(x3)=E(10+sqrt(2)*X)=E(10)+E(sqrt(2)*X)=10+sqrt(2)*mean_X=10
%variance_Y=EY(Y-my)^2)
%variance_Y=EY(10+sqrt(2)*X-(10+sqrt(2)*mean_X))^2)
%variance_Y=EY(sqrt(2)*X-sqrt(2)*mean_X)^2)
%variance_Y=EY(sqrt(2)*X)^2)
meanx31 = mean2(x31)
meanx321 = mean2(x321)
meanx325 = mean2(x325)
varx31 = var(x31)
varx321 = var(x321)
varx325 = var(x325)


