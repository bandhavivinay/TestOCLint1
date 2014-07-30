//
//  ViewController.m
//  TestOCLint1
//
//  Created by administrator on 23/07/14.
//  Copyright (c) 2014 administrator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *unusedVariable1 = @"Variable 1";
    NSString *unusedVariable2 = @"Variable 2";
    NSString *unusedVariable3 = @"Variable 3";
    
    if(true){
        
    }
    else{
        
    }
    
    int variableabovetwentyc = 1;
abc:
    switch (variableabovetwentyc) {
        case 1:
            NSLog(@"Do Nothing");
            break;
            
        default:
            break;
            
        case 2:
            NSLog(@"Second Case");
    }
    
    goto abc;
    
    for(;variableabovetwentyc>1;){
        NSLog(@"Do Nothing");
    }
    
    for(int i=0;i<2;i++){
        
    }
    
    while(1){
        
    }
    
    @try {
        
        
    }
    @catch (NSException * e) {
        NSLog(@"Exception: %@", e);
    }
    @finally {
        
    }
    
    {
        
    }
    
    NSString *variableabovetwentychar;

    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)methodWithManyParameters:(int)p1 andP2:(int)p2 andP3:(int)p3 andP4:(int)p4 andP5:(int)p5 andP6:(int)p6 andP7:(int)p7 andP8:(int)p8 andP9:(int)p9 andP10:(int)p10{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
