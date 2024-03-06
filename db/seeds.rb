# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Cat.destroy_all
Cat.create(name:"data science")
Cat.create(name:"programming software development")
Cat.create(name:"finance")
Cat.create(name:"excel")
Cat.create(name:"marketing")
Cat.create(name:"project management")
Cat.create(name:"human resource")
Cat.create(name:"personal development")
Cat.create(name:"vfx and design")
hey="""
3D Graphics & Animations
Artificial Intelligence AI
Azure
Business & Management
Capital Markets
ChatGPT
Company Valuation
Credit Research
Deep Learning
Equity Research
ETL Tools
Financial Accounting
Financial Management
Financial Modeling
Financial Planning & Budgeting
Game Engines
HTML
Investment Banking
IT Monitoring Tools
Java
Keras Tensorflow
Linux
Machine Learning
Minitab
MS Excel & MS Office
Neural Networks
Operations Management
Oracle SQL
Predictive Analytics & Modeling
Private Equity
Project Finance
Python
Quality Management
R Studio
SAS
Six Sigma
SPSS
Supervised Machine Learning
Time Series Analysis And Forecasting
Unsupervised Machine Learning
"""
Othercat.destroy_all
hey.split("\n").each do |hi|
  p hi
  Othercat.create(name: hi)
end
