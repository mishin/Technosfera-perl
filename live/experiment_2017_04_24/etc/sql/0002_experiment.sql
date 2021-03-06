CREATE TABLE experiment (
    id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    number_of_queries INTEGER NOT NULL,
    source_a_id INTEGER NOT NULL,
    source_b_id INTEGER NOT NULL,
    a_win INTEGER NOT NULL DEFAULT 0,
    b_win INTEGER NOT NULL DEFAULT 0,
    draw  INTEGER NOT NULL DEFAULT 0,

    FOREIGN KEY (source_a_id) REFERENCES source(id) ON DELETE RESTRICT, 
    FOREIGN KEY (source_b_id) REFERENCES source(id) ON DELETE RESTRICT 
);
