bruce = Author.create! name: "Bruce Wayne"
clark = Author.create! name: "Clark Kent"

batman = bruce.articles.create! name: "Batman", published_at: 2.days.ago, content: <<-ARTICLE
Batman is a fictional character created by the artist Bob Kane and writer Bill Finger. A comic book superhero, Batman first appeared in Detective Comics #27 (May 1939), and since then has appeared primarily in publications by DC Comics. Originally referred to as "The Bat-Man" and still referred to at times as "The Batman", he is additionally known as "The Caped Crusader", "The Dark Knight", and the "World's Greatest Detective," among other titles. (from Wikipedia)
ARTICLE

batman.comments.create! name: "Alfred", website: 'http://www.example.com', content: "What attire would you prefer this evening, Sir?"
batman.comments.create! name: "Bruce Wayne", website: 'http://www.example.com', content: "I'm Batman."

superman = clark.articles.create! name: "Superman", published_at: 5.days.ago, content: <<-ARTICLE
Superman is a fictional comic book superhero appearing in publications by DC Comics, widely considered to be an American cultural icon. Created by American writer Jerry Siegel and Canadian-born American artist Joe Shuster in 1932 while both were living in Cleveland, Ohio, and sold to Detective Comics, Inc. (later DC Comics) in 1938, the character first appeared in Action Comics #1 (June 1938) and subsequently appeared in various radio serials, television programs, films, newspaper strips, and video games. (from Wikipedia)
ARTICLE

krypton = clark.articles.create! name: "Krypton", published_at: 8.days.ago, content: <<-ARTICLE
Krypton is a fictional planet in the DC Comics universe, and the native world of the super-heroes Superman and, in some tellings, Supergirl and Krypto the Superdog. Krypton has been portrayed consistently as having been destroyed just after Superman's flight from the planet, with exact details of its destruction varying by time period, writers and franchise. Kryptonians were the dominant people of Krypton. (from Wikipedia)
ARTICLE

lex_luthor = clark.articles.create! name: "Lex Luthor", published_at: 10.days.ago, content: <<-ARTICLE
Lex Luthor is a fictional character, a supervillain who appears in comic books published by DC Comics. He is the archenemy of Superman, and is also a major adversary of Batman and other superheroes in the DC Universe. Created by Jerry Siegel and Joe Shuster, he first appeared in Action Comics #23 (April 1940). Luthor is described as "a power-mad, evil scientist" of high intelligence and incredible technological prowess. (from Wikipedia)
ARTICLE

robin = bruce.articles.create! name: "Robin", published_at: 16.days.ago, content: <<-ARTICLE
Robin is the name of several fictional characters appearing in comic books published by DC Comics, originally created by Bob Kane, Bill Finger and Jerry Robinson, as a junior counterpart to DC Comics superhero Batman. The team of Batman and Robin is commonly referred to as the Dynamic Duo or the Caped Crusaders. (from Wikipedia)
ARTICLE

electronics = Category.create!(name: "Electronics")
toys = Category.create!(name: "Toys & Games")
clothes = Category.create!(name: "Clothes")
furniture = Category.create!(name: "Furniture")
foods = Category.create!(name: "Foods")

Product.create!(name: "Settlers of Catan", price: 34.95, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Red Shirt", price: 12.49, released_on: rand(1..90).days.ago, category_id: clothes.id)
Product.create!(name: "Oak Coffee Table", price: 223.99, released_on: rand(1..90).days.ago, category_id: furniture.id)
Product.create!(name: "Technodrome", price: 27.99, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Oh's Cereal", price: 3.95, released_on: rand(1..90).days.ago, category_id: foods.id)
Product.create!(name: "Game Console", price: 299.95, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Video Game", price: 29.95, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Lawn Chair", price: 34.99, released_on: rand(1..90).days.ago, category_id: furniture.id)
Product.create!(name: "Dog Toy Bone", price: 2.99, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Heated Blanket", price: 27.95, released_on: 10.days.from_now, category_id: furniture.id)
Product.create!(name: "Flux Capacitor", price: 19.55, released_on: rand(1..90).days.ago, category_id: electronics.id)
Product.create!(name: "Chocolate Pie", price: 3.14, released_on: rand(1..90).days.ago, category_id: foods.id)
Product.create!(name: "Acoustic Guitar", price: 1024.00, released_on: rand(1..90).days.ago, category_id: electronics.id)
Product.create!(name: "Model Enterprise", price: 27.99, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Agricola", price: 45.99, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Stone Age", price: 34.99, released_on: 15.days.from_now, category_id: toys.id)
Product.create!(name: "7 Wonders", price: 28.75, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Seafarers of Catan", price: 19.95, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Knights of Catan", price: 19.95, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Answer to Everything", price: 42.00, released_on: rand(1..90).days.ago, category_id: electronics.id)
Product.create!(name: "Box Kite", price: 63.00, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "1000 Piece Jigsaw Puzzle", price: 14.99, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Rubber Ducky", price: 4.75, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Unicorn Action Figure", price: 8.75, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "Rack", price: 32.49, released_on: rand(1..90).days.ago, category_id: furniture.id)
Product.create!(name: "Model Train Rails", price: 45.00, released_on: rand(1..90).days.ago, category_id: toys.id)
Product.create!(name: "CanCan Music Record", price: 2.99, released_on: rand(1..90).days.ago, category_id: electronics.id)


p = Project.create! name: "Yardwork"
p.tasks.create! name: "Mow the lawn", complete: 1
p.tasks.create! name: "Paint the fence"
p.tasks.create! name: "Rake the leaves"

p = Project.create! name: "Housework"
p.tasks.create! name: "Pick up bedroom"
p.tasks.create! name: "Mop kitchen"

Article.create! name: "Batman", content: <<-ARTICLE
(from Wikipedia)

Batman is a fictional character created by the artist Bob Kane and writer Bill Finger. A comic book superhero, Batman first appeared in Detective Comics #27 (May 1939), and since then has appeared primarily in publications by DC Comics. Originally referred to as "The Bat-Man" and still referred to at times as "The Batman", he is additionally known as "The Caped Crusader", "The Dark Knight", and the "World's Greatest Detective," among other titles.
ARTICLE

Article.create! name: "Superman", content: <<-ARTICLE
(from Wikipedia)

Superman is a fictional comic book superhero appearing in publications by DC Comics, widely considered to be an American cultural icon. Created by American writer Jerry Siegel and Canadian-born American artist Joe Shuster in 1932 while both were living in Cleveland, Ohio, and sold to Detective Comics, Inc. (later DC Comics) in 1938, the character first appeared in Action Comics #1 (June 1938) and subsequently appeared in various radio serials, television programs, films, newspaper strips, and video games. With the success of his adventures, Superman helped to create the superhero genre and establish its primacy within the American comic book. The character's appearance is distinctive and iconic: a blue, red and yellow costume, complete with cape, with a stylized "S" shield on his chest. This shield is now typically used across media to symbolize the character.
ARTICLE


