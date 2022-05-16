# Friends Fraternity App

A new Flutter project.

## Getting Started

# Creating flutter project with pkg name and platform specific language specification
flutter create -i swift -a java --org bondhu.parishad friends_fraternity_app

# Navigating to project directory
cd friends_fraternity_app/

# Opening project with vs code
code .

# Cleaning flutter project
flutter clean

# Downloading dependency
flutter pub get

# To create flutter launcher icon
- Add  dev_dependency
flutter pub run flutter_launcher_icons:main
- Run pub get
- Run Following command
flutter pub run flutter_launcher_icons:main

# To build a release apk
flutter build apk --release

# Creating material color pallete
http://mcg.mbitson.com/#!?mcgpalette0=%23ec018f#%2F

# Depositor schema
- table_depositor => nid, name, mobile_number, first_deposit_date, last_deposit_date, total_deposit, total_deposit_with_penalty, depositorship_status/isActive

  - A post request containing {nid, name, mobile_number, first_deposit_date, depositorship_status} info in body 
  and will will insert those info in table_depositor table by keeping other fields empty.
  - A get request will return all info from depositor table. it will help in finding revoked depositor.
  - A put request will update {last_deposit_date, total_deposit, total_deposit_with_penalty,    depositorship_status/isActive} fields while receiving.

- table_deposit_policy => deposit_amount, penalty, depositorship_revocation_time_limit
- table_each_month_deposit => nid, deposit_amount, penalty, date
  - A post request will populate this table
