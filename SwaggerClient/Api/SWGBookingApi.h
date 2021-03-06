#import <Foundation/Foundation.h>
#import "SWGErrorModel.h"
#import "SWGInlineResponse20010.h"
#import "SWGInlineResponse2008.h"
#import "SWGInlineResponse2009.h"
#import "SWGInlineResponse20011.h"
#import "SWGInlineResponse2003.h"
#import "SWGInlineResponse20012.h"
#import "SWGInlineResponse20017.h"
#import "SWGInlineResponse20014.h"
#import "SWGInlineResponse20013.h"
#import "SWGBooking.h"
#import "SWGInlineResponse2007.h"
#import "SWGInlineResponse20015.h"
#import "SWGInlineResponse20016.h"
#import "SWGInlineResponse201.h"
#import "SWGInlineResponse20018.h"
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


@interface SWGBookingApi: NSObject <SWGApi>

extern NSString* kSWGBookingApiErrorDomain;
extern NSInteger kSWGBookingApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Add a package / course / ticket with its session to the booking
/// 
///
/// @param bookingId 
/// @param customerId 
/// @param ticketId  (optional)
/// @param sessionId  (optional)
/// @param boatroomId  (optional)
/// @param trainingSessionId  (optional)
/// @param temporary  (optional)
/// @param packageId  (optional)
/// @param packagefacadeId  (optional)
/// @param courseId  (optional)
/// 
///  code:200 message:"Success (Resource was created)",
///  code:404 message:"Not found (No booking exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse20010*
-(NSNumber*) addBookingDetailWithBookingId: (NSNumber*) bookingId
    customerId: (NSNumber*) customerId
    ticketId: (NSNumber*) ticketId
    sessionId: (NSNumber*) sessionId
    boatroomId: (NSNumber*) boatroomId
    trainingSessionId: (NSNumber*) trainingSessionId
    temporary: (NSNumber*) temporary
    packageId: (NSNumber*) packageId
    packagefacadeId: (NSNumber*) packagefacadeId
    courseId: (NSNumber*) courseId
    completionHandler: (void (^)(SWGInlineResponse20010* output, NSError* error)) handler;


/// Attach an accommodation booking to a booking
/// 
///
/// @param bookingId 
/// @param accommodationId 
/// @param customerId 
/// @param start  (optional)
/// @param end  (optional)
/// 
///  code:200 message:"Success (Resource was created)",
///  code:404 message:"Not found (No booking exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse2008*
-(NSNumber*) attachAccommodationWithBookingId: (NSNumber*) bookingId
    accommodationId: (NSNumber*) accommodationId
    customerId: (NSNumber*) customerId
    start: (NSDate*) start
    end: (NSDate*) end
    completionHandler: (void (^)(SWGInlineResponse2008* output, NSError* error)) handler;


/// Attach an addon to a trip of a booking
/// 
///
/// @param bookingId 
/// @param bookingdetailId 
/// @param addonId 
/// @param quantity  (optional)
/// @param packagefacadeId  (optional)
/// 
///  code:200 message:"Success (Resource was created)",
///  code:404 message:"Not found (No booking or addon exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse2009*
-(NSNumber*) attachAddonWithBookingId: (NSNumber*) bookingId
    bookingdetailId: (NSNumber*) bookingdetailId
    addonId: (NSNumber*) addonId
    quantity: (NSNumber*) quantity
    packagefacadeId: (NSNumber*) packagefacadeId
    completionHandler: (void (^)(SWGInlineResponse2009* output, NSError* error)) handler;


/// Attach a pickup location for a booking
/// 
///
/// @param bookingId 
/// @param location 
/// @param date 
/// @param time 
/// 
///  code:200 message:"Success (Resource was updated)",
///  code:404 message:"Not found (No booking exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse20011*
-(NSNumber*) attachPickupWithBookingId: (NSNumber*) bookingId
    location: (NSString*) location
    date: (NSDate*) date
    time: (NSString*) time
    completionHandler: (void (^)(SWGInlineResponse20011* output, NSError* error)) handler;


/// Cancel a booking
/// 
///
/// @param bookingId 
/// 
///  code:200 message:"Success (Resource was updated)",
///  code:404 message:"Not found (No booking exists with the ID provided)"
///
/// @return SWGInlineResponse2003*
-(NSNumber*) cancelBookingWithBookingId: (NSNumber*) bookingId
    completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;


/// Confirm a booking and all of its sessions and notify the lead customer
/// 
///
/// @param bookingId 
/// 
///  code:200 message:"Success (Resource was updated)",
///  code:404 message:"Not found (No booking exists with the ID provided)"
///
/// @return SWGInlineResponse20012*
-(NSNumber*) confirmBookingWithBookingId: (NSNumber*) bookingId
    completionHandler: (void (^)(SWGInlineResponse20012* output, NSError* error)) handler;


/// Delete a booking by ID
/// 
///
/// @param _id 
/// 
///  code:200 message:"Success (Resource was deleted)",
///  code:404 message:"Not found (No boatroom exists with the ID provided)"
///
/// @return SWGInlineResponse2003*
-(NSNumber*) deleteBookingWithId: (NSNumber*) _id
    completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;


/// Dettach an accommodation booking to a booking
/// 
///
/// @param bookingId 
/// @param accommodationId 
/// @param customerId 
/// @param start  (optional)
/// 
///  code:200 message:"Success (Resource was dettached)",
///  code:404 message:"Not found (No booking exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse20017*
-(NSNumber*) dettachAccommodationWithBookingId: (NSNumber*) bookingId
    accommodationId: (NSNumber*) accommodationId
    customerId: (NSNumber*) customerId
    start: (NSDate*) start
    completionHandler: (void (^)(SWGInlineResponse20017* output, NSError* error)) handler;


/// Dettach an addon to a trip of a booking
/// 
///
/// @param bookingId 
/// @param bookingdetailId 
/// @param addonId 
/// @param packagefacadeId  (optional)
/// 
///  code:200 message:"Success (Resource was created)",
///  code:404 message:"Not found (No booking or addon exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse20017*
-(NSNumber*) dettachAddonWithBookingId: (NSNumber*) bookingId
    bookingdetailId: (NSNumber*) bookingdetailId
    addonId: (NSNumber*) addonId
    packagefacadeId: (NSNumber*) packagefacadeId
    completionHandler: (void (^)(SWGInlineResponse20017* output, NSError* error)) handler;


/// Dettach a pickup location for a booking
/// 
///
/// @param bookingId 
/// @param _id  (optional)
/// 
///  code:200 message:"Success (Resource was updated)",
///  code:404 message:"Not found (No booking exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse2003*
-(NSNumber*) dettachPickupWithBookingId: (NSNumber*) bookingId
    _id: (NSNumber*) _id
    completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;


/// Edit the information related to a booking
/// 
///
/// @param bookingId  (optional)
/// @param discount  (optional)
/// @param comment  (optional)
/// 
///  code:200 message:"Success (Resource was updated)",
///  code:404 message:"Not found (No booking exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse20014*
-(NSNumber*) editBookingInfoWithBookingId: (NSNumber*) bookingId
    discount: (NSNumber*) discount
    comment: (NSString*) comment
    completionHandler: (void (^)(SWGInlineResponse20014* output, NSError* error)) handler;


/// Get all bookings matching a filter
/// 
///
/// @param reference  (optional)
/// @param date  (optional)
/// @param lastname  (optional)
/// 
///  code:200 message:"Success (Resource was found)",
///  code:422 message:"Unprocessable Entity (One or more of the paramters was invalid)"
///
/// @return SWGInlineResponse20013*
-(NSNumber*) filterBookingsWithReference: (NSString*) reference
    date: (NSDate*) date
    lastname: (NSString*) lastname
    completionHandler: (void (^)(SWGInlineResponse20013* output, NSError* error)) handler;


/// Retrieve all bookings
/// 
///
/// 
///  code:200 message:"Success"
///
/// @return NSArray<SWGBooking>*
-(NSNumber*) getAllBookingsWithCompletionHandler: 
    (void (^)(NSArray<SWGBooking>* output, NSError* error)) handler;


/// Retrieve all bookings including any deleted models
/// 
///
/// 
///  code:200 message:"Success"
///
/// @return NSArray<SWGBooking>*
-(NSNumber*) getAllWithTrashedBookingsWithCompletionHandler: 
    (void (^)(NSArray<SWGBooking>* output, NSError* error)) handler;


/// Retrieve a booking by ID
/// 
///
/// @param _id 
/// 
///  code:200 message:"Success (Resource was found)",
///  code:404 message:"Not found (No booking with the ID provided)",
///  code:422 message:"Unprocessable Entity (ID was not provided)"
///
/// @return SWGInlineResponse2007*
-(NSNumber*) getBookingWithId: (NSNumber*) _id
    completionHandler: (void (^)(SWGInlineResponse2007* output, NSError* error)) handler;


/// Get all bookings for a customer
/// 
///
/// @param customerId 
/// 
///  code:200 message:"Success (Resource was found)",
///  code:404 message:"Not found (No customer with the ID provided)",
///  code:422 message:"Unprocessable Entity (ID was not provided / invalid)"
///
/// @return SWGInlineResponse20013*
-(NSNumber*) getCustomerBookingsWithCustomerId: (NSNumber*) customerId
    completionHandler: (void (^)(SWGInlineResponse20013* output, NSError* error)) handler;


/// Retrieve all payments made for a booking
/// 
///
/// @param bookingId  (optional)
/// 
///  code:200 message:"Success (Resource was found)",
///  code:404 message:"Not found (No booking exists with the ID provided)"
///
/// @return SWGInlineResponse20015*
-(NSNumber*) getPaymentsWithBookingId: (NSNumber*) bookingId
    completionHandler: (void (^)(SWGInlineResponse20015* output, NSError* error)) handler;


/// Retrieve all refunds for a booking
/// 
///
/// @param bookingId  (optional)
/// 
///  code:200 message:"Success (Resource was found)",
///  code:404 message:"Not found (No booking exists with the ID provided)"
///
/// @return SWGInlineResponse20016*
-(NSNumber*) getRefundsWithBookingId: (NSNumber*) bookingId
    completionHandler: (void (^)(SWGInlineResponse20016* output, NSError* error)) handler;


/// Get all bookings made today
/// 
///
/// 
///  code:200 message:"Success (Resource was found)"
///
/// @return SWGInlineResponse20013*
-(NSNumber*) getTodaysBookingsWithCompletionHandler: 
    (void (^)(SWGInlineResponse20013* output, NSError* error)) handler;


/// Get all bookings made today
/// 
///
/// 
///  code:200 message:"Success (Resource was found)"
///
/// @return SWGInlineResponse20013*
-(NSNumber*) getTommorowsBookingsWithCompletionHandler: 
    (void (^)(SWGInlineResponse20013* output, NSError* error)) handler;


/// Create a new empty booking
/// 
///
/// @param source 
/// @param agentId  (optional)
/// @param agentReference  (optional)
/// 
///  code:201 message:"Success (Resource was created)",
///  code:404 message:"Not found (No agent exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse201*
-(NSNumber*) initBookingWithSource: (NSString*) source
    agentId: (NSNumber*) agentId
    agentReference: (NSString*) agentReference
    completionHandler: (void (^)(SWGInlineResponse201* output, NSError* error)) handler;


/// Remove a detail from a booking
/// 
///
/// @param bookingId 
/// @param bookingdetailId 
/// 
///  code:200 message:"Success (Resource was created)",
///  code:404 message:"Not found (No booking exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse20017*
-(NSNumber*) removeBookingDetailWithBookingId: (NSNumber*) bookingId
    bookingdetailId: (NSNumber*) bookingdetailId
    completionHandler: (void (^)(SWGInlineResponse20017* output, NSError* error)) handler;


/// Resend the confirmation email to the lead customer
/// 
///
/// @param bookingId 
/// 
///  code:200 message:"Success (Resource was found)",
///  code:404 message:"Not found (No booking exists with the ID provided)"
///
/// @return SWGInlineResponse2003*
-(NSNumber*) resendConfirmationWithBookingId: (NSNumber*) bookingId
    completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;


/// Reserve a booking and its sessions capcity until a set date
/// 
///
/// @param bookingId 
/// @param reservedUntil  (optional)
/// 
///  code:200 message:"Success (Resource was updated)",
///  code:404 message:"Not found (No booking exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse20018*
-(NSNumber*) reserveBookingWithBookingId: (NSNumber*) bookingId
    reservedUntil: (NSDate*) reservedUntil
    completionHandler: (void (^)(SWGInlineResponse20018* output, NSError* error)) handler;


/// Save a booking as a quote and release all capacity of sessions
/// 
///
/// @param bookingId 
/// 
///  code:200 message:"Success (Resource was updated)",
///  code:404 message:"Not found (No booking exists with the ID provided)"
///
/// @return SWGInlineResponse2003*
-(NSNumber*) saveBookingWithBookingId: (NSNumber*) bookingId
    completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;


/// Set the lead customer for a booking
/// 
///
/// @param bookingId 
/// @param customerId 
/// 
///  code:200 message:"Success (Resource was created)",
///  code:404 message:"Not found (No booking or customer exists with the ID provided)",
///  code:422 message:"Unprocessable Entity (Parameters was not provided / invalid)"
///
/// @return SWGInlineResponse2003*
-(NSNumber*) setLeadCustomerWithBookingId: (NSNumber*) bookingId
    customerId: (NSNumber*) customerId
    completionHandler: (void (^)(SWGInlineResponse2003* output, NSError* error)) handler;



@end
