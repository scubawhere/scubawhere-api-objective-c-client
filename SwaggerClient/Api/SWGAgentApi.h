#import <Foundation/Foundation.h>
#import "SWGInlineResponse2004.h"
#import "SWGErrorModel.h"
#import "SWGInlineResponse2003.h"
#import "SWGAgent.h"
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


@interface SWGAgentApi: NSObject <SWGApi>

extern NSString* kSWGAgentApiErrorDomain;
extern NSInteger kSWGAgentApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Create a new agent
/// 
///
/// @param name 
/// @param branchName 
/// @param branchAddress 
/// @param branchPhone 
/// @param branchEmail 
/// @param commission 
/// @param terms 
/// @param website  (optional)
/// @param billingAddress  (optional)
/// @param billingPhone  (optional)
/// @param billingEmail  (optional)
/// 
///  code:200 message:"Success (Resource created)",
///  code:422 message:"Unprocessable Entity (One or more parameter was invalid)"
///
/// @return SWGInlineResponse2004*
-(NSNumber*) createAgentWithName: (NSNumber*) name
    branchName: (NSString*) branchName
    branchAddress: (NSString*) branchAddress
    branchPhone: (NSString*) branchPhone
    branchEmail: (NSString*) branchEmail
    commission: (NSNumber*) commission
    terms: (NSString*) terms
    website: (NSString*) website
    billingAddress: (NSString*) billingAddress
    billingPhone: (NSString*) billingPhone
    billingEmail: (NSString*) billingEmail
    completionHandler: (void (^)(SWGInlineResponse2004* output, NSError* error)) handler;


/// Delete an agent by ID
/// 
///
/// @param _id ID of the Agent
/// 
///  code:200 message:"Success (Resource was deleted)",
///  code:404 message:"Not found (No addon exists with the ID provided)"
///
/// @return SWGInlineResponse2003*
-(NSNumber*) deleteAgentWithId: (NSNumber*) _id
    completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;


/// Retrieve an agent by ID
/// 
///
/// @param _id ID of the agent to be retrieved
/// 
///  code:200 message:"Success (Resource was found)",
///  code:404 message:"Not found (No agent with the ID provided)",
///  code:422 message:"Unprocessable Entity (ID was not provided)"
///
/// @return SWGInlineResponse2004*
-(NSNumber*) getAgentWithId: (NSNumber*) _id
    completionHandler: (void (^)(SWGInlineResponse2004* output, NSError* error)) handler;


/// Retrieve all agents
/// 
///
/// 
///  code:200 message:"Success"
///
/// @return NSArray<SWGAgent>*
-(NSNumber*) getAllAgentsWithCompletionHandler: 
    (void (^)(NSArray<SWGAgent>* output, NSError* error)) handler;


/// Retrieve all agents including any deleted models
/// 
///
/// 
///  code:200 message:"Success"
///
/// @return NSArray<SWGAgent>*
-(NSNumber*) getAllWithTrashedAgentsWithCompletionHandler: 
    (void (^)(NSArray<SWGAgent>* output, NSError* error)) handler;



@end
