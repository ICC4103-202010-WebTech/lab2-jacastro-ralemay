# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#Customers
customer1 = Customer.create(name: "Richard", lastName: "Le May", email: "ralemay@miuandes.cl",
                            phone: "911111111", password: "richard", address: "street1")

customer2 = Customer.create(name: "Julio", lastName: "Castro", email: "jacatro2@miuandes.cl",
                            phone: "922222222", password: "julio", address: "street2")
#events Venue
eventVenue1 = EventVenue.create(name:"Parque Bicentenario",address: "main street 1",capacity: "1000000")

eventVenue2 = EventVenue.create(name:"Parque Mahuida",address: "main street 2",capacity: "2000000")

eventVenue3 = EventVenue.create(name:"Parque del Recuerdo",address: "main street 3",capacity: "100000000")

#Event Info

eventinfo1 = EventInformation.create(name:"Concert", description: "Maroon 5 is coming to Chile again",
                                     startDate: "2020-03-02", event_venue_id: eventVenue1.id)

eventinfo2 = EventInformation.create(name:"Fonda", description: "Because 18 of september is coming, we will have our typical Fonda",
                                     startDate: "2020-08-18", event_venue_id: eventVenue2.id)

eventinfo3 = EventInformation.create(name:"Funeral", description: "My grandpas funeral",
                                     startDate: "2020-04-02", event_venue_id: eventVenue3.id)

#Tickets

ticket1 = Ticket.create(price: 100000, event_information_id:eventinfo1.id, Type: "Standard")

ticket1_1 = Ticket.create(price: 50000, event_information_id:eventinfo1.id, Type: "Bronze")

ticket2 = Ticket.create(price: 10000000, event_information_id:eventinfo2.id, Type: "Golden")

ticket2_1 = Ticket.create(price: 100000, event_information_id:eventinfo2.id, Type: "Standard")

ticket3 = Ticket.create(price: 9000000000, event_information_id:eventinfo3.id, Type: "Diamond")

ticket3_1 = Ticket.create(price: 10000000, event_information_id:eventinfo3.id, Type: "Golden")


#Order

order1 = Order.create(Ticket_id: ticket1.id, Customer_id: customer1.id)
order1.Ticket_id = ticket1_1.id

order2 = Order.create(Ticket_id: ticket2.id, Customer_id: customer1.id)
order2.Ticket_id << ticket2_1.id

order3 = Order.create(Ticket_id: ticket2_1.id, Customer_id: customer2.id)
order3.Ticket_id << ticket3_1.id

order4 = Order.create(Ticket_id: ticket3.id, Customer_id: customer2.id)
order4.Ticket_id << ticket2_1.id

