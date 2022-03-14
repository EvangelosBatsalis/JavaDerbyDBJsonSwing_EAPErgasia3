CREATE TABLE Game (DrawID integer NOT NULL, Num1 integer, Num2 integer, Num3 integer, Num4 integer, Num5 integer, Bonus integer, DrawDate date, PRIMARY KEY (DrawID));
CREATE TABLE PrizeCategories (ID integer GENERATED BY DEFAULT AS IDENTITY, DrawID integer NOT NULL, PrizeID integer, Divedent double, Winners integer, Dist double, Jackpot double, PRIMARY KEY (ID));
ALTER TABLE PrizeCategories ADD CONSTRAINT FKPrizeCateg466330 FOREIGN KEY (DrawID) REFERENCES Game (DrawID);