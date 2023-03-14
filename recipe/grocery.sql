CREATE TABLE users(
	id SERIAL PRIMARY KEY,
  name VARCHAR(30),
  password VARCHAR(30) UNIQUE,
  email VARCHAR(30) UNIQUE
);

CREATE TABLE recipes(
	id SERIAL PRIMARY KEY,
  title VARCHAR(30) UNIQUE,
  ingredients VARCHAR(30)UNIQUE,
  instructions VARCHAR(30),
  cook_duration TIME,
  users_recipes VARCHAR(30) NOT NULL REFERENCES users(email)
);

CREATE TABLE grocery_list(
	id SERIAL PRIMARY KEY,
  food_catagories VARCHAR(25),
  beverages VARCHAR(25),
  ingredients_recipes VARCHAR(255) NOT NULL REFERENCES recipes(ingredients)
);

CREATE TABLE reviews(
	id SERIAL PRIMARY KEY,
  quick_meals VARCHAR(30),
  recipe_stars VARCHAR(30) NOT NULL REFERENCES recipes(title),
  user_login VARCHAR(30) NOT NULL REFERENCES users(id)
);

CREATE TABLE photo_gallery(
	id SERIAL PRIMARY KEY,
  picture TEXT,
  recipe_title VARCHAR(30) NOT NULL REFERENCES recipes(title)  
);