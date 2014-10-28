//
//  QuizViewController.m
//  Quiz
//
//  Created by Jason Hoang on 10/25/14.
//  Copyright (c) 2014 Jason Hoang. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;
@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;
@end

@implementation QuizViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //call the init method implemented by the superclass
    self =[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        /*Create two arrays filled with questions and answers
        and make pointers point to them*/
        
        self.questions = @[@"From what is cognac made?", @"What is 7+7?",@"What is the capital of Vermont?"];
        self.answers = @[@"Grapes",@"14",@"Monteplier"];
        
        
}
    //Return the address of the new object
        return self;
        
}


-(IBAction)showQuestion:(id)sender{
    
    //Step to the next question
    self.currentQuestionIndex++;
    
    //Am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]){
        
    //Go back to the first question
    self.currentQuestionIndex = 0;
    }
    
    //Get the string at that index in that questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the question label
    self.questionLabel.text = question;
    
    //reset the answer label
    self.answerLabel.text = @"???";
    
}

-(IBAction)showAnswer:(id)sender{
    
    //What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //Display it to the answer label
    self.answerLabel.text = answer;

}

@end
