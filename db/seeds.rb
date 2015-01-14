# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# Facillity numbers
ForSelect.create!(facility: '9999', code: 'facility', value: '0001', text: 'GBHC', option_order: 1, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0002', text: 'Kingsboro', option_order: 2, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0003', text: 'Buffalo', option_order: 3, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0005', text: 'CPC', option_order: 4, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0010', text: 'Manhattan', option_order: 5, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0012', text: 'Middletown', option_order: 6, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0013', text: 'Pilgrim', option_order: 7, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0014', text: 'NYPI', option_order: 8, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0015', text: 'Rochester', option_order: 9, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0016', text: 'Rockland', option_order: 10, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0017', text: 'SLPC', option_order: 11, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0018', text: 'HPC', option_order: 12, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0021', text: 'Bronx', option_order: 13, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0024', text: 'CDPC', option_order: 14, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0025', text: 'SCPC', option_order: 15, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0026', text: 'RCPC', option_order: 16, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0035', text: 'EPC', option_order: 17, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0036', text: 'SBPC', option_order: 18, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0037', text: 'WNYPC', option_order: 19, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0038', text: 'MHPC', option_order: 20, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0042', text: 'NKI', option_order: 21, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0043', text: 'CNYPC', option_order: 22, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0044', text: 'Kirby', option_order: 23, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0045', text: 'MVPC', option_order: 24, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '0048', text: 'NYCCC', option_order: 25, grouper: '')
ForSelect.create!(facility: '9999', code: 'facility', value: '9999', text: 'All', option_order: 26, grouper: '')

# Mid-Hudson Company Names
ForSelect.create!(facility: '0038', code: 'company', value: 'Ruecker Inc', text: 'Ruecker Inc', option_order: 1, grouper: 'New York')
ForSelect.create!(facility: '0038', code: 'company', value: 'Hudson, Spencer and Ondricka', text: 'Hudson, Spencer and Ondricka', option_order: 2, grouper: 'New York')
ForSelect.create!(facility: '0038', code: 'company', value: 'Hermiston, Abshire and Schumm', text: 'Hermiston, Abshire and Schumm', option_order: 3, grouper: 'New York')
ForSelect.create!(facility: '0038', code: 'company', value: 'Flatley and Sons', text: 'Flatley and Sons', option_order: 4, grouper: 'New York')
ForSelect.create!(facility: '0038', code: 'company', value: 'Borer-Mosciski', text: 'Borer-Mosciski', option_order: 5, grouper: 'New York')
ForSelect.create!(facility: '0038', code: 'company', value: 'Weber, Bayer and Heller', text: 'Weber, Bayer and Heller', option_order: 6, grouper: 'New York')
ForSelect.create!(facility: '0038', code: 'company', value: 'Jacobson and Sons', text: 'Jacobson and Sons', option_order: 7, grouper: 'New York')
ForSelect.create!(facility: '0038', code: 'company', value: 'Willms LLC', text: 'Willms LLC', option_order: 8, grouper: 'New York')
ForSelect.create!(facility: '0038', code: 'company', value: 'Schinner, Mann and Wuckert', text: 'Schinner, Mann and Wuckert', option_order: 9, grouper: 'New Jersey')
ForSelect.create!(facility: '0038', code: 'company', value: 'McClure-Bradtke', text: 'McClure-Bradtke', option_order: 10, grouper: 'New Jersey')
ForSelect.create!(facility: '0038', code: 'company', value: 'Renner and Sons', text: 'Renner and Sons', option_order: 11, grouper: 'New Jersey')
ForSelect.create!(facility: '0038', code: 'company', value: 'Pollich LLC', text: 'Pollich LLC', option_order: 12, grouper: 'New Jersey')
ForSelect.create!(facility: '0038', code: 'company', value: 'Brekke LLC', text: 'Brekke LLC', option_order: 13, grouper: 'New Jersey')
ForSelect.create!(facility: '0038', code: 'company', value: 'Olson-Nikolaus', text: 'Olson-Nikolaus', option_order: 14, grouper: 'New Jersey')
ForSelect.create!(facility: '0038', code: 'company', value: 'Zulauf, Torp and Collins', text: 'Zulauf, Torp and Collins', option_order: 15, grouper: 'New Jersey')
ForSelect.create!(facility: '0038', code: 'company', value: 'Romaguera-Monahan', text: 'Romaguera-Monahan', option_order: 16, grouper: 'Connecticut')
ForSelect.create!(facility: '0038', code: 'company', value: 'Friesen, Steuber and Hilpert', text: 'Friesen, Steuber and Hilpert', option_order: 17, grouper: 'Connecticut')
ForSelect.create!(facility: '0038', code: 'company', value: 'Weber, Feil and O-Keefe', text: 'Weber, Feil and O-Keefe', option_order: 18, grouper: 'Connecticut')
ForSelect.create!(facility: '0038', code: 'company', value: 'Borer, Herzog and Satterfield', text: 'Borer, Herzog and Satterfield', option_order: 19, grouper: 'Connecticut')
ForSelect.create!(facility: '0038', code: 'company', value: 'McCullough and Sons', text: 'McCullough and Sons', option_order: 20, grouper: 'Connecticut')











