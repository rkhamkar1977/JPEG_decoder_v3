tar -xvf ~/Downloads/consumer.tar.gz consumer
cd consumer/
cd jpeg/jpeg-6a/
v Makefile
make
..
cat runme_small.sh
cd jpeg-6a/
ll
jpeg-6a/djpeg -dct int -ppm -outfile output_small_decode.ppm input_small.jpg
djpeg -dct int -ppm -outfile output_small_decode.ppm input_small.jpg
./djpeg -dct int -ppm -outfile output_small_decode.ppm input_small.jpg
./djpeg -dct int -ppm -outfile output_small_decode.ppm ../input_small.jpg
ls -lrt .
gprof djpeg gmon.out
gprof djpeg gmon.out > out.txt
less out.txt

#Make graph of gprof
