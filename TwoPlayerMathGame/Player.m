//
//  Player.m
//  TwoPlayerMathGame
//
//  Created by Jaewon Kim on 2017-07-31.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _lives = 3;
        _score = 0;
    }
    return self;
}

-(NSInteger)playerLive{
    
    return _lives -= 1;
    
}

-(NSInteger)playerScore{
    
    return _score += 1;
    
}




@end
