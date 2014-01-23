//
//  AttributorViewController.m
//  Attributor
//
//  Created by Denis C de Azevedo on 22/01/14.
//  Copyright (c) 2014 Denis C de Azevedo. All rights reserved.
//

#import "AttributorViewController.h"

@interface AttributorViewController ()

@property (weak, nonatomic) IBOutlet UITextView *body;
@property (weak, nonatomic) IBOutlet UILabel *headLine;
@end

@implementation AttributorViewController

- (IBAction)changeBodySelectionColorToMatchBackgroundOfButton:(UIButton *)sender {
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName
                                  value:sender.backgroundColor
                                  range:self.body.selectedRange];
}

- (IBAction)outlineBodySelection {
    [self.body.textStorage addAttributes:@{ NSStrokeWidthAttributeName: @-3,
                                            NSStrokeColorAttributeName: [UIColor blackColor] }
                                   range:self.body.selectedRange];
}

- (IBAction)unoutlineBodySelection {
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName
                                     range:self.body.selectedRange];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

@end
