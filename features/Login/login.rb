def DoLogin 
# Visiting Americanas store homepage
visit CONFIG['url']
# Pressing the Enter button
find("#h_user").click
find("#h_usr-signin").click
# Verifying the title of the page
find(".entrar-title > span", text:"Login do Cliente") 
# Fill the e-mail field
find_field(".email-input").set CONFIG['user']
# Fill the password field
find_field(".password-input").set CONFIG['password']
# Pressing the Continue button
find_button('login-button').click
end  