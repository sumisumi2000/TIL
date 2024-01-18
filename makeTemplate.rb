# 年をここに入力
Year = 2024
# 月をここに入力
Month = 1
# 月の日数を入力
maxDay = 31
DayOfTheWeek = ["sun", "mon", "tue", "wed", "thu", "fri", "sat"]
# 月の初めの曜日を入力、日曜日を0とする
firstDayOfTheWeek = 1

# 月の初めの曜日が2番目の要素になるように並び替え
((firstDayOfTheWeek + 6) % 7).times do
  # 先頭から要素を削除し、末尾に追加
  DayOfTheWeek.push(DayOfTheWeek.shift)
end

puts "# #{Year}/#{format("%02d", Month)}"
puts
puts "## 要約"
puts "+ "
puts
puts "## 目次"

for day in 1..maxDay do
  puts " + [#{Year}/#{format("%02d", Month)}/#{format("%02d", day)}]" + "(##{Year}#{format("%02d", Month)}#{format("%02d", day)}#{DayOfTheWeek[day % 7]})"
end

puts
puts "---"
puts

for day in 1..maxDay do
  puts "### #{Year}/#{format("%02d", Month)}/#{format("%02d", day)}(#{DayOfTheWeek[day % 7]})"
end