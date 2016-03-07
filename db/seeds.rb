Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: "Fiction") #If we use bang, when sth goes wrong, an error is raised.
non_fiction = Genre.create!(name: "Non-Fiction")
horror = Genre.create!(name: "Horror")

Book.create!([{
  title: "Harry Potter",
  author: "J.K.Rowling",
  description: "sasakmkddddddddddamkwkadmskdmakkwdjaskdsdkjasnskdjnaksjdnaskjndkajsndas
                masjdkajsndkaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadk
                ",
  amazon_id: "1234567891",
  rating: 5,
  finished_on: 1.day.ago,
  genres: [fiction]
},
{
  title: "Domofon",
  author: "Zygmunt Miłoszewski",
  description: "asdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
                dddddddddddddddddddddddddd",
  amazon_id: "0987654321",
  rating: 3,
  finished_on: nil,
  genres: [non_fiction, horror]
}])
