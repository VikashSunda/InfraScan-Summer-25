# Week 2: Introduction to Image Processing with MATLAB

## 1. Starter Code: Basic Image Processing

```matlab
% Starter Code: Basic Image Processing in MATLAB
% 1. Load and display the original image
img = imread('peppers.png');
figure; imshow(img); title('Original Image');

% 2. Convert to grayscale
grayImg = rgb2gray(img);
figure; imshow(grayImg); title('Grayscale Image');

% 3. Resize image to 256x256
resizedImg = imresize(grayImg, [256 256]);
figure; imshow(resizedImg); title('Resized Image');

% 4. Apply Gaussian blur
blurredImg = imgaussfilt(resizedImg, 2);
figure; imshow(blurredImg); title('Gaussian Blurred Image');

% 5. Perform edge detection (Canny)
edgesCanny = edge(blurredImg, 'Canny');
figure; imshow(edgesCanny); title('Canny Edge Detection');
```

---

## 2. Assignment

**Title:** Image Processing Workflow for Structural Health Monitoring

**Tasks:**
1. **Select an Image:** Choose a structural image (e.g., crack, corrosion, beam defect) and save it as `myImage.png`.
2. **Custom Script:**  
   - Read `myImage.png`  
   - Convert to grayscale (`rgb2gray`)  
   - Resize to **256×256** (`imresize`)  
   - Apply both:
     - Median filter (`medfilt2`)
     - Gaussian filter (`imgaussfilt`)
   - Perform edge detection:
     - Sobel (`edge(...,'Sobel')`)
     - Canny (`edge(...,'Canny')`)
3. **Visualization:** Display all intermediate results in a single figure using subplots:
   - Original
   - Grayscale
   - Median filtered
   - Gaussian filtered
   - Sobel edges
   - Canny edges
4. **Save Outputs:** Export each processed image as PNG:
   - `grayscale.png`
   - `median_filtered.png`
   - `gaussian_filtered.png`
   - `sobel_edges.png`
   - `canny_edges.png`
5. **Report (200–300 words):** Briefly describe:
   - Differences between median and Gaussian filters.
   - Comparison of Sobel vs. Canny edge detection.
   - Potential applications for structural health monitoring.

---

## 3. Resources for Mentees

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

