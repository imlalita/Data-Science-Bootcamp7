play_game <- function() {
  
  print("Welcome to 'Pao Ying Chub Game'")
  print("Instuctions : type the number '0,2,5' for 'hammer = 0' 'scissor = 2' 'paper = 5'")
  print("You can type 'exit' to exit the program")
  options <- c(0,2,5)
  
  user <- 0
  computer <- 0
  
  while (TRUE) {
    print("'hammer = 0' 'scissor = 2' 'paper = 5'")
    user_select <- readline("Choose one: ")
    computer_select <- sample(options, 1)
    
    if (user_select == computer_select) {
      print("tie!") 
    } else if (user_select == 0 & computer_select == 2){
      print("Win!")
      user <- user + 1
    } else if (user_select == 2 & computer_select == 5){
      print("Win!")
      user <- user + 1
    } else if (user_select == 5 & computer_select == 0){
      print("Win!")
      user <- user + 1
    } else if (user_select == 2 & computer_select == 0){
      print("Lose!")
      computer <- computer + 1
    } else if (user_select == 5 & computer_select == 2){
      print("Lose!")
      computer <- computer + 1
    } else if (user_select == 0 & computer_select == 5){
      print("Lose!")
      computer <- computer + 1
    } else if(user_select == "exit"){
      print("Thanks for playing")
      break
    } else {
      print("Something went wrong. Please try again")
    } 
  }
  ##score
  print(paste("User_Score : ",user))
  print(paste("Computer_Score : ",computer))
  
  if(user < computer){
    print("Computer so strong. Maybe It's not your lucky day.")
  } else if (user > computer){
    print("User so strong. It's your lucky day.")
  } else {
    print("We're so strong. We're lucky day.")
  }
}

play_game()
