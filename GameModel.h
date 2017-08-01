//
//  GameModel.h
//  TwoPlayerMathGame
//
//  Created by Jaewon Kim on 2017-07-31.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GameModel : NSObject

@property NSString *question;
@property NSInteger answer;


-(void)randomQuestions;

@end
