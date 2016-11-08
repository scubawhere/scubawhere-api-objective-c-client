#import "SWGAgent.h"

@implementation SWGAgent

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"website": @"website", @"branch_name": @"branchName", @"branch_address": @"branchAddress", @"branch_phone": @"branchPhone", @"branch_email": @"branchEmail", @"billing_address": @"billingAddress", @"billing_phone": @"billingPhone", @"billing_email": @"billingEmail", @"commission": @"commission", @"terms": @"terms" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"website", @"branchName", @"branchAddress", @"branchPhone", @"branchEmail", @"billingAddress", @"billingPhone", @"billingEmail", @"commission", @"terms"];
  return [optionalProperties containsObject:propertyName];
}

@end
