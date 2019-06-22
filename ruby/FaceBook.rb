def FaceBook(number)
  if number % 15 == 0
    'FaceBook'
  elsif number % 3 == 0
    'Face'
  elsif number % 5 == 0
    'Book'
  else
    number.to_s
  end
end

100.times {
  puts"1 以上の数字を入力してください"

  input = gets.to_i

  puts '結果は、、、'

  puts FaceBook(input)
}