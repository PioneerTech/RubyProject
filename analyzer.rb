def bool_user(user_name, password, super_passwords)
  super_passwords.each { |item |  
         uname = item[:username]
         pass  = item[:data][:password]
           if pass == password && uname == user_name then
                puts "welcome back #{user_name}! your current position is #{item[:data][:position]}"
                return true
           end
    }
    return false
end

intentos = 0
super_passwords = [
    {username:"John",data:{password:"elaion256", position:"Architect"}},
    {username:"Mike", data:{password:"elaion512", position:"Scientist"}},
    {username:"Constantin" ,data:{password:"elaion768", position:"Engieier"}},
    {username:"Sarah",data:{password:"elaion1024", position:"Cop"}},
    {username:"Edu",data:{password:"elaion2048", position:"Developer"}}
]
message = "Welcome to autheticator example"

while 1

if intentos > 0 && intentos <= 4
    message = "credentials incorrect"
end

puts message
30.times { print "-" } 
puts " "
puts "Enter your username and password"
print "Username:"
user_name = gets.chomp
print "Password:"
password = gets.chomp

    if bool_user(user_name, password, super_passwords) == false then
        intentos = intentos +1 
    else
        exit
    end
        
    if intentos > 4 then 
        puts "Attemps seems to be greater than the allowed "
        exit
    end

end

