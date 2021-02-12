# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Expense.destroy_all
Note.destroy_all




david = User.create(first_name: 'David', last_name: 'Medina', username: 'dashdavid', password: "1234", monthly_income: 5000 )
tim = User.create(first_name: 'Tim', last_name: 'Smith', username: 'tinytime', password: "1234", monthly_income: 4000 )

a = Expense.create( name: "rent", cost: 1500, user_id: david.id)
b = Expense.create( name: "gym", cost: 145, user_id: david.id)
c = Expense.create( name: "wifi", cost: 1500, user_id: david.id)
d = Expense.create( name: "food", cost: 500, user_id:tim.id)
e = Expense.create( name: "electricity", cost: 60, user_id:tim.id)




note1 = Note.create(content: "rent is a bit much", expense_id: a.id, user_id: david.id)
note2 = Note.create(content: "gym is cool", expense_id: b.id, user_id: tim.id)
note3 = Note.create(content: "should check for another wifi provider", expense_id: c.id, user_id: david.id)
note4 = Note.create(content: "i should check out foodceller for cheaper options", expense_id: d.id, user_id: david.id)
note5 = Note.create(content: "Reminder to call coned to about this bill being higher", expense_id: e.id, user_id: tim.id)