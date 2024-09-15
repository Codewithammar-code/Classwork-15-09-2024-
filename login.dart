import 'dart:io';

void main() {

  const correctUsername = 'admin';
  const correctPassword = 'password123';
  
  
  int attemptCounter = 0;
  const maxAttempts = 3;

  while (attemptCounter < maxAttempts) {
    // Read username and password from user
    stdout.write('Enter Username: ');
    String username = stdin.readLineSync()!;
    
    stdout.write('Enter Password: ');
    String password = stdin.readLineSync()!;
    
    // Check login details
    if (username == correctUsername && password == correctPassword) {
      print('Login Successful!');
      return; // Exit the program if login is successful
    } else {
      attemptCounter++;
      if (attemptCounter < maxAttempts) {
        print('Incorrect Username or Password. Try Again.');
        print('Attempts left: ${maxAttempts - attemptCounter}');
      }
    }
  }
  
  // If max attempts are reached, show the blocked message
  print('Your account has been blocked.');
}
