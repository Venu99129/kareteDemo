Feature: delete booking

  Background:
    * def responseOfCreateToken = call read("classpath://features/createToken.feature")
    * def responseOfCreateBooking = call read("classpath://features/PostBooking.feature")

  Scenario: Verify user can delete booking
    Given url host
    And path "/booking/"+responseOfCreateBooking.response.bookingid
    And header Cookie = "token="+responseOfCreateToken.response.token
    When method delete
    Then status 201
    And print response

    Given url host
    And header Accept = "application/json"
    And path "/booking/"+responseOfCreateBooking.response.bookingid
    When method Get
    Then print response
    Then status 404

#  Scenario: verify user can retrieve of bookings

