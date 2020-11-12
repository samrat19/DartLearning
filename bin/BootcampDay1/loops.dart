void runForLoop() {

  outerLoop: for (var i = 0; i < 5; i++) {
    print('Inner loop: ${i}');
    innerLoop: for (var j = 0; j < 5; j++) {
      if (j > 3 ) break ;

      // Quit the innermost loop
      if (i == 2) break innerLoop;

      // Do the same thing
      if (i == 4) break outerLoop;

      // Quit the outer loop
      print('Inner loop: ${j}');
    }
  }
}