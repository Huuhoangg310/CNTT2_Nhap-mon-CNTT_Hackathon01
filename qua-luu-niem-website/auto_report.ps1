# Scripts: auto_report.ps1
# Tac gia: Nguyen Huu Hoang
# Ngay tao: 28/10/2026

write-Host "Dang loc log..."
"===BAO CAO LOI===" > logs/auto_report.txt
get-content logs/gift.log | select-string "ERROR">>logs/auto_report.txt

write-Host "Hoan Thanh!"
