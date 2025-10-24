#!/bin/bash

# ------------------------------
# 1️⃣ شمردن فایل‌ها در یک پوشه
DIRECTORY="/home/user/Documents"
cd "$DIRECTORY" || { echo "پوشه $DIRECTORY پیدا نشد!"; exit 1; }
COUNT=$(ls -1 | wc -l)
echo "1. تعداد فایل‌ها در پوشه $DIRECTORY: $COUNT"

# ------------------------------
# 2️⃣ نمایش فضای آزاد هارد
echo "2. فضای آزاد هارد:"
df -h

# ------------------------------
# 3️⃣ نمایش وضعیت رم سیستم
echo "3. استفاده فعلی از حافظه RAM:"
free -h

# ------------------------------
# 4️⃣ ایجاد یک پوشه جدید
mkdir -p /home/user/new_folder
echo "4. پوشه new_folder ساخته شد"

# ------------------------------
# 5️⃣ ایجاد یک فایل متنی جدید
touch /home/user/new_file.txt
echo "5. فایل new_file.txt ساخته شد"

# ------------------------------
# 6️⃣ کپی کردن فایل به پوشه دیگر
cp /home/user/new_file.txt /home/user/new_folder/
echo "6. فایل new_file.txt کپی شد به new_folder"

# ------------------------------
# 7️⃣ تغییر نام یک فایل
mv /home/user/new_file.txt /home/user/new_file_renamed.txt
echo "7. فایل تغییر نام داد به new_file_renamed.txt"

# ------------------------------
# 8️⃣ پیدا کردن فایل‌های با پسوند خاص
echo "8. فایل‌های txt در پوشه Documents:"
find /home/user/Documents -type f -name "*.txt"

# ------------------------------
# 9️⃣ نمایش ۱۰ فایل بزرگ‌تر در یک پوشه
echo "9. ۱۰ فایل بزرگ در پوشه Documents:"
ls -lhS /home/user/Documents | head -n 10

# ------------------------------
# 🔟 حذف یک فایل
rm -f /home/user/new_file_renamed.txt
echo "10. فایل new_file_renamed.txt حذف شد"

echo "✅ همه‌ی ۱۰ کار انجام شد!"
