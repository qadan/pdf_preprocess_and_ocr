pdf_preprocess_and_ocr
======================

Preprocesses and performs OCR on a PDF that contains no text streams (e.g. a PDF created from a scanned document)

Requirements:
 - Windows NT or later
 - Tesseract OCR
 - ImageMagick binaries

Place this file in a folder full of PDFs and run it. It will create TIFF files using a preprocessing method conducive to OCR, and then run them each through Tesseract.
