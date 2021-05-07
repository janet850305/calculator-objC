//
//  ViewController.h
//  cal
//
//  Created by Chen-Chung Liu on 2020/7/22.
//  Copyright © 2020年 Chen-Chung Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
int operator;
double displaydigit;
double result;
Boolean isDecimal;

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *display;

-(void) setResultwithNum:(int)num;
-(void) Operation:(int)op;
- (IBAction)zero:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)clear:(id)sender;

- (IBAction)add:(id)sender;
- (IBAction)substract:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divid:(id)sender;

- (IBAction)dot:(id)sender;
- (IBAction)equal:(id)sender;

@end

