WITH days(day) AS (
  VALUES ( 'Monday' ), ( 'Tuesday' ), ( 'Wednesday' ), ( 'Thursday' ), ( 'Friday' )
)
INSERT INTO days (name)
SELECT day FROM days;

WITH times(time) AS (
	VALUES ('9am'), ('10am'), ('11am'), ('12pm'), ('1pm'), ('2pm'), ('3pm'), ('4pm')
)
INSERT INTO appointments (time, day_id)
SELECT time, id as day_id FROM days, times ORDER BY day_id, time;

INSERT INTO interviewers (name, avatar)
VALUES
  ('Michael Binnick', 'https://i.imgur.com/LpaY82x.png'),
  ('Bill Gates', 'https://imageio.forbes.com/specials-images/imageserve/0g7Qfgk5a98uN/960x960.jpg?format=jpg&width=32'), /*'https://i.imgur.com/Nmx0Qxo.png'*/
  ('Steve Jobs', 'https://i.imgur.com/T2WwVfS.png'),
  ('Elon Musk', 'https://i.imgur.com/FK8V841.jpg'),
  ('Jeffrey Bezos', 'https://i.imgur.com/twYrpay.jpg'),
  ('Mark Zuckerberg', 'https://i.imgur.com/TdOAdde.jpg'),
  ('Nikola Tesla', 'https://i.imgur.com/3tVgsra.jpg'),
  ('Leonardo DaVinci', 'https://i.imgur.com/iHq8K8Z.jpg'),
  ('Alan Turing', 'https://i.imgur.com/nPywAp1.jpg'),
  ('Tobias Lütke', 'https://i.imgur.com/okB9WKC.jpg');

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 1 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 2 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 3 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 4 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;

INSERT INTO available_interviewers (day_id, interviewer_id)
SELECT 5 as day_id, interviewers.interviewer_id FROM ( SELECT id AS interviewer_id FROM interviewers ORDER BY RANDOM() LIMIT 5 ) interviewers;
