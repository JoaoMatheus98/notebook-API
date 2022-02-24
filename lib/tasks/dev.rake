namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    p "Cadastrando os tipos de contato"
    kinds = %w(Amigo Comercial Conhecido)
    kinds.each do |kind|
      Kind.create!(
        description: kind
      )
    end
    p "Tipos de contato cadastrados com sucesso"
    
    p "Cadastrando contatos"
    
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: 65.years.ago, to: 18.years.ago),
        kind: Kind.all.sample
      )
    end
    p "Contatos cadastrados com sucesso"
  end
end