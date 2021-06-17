require 'cpf_cnpj'

puts "Olá, Digite seu nome :"

def cpfValido(cpf_number)

    if CPF.valid?(cpf_number)
        puts "O CPF que foi digitado é #{cpf_number}, é um CPF Válido !"
    
    else
        puts "O CPF que foi digitado é #{cpf_number}, é um CPF Inválido"

    end
end



loop do
    name = gets.chomp
    if name.length >2 
    puts "Ok #{name}, agora digite seu CPF:"
    cpf_number = gets.chomp
    cpfValido(cpf_number)
    break
    else
    puts "Seu nome precisa ter mais de dois caracteres,Digite novamente:"
    name = gets.chomp
         if name.length >2 
            puts "Ok #{name}, agora digite seu CPF:"
            cpf_number = gets.chomp
            cpfValido(cpf_number)
            break
         end
    end
end

