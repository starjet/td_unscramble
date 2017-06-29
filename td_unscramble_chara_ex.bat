md temp
call convert +repage -crop 722x %1 temp\test.png
move temp\test-0.png .\
call mogrify -geometry +0+0 -background none -extent 300x1024 temp\test-1.png
call convert +repage -crop x341 temp\test-1.png temp\test2.png
move temp\test2-0.png .\
move temp\test2-1.png .\
move temp\test2-2.png .\
call mogrify -geometry +0+0 -background none -extent 722x1022 test-0.png
call montage -geometry +0+0 -background none -mode concatenate -tile x1 test2-0.png test2-1.png test2-2.png test99.png
call montage -geometry +0+0 -background none -mode concatenate -tile 1x test-0.png test99.png %~n1-out.png
rd /S /Q temp
del test*.png
