-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP database if exists tournament;
CREATE DATABASE tournament; 
\c tournament

--the tournaments table is simply a unique id and a name
CREATE TABLE tournaments(
       id SERIAL,
       name TEXT,
       created TIMESTAMP DEFAULT current_timestamp
       );

--multiple instances of a player have to be created if they are in multiple tournaments
--the player has a unique id, a name, and tournament id which should equal an entry in the tournaments table
CREATE TABLE players (
       id SERIAL,
       name TEXT, 
       t_id INT
       ); 
--matches are stored as simply who won(winner_id) and who lost(loser_id) and which tournament the match is related to(t_id)
CREATE TABLE  matches (
       winner_id INT, 
       loser_id INT, 
       t_id INT
       );


