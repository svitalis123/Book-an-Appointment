# frozen_string_literal: true

# Quick login for test purpose
User.create(username: 'admin', password: 'admin')

# Preloaded reservation for user "admin"
Reservation.create(vehicle: 'Honda', model: 'Accord', year: 2021, color: 'Red', location: 'New York',
                   service: 'Tire Rotation', username: 'janedoe', date: Date.tomorrow)
Reservation.create(vehicle: 'Ford', model: 'Mustang', year: 2020, color: 'Black', location: 'Chicago',
                   service: 'Brake Inspection', username: 'bobsmith', date: Date.today + 1.week)


# Preloaded services with information
Service.create(service: 'Repair', photo: 'https://picsum.photos/200/200', engineer: 'Dask', price: 4, labour: 34,
               duration: 34, description: 'This is a string')
Service.create(service: 'Oil Manintanance', photo: 'https://picsum.photos/200/200', engineer: 'Donson', price: 4,
               labour: 34, duration: 34, description: 'This is a string')
Service.create(service: 'Tire Change', photo: 'https://picsum.photos/200/200', engineer: 'Dask', price: 4, labour: 34,
               duration: 34, description: 'This is a string')
Service.create(service: 'Tire Change', photo: 'https://picsum.photos/200/200', engineer: 'Dask', price: 4, labour: 34,
               duration: 34, description: 'This is a string')
Service.create(service: 'Tire Change', photo: 'https://picsum.photos/200/200', engineer: 'Dask', price: 4, labour: 34,
               duration: 34, description: 'This is a string')
