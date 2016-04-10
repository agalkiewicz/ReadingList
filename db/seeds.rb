Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: "Fiction") #If we use bang, when sth goes wrong, an error is raised.
non_fiction = Genre.create!(name: "Non-Fiction")
horror = Genre.create!(name: "Horror")

Book.create!([{
  title: "Eastern Armenian Comprehensive Self-Study Language Course",
  author: "Anahit S. Avetisyan",
  description: "Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui,
                non felis. Maecenas malesuada elit lectus felis, malesuada ultricies. Curabitur et
                ligula. Ut molestie a, ultricies porta urna.",
  amazon_id: "1234567891",
  rating: 5,
  finished_on: 1.day.ago,
  genres: [fiction]
},
{
  title: "Still Getting Away with it: The Life and Times of Nicholas Courtney (Dr Who)",
  author: "Michael McManus",
  description: "Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui,
                non felis. Maecenas malesuada elit lectus felis, malesuada ultricies. Curabitur et
                ligula. Ut molestie a, ultricies porta urna.",
  amazon_id: "0987654321",
  rating: 3,
  finished_on: nil,
  genres: [non_fiction, horror]
}])
