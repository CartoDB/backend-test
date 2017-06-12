product_group = Group.create(name: 'Product')
leads_group = Group.create(name: 'Leads')
engine_group = Group.create(name: 'Engine')
backend_group = Group.create(name: 'Backend')
frontend_group = Group.create(name: 'Frontend')
madrid_group = Group.create(name: 'Madrid')

users = []
users << User.create(name: 'Alice', groups: [product_group, leads_group, madrid_group])
users << User.create(name: 'Bob', groups: [leads_group, engine_group, madrid_group])
users << User.create(name: 'Charles', groups: [product_group, backend_group, madrid_group])
users << User.create(name: 'Daphne', groups: [frontend_group, madrid_group])
users << User.create(name: 'Eva')

categories = %w{social politics nature}

ActiveRecord::Base.transaction do
  for i in 1..10000
    Map.create(title: "Untitled Map #{i}", category: categories[Random.rand(categories.count)], mapviews: Random.rand(1000), user: users[Random.rand(users.count - 1)])
  end
end
