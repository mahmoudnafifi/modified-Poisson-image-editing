%MPB: A modified Poisson blending technique
%Read the paper: http://link.springer.com/article/10.1007/s41095-015-0027-z

%demo1 (step1 + step2)
target = imread(fullfile('imgs','target_1.jpg')); 
source = imread(fullfile('imgs','source_1.jpg')); 
mask = imread(fullfile('imgs','mask_1.png'));
outfile = fullfile('imgs','result_1.jpg');
MPB( source, target, mask, outfile);
figure;
subplot(1,4,1); imshow(target); title('target');
subplot(1,4,2); imshow(source); title('source');
subplot(1,4,3); imshow(mask); title('mask');
subplot(1,4,4); imshow(imread(outfile)); title('result');

%demo2 (step1 + step2 + step3)
target = imread(fullfile('imgs','target_2.jpg')); 
source = imread(fullfile('imgs','source_2.jpg')); 
mask = imread(fullfile('imgs','mask_2.png'));
outfile = fullfile('imgs','result_2.jpg');
MPB_2( source, target, mask , outfile);
figure;
subplot(1,4,1); imshow(target); title('target');
subplot(1,4,2); imshow(source); title('source');
subplot(1,4,3); imshow(mask); title('mask');
subplot(1,4,4); imshow(imread(outfile)); title('result');


%Read the paper for more information:
%https://link.springer.com/article/10.1007/s41095-015-0027-z
%https://ieeexplore.ieee.org/abstract/document/7024453