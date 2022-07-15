# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.destroy_all

Contact.create([
  {
  salutation: 'Mr.', 
  first_name: 'John', 
  middle_name: 'Larry', 
  last_name: 'Shade', 
  ssn: '123-45-4321',
  dob: "1999-12-01",
  comment: 'I\'m a poet, and I know that.',
  addresses_attributes: [
    {
      street: '123 Test St.',
      town: 'Sample Town',
      state: 'AZ',
      zip: '52348',
      country: 'US'
    },
    {
      street: '609 Example Blvd.',
      town: 'Boston',
      state: 'MA',
      zip: '20349',
      country: 'US'
    }
  ],
  emails_attributes: [
    {
      email_address: 'example@test.com',
      comment: 'I\'m an example comment on an email'
    },
    {
      email_address: 'fake_email@example.net',
      comment: 'Here comes another example comment!'
    }
  ],
  phone_numbers_attributes: [
    {
      kind: 'Home',
      number: '502-492-1234',
      comment: 'I\'m just commenting on a phone number'
    },
    {
      kind: 'Office',
      number: '405-233-9234',
      comment: 'Don\'t call here after 5pm.'
    }
  ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Charles', 
    middle_name: 'P', 
    last_name: 'Kinbote', 
    ssn: '123-45-4321', 
    dob: "1999-12-01", 
    comment: 'second database seed test',
    addresses_attributes: [
      {
        street: '47 Bolshaya Morskaya Street',
        town: 'St. Petersburg',
        zip: '190000',
        country: 'RUS'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Hugh', 
    middle_name: 'J', 
    last_name: 'Whitbread', 
    dob: "1949-06-02", 
    comment: 'boring guy',
    addresses_attributes: [
      {
        street: '609 Example Blvd.',
        town: 'Boston',
        state: 'MA',
        zip: '20349',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Ms.', 
    first_name: 'Rezia', 
    middle_name: 'Warren', 
    last_name: 'Smith',  
    dob: "1930-07-23", 
    addresses_attributes: [
      {
        street: '123 Test St.',
        town: 'Sample Town',
        state: 'AZ',
        zip: '52348',
        country: 'US'
      },
      {
        street: '609 Example Blvd.',
        town: 'Boston',
        state: 'MA',
        zip: '20349',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Richard',  
    last_name: 'Dalloway', 
    ssn: '665-34-5237', 
    dob: "1910-04-01", 
    addresses_attributes: [
      {
        street: '21–22 Bedford Place',
        town: 'London',
        zip: 'WC1, NW1',
        country: 'UK'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mrs.', 
    first_name: 'Clarissa', 
    last_name: 'Dalloway', 
    comment: 'she bought the flowers herself',
    addresses_attributes: [
      {
        street: '123 Test St.',
        town: 'Sample Town',
        state: 'AZ',
        zip: '52348',
        country: 'US'
      },
      {
        street: '609 Example Blvd.',
        town: 'Boston',
        state: 'MA',
        zip: '20349',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Don', 
    middle_name: 'Max', 
    last_name: 'Waterson', 
    ssn: '123-45-4321', 
    dob: "1999-12-01", 
    comment: 'second database seed test',
    addresses_attributes: [
      {
        street: '123 Test St.',
        town: 'Sample Town',
        state: 'AZ',
        zip: '52348',
        country: 'US'
      },
      {
        street: '609 Example Blvd.',
        town: 'Boston',
        state: 'MA',
        zip: '20349',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Geoffrey', 
    middle_name: 'Pirate', 
    last_name: 'Prentice', 
    ssn: '123-45-4321', 
    dob: "1999-12-01", 
    comment: 'second database seed test',
    addresses_attributes: [
      {
        street: '123 Test St.',
        town: 'Sample Town',
        state: 'AZ',
        zip: '52348',
        country: 'US'
      },
      {
        street: '609 Example Blvd.',
        town: 'Boston',
        state: 'MA',
        zip: '20349',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Ned',  
    last_name: 'Pointsman', 
    ssn: '123-45-4321', 
    dob: "1999-12-01", 
    comment: 'second database seed test',
    addresses_attributes: [
      {
        street: '123 Test St.',
        town: 'Sample Town',
        state: 'AZ',
        zip: '52348',
        country: 'US'
      },
      {
        street: '609 Example Blvd.',
        town: 'Boston',
        state: 'MA',
        zip: '20349',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Roger', 
    middle_name: 'J', 
    last_name: 'Mexico', 
    ssn: '540-12-5455', 
    dob: "1959-02-01", 
    addresses_attributes: [
      {
        street: '123 Test St.',
        town: 'Sample Town',
        state: 'AZ',
        zip: '52348',
        country: 'US'
      },
      {
        street: '609 Example Blvd.',
        town: 'Boston',
        state: 'MA',
        zip: '20349',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  },
  {
    salutation: 'Mr.', 
    first_name: 'Tyrone', 
    last_name: 'Slothrop',  
    dob: "1952-12-01", 
    comment: 'second database seed test',
    addresses_attributes: [
      {
        street: '123 Test St.',
        town: 'Sample Town',
        state: 'AZ',
        zip: '52348',
        country: 'US'
      },
      {
        street: '609 Example Blvd.',
        town: 'Boston',
        state: 'MA',
        zip: '20349',
        country: 'US'
      }
    ],
    emails_attributes: [
      {
        email_address: 'example@test.com',
        comment: 'I\'m an example comment on an email'
      },
      {
        email_address: 'fake_email@example.net',
        comment: 'Here comes another example comment!'
      }
    ],
    phone_numbers_attributes: [
      {
        kind: 'Home',
        number: '502-492-1234',
        comment: 'I\'m just commenting on a phone number'
      },
      {
        kind: 'Office',
        number: '405-233-9234',
        comment: 'Don\'t call here after 5pm.'
      }
    ]
  }
])

p "Created #{Contact.count} entries."