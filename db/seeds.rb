# Quick login for test purpose
User.create(username: "admin", password: "admin")	

# Preloaded reservation for user "admin"
Reservation.create(vehicle: "Ford", model: "Fiesta", year: 2000, color: "Red", location: "London", service: "Repair")
Reservation.create(vehicle: "Tesla", model: "Go", year: 2000, color: "Blue", location: "Egypt", service: "Oil Manintanance")

# Preloaded services with information
Service.create(service: "Repair", photo: "https://picsum.photos/200/200", engineer: "Dask", price: 4, labour: 34, duration: 34, description: "This is a string" )
Service.create(service: "Oil Manintanance", photo: "https://picsum.photos/200/200", engineer: "Donson", price: 4, labour: 34, duration: 34, description: "This is a string" )
Service.create(service: "Tire Change", photo: "https://picsum.photos/200/200", engineer: "Dask", price: 4, labour: 34, duration: 34, description: "This is a string" )
Service.create(service: "Tire Change", photo: "https://picsum.photos/200/200", engineer: "Dask", price: 4, labour: 34, duration: 34, description: "This is a string" )
Service.create(service: "Tire Change", photo: "https://picsum.photos/200/200", engineer: "Dask", price: 4, labour: 34, duration: 34, description: "This is a string" )
