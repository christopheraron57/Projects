Project team #11 - <CloudGames>

Team Members: Ryan Wichern, Henry Hall, Shane Robillard, Christopher Aron


Project Proposal:
Product is an online game store. Scope will include the ability to purchase games, keep a library of games, a wish list of games, etc. Objective is creating a usable database based on an online game store.


Project Environment:
A UI that represents options for games to purchase with a search ability. The environment is an online game store. It will contain different pages in their gaming library. The version number will be 1.0.0.

High Level Requirements:
    
    User stories:
        Purchase - purchase games
        Search - search games in the store
        Admin - control the store for efficiency 
        Sell - sell games
        Manage - manage games 
        Friends - contact with other users and play with them
        Wishlist - games that the user would like to purchase later
        View Details - view information about the game
        Genres - category of the game

    Administrator User stories:
        Hardware - survey the Hardware

Entities:
    Accounts:
        - User
        - Administrator
    Store:
        - Games
        - Game_Title
        - Developer_ID
    Personal_Library:
        - Games
        - User_ID
        - Hours_Played
        - Date_Purchased
        - Last_date_of_activity
    Payment_Information:
        - Payment
    Genres:
        - Type of game
    Game_Genres:
        - Genre of games
    Friends:
        - Sender
        - Receiver
        - Date_Sent
        - Date_Accepted
    Wishlist:
        - Game_ID
        - User_ID
        - Date_added
        - Last_viewed
    Hardware:
        - User_ID
        - Operating System Version
        - CPU
        - GPU
        - Memory
        - Storage Capacity
        - Motherboard
        - Directx Version

Relationships:
    User searches game (Many/Many)
    User purchase game for library (Many/One)
    User adds to wishlist(Many/One)
    User sells game(One/Many)
    User manages store(Many/One)
    User changes friendlist (Many/One)
    User searches genre (Many/Many) 
    Admin surveys Hardware (One/Many)

Participation:
    Accounts has <total> participation
    Store has <total> participation
    Personal_Library <partial> participation
    Payment_information <partial> participation
    Genres <total> participation
    Game_Genres <total> participation
    Friends <partial> participation
    Wishlist <partial> participation
    Hardware has <partial> participation

Logical Design:

    Table: Accounts
        Columns:
            user_ID (primary key)
            user_name
            first_name
            last_name
            email (unique)
            isAdmin

    Table: Game_Genres
        Columns:
            game_ID (primary key)
            genre (primary key)

    Table: Genres
        Columns:
            genre (primary key)

    Table: Payment_Information
        Columns:
            user_ID (primary key)
            credit_card_num
            street_address
            second_street_address
            city_name
            zip_code
            state

    Table: Personal_Library
        Columns:
            game_ID (primary key)
            user_ID (primary key)
            hours_played
            date_purchased
            last_date_of_activity

    Table: Store
        Columns:
            game_ID (primary key)
            Game_title (unique)
            developer_ID (foreign key)

    Table: Friends
        Columns:
            user_ID (primary key)
            reciever_ID (primary key)
            date_sent
            date_accepted

    Table: Wishlist 
        Columns:
            game_ID (primary key)
            user_ID (primary key)
            date_added

    Table: Hardware
        Columns:
            user_ID (primary key)
            operating_system_version
            cpu
            gpu
            memory 
            storage_capacity
            motherboard 
            directx_version

Views:

    CREATE VIEW user_libraries_with_genres
    AS 
    SELECT Personal_Library.user_ID, user_name, Personal_Library.game_ID, game_title, Game_Genres.genre
    From Accounts
    JOIN Personal_Library ON Personal_Library.user_ID = Accounts.user_ID
    JOIN Store ON Store.game_ID = Personal_Library.game_ID
    JOIN Game_Genres ON Game_Genres.game_ID = Store.game_ID
    JOIN Genres ON Genres.genre = Game_Genres.genre
    ORDER BY Personal_Library.user_ID;
    CREATE VIEW user_game_details
    AS 
    SELECT Accounts.user_ID, Accounts.user_name, Personal_Library.game_ID, Store.Game_title, date_purchased, last_date_of_activity
    FROM Accounts
    JOIN Personal_Library ON Personal_Library.user_ID = Accounts.user_ID
    JOIN Store ON Store.game_ID = Personal_Library.game_ID
    ORDER BY Accounts.user_ID;
    SELECT * FROM user_game_details;