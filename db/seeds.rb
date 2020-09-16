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
    for_kids: true,
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
    for_kids: true,
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
    for_kids: true,
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
    for_kids: true,
    url: 'https://www.theatlantic.com/ideas/archive/2020/05/americas-racial-contract-showing/611389/',
    description: '',
    title: '“America’s Racial Contract Is Killing Us” by Adam Serwer | Atlantic (May 8, 2020)',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  }
  ])

  resource2 = Resource.create([
    {
      kind: 'article',
      approved: true,
      for_kids: false,
      url: 'https://www.theatlantic.com/ideas/archive/2020/05/americas-racial-contract-showing/611389/',
      description: 'by Adam Serwer | Atlantic (May 8, 2020)',
      title: 'America’s Racial Contract Is Killing Us',
      twitter_link: '',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'article',
      approved: true,
      for_kids: false,
      url: 'https://www.nytimes.com/2011/06/26/magazine/my-life-as-an-undocumented-immigrant.html',
      description: 'by Jose Antonio Vargas | NYT Mag (June 22, 2011)',
      title: 'My Life as an Undocumented Immigrant',
      twitter_link: '',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'video',
      approved: true,
      for_kids: false,
      url: 'https://youtu.be/eV3nnFheQRo',
      description: '',
      title: 'Black Feminism & the Movement for Black Lives: Barbara Smith, Reina Gossett, Charlene Carruthers (50:48)',
      twitter_link: '',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'video',
      approved: true,
      for_kids: false,
      url: 'https://youtu.be/e-BY9UEewHw',
      description: 'Peggy McIntosh at TEDxTimberlaneSchools (18:26)',
      title: 'How Studying Privilege Systems Can Strengthen Compassion',
      twitter_link: '',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'podcast',
      approved: true,
      for_kids: false,
      url: 'https://www.nytimes.com/2020/01/23/podcasts/1619-podcast.html',
      description: '',
      title: '1619 (New York Times)',
      twitter_link: '',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'podcast',
      approved: true,
      for_kids: false,
      url: 'https://www.showaboutrace.com/',
      description: '',
      title: 'About Race',
      twitter_link: '',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'book',
      approved: true,
      for_kids: false,
      url: 'https://books.google.com/books/about/Black_Feminist_Thought.html?id=cdtYsU3zR14C',
      description: 'by Patricia Hill Collins',
      title: 'Black Feminist Thought',
      twitter_link: '',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'book',
      approved: true,
      for_kids: false,
      url: 'https://read.macmillan.com/lp/eloquent-rage/',
      description: 'by Dr. Brittney Cooper',
      title: 'Eloquent Rage: A Black Feminist Discovers Her Superpower',
      twitter_link: '',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'Movie',
      approved: true,
      for_kids: false,
      url: 'https://www.netflix.com/watch/80091741?trackId=14292320&tctx=0%2C0%2C0b39db48-9a65-410f-a343-922cf4064cc7-232074947%2C20f42b1b-f9c3-4e3c-a11c-a96265607a2a_126401525X19XX1591829797505%2C20f42b1b-f9c3-4e3c-a11c-a96265607a2a_ROOT%2C',
      description: `The 13th Amendment to the U. S. Constitution abolished slavery. But it also included a provision many people don't know about and that is what this documentary brings to view. "Neither slavery nor involuntary servitude, except as a punishment for crime whereof the party shall have been duly convicted, shall exist." That exception justifies the use of forced labor as long as the laborer is a convict. This documentary makes the case that inclusion of this loophole is only one of the justifications for continuing domination of people of color. The 13th Amendment was ratified in 1865 and director Ava DuVernay supports her thesis through the use of both historical footage and interviews. Film clips of former President Richard Nixon call for 'Law & Order' which has resulted in exploding prison populations. The U. S. only has 5% of the world's population but has 25% of the world's prisoners. This Law & Order policy enabled government to imprison blacks. John Ehrlichman was Assistant to President Nixon for Domestic Affairs: "Did we know we were lying? Of course we did." The documentary makes the case that those drug busts, Jim Crow laws and segregation are all variations of domination of black America. Currently the 'Prison/Industrial Complex' is just a new version of the same old problem. Here DuVernay returns to the 13th Amendment and makes the case that the system cannot be dealt with by making small changes. The system itself has to be rebuilt.`,
      title: '13th',
      twitter_link: '',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'Movie',
      approved: true,
      for_kids: false,
      url: 'https://www.netflix.com/watch/81024100?trackId=13752289&tctx=0%2C0%2C6bb0ea34367f6a8156d66424df839689bacd9441%3A0ee1a4baa3ab5c8804b18026b36d152634985814%2C%2C%2C',
      description: '`An estranged couple reunite in a Florida police station to help find their missing teenage son.`',
      title: 'American Son',
      twitter_link: '',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'Organization',
      approved: true,
      for_kids: false,
      url: '',
      description: '',
      title: 'Anti Racism Center',
      twitter_link: 'https://twitter.com/AntiracismCtr',
      insta_link: '',
      facebook_link: ''
    },
    {
      kind: 'Organization',
      approved: true,
      for_kids: false,
      url: '',
      description: '',
      title: 'Audre Lorde Project',
      twitter_link: 'https://twitter.com/audrelorde',
      insta_link: 'https://www.instagram.com/audrelordeproject/',
      facebook_link: 'https://www.facebook.com/AudreLordeProject/'
    },
    ])
# Vote.create(user_id: user1.id, resource_id: resource1.id, vote: 'upvote')

puts 'all reborn'
