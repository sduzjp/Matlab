%mcode to create a coe file
%���ɵ�������һ���н��ж�ȡ��
src = imread('InnovationCollege.jpg');
gray = rgb2gray(src);
BW = gray(1:300,1:300);
[m,n] = size( BW );% m�� n��
 
N = m*n;%%���ݵĳ��ȣ����洢����ȡ�
word_len = 12;%%ÿ����Ԫ��ռ�ݵ�λ�������Լ��趨
data = reshape(BW', 1, N);% 1��N��
 
%fid=fopen('gray_image.mif', 'w');%���ļ�
fid=fopen('InnovationCollege.coe', 'wt');%���ļ�
fprintf(fid, 'MEMORY_INITIALIZATION_RADIX=16;\n');
fprintf(fid, 'MEMORY_INITIALIZATION_VECTOR=\n');
 
 
for i = 1 : N-1
    fprintf(fid, '%x,\n', data(i));%ʹ��%x��ʾʮ��������
end
fprintf(fid, '%x;\n', data(N));%%�����β,ÿ�����ݺ����ö��Ż��߿ո���߻��з����������һ�����ݺ���ӷֺ�
fclose(fid);%%�ر��ļ�