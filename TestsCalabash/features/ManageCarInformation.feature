Feature: Manage a car

  Scenario: Create a car at the begining
    Given I press the "CREATE A CAR" button
    Then I enter text "Kia Rio Spice" into field with id "edt_name"
    Then I clear input field with id "edt_initial_mileage"
    Then I enter text "3500" into field with id "edt_initial_mileage"
    Then I press view with id "menu_save"
    Then I wait for 3 seconds
    Then I swipe left
    Then I wait for 3 seconds
    Then I see the text "Kia Rio Spice"

  #Scenario: update fuel type settings
  #  Then I swipe left
  #  Then I wait for 3 seconds
  #  Then I touch the "Settings" text
  #  Then I touch the "Fuel Types" text
  #  Then I press view with id "menu_add_fuel_type"
  #  Then I enter text "Gasoline" into field with id "edt_name"
  #  Then I enter text "Petrol" into field with id "edt_category"
  #  Then I press the "OK" button
  #  Then I see the text "Gasoline"
  #  Then I see the text "Petrol"
  #  Then I take a screenshot

  Scenario Outline: Refueling a car
    Then I wait for 3 seconds
    Then I swipe left
    Then I wait for 3 seconds
    Then I touch the "Kia Rio Spice" text
    Then I press image button number 2
    Then I wait for 2 seconds
    Then I press image button number 4
    Then I wait for 2 seconds
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
    Then I press view with id "menu_save"
    Then I wait for 2 seconds
    Then I see the text <mileageResult>
    Then I see the text <volumeResult>
    Then I see the text <priceResult>
    Then I take a screenshot

    Examples:
    | mileage | volume | price |      date    |  hour    | mileageResult | volumeResult | priceResult |
    |  "40"   |  "10"  |  "30" | "05-06-2017" | "12:30"  |    "40 km"    |  "10.00 l"   | "30.00 EUR" |
    |  "50"   |  "14"  |  "38" | "05-01-2018" | "10:28"  |    "50 km"    |  "14.00 l"   | "38.00 EUR" |
    |  "38"   |  "9"   |  "12" | "14-02-2018" | "11:53"  |    "38 km"    |  "9.00 l"    | "12.00 EUR" |
    |  "70"   |  "18"  |  "19" | "22-03-2018" | "08:12"  |    "70 km"    |  "18.00 l"   | "19.00 EUR" |
    |  "19"   |  "5"   |  "10" | "13-05-2018" | "09:32"  |    "19 km"    |  "5.00 l"    | "10.00 EUR" |


  #  Scenario Outline: Add other expenditure
  #    Then I wait for 3 seconds
  #    Then I swipe left
  #    Then I wait for 3 seconds
  #    Then I touch the "Kia Rio Spice" text
  #    Then I press image button number 2
  #    Then I wait for 2 seconds
  #    Then I press image button number 3
  #    Then I wait for 2 seconds
  #    Then I enter text <title> into field with id "edt_title"
  #    Then I enter text <mileage> into field with id "edt_mileage_input_layout"
  #    Then I enter text <price> into field with id "edt_price"
  #    Then I press view with id "menu_save"
  #    Then I wait for 2 seconds
  #    Then I see the text <mileageResult>
  #    Then I see the text <volumeResult>
  #    Then I see the text <priceResult>
  #    Then I take a screenshot
#
  #    Examples:
  #    | title   | mileage | price | mileageResult | volumeResult | priceResult |
  #    |  "40"   |  "10"   |  "30" |    "40 km"    |  "10.00 l"   | "30.00 EUR" |
  #    |  "50"   |  "14"   |  "38" |    "50 km"    |  "14.00 l"   | "38.00 EUR" |
  #    |  "38"   |  "9"    |  "12" |    "38 km"    |  "9.00 l"    | "12.00 EUR" |
  #    |  "70"   |  "18"   |  "19" |    "70 km"    |  "18.00 l"   | "19.00 EUR" |
  #    |  "19"   |  "5"    |  "10" |    "19 km"    |  "5.00 l"    | "10.00 EUR" |
