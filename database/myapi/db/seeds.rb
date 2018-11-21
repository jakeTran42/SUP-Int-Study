10.times do
    Character.create({
        name: Faker::Superhero.name,
        power: Faker::Superhero.power,
        item: Faker::SwordArtOnline.item
    })