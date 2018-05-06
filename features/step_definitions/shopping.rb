Given("that i am on the main page of the Americanas store web site") do
    visit CONFIG['url']
  end
  
  When("i fill the search field with the {string}") do |product|
    @product = product 
    find_field('h_search-input').set product 
  end
  
  When("i press the search button") do
    find_button('h_search-btn').click   
  end
  
  Then("i access the search result page") do 
    find(".page-title", text: @product)
  end
  
  Then("i choose a {string}") do |string|
    find('h_search-input')
  end
  
  Then("i access the product details page") do
    
  end
  
  Then("i press the buy button") do
    
  end
  
  Then("i access the cart details page") do
    
  end
  
  Then("i choose the quantity of itens {string}") do |string|
    
  end
  
  Then("i press the continue button") do
    
  end
  
  Then("i access the payment details page") do
    
  end
  
  Then("i fill all the payment details with a credit card") do
    
  end
  
  Then("i finalize the purchase process without press the finalization button") do
    
  end