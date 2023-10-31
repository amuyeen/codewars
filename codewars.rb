#- Merging sorted integer arrays (without duplicates)
# Viết hàm gộp hai mảng đã sắp xếp thành một mảng duy nhất. Các mảng chỉ chứa số nguyên. Ngoài ra, kết quả cuối cùng phải được sắp xếp và không có bất kỳ bản sao nào.

def merge_sorted_arrays(a, b)
	# Tạo một mảng mới để lưu trữ kết quả được hợp nhất và sắp xếp.
  merged_array = []
  # Khởi tạo hai con trỏ, một cho mỗi mảng đầu vào.
  pointer_a = 0
  pointer_b = 0
  # Lặp qua cả hai mảng đầu vào, so sánh các phần tử hiện tại của mỗi mảng.
  while pointer_a < a.length && pointer_b < b.length
    # Nếu phần tử hiện tại của mảng thứ nhất nhỏ hơn hoặc bằng phần tử hiện tại của mảng thứ hai, hãy thêm phần tử hiện tại của mảng thứ nhất vào mảng được hợp nhất.
    if a[pointer_a] <= b[pointer_b]
      merged_array << a[pointer_a]
      pointer_a += 1
    # Ngược lại, hãy thêm phần tử hiện tại của mảng thứ hai vào mảng được hợp nhất.  
    else
      merged_array << b[pointer_b]
      pointer_b += 1
    end
  end
 # Thêm bất kỳ phần tử còn lại từ mảng thứ nhất vào mảng được hợp nhất.
 while pointer_a < a.length
  merged_array << a[pointer_a]
  pointer_a += 1
 end
 # Thêm bất kỳ phần tử còn lại từ mảng thứ hai vào mảng được hợp nhất.
 while pointer_b < b.length
  merged_array << b[pointer_b]
  pointer_b += 1
 end
# Loại bỏ các phần tử trùng lặp khỏi mảng được hợp nhất.
merged_array.uniq!
# Trả về mảng được hợp nhất và sắp xếp.
merged_array  
end

merge_sorted_arrays([1, 3, 5], [2, 4, 6]), [1, 2, 3, 4, 5, 6]
merge_sorted_arrays([2, 4, 8], [2, 4, 6]), [2, 4, 6, 8]



# -Even or Odd
# Tạo một hàm lấy một số nguyên làm đối số và trả về "Chẵn" cho số chẵn hoặc "Lẻ" cho số lẻ.

def even_or_odd(number)
	# sử dụng toán tử điều kiện tam phân (?:) để xác định số number là số chẵn hay số lẻ.
	number.even? ? "Even":"Odd" 
end


# Simple validation of a username with regex
# Viết một biểu thức chính quy đơn giản để xác thực tên người dùng. Các ký tự được phép là:
# chữ viết thường,
# số,
# gạch dưới
# Độ dài phải từ 4 đến 16 ký tự (bao gồm cả hai ký tự).

def validate_usr(username)
  username.match?(/^[a-z\d_]{4,16}$/)
end


# Reverse List Order
# tạo một hàm nhận vào một danh sách và trả về một danh sách với thứ tự đảo ngược.
def reverse_list list
	list.reverse
end


# Khi được cung cấp một chữ cái, hãy trả về vị trí của nó trong bảng chữ cái.
# Đầu vào :: "a"
# Đầu ra :: "Vị trí trong bảng chữ cái: 1"

def position(alphabet)
  "Position of alphabet: #{alphabet.ord - 96}"
end


# Add new item (collections are passed by reference)
def add_extra(list_of_numbers)
  list_of_numbers + [1]
end



# Sum of positive
#trả về tổng của tất cả các số dương.
# Ví dụ [1,-4,7,12] => 1 + 7 + 12 = 20

def positive_sum(arr)
  arr.select{|x| x > 0}.reduce(0, :+)
end

