for file in *.sql; do
    iconv -f cp936 -t utf-8 "$file" -o "${file%}.utf-8.sql"
done