//
//  ViewController.m
//  Calc
//
//  Created by 0A3009 on 2016/03/04.
//  Copyright © 2016年 0A3009. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize countNumber;
@synthesize subTotal;
@synthesize calcFlag;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)inputNumber0:(id)sender {
    [self inputNumber:0];
}

- (IBAction)inputNumber1:(id)sender {
    [self inputNumber:1];
}

- (IBAction)inputNumber2:(id)sender {
    [self inputNumber:2];
}

- (IBAction)inputNumber3:(id)sender {
    [self inputNumber:3];
}

- (IBAction)inputNumber4:(id)sender {
    [self inputNumber:4];
}

- (IBAction)inputNumber5:(id)sender {
    [self inputNumber:5];
}

- (IBAction)inputNumber6:(id)sender {
    [self inputNumber:6];
}

- (IBAction)inputNumber7:(id)sender {
    [self inputNumber:7];
}

- (IBAction)inputNumber8:(id)sender {
    [self inputNumber:8];
}

- (IBAction)inputNumber9:(id)sender {
    [self inputNumber:9];
}


- (IBAction)additionButton:(id)sender {
    [self calc];
    self.calcFlag = 1;
}

- (IBAction)subtractionButton:(id)sender {
    [self calc];
    self.calcFlag = 2;
}

- (IBAction)multiplicationButton:(id)sender {
    [self calc];
    self.calcFlag = 3;
}

- (IBAction)divisionButton:(id)sender {
    [self calc];
    self.calcFlag = 4;
}

- (IBAction)answerButton:(id)sender {
    [self calc];
    self.calcFlag = 0;
    self.subTotal = 0;
}

- (IBAction)clearButton:(id)sender {
    self.subTotal = 0;
    self.countNumber = 0;
    self.calcFlag = 0;
    
    [self labelOutput];
}

- (void) calc{
    switch (self.calcFlag) {
        case 1:
            self.subTotal += self.countNumber;
            break;
            
        case 2:
            self.subTotal -= self.countNumber;
            break;
            
        case 3:
            self.subTotal *= self.countNumber;
            break;
            
        case 4:
            self.subTotal /= self.countNumber;
            break;
            
        default:
            self.subTotal = self.countNumber;
            break;
    }
    
    self.countNumber = self.subTotal;
    [self labelOutput];
    self.countNumber = 0;
}

- (void)inputNumber:(int) btnNum{
    self.countNumber = (self.countNumber*10) + btnNum;
    [self labelOutput];
    
}

- (void)labelOutput{
    NSString *print = [[NSString alloc] initWithFormat:@"%d", self.countNumber];
    self.numberOutput.text = print;
    
    //NSLog(@"self.calcFlag: %d", self.calcFlag);
    //NSLog(@"self.subTotal: %d", self.subTotal);
    //NSLog(@"self.countNumber: %d", self.countNumber);
    //NSLog(@"-------------------------------");
    
}
@end
