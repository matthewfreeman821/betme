create table Household (
    id serial primary key,
    HouseHoldName varchar(50)
);

create table Player (
    PlayerId serial primary key,
    PlayerName varchar(50),
    HouseholdId int,
    foreign key (HouseholdId) references Household(id)
    on delete cascade
);

create table Todo (
    TodoId serial primary key,
    PId int,
    foreign key (PId) references Player(PlayerId)
    on delete cascade,
    Todo varchar(500),
);

create table Wins (
    WinId serial primary key,
    PId int,
    foreign key (PId) references Player(PlayerId)
    on delete cascade,
    Win varchar(500),
);