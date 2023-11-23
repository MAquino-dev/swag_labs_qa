*** Variables ***
################## LOGIN ##################
${username}  //input[@id='user-name']
${password}  //input[@id='password']
${login_button}  //input[@id='login-button']

################## INVENTORY ##################
${logo}   //div[@class='app_logo']
${filter_by_letter}  //select[@class='product_sort_container']

${price_high_to_low}   //option[contains(text(),'Price (high to low)')]
${fleece_jacket}    //button[@id='add-to-cart-sauce-labs-fleece-jacket']
${backpack}  //button[@id='add-to-cart-sauce-labs-backpack']
${bolt_tshirt}  //button[@id='add-to-cart-sauce-labs-bolt-t-shirt']
${tshirt_red}   //button[@id='add-to-cart-test.allthethings()-t-shirt-(red)']
${bike_light}   //button[@id='add-to-cart-sauce-labs-bike-light']
${onesie}   //button[@id='add-to-cart-sauce-labs-onesie']
${shopping_cart}    //a[@class='shopping_cart_link']

${backpack_name}    //div[contains(text(),'Sauce Labs Backpack')]
${remove_backpack}  //button[@id='remove-sauce-labs-backpack']
${remove_bikelight}  //button[@id='remove-sauce-labs-bike-light']
${continue_shopping}   //button[@id='continue-shopping']   # verificar se é clicável
${checkout}  //button[@id='checkout']

################## FORMULARY ##################
${first_name}   //input[@id='first-name']
${last_name}    //input[@id='last-name']
${CEP}  //input[@id='postal-code']
${continue_button}  //input[@id='continue']

################## CHECKOUT ##################
${checkout_title}   //span[contains(text(),'Checkout: Overview')]
${sauce_labs_bike_light}    //div[contains(text(),'Sauce Labs Bike Light')]
${bikelight_name item}  //div[contains(text(),'Sauce Labs Bike Light')]
${remove_bikelight}     //button[@id='remove-sauce-labs-bike-light']
${back_to_products}   //button[@id='back-to-products']
${cart}     //a/span[@class='shopping_cart_badge']
${checkout}   //button[@id='checkout']
${finish}   //button[@id='finish']
${message}  //h2[@class='complete-header']
${home}     //button[@id='back-to-products']
${home_title_name}   //span[@class='title']