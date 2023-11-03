def sort_employees(employees)
	return [] if employees.empty?
  employees.each do |employee|
    employee[:positions].sort_by! { |position| list_position[position] }
  end
  employees.sort_by! do |employee|
    employee[:id]
  end
  employees
end