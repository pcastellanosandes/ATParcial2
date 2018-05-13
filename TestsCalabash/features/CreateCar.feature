Feature: Create a car

  Scenario: Create a car at the begining
    Given I press the "CREATE A CAR" button
    Then I enter text "Kia Rio Spice" into field with id "edt_name"
    Then I clear input field with id "edt_initial_mileage"
    Then I enter text "3500" into field with id "edt_initial_mileage"
    Then I take a screenshot
    Then I press view with id "menu_save"
    Then I wait for 3 seconds
    Then I swipe left
    Then I wait for 3 seconds
    Then I see the text "Kia Rio Spice"

  Scenario: add another car
    Then I swipe left
    Then I wait for 3 seconds
    Then I see the text "Kia Rio Spice"
    Then I touch the "Settings" text
    Then I wait for 3 seconds
    Then I touch the "Cars" text
    Then I press view with id "menu_add_car"
    Then I enter text "Spark GT" into field with id "edt_name"
    Then I clear input field with id "edt_initial_mileage"
    Then I enter text "6400" into field with id "edt_initial_mileage"
    Then I take a screenshot
    Then I press view with id "menu_save"
    Then I wait for 3 seconds
    Then I go back
    Then I wait for 3 seconds
    Then I go back
    Then I wait for 3 seconds
    Then I swipe left
    Then I wait for 3 seconds
    Then I see the text "Kia Rio Spice"
    Then I see the text "Spark GT"
