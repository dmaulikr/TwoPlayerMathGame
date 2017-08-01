//
//  GameModel.m
//  TwoPlayerMathGame
//
//  Created by Jaewon Kim on 2017-07-31.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

-(void)randomQuestions{
    NSInteger leftValue = arc4random_uniform(20)+1;
    NSInteger rightValue = arc4random_uniform(20)+1;
    NSString *leftNumber = [NSString stringWithFormat:@"%li",(long)leftValue];
    NSString *rightNumber = [NSString stringWithFormat:@"%li",(long)rightValue];
    _question = [NSString stringWithFormat:@"%@ + %@",leftNumber,rightNumber];
    
    _answer = leftValue + rightValue;
    
}

@end
