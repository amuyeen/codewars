def your_method(n, m)
  # Tạo một mảng chứa n phần tử
  arr = []

  # Lặp lại n lần
  while arr.length < n
    # Tạo một bài toán
    equation = generate_equation(m)

    # Kiểm tra bài toán đã tồn tại chưa
    if !arr.include?(equation)
      # Thêm bài toán vào mảng
      if eval(equation).between?(1,100)
        arr << equation
      end
    end
  end
  # Trả về mảng
  arr
end

def generate_equation(m)
  # Tạo một số ngẫu nhiên trong khoảng từ 1 đến 99
  num1 = rand(1..99)

  # Tạo một số ngẫu nhiên khác trong khoảng từ 1 đến 99
  num2 = rand(1..99)
  # Tạo một toán tử ngẫu nhiên
  operator = rand(2) == 0 ? '+' : '-'

  # Tạo một bài toán
  equation = "#{num1} #{operator} #{num2}"

  # Trả về bài toán
  equation
end

p your_method(2,2)