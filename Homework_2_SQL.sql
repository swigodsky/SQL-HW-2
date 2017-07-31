#CREATE INDEX ix_reviews_n1 ON reviews(video_id);

#INSERT INTO videos (video_id, title, video_minutes, url)
#VALUES
#(1, 'MYSQL Tutorial', 41, 'https://www.youtube.com/watch?v=yPu6qV5byu4'),
#(2, 'MYSQL 1 - Intro to MYSQL', 13, 'https://www.youtube.com/watch?v=UGu9unCW4PA&list=PL_c9BZzLwBRKn20DFbNeLAAbw4ZMTlZPH'),
#(3, 'Create MySQL Database - MySQL Workbench Tutorial', 17, 'https://www.youtube.com/watch?v=K6w0bZjl_Lw'),
#(4, 'Should I Learn SQL Server or MySQL?', 2, 'https://www.youtube.com/watch?v=rM0PKIz-QMQ'),
#(5, 'Introduction to MySQL Workbench', 12, 'https://www.youtube.com/watch?v=RSHevYMwCVw'); 

#INSERT INTO reviews(review_id, reviewer_name, rating, review_text, video_id)
#VALUES
#(1, 'Robin', 4, 'More detail was needed', 2),
#(2, 'Alon', 1, 'I didn''t understand', 2),
#(3, 'Nadav', 2, 'I wish it was funnier', 5),
#(4, 'Alon', 3, 'Part of was boring and part of it was interesting', 5),
#(5, 'Deena', 5, 'It was great!', 1);
#UPDATE reviews
#SET review_text ='Part of it was boring and part of it was interesting'
#WHERE review_id = 4;


SELECT v.video_id, v.title, v.video_minutes, v.url, r.review_id AS 'review', r.reviewer_name, r.rating, r.review_text 
FROM videos v
LEFT JOIN reviews r
ON v.video_id = r.video_id;