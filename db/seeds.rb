puts "Creating gyms..."
Gym.create(name: "Globo Gym", rating: 1, price: 1000)
Gym.create(name: "Pewter City Gym", rating: 3, price: 50)
Gym.create(name: "Plant Fitness", rating: 4, price: 20)
Gym.create(name: "Crunch", rating: 5, price: 20)

puts "Creating members..."
Member.create(name: "Fred")
Member.create(name: "Daphne")
Member.create(name: "Velma")
Member.create(name: "Shaggy")
Member.create(name: "Scooby")

puts "Creating memberships..."

# ************************************************************************
# * TODO: create memberships! Remember, a membership belongs to a member *
# * and a membership belongs to a gym.                                   *
# ************************************************************************
# Create memberships Here

Membership.create(gym_id: 1, member_id: 1, start_year: 2020, start_month: "March")
Membership.create(gym_id: 1, member_id: 2, start_year: 1995, start_month: "December")
Membership.create(gym_id: 2, member_id: 1, start_year: 2021, start_month: "August")
Membership.create(gym_id: 3, member_id: 3, start_year: 1999, start_month: "September")
Membership.create(gym_id: 4, member_id: 4, start_year: 1776, start_month: "July")

puts "Seeding done!"
