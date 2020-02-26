 
function Find = find(Cell_all,img2find)  

img_all = Cell_all{1};  
[m1,n1] = size(img_all);  

V = Cell_all{2};  
D = Cell_all{3}; 

namud = 0.5;  

pic = rgb2gray(img2find);   
pic = imresize(pic,namud); 

[m2,n2] = size(pic);   
pic = reshape(pic,1,m2*n2); 
pic = double(pic)/255;  

pic_done = pic*V*D;  
Ma = max(max(pic_done));  
Mi = min(min(pic_done));  
pic_done = pic_done/(Ma - Mi);  

for i=1:m1  
     
    Ma1 = max(img_all(i,:));  
    Mi1 = min(img_all(i,:));  
    img_all(i,:) = img_all(i,:)/(Ma1 - Mi1);   
    error(i) = norm(img_all(i,:)-pic_done);  
end  

Find = find(error == min(error));  
