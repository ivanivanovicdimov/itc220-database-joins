/* Joins Bets table with User table and Users information */

SELECT Bets.BetID, Users.UserID, Users.UserName, Users.UserCity, Users.UserEmail
FROM Bets 
INNER JOIN Users ON Bets.UserID=Users.UserID;

/* Joins Users with BetScores table showing Users betting record */

SELECT Users.UserID, Users.UserUsername, BetScores.BetScoreID, BetScores.BetWins, BetScores.BetLosses, BetScores.BetDraws 
FROM Users 
INNER JOIN BetScores ON Users.BetScoreID=BetScores.BetScoreID;

/* Joins Bets table with User table showing Bets information */

SELECT Bets.BetID, Bets.BetName, Bets.BetDescription, Bets.BetWager, Users.UserCity 
FROM Bets 
INNER JOIN Users ON Bets.UserOneID=Users.UserID
