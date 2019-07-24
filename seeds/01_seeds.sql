INSERT INTO users (name, email, password)
VALUES
('totoro', 'totoro@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('haku', 'haku@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('noface', 'noface@email.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');


INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, street, city, province, post_code, country, parking_spaces, number_of_bathrooms, number_of_bedrooms, active)
VALUES 
(1, 'title_1', 'description_1', 'url1', 'url2', 50, '635 NAMSUB HIGHWAY', 'sotboske', 'ontario', '83689', 'canada', 6, 4, 3, true),
(2, 'title_2', 'description_2', 'url1', 'url2', 50, '645 SUB HWAY', 'sotboske', 'ontario', '83789', 'canada', 6, 4, 3, true),
(3, 'title_3', 'description_3', 'url1', 'url2', 50, '665 AMSUB WAY', 'sotboske', 'ontario', '83989', 'canada', 6, 4, 3, false);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES
('2019-09-09', '2019-09-21', 1, 3),
('2019-09-06', '2019-10-21', 2, 3),
('2019-09-19', '2019-12-21', 3, 1);

INSERT INTO property_reviews (guest_id, reservation_id, property_id, rating, message)
VALUES
(1, 1, 1, 1, 'message'),
(2, 2, 2, 2, 'message2'),
(3, 3, 3, 3, 'message3');
