//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "JSQMessagesToolbarButtonFactory.h"

#import "UIColor+JSQMessages.h"
#import "UIImage+JSQMessages.h"


@implementation JSQMessagesToolbarButtonFactory

+ (UIButton *)defaultAccessoryButtonItem
{
    UIImage *accessoryImage = [UIImage jsq_defaultAccessoryImage];
    UIImage *normalImage = [accessoryImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *highlightedImage = [accessoryImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *accessoryButton = [[UIButton alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 34.0f, 32.0f)];
    [accessoryButton setImage:normalImage forState:UIControlStateNormal];
    [accessoryButton setImage:highlightedImage forState:UIControlStateHighlighted];
    
    accessoryButton.contentMode = UIViewContentModeScaleAspectFit;
    accessoryButton.backgroundColor = [UIColor clearColor];
    accessoryButton.tintColor = [UIColor lightGrayColor];
    
    return accessoryButton;
}

+ (UIButton *)defaultSendButtonItem
{
    NSString *sendTitle = NSLocalizedStringFromTable(@"Send", @"JSQMessages", @"Text for the send button on the messages view toolbar");
    
    UIButton *sendButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [sendButton setTitle:sendTitle forState:UIControlStateNormal];
    [sendButton setTitleColor:[UIColor jsq_messageBubbleBlueColor] forState:UIControlStateNormal];
    [sendButton setTitleColor:[[UIColor jsq_messageBubbleBlueColor] jsq_colorByDarkeningColorWithValue:0.1f] forState:UIControlStateHighlighted];
    [sendButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
    
    sendButton.titleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    sendButton.titleLabel.adjustsFontSizeToFitWidth = YES;
    sendButton.titleLabel.minimumScaleFactor = 0.85f;
    sendButton.contentMode = UIViewContentModeCenter;
    sendButton.backgroundColor = [UIColor clearColor];
    sendButton.tintColor = [UIColor jsq_messageBubbleBlueColor];
    
    CGFloat maxHeight = 32.0f;
    
    CGRect sendTitleRect = [sendTitle boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, maxHeight)
                                                   options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                                attributes:@{ NSFontAttributeName : sendButton.titleLabel.font }
                                                   context:nil];
    
    sendButton.frame = CGRectMake(0.0f,
                                  0.0f,
                                  CGRectGetWidth(CGRectIntegral(sendTitleRect)),
                                  maxHeight);
    
    return sendButton;
}

+ (UIButton *)defaultSaveButtonItem
{
    NSString *saveTitle = NSLocalizedStringFromTable(@"Save", @"JSQMessages", @"Text for the save button on the messages view toolbar");
    
    UIButton *saveButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [saveButton setTitle:saveTitle forState:UIControlStateNormal];
    [saveButton setTitleColor:[UIColor jsq_messageBubbleBlueColor] forState:UIControlStateNormal];
    [saveButton setTitleColor:[[UIColor jsq_messageBubbleBlueColor] jsq_colorByDarkeningColorWithValue:0.1f] forState:UIControlStateHighlighted];
    [saveButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
    
    saveButton.titleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    saveButton.titleLabel.adjustsFontSizeToFitWidth = YES;
    saveButton.titleLabel.minimumScaleFactor = 0.85f;
    saveButton.contentMode = UIViewContentModeCenter;
    saveButton.backgroundColor = [UIColor clearColor];
    saveButton.tintColor = [UIColor jsq_messageBubbleBlueColor];
    
    return saveButton;
}

+ (UIButton *)defaultNoteButtonItem
{
    UIImage *accessoryImage = [UIImage jsq_defaultNoteImage];
    UIImage *normalImage = [accessoryImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *highlightedImage = [accessoryImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *noteButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [noteButton setImage:normalImage forState:UIControlStateNormal];
    [noteButton setImage:highlightedImage forState:UIControlStateHighlighted];
    
    noteButton.contentMode = UIViewContentModeScaleAspectFit;
    noteButton.backgroundColor = [UIColor clearColor];
    noteButton.tintColor = [UIColor lightGrayColor];
    
    return noteButton;
}

+ (UIButton *)defaultCloseButtonItem
{
    UIImage *closeImage = [UIImage jsq_defaultCloseImage];
    UIImage *normalImage = [closeImage jsq_imageMaskedWithColor:[UIColor lightGrayColor]];
    UIImage *highlightedImage = [closeImage jsq_imageMaskedWithColor:[UIColor darkGrayColor]];
    
    UIButton *closeButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [closeButton setImage:normalImage forState:UIControlStateNormal];
    [closeButton setImage:highlightedImage forState:UIControlStateHighlighted];
    
    closeButton.contentMode = UIViewContentModeScaleAspectFit;
    closeButton.backgroundColor = [UIColor clearColor];
    closeButton.tintColor = [UIColor lightGrayColor];
    
    return closeButton;
}


+ (UIButton *)defaultXButtonItem
{
    NSString *xTitle = @"X";
    
    UIButton *xButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [xButton setTitle:xTitle forState:UIControlStateNormal];
    [xButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [xButton setTitleColor:[[UIColor blackColor] jsq_colorByDarkeningColorWithValue:0.1f] forState:UIControlStateHighlighted];
    [xButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
    
    xButton.titleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    xButton.titleLabel.adjustsFontSizeToFitWidth = YES;
    xButton.titleLabel.minimumScaleFactor = 0.85f;
    xButton.contentMode = UIViewContentModeCenter;
    xButton.backgroundColor = [UIColor clearColor];
    xButton.tintColor = [UIColor jsq_messageBubbleBlueColor];
    
    return xButton;
}
@end
