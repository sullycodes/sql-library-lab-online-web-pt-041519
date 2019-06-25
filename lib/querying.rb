def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books 
  INNER JOIN series 
  ON books.series_id = series.id
  WHERE series.id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  ORDER BY LENGTH(characters.motto) DESC
  LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) 
  FROM characters
  GROUP BY characters.species
  ORDER BY COUNT(characters.species) DESC
  LIMIT 1 "
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  INNER JOIN series
  ON authors.id = series.author_id
  JOIN subgenres ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
<<<<<<< HEAD
  "SELECT series.title
=======
  "SELECT series.title, COUNT(characters.species)
>>>>>>> d24883e31e36e2a948d4c4d1926de53ce48c1bef
  FROM series
  INNER JOIN characters
  ON series.id = characters.series_id
  WHERE characters.species = \"human\"
<<<<<<< HEAD
  GROUP BY series.title
=======
  GROUP BY characters.species
  ORDER BY COUNT(characters.species) DESC 
>>>>>>> d24883e31e36e2a948d4c4d1926de53ce48c1bef
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
<<<<<<< HEAD
  "SELECT characters.name, COUNT(character_books.book_id) 
  FROM characters
  INNER JOIN character_books 
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(character_books.book_id) DESC"
=======
  "SELECT 
  FROM"
>>>>>>> d24883e31e36e2a948d4c4d1926de53ce48c1bef
end
