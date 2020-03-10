/*  Joins EventReviews to the Events table, attaching each review to its corresponding event */

SELECT EventReviews.EventReviewID, EventReviews.UserReview, Events.EventID, Events.EventName, Events.EventType, Events.EventDescription 
FROM EventReviews 
INNER JOIN Events ON EventReviews.EventID=Events.EventID

/*  Joins ActivityReviews to the Activies table, attaching each review to its corresponding activity */

SELECT ActivityReviews.ActivitiyReviewID, ActivityReviews.UserReview, Activities.ActivityID, Activities.ActivityName, Activities.ActivityType, Activities.ActivityDescription 
FROM ActivityReviews 
INNER JOIN Activities ON ActivityReviews.ActivityID=Activities.ActivityID

/*  Joins UserActivites to the Activitoes table, displaying information of each activity that is attached to the User */

SELECT UserActivities.UserActivityID, Activities.ActivityID, Activities.ActivityName, Activities.ActivityType, Activities.ActivityDescription 
FROM UserActivities 
INNER JOIN Activities ON UserActivities.ActivityID=Activities.ActivityID

