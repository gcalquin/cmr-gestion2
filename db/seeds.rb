# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Manager.create([{name: "Rosa Vallejos"}, {name: "Abner Jaramillo"}, {name: "Ester olivas"}])
Office.create([{name: "La florida", address: "Vicuña mackenna 1515"}, {name: "til Til", address: "Camino sin numero"}, {name: "Las Condes", address: "Estoril 1833"}])

