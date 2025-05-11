<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Galerie</title>
    <style>
        .gallery {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }
        .gallery img {
            width: 200px;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
        }
    </style>
</head>
<body>
<h1>Ma Galerie</h1>

<div class="gallery">
    <img src="https://via.placeholder.com/200x150" alt="Image 1">
    <img src="https://via.placeholder.com/200x150" alt="Image 2">
    <img src="https://via.placeholder.com/200x150" alt="Image 3">
    <img src="https://via.placeholder.com/200x150" alt="Image 4">
</div>
</body>
</html>
