//
//  objc_temperature_converterUITests.m
//  objc temperature converterUITests
//
//  Created by Brian Ho on 15/02/2017.
//  Copyright © 2017 Brian Ho. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface objc_temperature_converterUITests : XCTestCase

@end

@implementation objc_temperature_converterUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testUIFarenheitToCelcius {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Fahrenheit to Celsius"] tap];
    
    XCUIElement *textField = [[app.otherElements containingType:XCUIElementTypeImage identifier:@"temperature_converter"] childrenMatchingType:XCUIElementTypeTextField].element;
    [textField tap];
    [textField typeText:@"31"];
    [app.buttons[@"Return"] tap];
    [app.buttons[@"Convert"] tap];
    
    
}


- (void)testUICelciusToFarenheit {

    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.buttons[@"Celsius to Fahrenheit"] tap];
    
    XCUIElement *textField = [[app.otherElements containingType:XCUIElementTypeImage identifier:@"temperature_converter"] childrenMatchingType:XCUIElementTypeTextField].element;
    [textField tap];
    //[app.keys[@"3"] tap];
    [textField typeText:@"32"];
    //[app.keys[@"2"] tap];
    //[textField typeText:@"2"];
    [app.buttons[@"Return"] tap];
    //[app typeText:@"\n"];
    [app.buttons[@"Convert"] tap];
    
    
}


@end









