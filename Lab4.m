%{
data = {};
for i = [1:7]
[num txt raw] = xlsread('Lab 4 Data.xlsx',i);
data = [data ; {num} {txt} {raw}]
end


load data.mat

hold on
pmt = data{4,1}(3011:end-500,3);
pt1 = data{4,1}(3011:end-500,4);
pt2 = data{4,1}(3011:end-500,5);
pt3 = data{4,1}(3011:end-500,6);
%phaseAngle(pt1,pt2,'Lower Pressure Transducer','Middle Pressure Transducer')
%phaseAngle(pt2,pt3,'Middle Pressure Transducer','Upper Pressure Transducer')
phaseAngle(pmt,pt2,'PMT','Middle Pressure Transducer')

rms = [];
for i = [1:7]
pdat = data{i,1}(2511:end,3:6);
pdat = pdat .* 10; 
rms = [rms;sqrt(mean(pdat.^2))];
end
spl = 20 .* log10(rms(:,2:end)./2.9e-9);
spl = [spl rms(:,1)];

spl = spl([4 5 6 7],:)
%}

for j = [4:7]
f = 0;
for i = [4:6]
zeroX = zeros(data{j,1}(2511:end,i));
zeroDiff = zeroX(2:end)-zeroX(1:end-1);
zeroDiff = zeroDiff(zeroDiff > mean(zeroDiff)/2);
%scatter(zeroX,ones(size(zeroX)))
%plot(zeroDiff)
f = f+ 5000/(2*mean(zeroDiff));
end
f = f/3
end

function places = zeros(noninj)
signCheck = noninj(1:end-1) .* noninj(2:end);
places = find(signCheck <= 0);
end

function logged = log10(x)
logged = log(x)/log(10);
end
