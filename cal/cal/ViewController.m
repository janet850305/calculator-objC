//
//  ViewController.m
//  cal
//
//  Created by Chen-Chung Liu on 2020/7/22.
//  Copyright © 2020年 Chen-Chung Liu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    isDecimal=false;
    result=0;
    operator=0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) setResultwithNum:(int)num
{
    if(isDecimal==false){
        displaydigit*=10;
        displaydigit+=num;
        _display.text=[NSString stringWithFormat:@"%.0f",displaydigit];
    }
    else
    {
        NSString *text=[[NSString alloc]initWithFormat:@"%d",num];
        _display.text=[_display.text stringByAppendingString:text];
    }
    displaydigit=[_display.text floatValue];
}
-(void)Operation:(int)op{
    isDecimal=false;
    if(result==0){
        result=displaydigit;
    }
    else{
        _display.text=[NSString stringWithFormat:@"%f",result];
        switch (operator) {
            case 1:
                result+=displaydigit;
                break;
             
            case 2:
                result-=displaydigit;
                break;
                
            case 3:
                result*=displaydigit;
                break;
                
            case 4:
                result/=displaydigit;
                break;
                
            default:
                break;
        }
       
    }
    operator=op;
    displaydigit=0;
}

- (IBAction)zero:(id)sender {
    [self setResultwithNum:0];
}

- (IBAction)one:(id)sender {
    [self setResultwithNum:1];
}

- (IBAction)two:(id)sender {
    [self setResultwithNum:2];
}

- (IBAction)three:(id)sender {
    [self setResultwithNum:3];
}

- (IBAction)four:(id)sender {
    [self setResultwithNum:4];
}

- (IBAction)five:(id)sender {
    [self setResultwithNum:5];
}

- (IBAction)six:(id)sender {
    [self setResultwithNum:6];
}

- (IBAction)seven:(id)sender {
    [self setResultwithNum:7];
}

- (IBAction)eight:(id)sender {
    [self setResultwithNum:8];
}

- (IBAction)nine:(id)sender {
    [self setResultwithNum:9];
}

- (IBAction)clear:(id)sender {
   displaydigit=0;
    result=0;
    isDecimal=false;
    operator=0;
    _display.text=[NSString stringWithFormat:@"%i",0];
}

- (IBAction)add:(id)sender {
    if (result!=0) {
        [self Operation:operator];
        _display.text=[NSString stringWithFormat:@"%.2f",result];
        displaydigit=result;
        result=0;
    }
    [self Operation:1];
    
    
}

- (IBAction)substract:(id)sender {
    if (result!=0) {
        [self Operation:operator];
        _display.text=[NSString stringWithFormat:@"%.2f",result];
        displaydigit=result;
        result=0;
    }
    [self Operation:2];
}


- (IBAction)multiply:(id)sender {
    if (result!=0) {
        [self Operation:operator];
        _display.text=[NSString stringWithFormat:@"%.2f",result];
        displaydigit=result;
        result=0;
    }
    [self Operation:3];
}

- (IBAction)divid:(id)sender {
    if (result!=0) {
        [self Operation:operator];
        _display.text=[NSString stringWithFormat:@"%.2f",result];
        displaydigit=result;
        result=0;
    }
    [self Operation:4];
}

- (IBAction)dot:(id)sender {

   isDecimal = true;
    NSRange range = [_display.text rangeOfString:@"."];
    if(range.location==NSNotFound){
        _display.text=[_display.text stringByAppendingString:@"."];
   
    }
}

- (IBAction)equal:(id)sender {
    [self Operation:operator];
    _display.text=[NSString stringWithFormat:@"%f",result];
    
}
@end
