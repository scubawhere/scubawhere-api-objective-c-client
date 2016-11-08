#import <Foundation/Foundation.h>
#import "SWGErrorModel.h"
#import "SWGInlineResponse20032.h"
#import "SWGInlineResponse2003.h"
#import "SWGInlineResponse20033.h"
#import "SWGPackage.h"
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


@interface SWGPackageApi: NSObject <SWGApi>

extern NSString* kSWGPackageApiErrorDomain;
extern NSInteger kSWGPackageApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Create a new package
/// 
///
/// @param name 
/// @param _description  (optional)
/// @param availableFrom  (optional)
/// @param availableUntil  (optional)
/// @param tickets  (optional)
/// @param courses  (optional)
/// @param accommodations  (optional)
/// @param addons  (optional)
/// @param prices  (optional)
/// 
///  code:200 message:"Success (Resource created)",
///  code:422 message:"Unprocessable Entity (One or more parameter was invalid)"
///
/// @return SWGInlineResponse20032*
-(NSNumber*) createPackageWithName: (NSString*) name
    _description: (NSString*) _description
    availableFrom: (NSDate*) availableFrom
    availableUntil: (NSDate*) availableUntil
    tickets: (NSArray<NSNumber*>*) tickets
    courses: (NSArray<NSNumber*>*) courses
    accommodations: (NSArray<NSNumber*>*) accommodations
    addons: (NSArray<NSNumber*>*) addons
    prices: (NSArray<NSNumber*>*) prices
    completionHandler: (void (^)(SWGInlineResponse20032* output, NSError* error)) handler;


/// Delete a package by ID
/// 
///
/// @param _id 
/// 
///  code:200 message:"Success (Resource was deleted)",
///  code:404 message:"Not found (No package exists with the ID provided)"
///
/// @return SWGInlineResponse2003*
-(NSNumber*) deletePackageWithId: (NSNumber*) _id
    completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;


/// Update a package by ID
/// 
///
/// @param _id 
/// @param name 
/// @param _description  (optional)
/// @param availableFrom  (optional)
/// @param availableUntil  (optional)
/// @param tickets  (optional)
/// @param courses  (optional)
/// @param accommodations  (optional)
/// @param addons  (optional)
/// @param prices  (optional)
/// 
///  code:200 message:"Success (Resource created)",
///  code:404 message:"Not found (No boatroom with the ID provided)",
///  code:422 message:"Unprocessable Entity (One or more parameter was invalid)"
///
/// @return SWGInlineResponse20033*
-(NSNumber*) editPackageWithId: (NSNumber*) _id
    name: (NSString*) name
    _description: (NSString*) _description
    availableFrom: (NSDate*) availableFrom
    availableUntil: (NSDate*) availableUntil
    tickets: (NSArray<NSNumber*>*) tickets
    courses: (NSArray<NSNumber*>*) courses
    accommodations: (NSArray<NSNumber*>*) accommodations
    addons: (NSArray<NSNumber*>*) addons
    prices: (NSArray<NSNumber*>*) prices
    completionHandler: (void (^)(SWGInlineResponse20033* output, NSError* error)) handler;


/// Retrieve all packages including any deleted models
/// 
///
/// 
///  code:200 message:"Success"
///
/// @return NSArray<SWGPackage>*
-(NSNumber*) getAllPackagesWithCompletionHandler: 
    (void (^)(NSArray<SWGPackage>* output, NSError* error)) handler;


/// Retrieve all packages including any deleted models
/// 
///
/// 
///  code:200 message:"Success"
///
/// @return NSArray<SWGPackage>*
-(NSNumber*) getAllWithTrashedPackagesWithCompletionHandler: 
    (void (^)(NSArray<SWGPackage>* output, NSError* error)) handler;


/// Retrieve a package by ID
/// 
///
/// @param _id  (optional)
/// 
///  code:200 message:"Success (Resource was found)",
///  code:404 message:"Not found (No package exists with the ID provided)",
///  code:422 message:"Unproccessable Entity (One or more of the parameters was invalid)"
///
/// @return SWGInlineResponse20032*
-(NSNumber*) getPackageWithId: (NSNumber*) _id
    completionHandler: (void (^)(SWGInlineResponse20032* output, NSError* error)) handler;



@end
