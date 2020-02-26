
function Cell_all = PCA(img,k)  

[m,n] = size(img);   
img_mean = mean(img);   
img_mean_all = repmat(img_mean,m,1);
Z = imgdata - img_mean_all;  
T = Z'*Z;    
[V,D] = eigs(T,k); 
img_new = img*V*D;  
Cell_all = {img_new,V,D};