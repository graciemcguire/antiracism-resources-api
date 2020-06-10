# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all()
Resource.destroy_all()
Vote.destroy_all()

p "🔥 all destroyed 🔥"

user1 = User.create(email: 'whitney@email.com', password: 'aishuia', admin: false )

# Resource.create(title: 'A new resource', added_resource_id: user1.id)
resource1 = Resource.create([
  {
    kind: 'book',
    approved: true,
    url: 'https://www.commonsensemedia.org/lists/coretta-scott-king-book-award-winners',
    description: '',
    title: 'Coretta Scott King Book Award Winners: books for children and young adults',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'podcast',
    approved: true,
    for_kids: false,
    url: 'https://podcasts.apple.com/us/podcast/parenting-forward/id1403686245?i=1000474951309',
    description:'',
    title: 'Parenting Forward podcast episode ‘Five Pandemic Parenting Lessons with Cindy Wang Brandt’',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'article',
    approved: true,
    for_kids: false,
    url: 'PBS’s Teaching Your Child About Black History Month',
    description: '',
    title: '',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'article',
    approved: true,
    for_kids: false,
    url: 'https://www.theatlantic.com/ideas/archive/2020/05/americas-racial-contract-showing/611389/',
    description: '',
    title: '“America’s Racial Contract Is Killing Us” by Adam Serwer | Atlantic (May 8, 2020)',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  }
  ])

# Vote.create(user_id: user1.id, resource_id: resource1.id, vote: 'upvote')

puts 'all reborn'
