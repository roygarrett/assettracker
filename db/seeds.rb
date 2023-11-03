# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Create default categories
default_categories = [
  {:name => "Smart Phone"},
  {:name => "Laptop"},
  {:name => "Desktop"}
]
Category.create(default_categories)

#Create default manufacturers
default_manufacturers = [
  {
    :name => "Apple",
    :website => "https://www.apple.com"
  },
  {
    :name => "Lenovo",
    :website => "https://www.lenovo.com"
  },
  {
    :name => "Dell",
    :website => "https://www.dell.com"
  }
]
Manufacturer.create(default_manufacturers)

#Create default employees
for num in 1..5
  Employee.create({
    :first_name => "Employee",
    :last_name => "#{num}"
  })
end

#Create three devices one for each category and manufacturer
Category.all.each do |cat|
  Manufacturer.all.each do |man|
    3.times do
      Device.create({
        :name => "Device #{rand(1..100)}",
        :category => cat,
        :manufacturer => man
      })
    end 
  end
end

#Add 3 unassigned devices to each employee
3.times do
  Employee.all.each do |emp|
    emp.devices << Device.all.where(employee_id: nil).sample
  end 
end

#Create default softwares with random software counts
for num in 1..5
  Software.create({
    :name => "Software #{num}",
    :license_count => rand(1..5)
  })
end

#Add 3 random softwares to each employee
3.times do
  Employee.all.each do |emp|
    emp.softwares << Software.all.sample
  end
end

