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

  Scenario: update fuel type settings
    Then I swipe left
    Then I wait for 3 seconds
    Then I touch the "Settings" text
    Then I touch the "Fuel Types" text
    Then I press view with id "menu_add_fuel_type"
    Then I enter text "Gasoline" into field with id "edt_name"
    Then I enter text "Petrol" into field with id "edt_category"
    Then I press the "OK" button
    Then I see the text "Gasoline"
    Then I see the text "Petrol"
    Then I take a screenshot

  Scenario Outline: Refueling a car 1
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
    Then I press view with id "menu_save"
    Then I wait for 2 seconds
    Then I see the text <mileageResult>
    Then I see the text <volumeResult>
    Then I see the text <priceResult>
    Then I take a screenshot

    Examples:
    | mileage | volume | price | mileageResult | volumeResult | priceResult |
    |  "40"   |  "10"  |  "30" |    "40 km"    |  "10.00 l"   | "30.00 EUR" |
    |  "50"   |  "14"  |  "38" |    "50 km"    |  "14.00 l"   | "38.00 EUR" |
    |  "38"   |  "9"   |  "12" |    "38 km"    |  "9.00 l"    | "12.00 EUR" |
    |  "70"   |  "18"  |  "19" |    "70 km"    |  "18.00 l"   | "19.00 EUR" |
    |  "19"   |  "5"   |  "10" |    "19 km"    |  "5.00 l"    | "10.00 EUR" |
