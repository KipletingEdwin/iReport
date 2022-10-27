puts "Seeding..."

Admin.create(username: "jackson", password: "roses@red")
Admin.create(username: "john", password: "roses")
Admin.create(username: "alex", password: "lame")
Admin.create(username: "nicholas", password: "lome")

Incident.create(
    incident_type: 'redflag',
    title: 'Bad roads',
    description:'Traffic moves on the left side of the road, which can be very disorienting to those not accustomed to it.',
    location: '-42.2078,98.33',
    date:'2021-08-21 - 2022-08-21',
    image_url:"",
    user_id: 1,
    admin_id: 2,
    status: 'Under-Investigation'
)

Incident.create(
    incident_type: 'redflag',
    title: 'Leader tips street thugs',
    description: 'Leader tips  street thugs for them to keep silence of the evidence they have against him.',
    location: '-33.2078,18.023',
    date: '2021-08-21 - 2022-08-21',
    image_url:"",
    user_id: 2,
    admin_id: 3,
    status: 'Draft'
)
# Incident.create(
#     incident_type: 'intervention',
#     title: 'Bridge contruction needed',
#     description: 'Design error, construction mistakes, hydraulic, collision, and overload.',
#     location: '-42.2078,98.33',
#     date: Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
#     image_url:"",
#     user_id: 3,
#     admin_id: 1,
#     status: 'Under-Investigation'
# )
# Incident.create(
#     incident_type: 'redflag',
#     title: 'Fraud case',
#     description: 'lured by greed and an easy financial gain. pressured by negative influences such as loss of employment or status, gambling addictions, health problems or crippling debts.',
#     location: '6.5922139, 3.3427375',
#     date:Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
#     image_url:"",
#     user_id: 2,
#     admin_id: 3,
#     status: "Resolved"
# )


User.create( name: 'Silvia Mutete', username: 'SilviaMutete', email: 'silviamutete@gmail.com',password_digest: 'silviamutete')
User.create( name: 'Monicah Ndunge', username: 'MonicahNdunge', email: 'monicahndunge@gmail.com',password_digest: 'monicahndunge')
User.create( name: 'Martha Mbatha', username: 'MarthaMbatha', email: 'marthambatha@gmail.com',password_digest: 'marthambatha')
User.create( name: 'Edwin Rotich', username: 'EdwinRotich', email: 'edwinrotich@gmail.com',password_digest: 'edwinrotich')
User.create( name: 'John Kamau', username: 'JohnKamau', email: 'johnkamau@gmail.com',password_digest: 'johnkamau')
User.create( name: 'Peter Ndegwa', username: 'PeterNdegwa', email: 'peterndegwa@gmail.com',password_digest: 'peterndegwa')
User.create( name: 'James Situma', username: 'JamesSituma', email: 'jamessituma@gmail.com',password_digest: 'jamessituma')
User.create( name: 'Harrison Ouma', username: 'HarrisonOuma', email: 'harrisonouma@gmail.com',password_digest: 'harrisonouma')


puts "📃 Done Seeding ..."