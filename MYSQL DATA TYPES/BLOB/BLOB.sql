
CREATE TABLE blobss (
    image LONGBLOB
);

INSERT INTO blobs VALUES (LOAD_FILE('H:/IMG_20240521_231716.jpg'));

SELECT * FROM blobs;
