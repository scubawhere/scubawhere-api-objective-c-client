#import <Foundation/Foundation.h>
#import "SWGInlineResponse2013.h"
#import "SWGErrorModel.h"
#import "SWGSchedule.h"
#import "SWGApi.h"

/**
* Scubawhere API Documentation
* This is the documentation for scubawhere's RMS API. This API is only to be used by authorized parties with valid auth tokens.  [Learn about scubawhere](http://www.scubawhere.com) to become an authorized consumer of our API 
*
* OpenAPI spec version: 1.0.0
* Contact: bryan@scubawhere.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/


@interface SWGScheduleApi: NSObject <SWGApi>

extern NSString* kSWGScheduleApiErrorDomain;
extern NSInteger kSWGScheduleApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Create a new schedule for classes
/// 
///
/// @param schedule 
/// @param trainingSessionId 
/// @param until  (optional)
/// 
///  code:201 message:"Success (Resource Created)",
///  code:422 message:"Unprocessable Entity (One or more parameter was invalid)"
///
/// @return SWGInlineResponse2013*
-(NSNumber*) addScheduleWithSchedule: (NSString*) schedule
    trainingSessionId: (NSNumber*) trainingSessionId
    until: (NSDate*) until
    completionHandler: (void (^)(SWGInlineResponse2013* output, NSError* error)) handler;


/// Retrieve all of the schedules for classes
/// 
///
/// 
///  code:200 message:"Success (Resource Found)"
///
/// @return NSArray<SWGSchedule>*
-(NSNumber*) getAllSchedulesWithCompletionHandler: 
    (void (^)(NSArray<SWGSchedule>* output, NSError* error)) handler;


/// Retrieve a schedule by ID
/// 
///
/// @param _id 
/// 
///  code:200 message:"Success (Resource Found)",
///  code:404 message:"Not Found (No schedule with that ID exists)",
///  code:422 message:"Unprocessable Entity (One or more parameter was invalid)"
///
/// @return SWGSchedule*
-(NSNumber*) getScheduleWithId: (NSNumber*) _id
    completionHandler: (void (^)(SWGSchedule* output, NSError* error)) handler;



@end