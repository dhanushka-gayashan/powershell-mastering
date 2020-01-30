Function showMainMenu ($message) {
    clear
    echo "Main Menu"
    echo "========="
    echo "Choose your option"
    echo "01 - Foods"
    echo "02 - Drinks"
    echo "03 - Quit" 
    echo "`n $message"
    
    switch (Read-Host) {
        1 {showFoodMenu}
        2 {showDrinkMenu}
        3 {break}
        default {showMainMenu("Error: You did not choose a valid option")}
    }    
}

Function showFoodMenu ($message) {
    clear
    echo "Food Menu"
    echo "========="
    echo "Choose your option"
    echo "01 - Burger"
    echo "02 - Rice"
    echo "03 - Main Menu" 
    echo "`n $message"
    
    switch (Read-Host) {
        1 {showFoodMenu("You have selected Burger")}
        2 {showFoodMenu("You have selected Rice")}
        3 {showMainMenu}
        default {showFoodMenu("You have not selected valid option")}
    }   
}

Function showDrinkMenu ($message) {
    clear
    echo "Drinks Menu"
    echo "==========="
    echo "Choose your option"
    echo "01 - Soft Drinks"
    echo "02 - Hot Drinks"
    echo "03 - Main Menu" 
    echo "`n $message"
    
    switch (Read-Host) {
        1 {showDrinkMenu("You have selected Soft Drinks")}
        2 {showDrinkMenu("You have selected Hot Drinks")}
        3 {showMainMenu}
        default {showFoodMenu("You have not selected valid option")}
    }  
}

showMainMenu