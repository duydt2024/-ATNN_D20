#!/bin/bash

input_file="share/phantich.txt"
output_file="madoc.txt"
# Kiểm tra nếu file input tồn tại
if [ ! -f "$input_file" ]; then
    echo "File $input_file không tồn tại!" > "$output_file"
    echo "Cảnh báo: File đầu vào không tồn tại. Script sẽ không dừng lại."
    exit 0
fi

# Đọc nội dung file và kiểm tra từ "shamoon"
if grep -q -i "shamoon" "$input_file"; then
    # Mã hóa từ "shamoon" thành SHA256
    encoded=$(echo -n "shamoon" | sha256sum | awk '{print $1}')
    # Ghi mã hóa vào file output
    echo "$encoded" > "$output_file"
    echo "Từ 'shamoon' đã được mã hóa và lưu vào $output_file."
else
    echo "Không tìm thấy từ 'shamoon' trong file." > "$output_file"
fi

if [ -f "./share/log.txt" ]; then
    cp "./share/log.txt" "./log.txt"
fi
