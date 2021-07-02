CREATE TABLE poke_stats (
    id INT(8) UNSIGNED NOT NULL,
    name VARCHAR(255) default NULL,
    height INT(8) default NULL,
    base_experience INT(8) default NULL,
    weight INT(8) default NULL,
    rank INT(8) default NULL,
    PRIMARY KEY(id)
);