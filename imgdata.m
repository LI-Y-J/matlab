 
function ImgData = imgdata()  
 
namud = 0.5;  
pic1 = rgb2gray(imread('1.jpg')); pic1 = imresize(pic1,namud);  
pic2 = rgb2gray(imread('2.jpg')); pic2 = imresize(pic2,namud);  
pic3 = rgb2gray(imread('3.jpg')); pic3 = imresize(pic3,namud);  
pic4 = rgb2gray(imread('4.jpg')); pic4 = imresize(pic4,namud);  
pic5 = rgb2gray(imread('5.jpg')); pic5 = imresize(pic5,namud);  
pic6 = rgb2gray(imread('6.jpg')); pic6 = imresize(pic6,namud);  
pic7 = rgb2gray(imread('7.jpg')); pic7 = imresize(pic7,namud);  
pic8 = rgb2gray(imread('8.jpg')); pic8 = imresize(pic8,namud);  
pic9 = rgb2gray(imread('9.jpg')); pic9 = imresize(pic9,namud);  
pic10 = rgb2gray(imread('10.jpg')); pic10 = imresize(pic10,namud);  

[m,n] = size(pic1);  

pic_all = {pic1,pic2,pic3,pic4,pic5,pic6,pic7,pic8,pic9,pic10};  
for i=1:10 
 
    ImgData(i,:) = reshape(pic_all{i},1,m*n);  
end  

ImgData = double(ImgData)/255;  
