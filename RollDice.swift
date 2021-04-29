/*
This program gets the range of random number,
generates and shows a random number between 1 to max value using procedure
author  Jay Lee
version 1.0
since   2020-04-28
*/

func RollDie(maxValue: Int) {
  // Generate random number between 1 to max value
  let randomNumber = Int.random(in: 1...maxValue)
  // Output
  print("The random number is \(randomNumber).")
}


enum InvalidInputError : Error {
  case invalidInput
}

// Input
print("Choose the range (1 to ?): ", terminator: "")
do {
  guard let rangeNumber = Int(readLine()!) else{
    throw InvalidInputError.invalidInput
  }
  if (rangeNumber >= 1) {
    RollDie(maxValue: rangeNumber)
  } else {
    print("Out of range")
  }
} catch {
  print("Invalid input!")
}
print("\nDone.")
