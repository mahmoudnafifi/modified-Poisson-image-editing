%MPB: A modified Poisson blending technique
%Read the paper: http://link.springer.com/article/10.1007/s41095-015-0027-z

%Citation:
%@article{
%year={2015},
%issn={2096-0433},
%journal={Computational Visual Media},
%doi={10.1007/s41095-015-0027-z},
%title={MPB: A modified Poisson blending technique},
%url={http://dx.doi.org/10.1007/s41095-015-0027-z},
%publisher={Springer Berlin Heidelberg},
%keywords={image processing; image inpainting; image blending; image cloning; image enhancement},
%author={Afifi, Mahmoud and Hussain, KhaledF.},
%pages={1-11},
%language={English}
%}

%Apply the third step in MPB (Solve Color bleeding Problem)

function F = MPB_2( fg, bg, mask , out)
T=0.2;
Ha=20;
N1=100;
N2=100;
gamma=0.1;
MPB(fg,bg,mask(:,:,1),'temp1.jpg');
MPB(fg,bg,mask(:,:,1),'temp2.jpg');
fg1=imread('temp1.jpg');
fg2= imread('temp2.jpg');
differentFrame= (fg1-bg)+(bg-fg1);
[X_no_dither,map]= rgb2ind(differentFrame,4,'dither');
BW = im2bw(X_no_dither,map,T);
BW=imfill(BW,'holes');
temp(:,:,1)=uint8(BW)*255;
temp(:,:,2)=uint8(BW)*255;
temp(:,:,3)=uint8(BW)*255;
H = fspecial('average',Ha);
average = imfilter(temp,H,'same');
H = fspecial('gaussian',[N1 N2],gamma);
gaussian = imfilter(average+1,H,'same');
temp1=double(fg1).*double(imcomplement(gaussian))/255;
temp2=double(fg2).*double(gaussian)/255;
result=temp1+temp2;
delete('temp1.jpg');
delete('temp2.jpg');
imwrite(result/255,out);