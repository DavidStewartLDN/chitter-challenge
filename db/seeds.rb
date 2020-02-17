peeps = [
  {text: 'I love lil Wayne'},
  {text: 'Rap is da best music'}
]

peeps.each do |u|
  Peep.create(u)
end
