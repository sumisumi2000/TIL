#年をここに入力
Year = 2024
#月をここに入力
Month = 1

# mdファイルを一行ずつ読み込み
lines = File.readlines("#{Year}/#{Year}_#{format("%02d", Month)}.md").grep(/計.*分/)

sumTime = 0

# 合計時間を計算
lines.each do |line|
  # 「計○○分」の行を抜き出して数字だけ抽出
  sumTime += line.slice(/計\d{1,4}分/).delete("^0-9").to_i
end

# 合計時間を計○○分(○○時間○○分)と出力
puts "計#{sumTime}分(#{sumTime / 60}時間#{sumTime % 60}分)"
