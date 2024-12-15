#!/bin/bash

#update the library
# https://github.com/yt-dlp/yt-dlp
# yt-dlp -U

# List of URLs (duplicates included)
urls=(
  # "https://youtu.be/sF6dn_Vz4BY?si=4KkiQqjwN6BkhtzL"
  # "https://youtu.be/sF6dn_Vz4BY?si=4KkiQqjwN6BkhtzL"
  # "https://youtu.be/Muo3F10dAcw?si=LmXjZ-XTQA7HXuBD"
  # "https://youtu.be/Muo3F10dAcw?si=LmXjZ-XTQA7HXuBD"
  # "https://youtu.be/EKGvZWuyLDE?si=_n_SAUiNzldL9YdI"
  # "https://youtu.be/EKGvZWuyLDE?si=_n_SAUiNzldL9YdI"
  # "https://youtu.be/1lVrYNhUkJg?si=IJYSd9h2rXUhlRJp"
  # "https://youtu.be/1lVrYNhUkJg?si=IJYSd9h2rXUhlRJp"
  # "https://youtu.be/8pOcy54OGVg?si=9cq3N4xwzmpDS0jY"
  # "https://youtu.be/8pOcy54OGVg?si=9cq3N4xwzmpDS0jY"
  # "https://youtu.be/b44hkn9cybI?si=dey8LyaBGru0lBm3"
  # "https://youtu.be/b44hkn9cybI?si=dey8LyaBGru0lBm3"
  # "https://youtu.be/sF6dn_Vz4BY?si=PxjBZFcVoJtN-9NR"
  # "https://youtu.be/sF6dn_Vz4BY?si=PxjBZFcVoJtN-9NR"
  # "https://youtu.be/6AI_5YRdc94?si=tD5Zt_T5M-xxnsIy"
  # "https://youtu.be/6AI_5YRdc94?si=tD5Zt_T5M-xxnsIy"
  # "https://youtu.be/oqXETHqkf4s?si=FBDQjGFWuMBqbqDm"
  # "https://youtu.be/oqXETHqkf4s?si=FBDQjGFWuMBqbqDm"
  # "https://youtu.be/2FNiAPNK4Ig?si=k3lgk2VzjIN9_2nI"
  # "https://youtu.be/2FNiAPNK4Ig?si=k3lgk2VzjIN9_2nI"
  # "https://youtu.be/baepkREFZ6s?si=_GsnH1lDnvysVDIm"
  # "https://youtu.be/baepkREFZ6s?si=_GsnH1lDnvysVDIm"
  # "https://youtu.be/25FtLeamas8?si=VZ3SeTqAh5-bGMhO"
  # "https://youtu.be/25FtLeamas8?si=VZ3SeTqAh5-bGMhO"
  # "https://youtu.be/foDr_Xvl86A?si=RKM9yf0qml2AwoW6"
  # "https://youtu.be/foDr_Xvl86A?si=RKM9yf0qml2AwoW6"
  # "https://youtu.be/XLMqS71AL6I?si=TjujnCt5CRbyWf2u"
  # "https://youtu.be/XLMqS71AL6I?si=TjujnCt5CRbyWf2u"
  # "https://youtu.be/WuiNLPjTc_U?si=KU-vi5XnNHgSfHe8"
  # "https://youtu.be/WuiNLPjTc_U?si=KU-vi5XnNHgSfHe8"
  # "https://youtu.be/ion2aMzCP30?si=oIT5xTsg9MkwszcE"
  # "https://youtu.be/ion2aMzCP30?si=oIT5xTsg9MkwszcE"
  # "https://youtu.be/ZsN_0_6yEXk?si=wYYdhy6Mu4nSPbGQ"
  # "https://youtu.be/ZsN_0_6yEXk?si=wYYdhy6Mu4nSPbGQ"
  # "https://youtu.be/SNfhp7G93eU?si=747PPvhUktFLvyNs"
  # "https://youtu.be/SNfhp7G93eU?si=747PPvhUktFLvyNs"
  # "https://youtu.be/t8paA1H8mFc?si=dLVd7sK4r1Jw7Y-H"
  # "https://youtu.be/t8paA1H8mFc?si=dLVd7sK4r1Jw7Y-H"
  # "https://youtu.be/zGQd5XKdq6o?si=LqkYFssmCCMJbwKZ"
  # "https://youtu.be/zGQd5XKdq6o?si=LqkYFssmCCMJbwKZ"
  # "https://youtu.be/ox9zGoiJcKg?si=PMhtCcQZY82d2uD_"
  # "https://youtu.be/ox9zGoiJcKg?si=PMhtCcQZY82d2uD_"
  # "https://youtu.be/yZt1Pygk6Rs?si=vSc3a8lrMEEh9Cou"
  # "https://youtu.be/yZt1Pygk6Rs?si=vSc3a8lrMEEh9Cou"
  # "https://youtu.be/sF6dn_Vz4BY?si=wr1B13Z6uaH5opwN"
  # "https://youtu.be/sF6dn_Vz4BY?si=wr1B13Z6uaH5opwN"
  # "https://youtu.be/6AI_5YRdc94?si=ARW-402v2YCXPVDW"
  # "https://youtu.be/6AI_5YRdc94?si=ARW-402v2YCXPVDW"
  # "https://youtu.be/hkRnFbdBOZo?si=ETHXQGyZzm3UvXmH"
  # "https://youtu.be/hkRnFbdBOZo?si=ETHXQGyZzm3UvXmH"
  # "https://youtu.be/CQgJFISv7WA?si=C_UxheAYndUGDZYP"
  # "https://youtu.be/CQgJFISv7WA?si=C_UxheAYndUGDZYP"
  # "https://youtu.be/0oEn0sX6WeI?si=LuEf_DjBCVgOdPaW"
  # "https://youtu.be/0oEn0sX6WeI?si=LuEf_DjBCVgOdPaW"
  # "https://youtu.be/uUt-SLWq7kQ?si=q0ZdTYUSZzx2ZJ2Z"
  # "https://youtu.be/uUt-SLWq7kQ?si=q0ZdTYUSZzx2ZJ2Z"
  # "https://youtu.be/jW7j41mbxXU?si=L4NOB0Lz3rJxXzrJ"
  # "https://youtu.be/jW7j41mbxXU?si=L4NOB0Lz3rJxXzrJ"
  # "https://youtu.be/xEd4vHYLDko?si=XxI8GQOVjgVQrMJm"
  # "https://youtu.be/xEd4vHYLDko?si=XxI8GQOVjgVQrMJm"
  # "https://youtu.be/Rg0TJn_t7nE?si=t5AI5f3bdTIJrKV4"
  # "https://youtu.be/Rg0TJn_t7nE?si=t5AI5f3bdTIJrKV4"
  # "https://youtu.be/qwsGPf4vQ7A?si=VzRb6AqfEilU3wAh"
  # "https://youtu.be/qwsGPf4vQ7A?si=VzRb6AqfEilU3wAh"
  # "https://youtu.be/eJO62WkGzcU?si=1soMNLdgG7zqH2NY"
  # "https://youtu.be/eJO62WkGzcU?si=1soMNLdgG7zqH2NY"
  # "https://youtu.be/ZsN_0_6yEXk?si=es2jihwYLw5Yk295"
  # "https://youtu.be/ZsN_0_6yEXk?si=es2jihwYLw5Yk295"
  # "https://youtu.be/CO99UiRgP7A?si=o1rglKU3ZTsswG3w"
  # "https://youtu.be/CO99UiRgP7A?si=o1rglKU3ZTsswG3w"
  # "https://youtu.be/Mf2ctPSoLO8?si=EHcag8UgdnQ-6DT-"
  # "https://youtu.be/Mf2ctPSoLO8?si=EHcag8UgdnQ-6DT-"
  # "https://youtu.be/U1QPgNQXH5I?si=yj-VytGSMcLRkuNL"
  # "https://youtu.be/U1QPgNQXH5I?si=yj-VytGSMcLRkuNL"
  # "https://youtu.be/kK4Hwn2H9Sg?si=Mupk3m9sR7s-vPZ-"
  # "https://youtu.be/kK4Hwn2H9Sg?si=Mupk3m9sR7s-vPZ-"
  # "https://youtu.be/T3Uoee1_mGk?si=sD-UPOxzmZhWA4sX"
  # "https://youtu.be/T3Uoee1_mGk?si=sD-UPOxzmZhWA4sX"
  # "https://youtu.be/fJMj8YnOIxY?si=F5N8Iknt7rNllNo7"
  # "https://youtu.be/fJMj8YnOIxY?si=F5N8Iknt7rNllNo7"
  # "https://youtu.be/Rg0TJn_t7nE?si=t5AI5f3bdTIJrKV4"
  # "https://youtu.be/Rg0TJn_t7nE?si=t5AI5f3bdTIJrKV4"
  # "https://youtu.be/r3pjBdc04Ks?si=VXVvR7OE3nyWfN63"
  # "https://youtu.be/r3pjBdc04Ks?si=VXVvR7OE3nyWfN63"
  # "https://youtu.be/GsuQtNkCzDM?si=cetOQfIZpk1BEBZf"
  # "https://youtu.be/GsuQtNkCzDM?si=cetOQfIZpk1BEBZf"
  # "https://youtu.be/uSB58FixgSQ?si=vTSpcPSnl04MFetb"
  # "https://youtu.be/uSB58FixgSQ?si=vTSpcPSnl04MFetb"
  # "https://youtu.be/r6kXxV-yPDA?si=IZ8A0Dn_FkbEFpBH"
  # "https://youtu.be/r6kXxV-yPDA?si=IZ8A0Dn_FkbEFpBH"
  # "https://youtu.be/6AI_5YRdc94?si=aszQQFb-M9ubuSTi"
  # "https://youtu.be/6AI_5YRdc94?si=aszQQFb-M9ubuSTi"
  # "https://youtu.be/1AvhT_dP79U?si=4KpeJGa0kj2QYoFe"
  # "https://youtu.be/1AvhT_dP79U?si=4KpeJGa0kj2QYoFe"
  # "https://youtu.be/T4fbRCnal7k?si=5l6690heZXKyofpy"
  # "https://youtu.be/T4fbRCnal7k?si=5l6690heZXKyofpy"
  # "https://youtu.be/g1Jxs61ntUE?si=ZBQx_2LNZFA90JSw"
  # "https://youtu.be/ysUcLItq000?si=TxTGMmMcwa4xJ0WM"
  # "https://youtu.be/uv1it6OCd24?si=csb9kHDUL-j4ePUV"
  # already downloaded above
)

# Save files into the computer's Music directory
# output_dir="~/Music"
output_dir="/home/andrew/Music"

unique_urls=($(echo "${urls[@]}" | tr ' ' '\n' | sort -u))

# Loop through each unique URL and run the yt-dlp command
for url in "${unique_urls[@]}"; do
  echo "Downloading audio from: $url"
  yt-dlp "$url" --extract-audio --audio-format mp3 --audio-quality 0 -o "$output_dir/%(title)s.mp3"
  echo "Download complete for: $url"
  echo "-------------------------------"
done

# Copy files to destination directory

destination_dir="/media/andrew/FA42-D4A3/Music"
echo "Copying files from $output_dir to $destination_dir..."
mkdir -p "$destination_dir"  # ensure destination directory exists

for file in "$output_dir"/*.mp3; do
  filename=$(basename "$file")
  if [ -e "$destination_dir/$filename" ]; then
    echo "File '$filename' already exists in $destination_dir. Skipping..."
  else
    cp "$file" "$destination_dir"
    echo "Copied '$filename' to $destination_dir."
  fi
done

echo "All done!"