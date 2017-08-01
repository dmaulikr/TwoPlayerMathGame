//
//  ViewController.m
//  TwoPlayerMathGame
//
//  Created by Jaewon Kim on 2017-07-31.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"
#import "Player.h"

@interface ViewController ()

@property Player *player;
@property Player *player2;
@property Player *currentPlayer;
@property GameModel *gameModel;
@property (weak, nonatomic) IBOutlet UILabel *playerOneCurrentScore;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoCurrentScore;
@property (weak, nonatomic) IBOutlet UILabel *questions;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerOneScoreView;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoScoreView;
@property (weak, nonatomic) IBOutlet UILabel *playerOneLivesView;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoLivesView;
@property (weak, nonatomic) IBOutlet UILabel *playerOneLives;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoLives;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.gameModel =  [GameModel new];
    [self.gameModel randomQuestions];
    self.questions.text = self.gameModel.question;
    self.player = [[Player alloc]init];
    self.player2 = [[Player alloc]init];
    self.currentPlayer = self.player;
    
    self.playerOneCurrentScore.text = [NSString stringWithFormat:@"%ld", (long)self.player.score];
    self.playerTwoCurrentScore.text = [NSString stringWithFormat:@"%ld", (long)self.player2.score];
    self.answerLabel.text = @"";
    self.playerOneScoreView.text = @"Player1 score";
    self.playerTwoScoreView.text = @"Player2 score";
    
    self.playerOneLivesView.text = @"player1 lives";
    self.playerOneLives.text = [NSString stringWithFormat:@"%ld", (long)self.player.lives];
    self.playerTwoLivesView.text = @"player2 lives";
    self.playerTwoLives.text = [NSString stringWithFormat:@"%ld", (long)self.player2.lives];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)numberOneButtonPressed:(id)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:@"1"];
}
- (IBAction)numberTwoButtonPressed:(id)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:@"2"];
}
- (IBAction)numberThreeButtonPressed:(id)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:@"3"];
}
- (IBAction)numberFourButtonPressed:(id)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:@"4"];
}
- (IBAction)numberFiveButtonPressed:(id)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:@"5"];
}
- (IBAction)numberSixButtonPressed:(id)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:@"6"];
}
- (IBAction)numberSevenButtonPressed:(id)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:@"7"];
}
- (IBAction)numberEightButtonPressed:(id)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:@"8"];
}
- (IBAction)numberNineButtonPressed:(id)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:@"9"];
}
- (IBAction)numberZeroButtonPressed:(id)sender {
    self.answerLabel.text = [self.answerLabel.text stringByAppendingString:@"0"];
}
- (IBAction)enterButtonPressed:(id)sender {
    
    // Get the text from the answerLabel
    
    // COnvert it to NSInteger
    NSInteger convertedInteger = [self.answerLabel.text integerValue];
    
    // Check if it is equal to the answer on the game model
    if (convertedInteger == _gameModel.answer) {
        _currentPlayer.score += 1;
    } else{
        _currentPlayer.lives -= 1;
    }
    // if equal add points to current player
    // if not equal lose life
    
    self.playerOneCurrentScore.text = [NSString stringWithFormat:@"%ld", (long)self.player.score];
    self.playerTwoCurrentScore.text = [NSString stringWithFormat:@"%ld", (long)self.player2.score];
    self.playerOneLives.text = [NSString stringWithFormat:@"%ld", (long)self.player.lives];
    self.playerTwoLives.text = [NSString stringWithFormat:@"%ld", (long)self.player2.lives];
    
    if (self.currentPlayer == self.player) {
        self.currentPlayer = self.player2;
    } else {
        self.currentPlayer = self.player;
    }
    
    
    
    self.answerLabel.text = @"";
    [self.gameModel randomQuestions];
    self.questions.text = self.gameModel.question;
    
    
}

// IBAction delete

// check if there is input
// remove last character from string


@end
