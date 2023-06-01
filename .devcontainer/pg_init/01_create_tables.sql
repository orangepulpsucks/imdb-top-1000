--Note to self: empty values must be taken into account (make them null through data cleaning)
--released_year -> int
--runtime -> int
-- imdb_rating -> float
-- meta_score -> int
-- no_of_votes -> int
-- gross -> int

create table Movie (
    Poster_Link text,
    Series_Title text,
    Released_Year int,
    Certificate text,
    Runtime int,
    Genre text,
    IMDB_Rating float,
    Overview text,
    Meta_score int,
    Director text,
    Star1 text,
    Star2 text,
    Star3 text,
    Star4 text,
    No_of_Votes int,
    Gross int
);

-- create table set (
--     set_num text primary key,
--     name text not null,
--     year int not null,
--     theme_id int not null references theme(id),
--     num_parts int not null
-- );

-- create table inventory(
--     id int primary key,
--     version int not null,
--     set_num text not null references set(set_num)
-- );

-- create table inventory_set(
--     inventory_id int not null references inventory(id),
--     set_num text not null references set(set_num),
--     quantity int not null,
--     unique(inventory_id, set_num)
-- );

-- create table part_category(
--     id int primary key,
--     name text not null
-- );

-- create table part(
--     part_num text primary key,
--     name text not null,
--     part_cat_id int not null references part_category(id)
-- );

-- create table color (
--     id int primary key,
--     name text not null,
--     rgb text not null,
--     is_trans boolean not null
-- );

-- create table inventory_part(
--     inventory_id int not null references inventory(id),
--     part_num text not null, -- references part(part_num),
--     color_id int not null references color(id),
--     quantity int not null,
--     is_spare boolean not null,
--     primary key (inventory_id, part_num, color_id, is_spare)
-- );