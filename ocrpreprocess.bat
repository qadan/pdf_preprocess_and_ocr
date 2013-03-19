@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
mogrify -format tiff -colorspace gray -density 300 -fill white -background white +matte *.pdf
for /f "tokens=*" %%p in ('dir /b *.tif') do (
  set filename=%%~np
	tesseract "%%p" "!filename!"
	)
ENDLOCAL
