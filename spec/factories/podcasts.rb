FactoryBot.define do
  factory :podcast do
    name { Faker::Name.unique.name  }
    location { Faker::Address.city }
    twitter { Faker::Hacker.noun  }
    patreon { Faker::Hacker.noun  }
    instagram { Faker::Hacker.noun  }
    facebook { Faker::Hacker.noun  }
    description {Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote }
    content { false }
    spotify_uri { Faker::Internet.domain_name }
    photo { Faker::Placeholdit.image }
    producer { "" }
    status { false }
  end
end
