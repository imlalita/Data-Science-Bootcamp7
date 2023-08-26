Drink_bot <- function() {
  
  print("Welcome to Drink_bot 📢")
  
  name = readline("What's your name: ")
  print(paste("Hello", name,"!", "Nice to meet you"))
  
  job = readline("What's your job: ")
  print(paste("WOW! You're", job, ",So Cool👏"))
  
  print("I'm here to help you choose Your Drink today.")
  
  while (TRUE) {
    drink = readline("What do you want to drink today 'A: Caffeine' 'B: Non Caffeine'? :")
    if (drink == "A") {
      print(paste("Let's go with Caffeine menu."))
    } else if (drink == "B"){ 
      print(paste("Let's go with Non Caffeine menu."))
    } else {
      print("You're type something wrong but I recommened 'Thai Tea frappe' or 'Avocado Smoothie', If you want to try again Please type 'Drink_bot'")
      break
    }
    
    sweet = readline("What level of sweetness do you want '100' '50' '25' '0'?: ")
    if(drink == "A" & sweet == "100") {
      print(paste("Your Drink today is White Choc Macchiato"))
    } else if(drink == "A" & sweet == "50") {
      print("Your Drink today is Green Tea Latte") 
    } else if(drink == "A" & sweet == "25") {
      print("Your Drink today is Yuzu orange coffee") 
    } else if(drink == "A" & sweet == "0") { 
      print("Your Drink today is Americano") 
    } else if(drink == "B" & sweet == "100") {
      print("Your Drink today is Strawberry Cheesecake") 
    } else if(drink == "B" & sweet == "50") {
      print("Your Drink today is Strawberry Smoothie") 
    } else if(drink == "B" & sweet == "25") {
      print("Your Drink today is Chocolate frappe") 
    } else if (drink == "B" & sweet == "0"){
      print("Your Drink today is Dark Chocolate frappe") 
    } else {
      print("You're type something wrong but I recommened 'Thai Tea frappe' or 'Avocado Smoothie' for you today, If you want to try again Please type 'Drink_bot.")
    }
    
    print("Enjoy your Drink. Thanks for using Drink_bot, Have a nice day.") 
    break }}

Drink_bot()
