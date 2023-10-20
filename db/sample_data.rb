roles = %w[user manager admin]

   roles.each do |role|
     Role.create(name: role)
   end

   departments = ['HR','Engineering','Marketing']

   deaprtments.each do |department|
     Department.create(name: department)
   end


   Employee.create(name: 'John Doe', department: Department.first, role: Role.first)
   Employee.create(name: 'John Smith', department: Department.second, role: Role.second)
   Employee.create(name: 'Bob Johnson', department: Department.third, role: Role.first)

