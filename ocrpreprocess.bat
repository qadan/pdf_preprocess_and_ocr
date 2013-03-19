@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
echo PDF_PREPROCESS_AND_OCR
for /f "tokens=*" %%t in ('dir /b *.pdf') do (
  set filename=%%~nt
  echo Preprocessing "!filename!" ...
  mogrify -format tiff -colorspace gray -density 300 -fill white -background white +matte "%%t"
  )
for /f "tokens=*" %%p in ('dir /b *.tif') do (
  set filename=%%~np
  echo Performing OCR on "!filename!" ...
  tesseract "%%p" "!filename!"
  echo Cleaning up ...
  del "%%p"
  )
ENDLOCAL
