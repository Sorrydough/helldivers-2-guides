mkdir -p converted_webp
for file in *; do
    if [[ -f "$file" ]]; then
        # Extract the file name without extension
        filename=$(basename "$file" | cut -d. -f1)
        # Convert to WebP format
        magick "$file" -resize 64x64^ "converted_webp/${filename}.webp"
    fi
done
