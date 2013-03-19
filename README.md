pdf_preprocess_and_ocr
======================

Preprocesses and performs OCR on a batch of PDFs that contain no text streams (e.g. PDFs created from scanned documents)

Requirements:
 - Windows NT or later
 - Tesseract OCR
 - ImageMagick binaries

Place this file in a folder full of PDFs and run it. It will create TIFF files using a preprocessing method conducive to OCR, and then run them each through Tesseract.
