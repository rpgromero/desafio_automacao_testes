Feature: Validation of an exclusion of an iten from the e-commerce cart
@excludinganitenfromcart
#Purchase flow by exluding an iten from the cart
Scenario: Excluding one iten from Americanas e-commerce cart
# Americanas main page
Given that i am on the main page of the Americanas store web site
When i fill the search field with the "mousepad"
And i press the search button
# Search result page
Then i access the search result page
Then i choose a product
# Product details page
Then i access the product details page
And i press the buy button
# Cart details page
Then i access the cart details page
Then i exclude one iten from the cart