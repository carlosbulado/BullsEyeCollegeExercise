/// Copyright (c) 2019 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import Foundation

class BullsEyeGame {
  var round = 0
  let startValue = 50
  var targetValue = 50
  var scoreRound = 0
  var scoreTotal = 0
  
  init() {
    startNewGame()
  }
  
  // R1: Test that a new game is started correctly
  // Expect output: round = 0, scoreTotal = 0
  func startNewGame() {
    round = 0
    scoreTotal = 0
    startNewRound()
  }
  
  // R2: Test that a new round gets created
  // Current round counter increses by 1
  // Points for current round = 0
  // A new random target number is generated
  func startNewRound() {
    round = round + 1
    scoreRound = 0
    targetValue = 1 + (Int(arc4random()) % 100)
  }

  // R3: Check that points are calculated correctly
  // Expected output: difference between what
  //  user chose, and the desired/target value
  @discardableResult
  func check(guess: Int) -> Int {
//    let difference = abs(targetValue - guess)
    let difference = guess - targetValue
    scoreRound = 100 - difference
    scoreTotal = scoreTotal + scoreRound
    
    return difference
  }
}
