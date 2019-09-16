import XCTest

// 1. Tell the test case about what project you want to test
// Give this file access to the functions and variables in the project
@testable import BullsEye

class BullsEyeTests: XCTestCase {
  
  // 2. Create the global variable for BullsEyeGame
  //       -JAVA: BullEyesGame game;
  var game: BullsEyeGame!
  
  override func setUp() {
    super.setUp()
    // 3. Initialize the global variable
    // -  JAVA: game = new BullEyeGame();
    game = BullsEyeGame();
  }
  
  override func tearDown() {
    // 4. close the game
    game = nil
    super.tearDown()
  }
  
  // R1: Test that a new game is started correctly
  // Expect output - round = 1, totalPoints = 0
  // Expected output is actually that round = 1, not 0
  func testStartNewGame() {
    // 1. Start a new game
    game.startNewGame()
    // 2. Check that starting round number = 1
    XCTAssertEqual(1, game.round)
    // 3. Check that total starting points = 0
    XCTAssertEqual(0, game.scoreTotal)
  }
  /*
   round = round + 1
   scoreRound = 0
   targetValue = 1 + (Int(arc4random()) % 100)
 */
  func testStartNewRound()
  {
    game.startNewGame()
    let roundNumber = game.round
    game.startNewRound()
    XCTAssertEqual(roundNumber + 1, game.round)
    XCTAssertEqual(0, game.scoreRound)
    XCTAssertTrue(1 <= game.targetValue && 100 >= game.targetValue)
  }
  
  
}
