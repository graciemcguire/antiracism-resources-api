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

articles = Resource.create([
  {
    kind: 'article',
    approved: true,
    for_kids: true,
    url: 'https://www.npr.org/2020/06/03/869071246/how-white-parents-can-talk-to-their-kids-about-race',
    description: "Most people have heard about 'the talk' — the conversation many African American parents have with their kids about how to avoid altercations with police or what to do and say if they're stopped. The recent unrest sparked by anger over police brutality against African Americans has parents who aren't black thinking more about how they talk to their kids about race.",
    title: "How White Parents Can Talk To Their Kids About Race | NPR",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'article',
    approved: true,
    for_kids: true,
    url: 'https://www.prettygooddesign.org/blog/Blog%20Post%20Title%20One-5new4',
    description: "So you’ve realized your kids aren’t too young to talk about race, so now what? We’ve rounded up some resources for you to start.",
    title: "Your Kids Aren't Too Young to Talk About Race: Resource Roundup from Pretty Good",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
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
    kind: 'article',
    approved: true,
    for_kids: true,
    url: 'https://www.commonsensemedia.org/lists/coretta-scott-king-book-award-winners',
    description: 'Articles from The New York Times Magazine',
    title: "The 1619 Project",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'article',
    approved: true,
    for_kids: true,
    url: 'http://circuitous.org/scraps/combahee.html',
    description: 'Articles from The New York Times Magazine',
    title: "The Genesis of Contemporary Black Feminism",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'article',
    approved: true,
    for_kids: true,
    url: 'https://www.vox.com/the-highlight/2019/5/20/18542843/intersectionality-conservatism-law-race-gender-discrimination',
    description: 'by Jane Coaston | Vox (May 28, 2019)',
    title: "The Intersectionality Wars",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'article',
    approved: true,
    for_kids: true,
    url: 'http://convention.myacpa.org/houston2018/wp-content/uploads/2017/11/Guidelines-for-Effective-White-Caucuses.pdf',
    description: 'Developed by Craig Elliott PhD',
    title: "Tips for Creating Effective White Caucus Groups",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'article',
    approved: true,
    for_kids: true,
    url: 'https://thebolditalic.com/where-do-i-donate-why-is-the-uprising-violent-should-i-go-protest-5cefeac37ef9',
    description: 'by Courtney Martin (June 1, 2020)',
    title: "Where do I donate? Why is the uprising violent? Should I go protest?",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'article',
    approved: true,
    for_kids: true,
    url: 'http://convention.myacpa.org/houston2018/wp-content/uploads/2017/11/UnpackingTheKnapsack.pdf',
    description: 'by Knapsack Peggy McIntosh',
    title: "White Privilege: Unpacking the Invisible Knapsack",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'article',
    approved: true,
    for_kids: true,
    url: 'https://www.theatlantic.com/ideas/archive/2020/05/ahmaud-arbery/611539/',
    description: 'by Dr. Ibram X. Kendi | Atlantic (May 12, 2020)',
    title: "Who Gets to Be Afraid in America?",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  }

])

podcasts = Resource.create([
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
    kind: 'podcast',
    approved: true,
    for_kids: true,
    url: 'https://www.raisingfreepeople.com/podcast/',
    description: 'Fare of the Free Child is a weekly-published podcast community centering Black people, Indigenous people, and People of Color in liberatory living and learning practices. With a particular interest in unschooling and the Self-Directed Education movement, Akilah S. Richards and guests discuss the fears and the fares (costs) of raising free black and brown children in a world that tends to diminish, dehumanize, and disappear them.',
    title: "Fare of the Free Child podcast",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'podcast',
    approved: true,
    for_kids: true,
    url: 'https://integratedschools.simplecast.com/episodes/harvey',
    description: "What is a healthy racial identity for a White person, and how do we help our White children develop one?  We're joined by Dr. Jennifer Harvey to discuss her book, Raising White Kids: Bringing Up Children in a Racially Unjust America, as well her personal journey towards anti-racist organizing, educating, and child rearing.",
    title: "Integrated Schools podcast episode “Raising White Kids with Jennifer Harvey”",
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  }
  {
    kind: 'podcast',
    approved: true,
    for_kids: false,
    url: 'https://www.nytimes.com/2020/01/23/podcasts/1619-podcast.html',
    description: 'An audio series on how slavery has transformed America, connecting past and present through the oldest form of storytelling.',
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
    description: 'Co-discussants Anna Holmes, Baratunde Thurston, Raquel Cepeda and Tanner Colby host a lively multiracial, interracial conversation about the ways we can’t talk, don’t talk, would rather not talk, but intermittently, fitfully, embarrassingly do talk about culture, identity, politics, power, and privilege in our pre-post-yet-still-very-racial America.',
    title: 'About Race',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'podcast',
    approved: true,
    for_kids: false,
    url: 'https://www.npr.org/sections/codeswitch/',
    description: "Remember when folks used to talk about being 'post-racial'? Well, we're definitely not that. We're a multi-racial, multi-generational team of journalists fascinated by the overlapping themes of race, ethnicity and culture, how they play out in our lives and communities, and how all of this is shifting.",
    title: 'Code Switch',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'podcast',
    approved: true,
    for_kids: false,
    url: 'https://podcasts.apple.com/us/podcast/intersectionality-matters/id1441348908',
    description: "Intersectionality Matters! is a podcast hosted by Kimberlé Crenshaw, an American civil rights advocate and a leading scholar of critical race theory.",
    title: 'Intersectionality Matters!',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'podcast',
    approved: true,
    for_kids: false,
    url: 'https://www.raceforward.org/media/podcast/momentum-race-forward-podcast',
    description: "Momentum: A Race Forward Podcast features movement voices, stories, and strategies for racial justice. Co-hosts Chevon and Hiba give their unique takes on race and pop culture, and uplift narratives of hope, struggle, and joy, as we continue to build the momentum needed to advance racial justice in our policies, institutions, and culture. Build on your racial justice lens and get inspired to drive action by learning from organizational leaders and community activists.",
    title: 'Momentum: A Race Forward Podcast',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'podcast',
    approved: true,
    for_kids: false,
    url: 'https://www.nytimes.com/2020/07/30/podcasts/nice-white-parents-serial.html',
    description: "From Serial and The New York Times: 'Nice White Parents' looks at the 60-year relationship between white parents and thepublic school down the block.",
    title: 'Nice White Parents',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'podcast',
    approved: true,
    for_kids: false,
    url: 'https://civilrights.org/podforthecause/',
    description: "From the courts to immigration, we’re seeing unprecedented attacks on the values we hold near and dear. At Pod for the Cause, we’re going to tackle these issues and more. Our friends in the movement will be stopping by to have these conversations, and they promise to be real, straightforward and honest.",
    title: 'Pod For The Cause (from The Leadership Conference on Civil & Human Rights)',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'podcast',
    approved: true,
    for_kids: false,
    url: 'https://crooked.com/podcast-series/pod-save-the-people/',
    description: "On Pod Save the People, DeRay Mckesson explores news, culture, social justice, and politics with Sam Sinyangwe, Kaya Henderson and De’Ara Balenger. They offer a unique take on the news, with a special focus on overlooked stories and topics that often impact people of color.

    There’s also a weekly one-on-one interview with DeRay and special guests, from singer/songwriter John Legend to Speaker of the House Nancy Pelosi. The experts, influencers, and diverse local and national leaders who come on the show go deep on social, political, and cultural issues. New episodes every Tuesday.",
    title: 'Pod Save The People',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'podcast',
    approved: true,
    for_kids: false,
    url: 'https://www.sceneonradio.org/seeing-white/',
    description: "ust what is going on with white people? Police shootings of unarmed African Americans. Acts of domestic terrorism by white supremacists. The renewed embrace of raw, undisguised white-identity politics. Unending racial inequity in schools, housing, criminal justice, and hiring. Some of this feels new, but in truth it’s an old story.

    Why? Where did the notion of “whiteness” come from? What does it mean? What is whiteness for?
    
    Scene on Radio host and producer John Biewen took a deep dive into these questions, along with an array of leading scholars and regular guest Dr. Chenjerai Kumanyika, in this fourteen-part documentary series, released between February and August 2017. The series editor is Loretta Williams.",
    title: 'Seeing White',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  }
])

books = Resource.create([
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
    kind: 'book',
    approved: true,
    for_kids: true,
    url: 'https://www.commonsensemedia.org/lists/coretta-scott-king-book-award-winners',
    description: 'Please use these books to help you do the work of making the world a safer, more equitable place for all children.',
    title: "20 Picture Books for 2020: Readings to Embrace Race, Provide Solace & Do Good",
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
    kind: 'book',
    approved: true,
    for_kids: false,
    url: 'https://www.kieselaymon.com/heavy',
    description: 'by Kiese Laymon',
    title: 'Heavy: An American Memoir',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'book',
    approved: true,
    for_kids: false,
    url: 'https://www.ibramxkendi.com/how-to-be-an-antiracist-1',
    description: 'by Dr. Ibram X. Kendi',
    title: 'How To Be An Antiracist',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'book',
    approved: true,
    for_kids: false,
    url: 'https://www.penguinrandomhouse.com/books/3924/i-know-why-the-caged-bird-sings-by-maya-angelou/',
    description: 'by Maya Angelou',
    title: 'I Know Why the Caged Bird Sings',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'book',
    approved: true,
    for_kids: false,
    url: 'http://invisiblenomorebook.com/the-book/',
    description: 'by Andrea J. Ritchie',
    title: 'Invisible No More: Police Violence Against Black Women and Women of Color',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'book',
    approved: true,
    for_kids: false,
    url: 'https://justmercy.eji.org/',
    description: 'by Bryan Stevenson',
    title: 'Just Mercy',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  }
])

videos = Resource.create([
  {
    kind: 'video',
    approved: true,
    for_kids: false,
    url: 'https://youtu.be/eV3nnFheQRo',
    description: 'By: Barbara Smith, Reina Gossett, Charlene Carruthers (50:48)',
    title: 'Black Feminism & the Movement for Black Lives',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  },
  {
    kind: 'video',
    approved: true,
    for_kids: false,
    url: 'https://youtu.be/eV3nnFheQRo',
    description: 'disscussion on White Fragility by Dr. Robin DiAngelo discusses',
    title: 'White Fragility',
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
  }
  ])

movies = Resource.create([
  {
    kind: 'Movie',
    approved: true,
    for_kids: false,
    url: 'https://www.netflix.com/watch/80091741?trackId=14292320&tctx=0%2C0%2C0b39db48-9a65-410f-a343-922cf4064cc7-232074947%2C20f42b1b-f9c3-4e3c-a11c-a96265607a2a_126401525X19XX1591829797505%2C20f42b1b-f9c3-4e3c-a11c-a96265607a2a_ROOT%2C',
    description: 'The 13th Amendment to the U. S. Constitution abolished slavery. But it also included a provision many people don\'t know about and that is what this documentary brings to view. "\Neither slavery nor involuntary servitude, except as a punishment for crime whereof the party shall have been duly convicted, shall exist.\" That exception justifies the use of forced labor as long as the laborer is a convict. This documentary makes the case that inclusion of this loophole is only one of the justifications for continuing domination of people of color. The 13th Amendment was ratified in 1865 and director Ava DuVernay supports her thesis through the use of both historical footage and interviews. Film clips of former President Richard Nixon call for \'Law & Order\' which has resulted in exploding prison populations. The U. S. only has 5% of the world\'s population but has 25% of the world\'s prisoners. This Law & Order policy enabled government to imprison blacks. John Ehrlichman was Assistant to President Nixon for Domestic Affairs: "\Did we know we were lying? Of course we did.\" The documentary makes the case that those drug busts, Jim Crow laws and segregation are all variations of domination of black America. Currently the \'\Prison Industrial Complex\' is just a new version of the same old problem. Here DuVernay returns to the 13th Amendment and makes the case that the system cannot be dealt with by making small changes. The system itself has to be rebuilt.',
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
    description: 'An estranged couple reunite in a Florida police station to help find their missing teenage son.',
    title: 'American Son',
    twitter_link: '',
    insta_link: '',
    facebook_link: ''
  }

])

orgs = Resource.create([
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
  }

])

# Vote.create(user_id: user1.id, resource_id: resource1.id, vote: 'upvote')

puts 'all reborn'
