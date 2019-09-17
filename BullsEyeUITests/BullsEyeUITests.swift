import XCTest

class BullsEyeUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

  // T1: When person presses the Hit Me button,
  //    they should see a popup box
    func testPressingHitMeShowsAlert()
    {
      // 1. FIND THE ELEMENT
      let app = XCUIApplication()
      let hitMeButton = app.buttons["hit me!"]
      // 2. DO SOMETHING WITH THE ELEMENT
      hitMeButton.tap()
      // 3. Asserts
      XCTAssertNotNil(app.alerts)
      XCTAssertEqual(1, app.alerts.count)
      XCTAssertTrue(app.alerts.element(boundBy: 0).exists)
    }
  
  // T2: By default, label at top of screen says
  //    "Get as close as you can to"
  func testDefaultLevelCode()
  {
    let app = XCUIApplication()
    XCTAssertNotNil(app.staticTexts["Get as close as you can to: "].label)
  }
  
  // T3: Pressing the Start Over button resets the
  //    Socre and Round label text
  //    Round: 1
  //    Score: 0
  func testStartOverButton()
  {
    // 1. Get Start Over Button and Tap it
    let app = XCUIApplication()
    app.buttons["start over"].tap()
    // 2. Assert Round number
    XCTAssertNotNil(app.staticTexts["Round: 1"].label)
    // 3. Assert Score points
    XCTAssertNotNil(app.staticTexts["Score: 0"].label)
  }
  
  func testTypeGameMode()
  {
    XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["Type"]/*[[".segmentedControls.buttons[\"Type\"]",".buttons[\"Type\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    XCTAssertNotNil(XCUIApplication().staticTexts["Guess where the slider is: "].label)
  }
  
  func testSlideGameMode()
  {
    XCUIApplication().buttons["Slide"].tap()
    XCTAssertNotNil(XCUIApplication().staticTexts["Get as close as you can to: "].label)
  }

}
