img=imgdata(); 
Cell_ten=PCA(img,2);
face1=find(Cell_ten,imread('test.jpg'));
subplot(1,2,1)
imshow('test.jpg')
title('Ñ¡È¡Í¼Ïñ')
subplot(1,2,2)
imshow(strcat(num2str(face1),'.jpg'))
title('Æ¥ÅäÍ¼Ïñ')

