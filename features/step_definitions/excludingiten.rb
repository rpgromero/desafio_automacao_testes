  Then("i exclude one iten from the cart") do
   find(".basket-productRemoveAct").click
   find(".basket-empty > h2", text: "sua cesta está vazia")
  end