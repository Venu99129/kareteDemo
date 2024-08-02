Feature: post booking
  Scenario: verify user can create booking
    Given url host
    And path "/booking"
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
#    And request { "firstname" : "jamakaya", "lastname" : "jampandu", "totalprice" : 111, "depositpaid" : true, "bookingdates" : { "checkin" : "2018-01-01", "checkout" : "2019-01-01" }, "additionalneeds" : "Breakfast" }

    * def body = read("classpath://json//create_booking.json")
    And request body
    When method post
    Then status 200
    And print response