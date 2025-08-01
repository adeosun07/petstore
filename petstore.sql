--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2025-08-01 08:41:08

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3352 (class 0 OID 40986)
-- Dependencies: 215
-- Data for Name: accessory; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (11, 'dogPlate11', '/images/accessories/accessory11.png', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (41, 'TINUBU', 'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg', '$1,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (1, 'dogPlate1', '/images/accessories/accessory1.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (2, 'dogPlate2', '/images/accessories/accessory2.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (3, 'dogPlate3', '/images/accessories/accessory3.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (4, 'dogPlate4', '/images/accessories/accessory4.webp', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (5, 'dogPlate5', '/images/accessories/accessory5.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (6, 'dogPlate6', '/images/accessories/accessory6.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (7, 'dogPlate7', '/images/accessories/accessory7.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (8, 'dogPlate8', '/images/accessories/accessory8.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (9, 'dogPlate9', '/images/accessories/accessory9.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (10, 'dogPlate10', '/images/accessories/accessory10.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (12, 'dogPlate12', '/images/accessories/accessory12.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (13, 'dogPlate13', '/images/accessories/accessory13.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (14, 'dogPlate14', '/images/accessories/accessory14.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (15, 'dogPlate15', '/images/accessories/accessory15.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (16, 'dogPlate16', '/images/accessories/accessory16.png', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (17, 'dogPlate17', '/images/accessories/accessory17.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (18, 'dogPlate18', '/images/accessories/accessory18.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (19, 'dogPlate19', '/images/accessories/accessory19.png', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (20, 'dogPlate20', '/images/accessories/accessory20.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (21, 'dogPlate21', '/images/accessories/accessory21.webp', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (22, 'dogPlate22', '/images/accessories/accessory22.png', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (23, 'dogPlate23', '/images/accessories/accessory23.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (24, 'dogPlate24', '/images/accessories/accessory24.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (25, 'dogPlate25', '/images/accessories/accessory25.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (26, 'dogPlate26', '/images/accessories/accessory26.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (27, 'dogPlate27', '/images/accessories/accessory27.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (28, 'dogPlate28', '/images/accessories/accessory28.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (29, 'dogPlate29', '/images/accessories/accessory29.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (30, 'dogPlate30', '/images/accessories/accessory30.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (31, 'dogPlate31', '/images/accessories/accessory31.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (32, 'dogPlate32', '/images/accessories/accessory32.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (33, 'dogPlate33', '/images/accessories/accessory33.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (34, 'dogPlate34', '/images/accessories/accessory34.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (35, 'dogPlate35', '/images/accessories/accessory35.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (36, 'dogPlate36', '/images/accessories/accessory36.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (37, 'dogPlate37', '/images/accessories/accessory37.png', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (38, 'dogPlate38', '/images/accessories/accessory38.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (39, 'dogPlate39', '/images/accessories/accessory39.jpg', '$15,000.00', true);
INSERT INTO public.accessory (id, accessory_name, accessory_url, accessory_prie, in_stock) VALUES (40, 'dogPlate40', '/images/accessories/accessory40.jpg', '$15,000.00', true);


--
-- TOC entry 3358 (class 0 OID 41033)
-- Dependencies: 221
-- Data for Name: bestseller; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.bestseller (id, bs_name, bs_url, bs_price, in_stock) VALUES (1, 'accessory', '/images/accessories/accessory8.jpg', '$10,000.00', true);
INSERT INTO public.bestseller (id, bs_name, bs_url, bs_price, in_stock) VALUES (3, 'catfeed', '/images/feeds/catFeed6.jpg', '$10,000.00', true);
INSERT INTO public.bestseller (id, bs_name, bs_url, bs_price, in_stock) VALUES (6, 'bird', '/images/pets/bird2.jpg', '$10,000.00', true);
INSERT INTO public.bestseller (id, bs_name, bs_url, bs_price, in_stock) VALUES (7, 'cat', '/images/pets/cat4.jpg', '$10,000.00', true);
INSERT INTO public.bestseller (id, bs_name, bs_url, bs_price, in_stock) VALUES (4, 'accessory1', '/images/accessories/accessory7.jpg', '$10,000.00', true);
INSERT INTO public.bestseller (id, bs_name, bs_url, bs_price, in_stock) VALUES (5, 'dog1', '/images/pets/dog1.jpg', '$13,000.00', true);
INSERT INTO public.bestseller (id, bs_name, bs_url, bs_price, in_stock) VALUES (2, 'dog', '/images/pets/dog8.webp', '$10,000.00', true);


--
-- TOC entry 3361 (class 0 OID 65555)
-- Dependencies: 224
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cart (product_id, name, price, quantity) VALUES (2, 'dog', '$10,000.00', 1);
INSERT INTO public.cart (product_id, name, price, quantity) VALUES (4, 'access4', '$10,000.00', 1);
INSERT INTO public.cart (product_id, name, price, quantity) VALUES (5, 'dog1', '$13,000.00', 2);
INSERT INTO public.cart (product_id, name, price, quantity) VALUES (12, 'access12', '$10,000.00', 1);
INSERT INTO public.cart (product_id, name, price, quantity) VALUES (6, 'access6', '$10,000.00', 1);
INSERT INTO public.cart (product_id, name, price, quantity) VALUES (10, 'access10', '$10,000.00', 1);
INSERT INTO public.cart (product_id, name, price, quantity) VALUES (9, 'access9', '$10,000.00', 1);
INSERT INTO public.cart (product_id, name, price, quantity) VALUES (8, 'access8', '$10,000.00', 1);
INSERT INTO public.cart (product_id, name, price, quantity) VALUES (3, 'access3', '$10,000.00', 1);


--
-- TOC entry 3356 (class 0 OID 41024)
-- Dependencies: 219
-- Data for Name: feeds; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.feeds (id, feed_name, feed_url, feed_price, in_stock) VALUES (1, 'catFeed1', '/images/feeds/catFeed1.jpg', '$2,000.00', true);
INSERT INTO public.feeds (id, feed_name, feed_url, feed_price, in_stock) VALUES (2, 'catFeed2', '/images/feeds/catFeed2.jpg', '$4,000.00', true);
INSERT INTO public.feeds (id, feed_name, feed_url, feed_price, in_stock) VALUES (3, 'catFeed3', '/images/feeds/catFeed3.jpg', '$4,000.00', true);
INSERT INTO public.feeds (id, feed_name, feed_url, feed_price, in_stock) VALUES (4, 'catFeed4', '/images/feeds/catFeed4.jpg', '$5,000.00', true);
INSERT INTO public.feeds (id, feed_name, feed_url, feed_price, in_stock) VALUES (5, 'catFeed5', '/images/feeds/catFeed5.jpg', '$6,000.00', true);
INSERT INTO public.feeds (id, feed_name, feed_url, feed_price, in_stock) VALUES (6, 'catFeed6', '/images/feeds/catFeed6.jpg', '$5,000.00', true);
INSERT INTO public.feeds (id, feed_name, feed_url, feed_price, in_stock) VALUES (7, 'dogFeed1', '/images/feeds/dogFeed1.jpg', '$3,000.00', true);
INSERT INTO public.feeds (id, feed_name, feed_url, feed_price, in_stock) VALUES (8, 'dogFeed2', '/images/feeds/petFeed1.jpg', '$4,000.00', true);
INSERT INTO public.feeds (id, feed_name, feed_url, feed_price, in_stock) VALUES (9, 'dogFeed3', '/images/feeds/petFeed3.webp', '$3,000.00', true);
INSERT INTO public.feeds (id, feed_name, feed_url, feed_price, in_stock) VALUES (10, 'dogFeed4', '/images/feeds/petFeed4.jpg', '$4,000.00', true);


--
-- TOC entry 3360 (class 0 OID 57368)
-- Dependencies: 223
-- Data for Name: limitedstocks; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (1, 'access1', '/images/accessories/accessory14.jpg', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (2, 'access2', '/images/accessories/accessory17.jpg', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (3, 'access3', '/images/accessories/accessory28.jpg', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (4, 'access4', '/images/accessories/accessory29.jpg', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (5, 'access5', '/images/accessories/accessory23.jpg', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (7, 'access7', '/images/accessories/accessory2.jpg', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (9, 'access9', '/images/accessories/accessory10.jpg', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (10, 'access10', '/images/accessories/accessory7.jpg', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (11, 'access11', '/images/accessories/accessory21.webp', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (12, 'access12', '/images/accessories/accessory9.jpg', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (6, 'access6', '/images/accessories/accessory22.png', '$10,000.00', true);
INSERT INTO public.limitedstocks (id, name, url, price, in_stock) VALUES (8, 'access8', '/images/accessories/accessory11.png', '$10,000.00', true);


--
-- TOC entry 3354 (class 0 OID 41005)
-- Dependencies: 217
-- Data for Name: pets; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (1, 'dog7', '/images/pets/dog-bones.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (3, 'bird2', '/images/pets/bird2.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (4, 'bird3', '/images/pets/bird3.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (5, 'cat1', '/images/pets/cat1.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (6, 'cat2', '/images/pets/cat2.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (7, 'cat3', '/images/pets/cat3.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (8, 'cat4', '/images/pets/cat4.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (9, 'dog1', '/images/pets/dog1.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (10, 'dog2', '/images/pets/dog2.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (11, 'dog3', '/images/pets/dog3.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (12, 'dog4', '/images/pets/dog4.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (13, 'dog5', '/images/pets/dog5.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (14, 'dog6', '/images/pets/dog6.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (15, 'dog8', '/images/pets/dog7.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (17, 'rabbit1', '/images/pets/rabbit1.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (18, 'rabbit2', '/images/pets/rabbit2.jpg', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (16, 'dog9', '/images/pets/dog8.webp', '$10,000.00', true);
INSERT INTO public.pets (id, pet_name, pet_url, pet_price, in_stock) VALUES (2, 'bird1', '/images/pets/bird1.jpg', '$10,000.00', true);


--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 214
-- Name: accessory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.accessory_id_seq', 41, true);


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 220
-- Name: bestseller_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bestseller_id_seq', 7, true);


--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 218
-- Name: feeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.feeds_id_seq', 10, true);


--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 222
-- Name: limitedstocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.limitedstocks_id_seq', 12, true);


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 216
-- Name: pets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pets_id_seq', 18, true);


-- Completed on 2025-08-01 08:41:09

--
-- PostgreSQL database dump complete
--

