puts "Seeding..."


User.create( name: 'James', username: 'James', email: 'James@gmail.com', user_type:0, password_digest: '$2a$12$jzbXTnsbPR3SKtsApCfWuOFU8Lcw/n3NQblGEjCoL7o77C6adWP8m')
User.create( name: 'Peter', username: 'Peter', email: 'Peter@gmail.com', user_type:1, password_digest: '$2a$12$PEhemvvGGK7Tv1XGt25uj.bbqMlXyZJ7DVRs7rkKm2606z9VR2JC6')


Incident.create(
    incident_type: 'redflag',
    title: 'Bad roads',
    description:'Traffic moves on the left side of the road, which can be very disorienting to those not accustomed to it.',
    location: '-42.2078,98.33',
    date:Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:'https://media.istockphoto.com/photos/dangerous-potholes-in-the-asphalt-rural-road-road-damage-picture-id972849064?k=20&m=972849064&s=612x612&w=0&h=4C4oaObpelOOxx004TtU37SHNsliXKagznRnQtH25ys=',
    user_id: 1,
    status: 'Under-Investigation'
)

Incident.create(
    incident_type: 'redflag',
    title: 'Leader tips street thugs',
    description: 'Leader tips  street thugs for them to keep silence of the evidence they have against him.',
    location: '-33.2078,18.023',
    date: Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:'https://i.dailymail.co.uk/1s/2022/04/13/03/56547413-0-image-a-5_1649816717871.jpg',
    user_id: 2,
    status: 'Draft'
)
Incident.create(
    incident_type: 'intervention',
    title: 'Bridge contruction needed',
    description: 'Design error, construction mistakes, hydraulic, collision, and overload.',
    location: '-42.2078,98.33',
    date: Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:'https://cdn.standardmedia.co.ke/images/thursday/dwpqpibazwluzir36a6217b5eae6ee7.jpg',
    user_id: 1,
    status: 'Under-Investigation'
)
Incident.create(
    incident_type: 'redflag',
    title: 'Fraud case',
    description: 'lured by greed and an easy financial gain. pressured by negative influences such as loss of employment or status, gambling addictions, health problems or crippling debts.',
    location: '6.5922139, 3.3427375',
    date:Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:'https://onecms-res.cloudinary.com/image/upload/s--uGzb_MwA--/f_auto,q_auto/c_fill,g_auto,h_676,w_1200/v1/mediacorp/cna/image/2021/12/30/photogrid_plus_1640861298872.jpg?itok=81-qeE39',
    user_id: 2,
    status: "Resolved"
)






puts "📃 Done Seeding ..."