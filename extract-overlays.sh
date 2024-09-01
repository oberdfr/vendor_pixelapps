#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 path_to_apk_folder"
  exit 1
fi

APK_FOLDER="$1"

OUTPUT_DIR="./rro_overlay"

mkdir -p "$OUTPUT_DIR"

for apk in "$APK_FOLDER"/*.apk; do
  apk_name=$(basename "$apk" .apk)
  
  decompiled_dir="$OUTPUT_DIR/$apk_name"
  mkdir -p "$decompiled_dir"
  
  apktool d "$apk" -o "$decompiled_dir/decompiled"
  
  cp -r "$decompiled_dir/decompiled/res" "$decompiled_dir/"
  cp "$decompiled_dir/decompiled/AndroidManifest.xml" "$decompiled_dir/"
  
  cat <<EOL > "$decompiled_dir/Android.bp"
runtime_resource_overlay {
    name: "$apk_name",
    sdk_version: "current",
    product_specific: true
}
EOL

  rm -rf "$decompiled_dir/decompiled"
done

echo "All overlays have been extracted and placed in $OUTPUT_DIR"
