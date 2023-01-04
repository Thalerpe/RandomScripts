#removes white spaces
for f in *\ *; do mv "$f" "${f// /_}"; done

dir=$(pwd)
echo $dir
counter=1
for filename in $(find ./ -type f -name "*.jpg")$dir/*.webp; do
    echo "This is the filename" $filename
    filename_new=${filename%.*}
    filename_new=$filename_new.png
    echo "This is the new" $filename_new
    dwebp $filename -o $filename.png
    #echo $counter
    #mv $filename ./test_$counter.webp
    #counter=$((counter+1))  

done


