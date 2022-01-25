CREATE TABLE Videos (
      video_id INT PRIMARY KEY,
      Title VARCHAR(50) NOT NULL,
      Length INT NULL,
      Url VARCHAR(100) NOT NULL
);

CREATE TABLE Reviews (
      review_number INT PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      rating INT NULL,
      short_review VARCHAR(100) NOT NULL,
      video_id INT NOT NULL	
);

INSERT INTO videos VALUES (1, 'Deep Learning Basics: Introduction and Overview',
						   68, 'https://www.youtube.com/watch?v=O5xeyoRL95U');

INSERT INTO videos VALUES (2, 'Why Some People Succeed and Some Dont',
						   76, 'https://www.youtube.com/watch?v=EcMKLwVlpJk');
						   
INSERT INTO videos VALUES (3, 'Principles For Success by Ray Dalio',
						   28, 'https://www.youtube.com/watch?v=B9XGUpQZY38');


INSERT INTO reviews VALUES (1, 'John', 1, 'Too boring',1);
INSERT INTO reviews VALUES (2, 'Jill', 4, 'Informative',1);

INSERT INTO reviews VALUES (3, 'John', 4, 'Motivates me',2);
INSERT INTO reviews VALUES (4, 'Jill', 3, 'Subjective',2);

INSERT INTO reviews VALUES (5, 'John', 5, 'Short and to the point',3);
INSERT INTO reviews VALUES (6, 'Jill', 2, 'No real substance',3);


SELECT * FROM videos AS v JOIN reviews AS r ON v.video_id=r.video_id;

SELECT v.title, r.name, r.rating, r.short_review 
FROM videos AS v JOIN reviews AS r ON v.video_id=r.video_id
WHERE (r.rating=4);

SELECT v.title, r.name, r.rating, r.short_review 
FROM videos AS v JOIN reviews AS r ON v.video_id=r.video_id
WHERE (v.video_id=1);