# coding: utf-8

# 年をここに入力
Year = 2024
# 月をここに入力
Month = 4
# 月の日数を入力
maxDay = 30
BigDayOfTheWeek = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
DayOfTheWeek = ["sun", "mon", "tue", "wed", "thu", "fri", "sat"]
# 月の初めの曜日を入力、日曜日を0とする
firstDayOfTheWeek = 1

# 月の初めの曜日が2番目の要素になるように並び替え
((firstDayOfTheWeek + 6) % 7).times do
  # 先頭から要素を削除し、末尾に追加
  DayOfTheWeek.push(DayOfTheWeek.shift)
  BigDayOfTheWeek.push(BigDayOfTheWeek.shift)
end

puts "# #{Year}/#{format("%02d", Month)}"
puts
puts "## 目標"
puts "+ "
puts
puts "## 目次"

for day in 1..maxDay do
  puts " + [#{format("%02d", Month)}/#{format("%02d", day)}(#{BigDayOfTheWeek[day % 7]})]" + "(##{Year}#{format("%02d", Month)}#{format("%02d", day)}#{DayOfTheWeek[day % 7]})"
end

puts
puts "---"
puts

for day in 1..maxDay do
  puts "### #{Year}/#{format("%02d", Month)}/#{format("%02d", day)}(#{BigDayOfTheWeek[day % 7]})"
  puts "##### カリキュラム"
  puts "##### その他"
  puts "###### 計分(時間分)"
end
