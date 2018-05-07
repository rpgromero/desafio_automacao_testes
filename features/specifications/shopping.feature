@shopping

Feature: Validation of a buy flux of one iten from Americanas store

#Purchase flow by adding just one item to the cart
Scenario: Make an item purchase in the e-commerce of Americanas store
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