def addStudent()
    adStudent = []
    if adStudent.empty?
        puts "add student?"
        student = gets.chomp
        adStudent.push(student)
    end
    puts "Do you want to add another one? : y/n"
    answer = gets.chomp
    until answer == "n"
        student = gets.chomp
        adStudent.push(student)

        puts "Do you want to add another one? : y/n"
        answer = gets.chomp
    end
    puts "thank you #{adStudent}"
end
addStudent