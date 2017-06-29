md temp
call convert +repage -crop x722 %1 temp\test.png
move temp\test-0.png .\
call convert +repage -crop 722x764 %1 temp\test.png
move temp\test-2.png .\
call mogrify -rotate 270 .\test-2.png
call montage -mode concatenate -tile x1 test-0.png test-2.png %~n1-out.png
rd /S /Q temp
del test*.png