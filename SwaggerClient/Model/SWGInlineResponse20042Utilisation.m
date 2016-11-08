#import "SWGInlineResponse20042Utilisation.h"

@implementation SWGInlineResponse20042Utilisation

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"date": @"date", @"name": @"name", @"relations": @"relations", @"assigned": @"assigned", @"unassigned": @"unassigned", @"capacity": @"capacity" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"date", @"name", @"relations", @"assigned", @"unassigned", @"capacity"];
  return [optionalProperties containsObject:propertyName];
}

@end
