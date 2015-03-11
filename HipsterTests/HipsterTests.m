// HipsterTestHostTests.m Created by mason on 2015-03-11. This file is in the public domain.

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Hipster.h"


@interface HipsterTests : XCTestCase
@property Hipster      * hipster;
@property NSDictionary * options;
@property NSString     * input;
@property NSString     * expectedOutput;
@property NSString     * actualOutput;
@end


@implementation HipsterTests

- (void)loadFixture:(NSString *)resourceIdentifier
{
    NSBundle * bundle    = [NSBundle bundleForClass:self.class];
    NSURL    * inputURL  = [bundle URLForResource:resourceIdentifier withExtension:@"input"];
    NSURL    * outputURL = [bundle URLForResource:resourceIdentifier withExtension:@"output"];
    
    _hipster         = [Hipster new];
    _options         = nil; // for now
    _input           = [[NSString alloc] initWithContentsOfURL:inputURL encoding:NSUTF8StringEncoding error:NULL];
    _expectedOutput  = [[NSString alloc] initWithContentsOfURL:outputURL encoding:NSUTF8StringEncoding error:NULL];
    _actualOutput    = [_hipster hipsterFormat:_input options:_options];
}

- (void)test_method_with_assignments
{
    [self loadFixture:@"method-with-assignments"];
    XCTAssertEqualObjects(_actualOutput, _expectedOutput);
}

- (void)test_property_declaration
{
    [self loadFixture:@"property-declaration"];
    XCTAssertEqualObjects(_actualOutput, _expectedOutput);
}

@end
