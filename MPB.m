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

%Source Code is based on Ryoichi Ando Poisson code.


function F = MPB( foreground, background, mask , out )
 tic;
background = im2double(background);
foreground = im2double(foreground);
mask = im2double(mask);
F=blending(foreground,background,mask);
mask=imcomplement(mask);
F=blending(background,F,mask);
timerVal=toc
imwrite(F,out,'jpg');
end

function F = blending(foreground,background,mask)
F(:,:,1) = gradientBlending( foreground(:,:,1), background(:,:,1), mask );
F(:,:,2) = gradientBlending( foreground(:,:,2), background(:,:,2), mask );
F(:,:,3) = gradientBlending( foreground(:,:,3), background(:,:,3), mask );
end

function F = gradientBlending( background, foreground, mask )
[h,w] = size(foreground);
n = w*h;
A = sparse(n,n);
fx = find(mask > 0); 
bx = find(mask == 0); 
q = zeros(n,1);
q(fx) = 1;
I = diag(sparse(q));
A = -4*I;
A = A+circshift(I,[0 h])+circshift(I,[0 -h]);
A = A+circshift(I,[0 1])+circshift(I,[0 -1]);
A = A+speye(n)-I;
b = zeros(n,1);
b(bx) = background(bx);
lapforeground = circshift(foreground,[1 0])+circshift(foreground,[-1 0]);
lapforeground = lapforeground+circshift(foreground,[0 1])+circshift(foreground,[0 -1]);
lapforeground = lapforeground-4*foreground;
b(fx) = lapforeground(fx);
x = A\b;
F = reshape(x,[h w]);
end
