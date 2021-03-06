# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Match.create(block: 1, round: 'Group A', date: Date.parse('12th June 2014'), day: 'Thu', time: '21:00', venue: 'Sao Paulo', team1: 'Brazil', team2: 'Croatia', played:false)
Match.create(block: 1, round: 'Group A', date: Date.parse('13th June 2014'), day: 'Fri', time: '17:00', venue: 'Natal', team1: 'Mexico', team2: 'Cameroon', played:false)
Match.create(block: 1, round: 'Group B', date: Date.parse('13th June 2014'), day: 'Fri', time: '20:00', venue: 'Salvador', team1: 'Spain', team2: 'Netherlands', played:false)
Match.create(block: 1, round: 'Group B', date: Date.parse('13th June 2014'), day: 'Fri', time: '23:00', venue: 'Cuiaba', team1: 'Chile', team2: 'Australia', played:false)
Match.create(block: 1, round: 'Group C', date: Date.parse('14th June 2014'), day: 'Sat', time: '17:00', venue: 'Belo Horizonte', team1: 'Colombia', team2: 'Greece', played:false)
Match.create(block: 1, round: 'Group C', date: Date.parse('15th June 2014'), day: 'Sun', time: '02:00', venue: 'Recife', team1: 'Ivory Coast', team2: 'Japan', played:false)
Match.create(block: 1, round: 'Group D', date: Date.parse('14th June 2014'), day: 'Sat', time: '20:00', venue: 'Fortaleza', team1: 'Uruguay', team2: 'Costa Rica', played:false)
Match.create(block: 1, round: 'Group D', date: Date.parse('14th June 2014'), day: 'Sat', time: '23:00', venue: 'Manaus', team1: 'England', team2: 'Italy', played:false)
Match.create(block: 2, round: 'Group E', date: Date.parse('15th June 2014'), day: 'Sun', time: '17:00', venue: 'Brasilia', team1: 'Switzerland', team2: 'Ecuador', played:false)
Match.create(block: 2, round: 'Group E', date: Date.parse('15th June 2014'), day: 'Sun', time: '20:00', venue: 'Porto Alegre', team1: 'France', team2: 'Honduras', played:false)
Match.create(block: 2, round: 'Group F', date: Date.parse('15th June 2014'), day: 'Sun', time: '23:00', venue: 'Rio De Janeiro', team1: 'Argentina', team2: 'Bosnia-Herzegovina', played:false)
Match.create(block: 2, round: 'Group F', date: Date.parse('16th June 2014'), day: 'Mon', time: '20:00', venue: 'Curitiba', team1: 'Iran', team2: 'Nigeria', played:false)
Match.create(block: 2, round: 'Group G', date: Date.parse('16th June 2014'), day: 'Mon', time: '17:00', venue: 'Salvador', team1: 'Germany', team2: 'Portugal', played:false)
Match.create(block: 2, round: 'Group G', date: Date.parse('16th June 2014'), day: 'Mon', time: '23:00', venue: 'Natal', team1: 'Ghana', team2: 'USA', played:false)
Match.create(block: 2, round: 'Group H', date: Date.parse('17th June 2014'), day: 'Tue', time: '17:00', venue: 'Belo Horizonte', team1: 'Belgium', team2: 'Algeria', played:false)
Match.create(block: 2, round: 'Group H', date: Date.parse('17th June 2014'), day: 'Tue', time: '23:00', venue: 'Cuiaba', team1: 'Russia', team2: 'South Korea', played:false)
Match.create(block: 2, round: 'Group A', date: Date.parse('17th June 2014'), day: 'Tue', time: '20:00', venue: 'Fortaleza', team1: 'Brazil', team2: 'Mexico', played:false)
Match.create(block: 3, round: 'Group A', date: Date.parse('18th June 2014'), day: 'Wed', time: '23:00', venue: 'Manaus', team1: 'Cameroon', team2: 'Croatia', played:false)
Match.create(block: 3, round: 'Group B', date: Date.parse('18th June 2014'), day: 'Wed', time: '20:00', venue: 'Rio De Janeiro', team1: 'Spain', team2: 'Chile', played:false)
Match.create(block: 3, round: 'Group B', date: Date.parse('18th June 2014'), day: 'Wed', time: '17:00', venue: 'Porto Alegre', team1: 'Australia', team2: 'Netherlands', played:false)
Match.create(block: 3, round: 'Group C', date: Date.parse('19th June 2014'), day: 'Thu', time: '17:00', venue: 'Brasilia', team1: 'Colombia', team2: 'Ivory Coast', played:false)
Match.create(block: 3, round: 'Group C', date: Date.parse('19th June 2014'), day: 'Thu', time: '23:00', venue: 'Natal', team1: 'Japan', team2: 'Greece', played:false)
Match.create(block: 3, round: 'Group D', date: Date.parse('19th June 2014'), day: 'Thu', time: '20:00', venue: 'Sao Paulo', team1: 'Uruguay', team2: 'England', played:false)
Match.create(block: 3, round: 'Group D', date: Date.parse('20th June 2014'), day: 'Fri', time: '17:00', venue: 'Recife', team1: 'Italy', team2: 'Costa Rica', played:false)
Match.create(block: 3, round: 'Group E', date: Date.parse('20th June 2014'), day: 'Fri', time: '20:00', venue: 'Salvador', team1: 'Switzerland', team2: 'France', played:false)
Match.create(block: 3, round: 'Group E', date: Date.parse('20th June 2014'), day: 'Fri', time: '23:00', venue: 'Curitiba', team1: 'Honduras', team2: 'Ecuador', played:false)
Match.create(block: 4, round: 'Group F', date: Date.parse('21st June 2014'), day: 'Sat', time: '17:00', venue: 'Belo Horizonte', team1: 'Argentina', team2: 'Iran', played:false)
Match.create(block: 4, round: 'Group F', date: Date.parse('21st June 2014'), day: 'Sat', time: '23:00', venue: 'Cuiaba', team1: 'Nigeria', team2: 'Bosnia-Herzegovina', played:false)
Match.create(block: 4, round: 'Group G', date: Date.parse('21st June 2014'), day: 'Sat', time: '20:00', venue: 'Fortaleza', team1: 'Germany', team2: 'Ghana', played:false)
Match.create(block: 4, round: 'Group G', date: Date.parse('22st June 2014'), day: 'Sun', time: '23:00', venue: 'Manaus', team1: 'USA', team2: 'Portugal', played:false)
Match.create(block: 4, round: 'Group H', date: Date.parse('22st June 2014'), day: 'Sun', time: '17:00', venue: 'Rio De Janeiro', team1: 'Belgium', team2: 'Russia', played:false)
Match.create(block: 4, round: 'Group H', date: Date.parse('22st June 2014'), day: 'Sun', time: '20:00', venue: 'Porto Alegre', team1: 'South Korea', team2: 'Algeria', played:false)
Match.create(block: 4, round: 'Group A', date: Date.parse('23rd June 2014'), day: 'Mon', time: '21:00', venue: 'Brasilia', team1: 'Cameroon', team2: 'Brazil', played:false)
Match.create(block: 4, round: 'Group A', date: Date.parse('23rd June 2014'), day: 'Mon', time: '21:00', venue: 'Recife', team1: 'Croatia', team2: 'Mexico', played:false)
Match.create(block: 4, round: 'Group B', date: Date.parse('23rd June 2014'), day: 'Mon', time: '17:00', venue: 'Curitiba', team1: 'Australia', team2: 'Spain', played:false)
Match.create(block: 4, round: 'Group B', date: Date.parse('23rd June 2014'), day: 'Mon', time: '17:00', venue: 'Sao Paulo', team1: 'Netherlands', team2: 'Chile', played:false)
Match.create(block: 5, round: 'Group C', date: Date.parse('24th June 2014'), day: 'Tue', time: '21:00', venue: 'Cuiaba', team1: 'Japan', team2: 'Colombia', played:false)
Match.create(block: 5, round: 'Group C', date: Date.parse('24th June 2014'), day: 'Tue', time: '21:00', venue: 'Fortaleza', team1: 'Greece', team2: 'Ivory Coast', played:false)
Match.create(block: 5, round: 'Group D', date: Date.parse('24th June 2014'), day: 'Tue', time: '17:00', venue: 'Natal', team1: 'Italy', team2: 'Uruguay', played:false)
Match.create(block: 5, round: 'Group D', date: Date.parse('24th June 2014'), day: 'Tue', time: '17:00', venue: 'Belo Horizonte', team1: 'Costa Rica', team2: 'England', played:false)
Match.create(block: 5, round: 'Group E', date: Date.parse('25th June 2014'), day: 'Wed', time: '21:00', venue: 'Manaus', team1: 'Honduras', team2: 'Switzerland', played:false)
Match.create(block: 5, round: 'Group E', date: Date.parse('25th June 2014'), day: 'Wed', time: '21:00', venue: 'Rio De Janeiro', team1: 'Ecuador', team2: 'France', played:false)
Match.create(block: 5, round: 'Group F', date: Date.parse('25th June 2014'), day: 'Wed', time: '17:00', venue: 'Porto Alegre', team1: 'Nigeria', team2: 'Argentina', played:false)
Match.create(block: 5, round: 'Group F', date: Date.parse('25th June 2014'), day: 'Wed', time: '17:00', venue: 'Salvador', team1: 'Bosnia-Herzegovina', team2: 'Iran', played:false)
Match.create(block: 5, round: 'Group G', date: Date.parse('26th June 2014'), day: 'Thu', time: '17:00', venue: 'Recife', team1: 'USA', team2: 'Germany', played:false)
Match.create(block: 5, round: 'Group G', date: Date.parse('26th June 2014'), day: 'Thu', time: '17:00', venue: 'Brasilia', team1: 'Portugal', team2: 'Ghana', played:false)
Match.create(block: 5, round: 'Group H', date: Date.parse('26th June 2014'), day: 'Thu', time: '21:00', venue: 'Sao Paulo', team1: 'South Korea', team2: 'Belgium', played:false)
Match.create(block: 5, round: 'Group H', date: Date.parse('26th June 2014'), day: 'Thu', time: '21:00', venue: 'Curitiba', team1: 'Algeria', team2: 'Russia', played:false)
Match.create(block: 6, round: 'Round 2', date: Date.parse('28th June 2014'), day: 'Sat', time: '17:00', venue: 'Belo Horizonte', team1: 'Winner Group A', team2: 'Runner-Up Group B', played:false)
Match.create(block: 6, round: 'Round 2', date: Date.parse('28th June 2014'), day: 'Sat', time: '21:00', venue: 'Rio De Janeiro', team1: 'Winner Group C', team2: 'Runner-Up Group D', played:false)
Match.create(block: 6, round: 'Round 2', date: Date.parse('29th June 2014'), day: 'Sun', time: '17:00', venue: 'Fortaleza', team1: 'Winner Group B', team2: 'Runner-Up Group A', played:false)
Match.create(block: 6, round: 'Round 2', date: Date.parse('29th June 2014'), day: 'Sun', time: '21:00', venue: 'Recife', team1: 'Winner Group D', team2: 'Runner-Up Group C', played:false)
Match.create(block: 7, round: 'Round 2', date: Date.parse('30th June 2014'), day: 'Mon', time: '17:00', venue: 'Brasilia', team1: 'Winner Group E', team2: 'Runner-Up Group F', played:false)
Match.create(block: 7, round: 'Round 2', date: Date.parse('30th June 2014'), day: 'Mon', time: '21:00', venue: 'Porto Alegre', team1: 'Winner Group G', team2: 'Runner-Up Group H', played:false)
Match.create(block: 7, round: 'Round 2', date: Date.parse('1st July 2014'), day: 'Tue', time: '17:00', venue: 'Sao Paulo', team1: 'Winner Group F', team2: 'Runner-Up Group E', played:false)
Match.create(block: 7, round: 'Round 2', date: Date.parse('1st July 2014'), day: 'Tue', time: '21:00', venue: 'Salvador', team1: 'Winner Group H', team2: 'Runner-Up Group G', played:false)
Match.create(block: 8, round: '1/4 Final', date: Date.parse('4th July 2014'), day: 'Fri', time: '21:00', venue: 'Fortaleza', team1: 'Winner Match 49', team2: 'Winner Match 50', played:false)
Match.create(block: 8, round: '1/4 Final', date: Date.parse('4th July 2014'), day: 'Fri', time: '17:00', venue: 'Rio De Janeiro', team1: 'Winner Match 53', team2: 'Winner Match 54', played:false)
Match.create(block: 8, round: '1/4 Final', date: Date.parse('5th July 2014'), day: 'Sat', time: '21:00', venue: 'Salvador', team1: 'Winner Match 51', team2: 'Winner Match 52', played:false)
Match.create(block: 8, round: '1/4 Final', date: Date.parse('5th July 2014'), day: 'Sat', time: '17:00', venue: 'Brasilia', team1: 'Winner Match 55', team2: 'Winner Match 56', played:false)
Match.create(block: 9, round: '1/2 Final', date: Date.parse('8th July 2014'), day: 'Tue', time: '21:00', venue: 'Belo Horizonte', team1: 'Winner Match 57', team2: 'Winner Match 58', played:false)
Match.create(block: 9, round: '1/2 Final', date: Date.parse('9th July 2014'), day: 'Wed', time: '21:00', venue: 'Sao Paulo', team1: 'Winner Match 59', team2: 'Winner Match 60', played:false)
Match.create(block: 10, round: '2nd / 3rd Playoff', date: Date.parse('12th July 2014'), day: 'Sat', time: '21:00', venue: 'Brasilia', team1: 'Loser Match 61', team2: 'Loser Match 62', played:false)
Match.create(block: 10, round: 'Final', date: Date.parse('13th July 2014'), day: 'Sun', time: '20:00', venue: 'Rio De Janeiro', team1: 'Winner Match 61', team2: 'Winner Match 62', played:false)
User.create(username: 'alanD', email: 'vinyljunkies@yahoo.com', password: 'alan', password_confirmation: 'alan', admin: true)
User.create(username: 'noelD', email: 'noelid@hotmail.com', password: 'noel', password_confirmation: 'noel', admin: true)
User.create(username: 'elvisM', email: 'elvismiezitis@gmail.com', password: 'elvis', password_confirmation: 'elvis', admin: true)
User.create(username: 'bishnuP', email: 'dearbis1@gmail.com ', password: 'bishnu', password_confirmation: 'bishnu', admin: true)
User.create(username: 'testadmin', email: 'testadmin@test.com', password: 'test', password_confirmation: 'test', admin: true)
User.create(username: 'testuser1', email: 'testuser1@test.ie', password: 'test', password_confirmation: 'test', admin: false)
User.create(username: 'testuser2', email: 'testuser2@test.ie', password: 'test', password_confirmation: 'test', admin: false)
User.create(username: 'testuser3', email: 'testuser3@test.ie', password: 'test', password_confirmation: 'test', admin: false)
User.create(username: 'testuser4', email: 'testuser4@test.ie', password: 'test', password_confirmation: 'test', admin: false)
User.create(username: 'testuser5', email: 'testuser5@test.ie', password: 'test', password_confirmation: 'test', admin: false)
