Feature: Manage a car

  Scenario: Create a car at the begining
    Given I press the "CREATE A CAR" button
    Then I enter text "Kia Rio Spice" into field with id "edt_name"
    Then I clear input field with id "edt_initial_mileage"
    Then I enter text "3500" into field with id "edt_initial_mileage"
	Then I take a screenshot
    Then I press view with id "menu_save"
    Then I wait for 1 seconds
    Then I swipe left
    Then I wait for 1 seconds
    Then I see the text "Kia Rio Spice"

  Scenario: add another car
    Then I swipe left
    Then I wait for 1 seconds
    Then I see the text "Kia Rio Spice"
    Then I touch the "Settings" text
    Then I touch the "Cars" text
    Then I press view with id "menu_add_car"
    Then I enter text "Spark GT" into field with id "edt_name"
    Then I clear input field with id "edt_initial_mileage"
    Then I enter text "6400" into field with id "edt_initial_mileage"
    Then I go back
    Then I take a screenshot
    Then I press view with id "menu_save"
    Then I wait for 1 seconds
    Then I take a screenshot
    Then I go back
    Then I wait for 1 seconds
    Then I go back
    Then I wait for 1 seconds
    Then I swipe left
    Then I wait for 1 seconds
    Then I see the text "Kia Rio Spice"
    Then I see the text "Spark GT"

  Scenario: update fuel type settings
    Then I swipe left
    Then I wait for 1 seconds
    Then I touch the "Settings" text
    Then I touch the "Fuel Types" text
    Then I press view with id "menu_add_fuel_type"
    Then I enter text "Gasoline" into field with id "edt_name"
    Then I enter text "Petrol" into field with id "edt_category"
    Then I take a screenshot
	Then I press the "OK" button
    Then I see the text "Gasoline"
    Then I see the text "Petrol"
    Then I take a screenshot

  Scenario Outline: Refueling a car
    Then I wait for 1 seconds
    Then I swipe left
    Then I wait for 1 seconds
    Then I touch the "Kia Rio Spice" text
    Then I press image button number 2
    Then I wait for 1 seconds
    Then I press image button number 4
    Then I press view with id "text1"
    Then I wait for 1 seconds
    Then I enter text <mileage> into field with id "edt_mileage"
    Then I enter text <volume> into field with id "edt_volume"
    Then I enter text <price> into field with id "edt_price"
    Then I go back
    Then I press view with id "edt_date"
    Then I wait for 1 seconds
    Then I set the date to <date> on DatePicker with index 1
    Then I press the "OK" button
    Then I wait for 1 seconds
    Then I press view with id "edt_time"
    Then I set the time to <hour> on TimePicker with index 1
    Then I press the "OK" button
    Then I wait for 1 seconds
    Then I take a screenshot
    Then I press view with id "menu_save"
    Then I wait for 1 seconds
    Then I see the text <mileageResult>
    Then I see the text <volumeResult>
    Then I see the text <priceResult>
    Then I see the text <dateView>
    Then I take a screenshot

    Examples:
    | mileage | volume | price |      date    |  dateView   |  hour    | mileageResult | volumeResult | priceResult |
    |  "40"   |  "10"  |  "30" | "05-06-2017" | "6/5/17"    | "12:30"  |    "40 km"    |  "10.00 l"   | "30.00 EUR" |


  Scenario Outline: Add other expenditure
    Then I wait for 1 seconds
    Then I swipe left
    Then I wait for 1 seconds
    Then I touch the "Kia Rio Spice" text
    Then I press image button number 2
    Then I wait for 1 seconds
    Then I press image button number 3
    Then I press view with id "text1"
    Then I wait for 1 seconds
    Then I enter text <title> into field with id "edt_title"
    Then I enter text <mileage> into field with id "edt_mileage"
    Then I enter text <price> into field with id "edt_price"
    Then I go back
    Then I press view with id "edt_date"
    Then I wait for 1 seconds
    Then I set the date to <date> on DatePicker with index 1
    Then I press the "OK" button
    Then I wait for 1 seconds
    Then I press view with id "edt_time"
    Then I set the time to <hour> on TimePicker with index 1
    Then I press the "OK" button
    Then I wait for 1 seconds
    Then I take a screenshot
    Then I press view with id "menu_save"
    Then I wait for 1 seconds
    Then I touch the "OTHER EXPENDITURES" text
    Then I see the text <title>
    Then I see the text <mileageResult>
    Then I see the text <priceResult>
    Then I see the text <dateView>
    Then I take a screenshot
    Examples:
    | title                 | mileage | price |      date    |  dateView   |   hour   | mileageResult | priceResult |
    |  "Repair engine"      |  "10"   |  "30" | "05-06-2017" |   "6/5/17"  | "12:30"  |    "10 km"    | "30.00 EUR" |


  Scenario Outline: Add other income
    Then I wait for 1 seconds
    Then I swipe left
    Then I wait for 1 seconds
    Then I touch the "Kia Rio Spice" text
    Then I press image button number 2
    Then I wait for 1 seconds
    Then I press image button number 2
    Then I press view with id "text1"
    Then I wait for 1 seconds
    Then I enter text <title> into field with id "edt_title"
    Then I enter text <mileage> into field with id "edt_mileage"
    Then I enter text <price> into field with id "edt_price"
    Then I go back
    Then I press view with id "edt_date"
    Then I wait for 1 seconds
    Then I set the date to <date> on DatePicker with index 1
    Then I press the "OK" button
    Then I wait for 1 seconds
    Then I press view with id "edt_time"
    Then I set the time to <hour> on TimePicker with index 1
    Then I press the "OK" button
    Then I wait for 1 seconds
    Then I take a screenshot
    Then I press view with id "menu_save"
    Then I wait for 1 seconds
    Then I touch the "OTHER INCOME" text
    Then I see the text <title>
    Then I see the text <mileageResult>
    Then I see the text <priceResult>
    Then I see the text <dateView>
    Then I take a screenshot

    Examples:
    | title   | mileage | price |      date    |   dateView   |   hour   | mileageResult | priceResult |
    |  "Uber" |  "14"   |  "88" | "24-04-2018" |    "4/24/18" | "10:28"  |    "14 km"    | "88.00 EUR" |
