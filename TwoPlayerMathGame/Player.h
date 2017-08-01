//
//  Player.h
//  TwoPlayerMathGame
//
//  Created by Jaewon Kim on 2017-07-31.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger lives;
@property NSInteger score;
@property NSInteger numberIndex;

-(NSInteger)playerLive;

-(NSInteger)playerScore;


@end
