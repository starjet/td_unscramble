md temp
call convert +repage -crop 642x510 %1 temp\test.png
move temp\test-0.png .\
call convert +repage -crop 642x292 %1 temp\test.png
move temp\test-1.png .\
call convert +repage -crop 644x292 %1 temp\test.png
call convert +repage -crop 260x220 temp\test-3.png temp\test4.png
move temp\test4-0.png .\
call convert +repage -crop 642x294 %1 temp\test.png
call convert +repage -crop 264x72 temp\test-3.png temp\test4.png
move temp\test4-1.png .\
call convert +repage -crop 264x74 temp\test-3.png temp\test4.png
call convert +repage -crop x72 temp\test4-3.png temp\test5.png
move temp\test5-0.png .\
call convert +repage -crop 264x148 temp\test-3.png temp\test6.png
call convert +repage -crop 24x72 temp\test6-3.png temp\test7.png
move temp\test7-0.png .\
rd /S /Q temp
call montage -mode concatenate -tile x1 test5-0.png test7-0.png test99.png
call montage -mode concatenate -tile x1 test4-1.png test99.png test98.png
call montage -mode concatenate -tile 1x test4-0.png test98.png test97.png
call montage -mode concatenate -tile x1 test-1.png test97.png test96.png
call montage -mode concatenate -tile 1x test-0.png test96.png %~n1-out.png
del test*.png