//
//  ViewController.h
//  Calc
//
//  Created by 0A3009 on 2016/03/04.
//  Copyright © 2016年 0A3009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)inputNumber0:(id)sender;
- (IBAction)inputNumber1:(id)sender;
- (IBAction)inputNumber2:(id)sender;
- (IBAction)inputNumber3:(id)sender;
- (IBAction)inputNumber4:(id)sender;
- (IBAction)inputNumber5:(id)sender;
- (IBAction)inputNumber6:(id)sender;
- (IBAction)inputNumber7:(id)sender;
- (IBAction)inputNumber8:(id)sender;
- (IBAction)inputNumber9:(id)sender;

- (IBAction)additionButton:(id)sender;
- (IBAction)subtractionButton:(id)sender;
- (IBAction)multiplicationButton:(id)sender;
- (IBAction)divisionButton:(id)sender;
- (IBAction)answerButton:(id)sender;
- (IBAction)clearButton:(id)sender;

@property (nonatomic, weak) IBOutlet UILabel *numberOutput;
@property (nonatomic) int countNumber;
@property (nonatomic) int subTotal;
@property (nonatomic) int calcFlag;

@end

