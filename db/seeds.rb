Book.destroy_all

Book.create!([{
  title: "Harry Potter",
  author: "J.K.Rowling",
  description: "sasakmkddddddddddamkwkadmskdmakkwdjaskdsdkjasnskdjnaksjdnaskjndkajsndas
                masjdkajsndkaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadk
                ",
  amazon_id: "1234567891",
  rating: 5,
  finished_on: 4.days.ago
},
{
  title: "Domofon",
  author: "Zygmunt Miłoszewski",
  description: "asdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd
                dddddddddddddddddddddddddd",
  amazon_id: "0987654321",
  rating: 3,
  finished_on: nil
}])
