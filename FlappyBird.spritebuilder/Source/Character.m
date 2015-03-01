//
//  Character.m
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Character.h"
#import "GamePlayScene.h"

@implementation Character

- (void)didLoadFromCCB
{
    self.position = ccp(115, 250);
    self.zOrder = DrawingOrderHero;
    self.physicsBody.collisionType = @"character";
    self.animationManager.playbackSpeed = 2.f;
}

- (void)flap
{
    [self.physicsBody applyAngularImpulse:400.f];
}

@end
