for file in segregate_photos/*.jpg; do
        #echo $file
        name=${file##*/}
        #echo $name
        #break
        year=$(echo $name | cut -d '-' -f 1)
        month=$(echo $name | cut -d '-' -f 2)
        #cd segregate_photo
        if [ ! -d "segregate_photo/$year/$month" ]; then
        #       cd segregate_photo
                mkdir -p segregate_photo/$year/$month
                mv segregate_photos/$name segregate_photo/$year/$month/$name
        else
                mv segregate_photos/$name segregate_photo/$year/$month/$name
        fi
        #break
done
