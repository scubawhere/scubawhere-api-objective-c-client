#import "SWGInlineResponse20042UtilisationTotals.h"

@implementation SWGInlineResponse20042UtilisationTotals

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"assigned": @"assigned", @"unassigned": @"unassigned", @"capacity": @"capacity", @"relations": @"relations" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"assigned", @"unassigned", @"capacity", @"relations"];
  return [optionalProperties containsObject:propertyName];
}

@end
