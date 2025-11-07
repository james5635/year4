def use_pypdf(
    chapter_first_page: int,
    chapter_end_page: int,
    chapter_title: str,
    output_file: str,
    pdf_file: str,
):
    from pypdf import PdfReader

    reader = PdfReader(pdf_file)

    open(output_file, "w").close()
    with open(output_file, "a") as f:
        f.write(f"# {chapter_title}\n")
        for idx, page_num in enumerate(range(chapter_first_page, chapter_end_page + 1)):
            page = reader.pages[page_num]
            text = page.extract_text()
            text = text.rsplit("\n", 1)[0]
            f.write(f"## Page {idx + 1}\n" + f"```\n{text}\n```")
            if page_num != chapter_end_page:
                f.write("\n\n")


# def use_pymupdf():
#     import pymupdf

#     doc = pymupdf.open(
#         "Management Information Systems - Managing the Digital Firm, "  # pyright: ignore[reportImplicitStringConcatenation]
#         "-- Kenneth C_ Laudon, Jane P_ Laudon, Jane Price Laudon, Jane -- 12, 2011.pdf"
#     )
#     page = doc[52]
#     # print(page.get_text())

#     # for page in doc:
#     for item in page.get_images():
#         xref = item[0]
#         pix = pymupdf.Pixmap(doc, xref)  # make Pixmap from image
#         # OCR the image, make a 1-page PDF from it
#         pdfdata = pix.pdfocr_tobytes()  # 1-page PDF in memory
#         ocrpdf = pymupdf.open("pdf", pdfdata)  # open as PDF document
#         ocrtext = ocrpdf[0].get_text()  # extract OCR-ed text from page 1
#         # ... do something with the text
#         # note: text details / metadata / positions etc. are available too
#         print(ocrtext)


"""

    import fitz # PyMuPDF
    from PIL import Image
    import pytesseract

    # Open the PDF
    doc = fitz.open("scanned.pdf")

    for page_num in range(doc.page_count):
        page = doc.load_page(page_num)
        pix = page.get_pixmap()

        # Convert pixmap to PIL Image
        img = Image.frombytes("RGB", [pix.width, pix.height], pix.samples)

        # Perform OCR using Tesseract
        text = pytesseract.image_to_string(img)
        print(f"Text from page {page_num + 1}:\n{text}")

    doc.close()

"""
"""
import pdf2image
import pytesseract
from pytesseract import Output, TesseractError

pdf_path = "document.pdf"

images = pdf2image.convert_from_path(pdf_path)

pil_im = images[0] # assuming that we're interested in the first page only

ocr_dict = pytesseract.image_to_data(pil_im, lang='eng', output_type=Output.DICT)
# ocr_dict now holds all the OCR info including text and location on the image

text = " ".join(ocr_dict['text'])
"""


def use_pypdf_with_ocr(
    chapter_first_page: int,
    chapter_end_page: int,
    chapter_title: str,
    output_file: str,
    pdf_file: str,
):
    from pypdf import PdfReader
    from PIL import Image
    import io
    import pytesseract

    reader = PdfReader(pdf_file)

    open(output_file, "w").close()
    with open(output_file, "a") as f:
        f.write(f"# {chapter_title}\n")
        for idx, page_num in enumerate(range(chapter_first_page, chapter_end_page + 1)):
            page = reader.pages[page_num]
            text = page.extract_text()
            text = text.rsplit("\n", 1)[0]
            f.write(f"## Page {idx + 1}\n" + f"```\n{text}\n```")

            images = page.images
            if len(images) != 0:
                f.write("\n")
                for _idx, image in enumerate(images):
                    im = Image.open(io.BytesIO(image.data))
                    text = pytesseract.image_to_string(im, lang="eng")
                    f.write(f"### Image {_idx + 1}\n" + f"```\n{text}\n```")
                    if image != images[-1]:
                        f.write("\n")
                    
                    # im.show()
                    # input(f"{idx} Press Enter to continue...")

            if page_num != chapter_end_page:
                f.write("\n\n")
            # input(f"{idx} Press Enter to continue...")

    # chapter_1_first_page = reader.pages[60]
    # images = chapter_1_first_page.images
    # image = images[0]
    # im = Image.open(io.BytesIO(image.data))
    # im.show()
    # text = pytesseract.image_to_string(im, lang="eng")
    # print(text)


def main():
    use_pypdf(
        33,
        70,
        "Chapter 1 - Information Systems in Global Business Today",
        "contents/chapter_1.md",
        "Management_Information_Systems_Managing_the_Digital_Firms_2014.pdf",
    )
    # use_pypdf_with_ocr(
    #     33,
    #     70,
    #     "Chapter 1 - Information Systems in Global Business Today",
    #     "contents/ocr_chapter_1.md",
    #     "Management_Information_Systems_Managing_the_Digital_Firms_2014.pdf",
    # )


if __name__ == "__main__":
    main()
