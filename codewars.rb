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

ngay 31-10-23

# Example earthquake --> [[5,3,7],[3,3,1],[4,1,2]] ((5+3+7) * (3+3+1) * (4+1+2)) = 735
# Với một trận động đất và tuổi của một tòa nhà, hãy viết hàm trả về "An toàn!" nếu tòa nhà đủ vững chắc hoặc "Cần gia cố!" nếu nó rơi.
def strong_enough( earthquake, age )
  magnitude(earthquake)< (1000 * (0.99**age)) ? "Safe!" : "Needs Reinforcement!"
end 

def magnitude(arr)
  arr.map{|v| v.inject(:+) }.inject(:*)
end


# Beginner Series #3 Sum of Numbers
# Cho hai số nguyên a và b, có thể dương hoặc âm, tìm tổng của tất cả các số nguyên nằm giữa và bao gồm chúng rồi trả về kết quả đó. Nếu hai số bằng nhau thì trả về a hoặc b.
# vd:
# (1, 0) --> 1 (1 + 0 = 1)
# (1, 2) --> 3 (1 + 2 = 3)
# (0, 1) --> 1 (0 + 1 = 1)
# (1, 1) --> 1 (1 since both are same)

def get_sum(a,b)
  return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)
end




# mumbling
# Các ví dụ dưới đây hướng dẫn bạn cách viết hàm accum:
# accum("abcd") -> "A-Bb-Ccc-Dddd"
# accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# Tham số của accum là một chuỗi chỉ bao gồm các chữ cái từ a..z và A..Z.

def accum(s)
  s.chars.each_with_index.map{|c,i| c.upcase+c.downcase*i}.join('-')
end



# Get the Middle Character
# Công việc của bạn là trả về ký tự ở giữa của từ. Nếu độ dài của từ là số lẻ, hãy trả về ký tự ở giữa. Nếu độ dài của từ là số chẵn thì trả về 2 ký tự ở giữa.
# vd: Kata.getMiddle("test") should return "es"
# Kata.getMiddle("testing") should return "t"
# Kata.getMiddle("middle") should return "dd"

def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end


# Reverse words
# Hoàn thành hàm chấp nhận tham số chuỗi và đảo ngược từng từ trong chuỗi. Tất cả các khoảng trắng trong chuỗi phải được giữ lại.
# vd:
# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"

def reverse_words(str)
  str.gsub(/\S+/, &:reverse)
end


# Unpacking Arguments
# Bạn phải tạo một hàm, spread, hàm này nhận vào một hàm và một danh sách các đối số sẽ được áp dụng cho hàm đó. Bạn phải làm cho hàm này trả về kết quả của việc gọi hàm/lambda đã cho với các đối số đã cho.

def spread(func, args)
  func.call(*args)
end



 # All unique
 # Viết chương trình kiểm tra xem một chuỗi có chứa các ký tự duy nhất hay không. Trả về true nếu có và sai nếu ngược lại.
 # Chuỗi có thể chứa bất kỳ ký tự nào trong số 128 ký tự ASCII. Các ký tự phân biệt chữ hoa chữ thường, ví dụ: 'a' và 'A' được coi là các ký tự khác nhau.

def unique_chars?(str)
  str.chars.uniq! ? false : true
end


# Viết hàm SplitSentence sẽ tạo danh sách các chuỗi từ một chuỗi

module SentenceToWords where
splitSentence :: [Char] -> [[Char]]
splitSentence  = words



# Cho một dãy số, kiểm tra xem có số nào là mã ký tự cho các nguyên âm viết thường không (a, e, i, o, u).
# Nếu có, hãy thay đổi giá trị mảng thành một chuỗi nguyên âm đó.
# Trả về mảng kết quả.

def is_vow(a)
  a.map{ |l| "aeiou".include?(l.chr) ? l.chr : l }
end



# Cho một dãy số nguyên, hãy tìm số nguyên xuất hiện với số lần lẻ.
# Sẽ luôn chỉ có một số nguyên xuất hiện với số lần lẻ.
# Ví dụ
# [7] sẽ trả về 7, vì nó xảy ra 1 lần (là số lẻ).
# [0] sẽ trả về 0, vì nó xảy ra 1 lần (là số lẻ).
# [1,1,2] sẽ trả về 2, vì nó xảy ra 1 lần (là số lẻ).
# [0,1,0,1,0] sẽ trả về 0, vì nó xảy ra 3 lần (là số lẻ).
# [1,2,2,3,3,3,4,3,3,3,2,2,1] sẽ trả về 4, vì nó xuất hiện 1 lần


def find_it(seq)
  seq.each do |value|
    return value if seq.count(value).odd?
    end
end
















