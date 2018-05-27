# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 

#管理者ユーザー登録
User.create!(name:  "緒方　孝市",
             email: "ogata@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: true,
             emp_id: 2)

Timecard.create!(emp_id: 2, target_month: "201804")
Timecard.create!(emp_id: 2, target_month: "201805")

tc_id = Timecard.find_by(emp_id:2, target_month: "201804").id
30.times do |n|

  target_date = "2018-04-#{n+1}"
  
  TimecardDetail.create!(
    timecard_id: tc_id,
    target_date: target_date,
    start_time: "9:00",
    end_time: "18:00",
    break_time: 60,
    kinmu_jokyo: 0)
end

tc_id = Timecard.find_by(emp_id:2, target_month: "201805").id
30.times do |n|

  target_date = "2018-05-#{n+1}"
  
  TimecardDetail.create!(
    timecard_id: tc_id,
    target_date: target_date,
    start_time: "9:00",
    end_time: "18:00",
    break_time: 60,
    kinmu_jokyo: 0)
end

# User.create!(name:  "hyuga saito",
             # email: "hyuga@gmail.com",
             # password:              "password",
             # password_confirmation: "password",
             # admin: true,
             # emp_id: 1)

# Timecard.create!(emp_id: 1, target_month: "201804")
# Timecard.create!(emp_id: 1, target_month: "201805")
# 
# tc_id = Timecard.find_by(emp_id:1, target_month: "201804").id
# 30.times do |n|
# 
  # target_date = "2018-04-#{n+1}"
#   
  # TimecardDetail.create!(
    # timecard_id: tc_id,
    # target_date: target_date,
    # start_time: "9:00",
    # end_time: "18:00",
    # break_time: 60,
    # kinmu_jokyo: 0)
# end
# 
# tc_id = Timecard.find_by(emp_id:1, target_month: "201805").id
# 30.times do |n|
# 
  # target_date = "2018-05-#{n+1}"
#   
  # TimecardDetail.create!(
    # timecard_id: tc_id,
    # target_date: target_date,
    # start_time: "9:00",
    # end_time: "18:00",
    # break_time: 60,
    # kinmu_jokyo: 0)
# end

# 申請区分
#Generic.create!(kbn: "K01", key1: 0, data1: "未申請")
#Generic.create!(kbn: "K01", key1: 1, data1: "申請中")
#Generic.create!(kbn: "K01", key1: 2, data1: "承認")

# 勤務状況
#Generic.create!(kbn: "K02", key1: 0, data1: "休日")
#Generic.create!(kbn: "K02", key1: 1, data1: "出勤")
#Generic.create!(kbn: "K02", key1: 2, data1: "欠勤")
#Generic.create!(kbn: "K02", key1: 3, data1: "有給")
