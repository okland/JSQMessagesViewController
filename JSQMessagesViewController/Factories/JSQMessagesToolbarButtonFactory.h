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

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  `JSQMessagesToolbarButtonFactory` is a factory that provides a means for creating the default
 *  toolbar button items to be displayed in the content view of a `JSQMessagesInputToolbar`.
 */
@interface JSQMessagesToolbarButtonFactory : NSObject

/**
 *  Creates and returns a new button that is styled as the default accessory button. 
 *  The button has a paper clip icon image and no text.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultAccessoryButtonItem;

/**
 *  Creates and returns a new button that is styled as the default send button. 
 *  The button has title text `@"Send"` and no image.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultSendButtonItem;

/**
 *  Creates and returns a new button that is styled as the default save button.
 *  The button has title text `@"Save"` and no image.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultSaveButtonItem;

/**
 *  Creates and returns a new button that is styled as the default note button.
 *  The button has a create note icon image and no text.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultNoteButtonItem;

/**
 *  Creates and returns a new button that is styled as the default close button.
 *  The button has a create close icon image and no text.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultCloseButtonItem;

/**
 *  Creates and returns a new button that is styled as the default X button.
 *  The button has a X text in it.
 *
 *  @return A newly created button.
 */
+ (UIButton *)defaultXButtonItem;

@end
