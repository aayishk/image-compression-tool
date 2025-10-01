<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Free online image compression tool. Reduce image file size while maintaining quality. Supports JPG, PNG, and WebP formats.">
    <meta name="keywords" content="image compression, image optimizer, reduce image size, online image tool">
    <title>ImageCompress Pro - Free Online Image Compression Tool</title>
    <style>
        :root {
            --primary-color: #4361ee;
            --secondary-color: #3a0ca3;
            --accent-color: #4cc9f0;
            --light-color: #f8f9fa;
            --dark-color: #212529;
            --success-color: #4bb543;
            --warning-color: #ffcc00;
            --error-color: #ff3333;
            --gray-color: #6c757d;
            --border-radius: 8px;
            --box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f7ff;
            color: var(--dark-color);
            line-height: 1.6;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 1.5rem 0;
            box-shadow: var(--box-shadow);
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            display: flex;
            align-items: center;
        }

        .logo i {
            margin-right: 10px;
            font-size: 2rem;
        }

        nav ul {
            display: flex;
            list-style: none;
        }

        nav ul li {
            margin-left: 1.5rem;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: var(--transition);
        }

        nav ul li a:hover {
            color: var(--accent-color);
        }

        .hero {
            padding: 3rem 0;
            text-align: center;
            background-color: white;
            margin-bottom: 2rem;
            border-radius: 0 0 var(--border-radius) var(--border-radius);
            box-shadow: var(--box-shadow);
        }

        .hero h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: var(--secondary-color);
        }

        .hero p {
            font-size: 1.2rem;
            color: var(--gray-color);
            max-width: 700px;
            margin: 0 auto 2rem;
        }

        .main-content {
            display: grid;
            grid-template-columns: 1fr 300px;
            gap: 2rem;
            margin-bottom: 2rem;
        }

        @media (max-width: 992px) {
            .main-content {
                grid-template-columns: 1fr;
            }
        }

        .compression-tool {
            background-color: white;
            border-radius: var(--border-radius);
            padding: 2rem;
            box-shadow: var(--box-shadow);
        }

        .tool-title {
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
            color: var(--secondary-color);
            display: flex;
            align-items: center;
        }

        .tool-title i {
            margin-right: 10px;
            color: var(--primary-color);
        }

        .upload-area {
            border: 2px dashed #ccc;
            border-radius: var(--border-radius);
            padding: 3rem 2rem;
            text-align: center;
            margin-bottom: 2rem;
            transition: var(--transition);
            cursor: pointer;
        }

        .upload-area:hover {
            border-color: var(--primary-color);
            background-color: rgba(67, 97, 238, 0.05);
        }

        .upload-area i {
            font-size: 3rem;
            color: var(--gray-color);
            margin-bottom: 1rem;
        }

        .upload-area p {
            margin-bottom: 1rem;
            color: var(--gray-color);
        }

        .btn {
            display: inline-block;
            background-color: var(--primary-color);
            color: white;
            padding: 0.8rem 1.5rem;
            border: none;
            border-radius: var(--border-radius);
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            text-decoration: none;
        }

        .btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-2px);
        }

        .btn-outline {
            background-color: transparent;
            border: 2px solid var(--primary-color);
            color: var(--primary-color);
        }

        .btn-outline:hover {
            background-color: var(--primary-color);
            color: white;
        }

        .compression-controls {
            margin: 2rem 0;
        }

        .control-group {
            margin-bottom: 1.5rem;
        }

        .control-label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 600;
            color: var(--dark-color);
        }

        .slider-container {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .slider {
            flex: 1;
            -webkit-appearance: none;
            height: 8px;
            border-radius: 4px;
            background: #ddd;
            outline: none;
        }

        .slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: var(--primary-color);
            cursor: pointer;
        }

        .slider-value {
            font-weight: 600;
            min-width: 40px;
            text-align: center;
        }

        .format-options {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .format-option {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .preview-section {
            margin: 2rem 0;
        }

        .preview-title {
            font-size: 1.2rem;
            margin-bottom: 1rem;
            color: var(--secondary-color);
        }

        .preview-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1.5rem;
        }

        @media (max-width: 768px) {
            .preview-container {
                grid-template-columns: 1fr;
            }
        }

        .preview-box {
            border: 1px solid #eee;
            border-radius: var(--border-radius);
            padding: 1rem;
            text-align: center;
        }

        .preview-image {
            max-width: 100%;
            max-height: 300px;
            margin-bottom: 1rem;
            border-radius: 4px;
        }

        .image-info {
            display: flex;
            justify-content: space-between;
            font-size: 0.9rem;
            color: var(--gray-color);
        }

        .action-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
            margin-top: 2rem;
        }

        .sidebar {
            display: flex;
            flex-direction: column;
            gap: 2rem;
        }

        .ad-container {
            background-color: white;
            border-radius: var(--border-radius);
            padding: 1rem;
            box-shadow: var(--box-shadow);
            text-align: center;
            min-height: 250px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .ad-label {
            font-size: 0.8rem;
            color: var(--gray-color);
            margin-bottom: 0.5rem;
        }

        .ad-placeholder {
            width: 100%;
            height: 200px;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 4px;
            color: var(--gray-color);
        }

        .info-box {
            background-color: white;
            border-radius: var(--border-radius);
            padding: 1.5rem;
            box-shadow: var(--box-shadow);
        }

        .info-title {
            font-size: 1.2rem;
            margin-bottom: 1rem;
            color: var(--secondary-color);
            display: flex;
            align-items: center;
        }

        .info-title i {
            margin-right: 10px;
            color: var(--primary-color);
        }

        .info-list {
            list-style: none;
        }

        .info-list li {
            margin-bottom: 0.8rem;
            padding-left: 1.5rem;
            position: relative;
        }

        .info-list li:before {
            content: "•";
            color: var(--primary-color);
            font-weight: bold;
            position: absolute;
            left: 0;
        }

        footer {
            background-color: var(--dark-color);
            color: white;
            padding: 2rem 0;
            margin-top: 3rem;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 2rem;
        }

        .footer-section {
            flex: 1;
            min-width: 250px;
        }

        .footer-section h3 {
            margin-bottom: 1rem;
            color: var(--accent-color);
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.5rem;
        }

        .footer-links a {
            color: #ccc;
            text-decoration: none;
            transition: var(--transition);
        }

        .footer-links a:hover {
            color: white;
        }

        .copyright {
            text-align: center;
            margin-top: 2rem;
            padding-top: 1rem;
            border-top: 1px solid #444;
            color: #aaa;
            font-size: 0.9rem;
        }

        .hidden {
            display: none;
        }

        .loading {
            display: inline-block;
            width: 20px;
            height: 20px;
            border: 3px solid rgba(255,255,255,.3);
            border-radius: 50%;
            border-top-color: white;
            animation: spin 1s ease-in-out infinite;
        }

        @keyframes spin {
            to { transform: rotate(360deg); }
        }

        .compression-info {
            background-color: #e9f7fe;
            border-left: 4px solid var(--accent-color);
            padding: 1rem;
            margin: 1.5rem 0;
            border-radius: 0 var(--border-radius) var(--border-radius) 0;
        }

        .file-info {
            display: flex;
            justify-content: space-between;
            background-color: #f8f9fa;
            padding: 0.8rem;
            border-radius: var(--border-radius);
            margin-bottom: 1rem;
        }

        .file-info-item {
            text-align: center;
        }

        .file-info-label {
            font-size: 0.8rem;
            color: var(--gray-color);
        }

        .file-info-value {
            font-weight: 600;
            margin-top: 0.3rem;
        }

        .savings {
            color: var(--success-color);
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column;
                text-align: center;
            }
            
            nav ul {
                margin-top: 1rem;
                justify-content: center;
            }
            
            nav ul li {
                margin: 0 0.75rem;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .action-buttons {
                flex-direction: column;
            }
        }
    </style>
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <header>
        <div class="container">
            <div class="header-content">
                <div class="logo">
                    <i class="fas fa-compress-alt"></i>
                    <span>ImageCompress Pro</span>
                </div>
                <nav>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">How It Works</a></li>
                        <li><a href="#">Pricing</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <section class="hero">
        <div class="container">
            <h1>Compress Images Without Losing Quality</h1>
            <p>Reduce image file size by up to 80% while maintaining visual quality. Perfect for websites, social media, and storage optimization.</p>
            <a href="#compression-tool" class="btn">Start Compressing Now</a>
        </div>
    </section>

    <div class="container">
        <div class="main-content">
            <div class="compression-tool" id="compression-tool">
                <h2 class="tool-title"><i class="fas fa-tools"></i> Image Compression Tool</h2>
                
                <div class="upload-area" id="uploadArea">
                    <i class="fas fa-cloud-upload-alt"></i>
                    <p>Drag & drop your image here or click to browse</p>
                    <p class="small">Supports JPG, PNG, WebP (Max: 10MB)</p>
                    <input type="file" id="fileInput" accept="image/*" class="hidden">
                    <button class="btn" id="browseBtn">Browse Files</button>
                </div>

                <div class="compression-controls hidden" id="compressionControls">
                    <div class="control-group">
                        <label class="control-label">Compression Level</label>
                        <div class="slider-container">
                            <input type="range" min="0" max="100" value="70" class="slider" id="compressionSlider">
                            <span class="slider-value" id="sliderValue">70%</span>
                        </div>
                        <div class="compression-info">
                            <p><strong>Quality vs Size:</strong> Lower values = smaller file size but reduced quality. Higher values = better quality but larger file size.</p>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label">Output Format</label>
                        <div class="format-options">
                            <div class="format-option">
                                <input type="radio" id="formatJpg" name="format" value="jpg" checked>
                                <label for="formatJpg">JPG</label>
                            </div>
                            <div class="format-option">
                                <input type="radio" id="formatPng" name="format" value="png">
                                <label for="formatPng">PNG</label>
                            </div>
                            <div class="format-option">
                                <input type="radio" id="formatWebp" name="format" value="webp">
                                <label for="formatWebp">WebP</label>
                            </div>
                        </div>
                    </div>

                    <div class="file-info" id="fileInfo">
                        <div class="file-info-item">
                            <div class="file-info-label">Original Size</div>
                            <div class="file-info-value" id="originalSize">-</div>
                        </div>
                        <div class="file-info-item">
                            <div class="file-info-label">Compressed Size</div>
                            <div class="file-info-value" id="compressedSize">-</div>
                        </div>
                        <div class="file-info-item">
                            <div class="file-info-label">Reduction</div>
                            <div class="file-info-value savings" id="reduction">-</div>
                        </div>
                    </div>

                    <div class="preview-section">
                        <h3 class="preview-title">Preview</h3>
                        <div class="preview-container">
                            <div class="preview-box">
                                <h4>Original Image</h4>
                                <img src="" alt="Original" class="preview-image" id="originalPreview">
                                <div class="image-info">
                                    <span>Dimensions: <span id="originalDimensions">-</span></span>
                                </div>
                            </div>
                            <div class="preview-box">
                                <h4>Compressed Image</h4>
                                <img src="" alt="Compressed" class="preview-image" id="compressedPreview">
                                <div class="image-info">
                                    <span>Dimensions: <span id="compressedDimensions">-</span></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="action-buttons">
                        <button class="btn" id="compressBtn">
                            <span id="compressText">Compress Image</span>
                            <span class="loading hidden" id="compressLoading"></span>
                        </button>
                        <button class="btn btn-outline hidden" id="downloadBtn">Download Compressed Image</button>
                    </div>
                </div>
            </div>

            <div class="sidebar">
                <div class="ad-container">
                    <div class="ad-label">Advertisement</div>
                    <div class="ad-placeholder">
                        <!-- Replace with your Google AdSense code -->
                        <!-- Google AdSense Ad Unit -->
                        <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-XXXXXXXXXXXXXXXX" crossorigin="anonymous"></script>
                        <ins class="adsbygoogle"
                             style="display:block"
                             data-ad-client="ca-pub-XXXXXXXXXXXXXXXX"
                             data-ad-slot="XXXXXXXXXX"
                             data-ad-format="auto"
                             data-full-width-responsive="true"></ins>
                        <script>
                             (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                    </div>
                </div>

                <div class="info-box">
                    <h3 class="info-title"><i class="fas fa-info-circle"></i> Why Compress Images?</h3>
                    <ul class="info-list">
                        <li>Faster website loading times</li>
                        <li>Reduce bandwidth usage</li>
                        <li>Improve SEO rankings</li>
                        <li>Save storage space</li>
                        <li>Better user experience</li>
                    </ul>
                </div>

                <div class="ad-container">
                    <div class="ad-label">Advertisement</div>
                    <div class="ad-placeholder">
                        <!-- Another ad space -->
                        <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-XXXXXXXXXXXXXXXX" crossorigin="anonymous"></script>
                        <ins class="adsbygoogle"
                             style="display:block"
                             data-ad-client="ca-pub-XXXXXXXXXXXXXXXX"
                             data-ad-slot="XXXXXXXXXX"
                             data-ad-format="auto"
                             data-full-width-responsive="true"></ins>
                        <script>
                             (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>ImageCompress Pro</h3>
                    <p>The fastest and most efficient online image compression tool. Reduce file sizes without sacrificing quality.</p>
                </div>
                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">How It Works</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Support</h3>
                    <ul class="footer-links">
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 ImageCompress Pro. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // DOM Elements
            const uploadArea = document.getElementById('uploadArea');
            const fileInput = document.getElementById('fileInput');
            const browseBtn = document.getElementById('browseBtn');
            const compressionControls = document.getElementById('compressionControls');
            const compressionSlider = document.getElementById('compressionSlider');
            const sliderValue = document.getElementById('sliderValue');
            const originalPreview = document.getElementById('originalPreview');
            const compressedPreview = document.getElementById('compressedPreview');
            const compressBtn = document.getElementById('compressBtn');
            const downloadBtn = document.getElementById('downloadBtn');
            const originalSize = document.getElementById('originalSize');
            const compressedSize = document.getElementById('compressedSize');
            const reduction = document.getElementById('reduction');
            const originalDimensions = document.getElementById('originalDimensions');
            const compressedDimensions = document.getElementById('compressedDimensions');
            const compressText = document.getElementById('compressText');
            const compressLoading = document.getElementById('compressLoading');

            // Variables
            let originalImage = null;
            let compressedImageBlob = null;
            let originalFileSize = 0;

            // Event Listeners
            browseBtn.addEventListener('click', () => fileInput.click());
            fileInput.addEventListener('change', handleFileSelect);
            uploadArea.addEventListener('dragover', handleDragOver);
            uploadArea.addEventListener('drop', handleFileDrop);
            compressionSlider.addEventListener('input', updateSliderValue);
            compressBtn.addEventListener('click', compressImage);
            downloadBtn.addEventListener('click', downloadImage);

            // Functions
            function handleDragOver(e) {
                e.preventDefault();
                uploadArea.style.borderColor = 'var(--primary-color)';
                uploadArea.style.backgroundColor = 'rgba(67, 97, 238, 0.1)';
            }

            function handleFileDrop(e) {
                e.preventDefault();
                uploadArea.style.borderColor = '#ccc';
                uploadArea.style.backgroundColor = 'transparent';
                
                if (e.dataTransfer.files.length) {
                    fileInput.files = e.dataTransfer.files;
                    handleFileSelect();
                }
            }

            function handleFileSelect() {
                if (!fileInput.files.length) return;
                
                const file = fileInput.files[0];
                
                // Check if file is an image
                if (!file.type.match('image.*')) {
                    alert('Please select an image file (JPG, PNG, WebP, etc.)');
                    return;
                }
                
                // Check file size (limit to 10MB)
                if (file.size > 10 * 1024 * 1024) {
                    alert('File size exceeds 10MB limit. Please choose a smaller image.');
                    return;
                }
                
                originalFileSize = file.size;
                originalSize.textContent = formatFileSize(file.size);
                
                const reader = new FileReader();
                reader.onload = function(e) {
                    originalImage = new Image();
                    originalImage.onload = function() {
                        originalPreview.src = e.target.result;
                        originalDimensions.textContent = `${originalImage.width} × ${originalImage.height}`;
                        compressionControls.classList.remove('hidden');
                    };
                    originalImage.src = e.target.result;
                };
                reader.readAsDataURL(file);
            }

            function updateSliderValue() {
                sliderValue.textContent = `${compressionSlider.value}%`;
            }

            function compressImage() {
                if (!originalImage) return;
                
                // Show loading state
                compressText.classList.add('hidden');
                compressLoading.classList.remove('hidden');
                compressBtn.disabled = true;
                
                // Simulate compression process (in a real app, this would use actual compression algorithms)
                setTimeout(() => {
                    const canvas = document.createElement('canvas');
                    const ctx = canvas.getContext('2d');
                    
                    // Set canvas dimensions to match image
                    canvas.width = originalImage.width;
                    canvas.height = originalImage.height;
                    
                    // Draw image on canvas
                    ctx.drawImage(originalImage, 0, 0);
                    
                    // Get selected format
                    const format = document.querySelector('input[name="format"]:checked').value;
                    
                    // Calculate quality based on slider (0-1 range)
                    const quality = compressionSlider.value / 100;
                    
                    // Convert canvas to blob with specified quality
                    canvas.toBlob(function(blob) {
                        compressedImageBlob = blob;
                        const compressedUrl = URL.createObjectURL(blob);
                        
                        // Update compressed preview
                        compressedPreview.src = compressedUrl;
                        compressedDimensions.textContent = `${originalImage.width} × ${originalImage.height}`;
                        
                        // Update file info
                        const compressedFileSize = blob.size;
                        compressedSize.textContent = formatFileSize(compressedFileSize);
                        
                        const reductionPercent = ((originalFileSize - compressedFileSize) / originalFileSize * 100).toFixed(1);
                        reduction.textContent = `${reductionPercent}%`;
                        
                        // Show download button
                        downloadBtn.classList.remove('hidden');
                        
                        // Reset button state
                        compressText.classList.remove('hidden');
                        compressLoading.classList.add('hidden');
                        compressBtn.disabled = false;
                    }, `image/${format}`, quality);
                }, 1000); // Simulate processing time
            }

            function downloadImage() {
                if (!compressedImageBlob) return;
                
                const format = document.querySelector('input[name="format"]:checked').value;
                const url = URL.createObjectURL(compressedImageBlob);
                const a = document.createElement('a');
                a.href = url;
                a.download = `compressed-image.${format}`;
                document.body.appendChild(a);
                a.click();
                document.body.removeChild(a);
                URL.revokeObjectURL(url);
            }

            function formatFileSize(bytes) {
                if (bytes < 1024) return bytes + ' bytes';
                else if (bytes < 1048576) return (bytes / 1024).toFixed(2) + ' KB';
                else return (bytes / 1048576).toFixed(2) + ' MB';
            }
        });
    </script>
</body>
</html>
