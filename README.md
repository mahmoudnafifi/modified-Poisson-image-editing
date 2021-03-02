# MPB: A modified Poisson blending technique
*[Mahmoud Afifi](https://sites.google.com/view/mafifi)* and *[Khaled F. Hussain](https://scholar.google.ca/citations?user=8DgiMfcAAAAJ&hl=en)*

Assiut University, Egypt


Read our [paper](https://link.springer.com/article/10.1007/s41095-015-0027-z).

<p align="center">
  <img src="https://user-images.githubusercontent.com/37669469/76105310-b8eb7200-5fa2-11ea-9df4-7ba2c6943593.gif">
</p>




This is the Matlab implementation of image blending using "MPB: A modified Poisson blending technique". We propose to reduce bleeding artifacts caused by the Poisson image editing (PIE) by relying on the boundary pixels of both target and source images rather than just those of the target. Our proposed technique suitable for use in video compositing as it avoids the flickering caused by bleeding artifacts (check our results of the conference paper [here](https://www.youtube.com/watch?v=sVP5kSt8LuM)). Additionally, we propose to reduce the problem of color bleeding by using an additional alpha compositing step.

### Publication
Mahmoud Afifi and Khaled F. Hussain, MPB: A modified Poisson blending technique, Computational Visual Media, 1(4), 331-341, 2015.

[![View modified-Poisson-image-editing on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/55442-modified-poisson-image-editing)


### Related Research Projects
- sRGB Image White Balancing:
  - [When Color Constancy Goes Wrong](https://github.com/mahmoudnafifi/WB_sRGB): The first work for white-balancing camera-rendered sRGB images (CVPR 2019).
  - [White-Balance Augmenter](https://github.com/mahmoudnafifi/WB_color_augmenter): Emulating white-balance effects for color augmentation; it improves the accuracy of image classification and image semantic segmentation methods (ICCV 2019).
  - [Color Temperature Tuning](https://github.com/mahmoudnafifi/ColorTempTuning): A camera pipeline that allows accurate post-capture white-balance editing (CIC best paper award, 2019).
  - [Interactive White Balancing](https://github.com/mahmoudnafifi/Interactive_WB_correction): Interactive sRGB image white balancing using polynomial correction mapping (CIC 2020).
  - [Deep White-Balance Editing](https://github.com/mahmoudnafifi/Deep_White_Balance): A multi-task deep learning model for post-capture white-balance editing (CVPR 2020).
- Raw Image White Balancing:
  - [APAP Bias Correction](https://github.com/mahmoudnafifi/APAP-bias-correction-for-illumination-estimation-methods): A locally adaptive bias correction technique for illuminant estimation (JOSA A 2019).
  - [SIIE](https://github.com/mahmoudnafifi/SIIE): A sensor-independent deep learning framework for illumination estimation (BMVC 2019).
  - [C5](https://github.com/mahmoudnafifi/C5): A self-calibration method for cross-camera illuminant estimation (arXiv 2020).
- Image Enhancement:
  - [CIE XYZ Net](https://github.com/mahmoudnafifi/CIE_XYZ_NET): Image linearization for low-level computer vision tasks; e.g., denoising, deblurring, and image enhancement (arXiv 2020).
  - [Exposure Correction](https://github.com/mahmoudnafifi/Exposure_Correction): A coarse-to-fine deep learning model with adversarial training to correct badly-exposed photographs (CVPR 2021).
 - Image Manipulation:
    - [Image Recoloring](https://github.com/mahmoudnafifi/Image_recoloring): A fully automated image recoloring with no target/reference images (Eurographics 2019).
    - [Image Relighting](https://github.com/mahmoudnafifi/image_relighting): Relighting using a uniformly-lit white-balanced version of input images (Runner-Up Award overall tracks of AIM 2020 challenge for image relighting, ECCV 2020). 
    - [HistoGAN](https://github.com/mahmoudnafifi/HistoGAN): Controlling colors of GAN-generated images based on features derived directly from color histograms (CVPR 2021). 
