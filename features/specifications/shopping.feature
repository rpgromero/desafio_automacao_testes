@shopping

Feature: Validation of a purchase flux of itens from Americanas store

#Purchase flow by adding just one iten to the cart
Scenario: Buying an iten from Americanas e-commerce
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
And i choose the itens quantity "1" 
And i press the continue button
# Payment details page
Then i access the payment details page
And i fill all the payment details with a credit card
Then i finalize the purchase process without press the finalization button

@shoppingwithtwoitens
#Purchase flow by adding two itens to the cart
Scenario: Buying two itens from Americanas e-commerce
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
And i choose the itens quantity "2" 
And i press the continue button
# Payment details page
Then i access the payment details page
And i fill all the payment details with a credit card
Then i finalize the purchase process without press the finalization button