# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Cat.destroy_all
Somecat.destroy_all
x=Cat.create(name:"data science")
hey=""" Business Intelligence
  Business Analytics
   Cloud Computing
    Data Visualization
     Data Science
      Hadoop
       IoT
        Machine Learning
         Statistics
          Database Management
"""
hey.split("\n").each do |hi|
  p hi
  Somecat.create(cat_id: x.id, name: hi.strip.strip)
end
x=Cat.create(name:"programming software development")
hey=""" App Development
  Cyber Security
   Database
    Java
     JavaScript
      Networking
       Programming Languages
        Software Testing
         Virtualization
          Web Development
           Web Application Framework
            Content Management System
             Operating System
"""
hey.split("\n").each do |hi|
  p hi
  Somecat.create(cat_id: x.id, name: hi.strip.strip)
end
x=Cat.create(name:"finance")
hey=""" Accounting
  Corporate Finance
   Credit Research
    Equity Research
     Financial Modeling
      Investment Banking
       Private Equity
        Project Finance
         Trading
          Valuation
           Risk Management
            Excel VBA Accounting
             Corporate Finance
              Credit Research
               Equity Research
                Financial Modeling
                 Investment Banking
                  Private Equity
                   Project Finance
                    Trading
                     Valuation
                      Risk Management
                       Excel VBA
"""
hey.split("\n").each do |hi|
  p hi
  Somecat.create(cat_id: x.id, name: hi.strip.squish)
end
x=Cat.create(name:"excel")
hey="""Excel
 Excel for Data Analyst
  Excel for Financial Analyst
   Excel for HR
    Excel for Marketing
     Microsoft Office
      Excel VBA"""
hey.split("\n").each do |hi|
  p hi
  Somecat.create(cat_id: x.id, name: hi.strip.strip)
end
x=Cat.create(name:"marketing")
hey=""" Marketing
  Content Marketing
   Digital Marketing
    Market Research"""
hey.split("\n").each do |hi|
  p hi
  Somecat.create(cat_id: x.id, name: hi.strip.squish)
end
x=Cat.create(name:"project management")
hey=""" Agile & Scrum
  Quality Management
   Project Management Certifications
    Project Management"""
hey.split("\n").each do |hi|
  p hi
  Somecat.create(cat_id: x.id, name: hi.strip.squish)
end
x=Cat.create(name:"human resource")
hey="""HR Management"""
hey.split("\n").each do |hi|
  p hi
  Somecat.create(cat_id: x.id, name: hi.strip.squish)
end
x=Cat.create(name:"personal development")
hey=""" Job Interview"""
hey.split("\n").each do |hi|
  p hi
  Somecat.create(cat_id: x.id, name: hi.strip.squish)
end
x=Cat.create(name:"vfx and design")
hey="""Engineering
 3D Modeling
  3D Animation
   Compositing
    Game Development
     Graphics Editing
      Video Editing
       Audio Editing"""
hey.split("\n").each do |hi|
  p hi
  Somecat.create(cat_id: x.id, name: hi.strip.squish)
end
############
hey="""3D Graphics & Animations
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
Unsupervised Machine Learning"""
Othercat.destroy_all
hey.split("\n").each do |hi|
  p hi
  Othercat.create(name: hi.strip)
end
