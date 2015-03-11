// Hipster.m Created by mason on 2015-03-09. This file is in the public domain.

#import "Hipster.h"

@implementation Hipster

- (NSString *)hipsterFormat:(NSString *)codeFragment options:(NSDictionary *)options;
{
  NSString * prefix = @"/* BOOGIE... */\n";
  NSString * suffix = @"/* ...IN YOUR BUTT!! */\n";

  return [NSString stringWithFormat:@"%@%@%@", prefix, codeFragment, suffix, nil];
}

@end
