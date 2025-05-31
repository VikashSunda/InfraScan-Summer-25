# Week 2: Introduction to Image Processing in MATLAB

**Project**: InfraScan – AI-Powered Structural Health Monitoring  

## 🧠 Core Concepts Covered
- What is a digital image?
- RGB vs. grayscale images
- How to manipulate images using MATLAB
- Visualizing results
- Preprocessing steps for deep learning

---

## ✅ Prerequisites
- MATLAB installed
- Image Processing Toolbox installed
- Sample images (`peppers.png`, `coins.png`, etc.)

---

## 🔧 Example 1: Load and Display Image

```matlab
img = imread('peppers.png'); 
figure; imshow(img); title('Original RGB Image');
disp(size(img));
```

---

## 🔧 Example 2: Resize the Image

```matlab
resizedImg = imresize(img, [256 256]);
figure; imshow(resizedImg); title('Resized Image (256x256)');
```

---

## 🔧 Example 3: Convert to Grayscale

```matlab
grayImg = rgb2gray(resizedImg);
figure; imshow(grayImg); title('Grayscale Image');
```

---

## 🔧 Example 4: Gaussian Blur

```matlab
blurredImg = imgaussfilt(grayImg, 2);
figure; imshow(blurredImg); title('Gaussian Blurred Image');
```

---

## 🔧 Example 5: Sharpening

```matlab
sharpenedImg = imsharpen(grayImg);
figure; imshow(sharpenedImg); title('Sharpened Image');
```

---

## 🔧 Example 6: Histogram Equalization

```matlab
equalizedImg = histeq(grayImg);
figure; imshow(equalizedImg); title('Histogram Equalized Image');
```

---

## 🔧 Example 7: Adaptive Thresholding and Region Detection

```matlab
binaryImg = imbinarize(equalizedImg); 
figure; imshow(binaryImg); title('Binarized Image');

[labeledImg, num] = bwlabel(binaryImg); 
coloredLabels = label2rgb(labeledImg, 'jet', 'k'); 
figure; imshow(coloredLabels); title(['Detected Regions: ', num2str(num)]);
```

---

## 🗂 Save All Outputs

```matlab
imwrite(resizedImg, 'resized_image.png');
imwrite(grayImg, 'gray_image.png');
imwrite(blurredImg, 'blurred_image.png');
imwrite(sharpenedImg, 'sharpened_image.png');
imwrite(equalizedImg, 'equalized_image.png');
```

---

## 📝 Assignment for Mentees

**Title**: Learn & Apply Basic Image Processing in MATLAB

### 📌 Task:
1. Choose any 1–2 sample images.
2. Perform:
   - Resize to 256x256
   - Convert to grayscale
   - Apply Gaussian blur
   - Apply sharpening
   - Perform histogram equalization
   - Binarize the image
   - Label connected regions

### 📩 Submission:
- MATLAB code (.m file)
- A short report (max 150 words)

---
## 3. Resources

- **MATLAB Documentation**  
  - Image Processing Toolbox Overview:  
    https://www.mathworks.com/help/images/

- **Interactive Course**  
  - Image Processing Onramp (free):  
    https://matlabacademy.mathworks.com/details/image-processing-onramp/getting-started

- **Video Tutorials**  
  1. **MATLAB Image Processing Tutorial**  
     [https://www.youtube.com/watch?v=Q59sN8n2wJk ](https://www.youtube.com/watch?v=eOUfW1mL88A) 
  2. **Edge Detection in MATLAB**  
     [https://www.youtube.com/watch?v=FYy8vI5dN_s](https://www.youtube.com/watch?v=FmyM9w3ZTAo)

- **Sample Images**  
  - Built-in: `peppers.png`, `cameraman.tif`, `coins.png`  

---

_End of Week 2 Resources_

