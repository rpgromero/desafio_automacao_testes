Given("that i am on the main page of the Americanas store web site") do
    visit CONFIG['url']
    DoLogin()
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
  
  Then("i choose a product") do
    @chosen_product = find('.product-grid > div:nth-child(1)')
    @chosen_product_name = @chosen_product.find('.card-product-name').text  
    @chosen_product.click  
  end
  
  Then("i access the product details page") do
    expect(@chosen_product_name).to eq (find('.card-title > h1.product-name').text)
    find_link('btn-buy')
  end
  
  Then("i press the buy button") do
    find_link('btn-buy').click
  end
  
  Then("i access the cart details page") do
    expect(@chosen_product_name).to match (/#{find('.basket-productTitle > a').text}/i)
    find('.page-title', text:"minha cesta")
  end
  
  Then("i choose the itens quantity {string}") do |itens_quantity|
    find('.select__quantity').find(:option, itens_quantity).select_option
  end
  
  Then("i press the continue button") do
    find_button('buy-button').click   
  end
  
  Then("i access the payment details page") do
    find('h3.panel-title', text:"endereço de entrega")
  end
  
  Then("i fill all the payment details with a credit card") do
    # Selecting the Credit Card option
    find(:xpath, '//*[@id="payment-option-menu-CREDIT_CARD"]/a/span[2]')
    # Filling the fields with Credit Card information
    find_field("creditCard-cardNumber").set CONFIG['credit_card_number']
    find_field("creditCardCardName").set CONFIG['credit_card_name']
    select('2',from: "creditCard-ccMonth")
    select('2019',from: "creditCard-ccYear")
    find_field("creditCardCardSecurityCode").set CONFIG['credit_card_security_number']
    find_field("creditCardCardInstallment").set "1"
    sleep 5
  end
  
  Then("i finalize the purchase process without press the finalization button") do
    #Commented to don't finalize the purchase flux!
    #find_button('payment-credit-card').click
  end