



CREATE TABLE tm_samp_data (
    id SERIAL PRIMARY KEY,
    title VARCHAR,
    desp VARCHAR,
    crt_by VARCHAR,
    crt_at TIMESTAMP,
    upt_at TIMESTAMP,
    upt_by VARCHAR
);


select  * from tm_samp_data



INSERT INTO tm_samp_data (title, desp, crt_by, crt_at, upt_at, upt_by) VALUES
('Title 1', 'Description 1', 'User A', '2024-07-01 10:00:00', '2024-07-01 10:00:00', 'User A'),
('Title 2', 'Description 2', 'User B', '2024-07-02 11:00:00', '2024-07-02 11:00:00', 'User B'),
('Title 3', 'Description 3', 'User C', '2024-07-03 12:00:00', '2024-07-03 12:00:00', 'User C'),
('Title 4', 'Description 4', 'User D', '2024-07-04 13:00:00', '2024-07-04 13:00:00', 'User D'),
('Title 5', 'Description 5', 'User E', '2024-07-05 14:00:00', '2024-07-05 14:00:00', 'User E');
('Title 6', 'Description 6', 'User F', '2024-07-05 14:00:00', '2024-07-05 14:00:00', 'User F');
('Title 6', null, 'User F', '2024-07-05 14:00:00', '2024-07-05 14:00:00', 'User F');



CREATE TABLE category_localized (

    category_id SERIAL,

    locale VARCHAR(8) NOT NULL,

    title VARCHAR(200),

    description VARCHAR(800),

    FOREIGN KEY (category_id) REFERENCES tm_samp_data (id),

    PRIMARY KEY(category_id, locale)

);


select * from category_localized



INSERT INTO category_localized (category_id, locale, title, description)
VALUES
    (1, 'fr', 'Titre 1', 'Description 1 en français'),
    (2, 'fr', 'Titre 2', 'Description 2 en français'),
    (3, 'fr', 'Titre 3', 'Description 3 en français'),
    (4, 'fr', 'Titre 4', 'Description 4 en français'),
    (5, 'fr', 'Titre 5', 'Description 5 en français');


   
INSERT INTO category_localized (category_id, locale, title, description)
VALUES
    (1, 'es', 'Título 1', 'Descripción 1 en español'),
    (2, 'es', 'Título 2', 'Descripción 2 en español'),
    (3, 'es', 'Título 3', 'Descripción 3 en español'),
    (4, 'es', 'Título 4', 'Descripción 4 en español'),
    (5, 'es', 'Título 5', 'Descripción 5 en español');

   
INSERT INTO category_localized (category_id, locale, title, description)
VALUES
    (1, 'de', 'Titel 1', 'Beschreibung 1 auf Deutsch'),
    (2, 'de', 'Titel 2', 'Beschreibung 2 auf Deutsch'),
    (3, 'de', 'Titel 3', 'Beschreibung 3 auf Deutsch'),
    (4, 'de', 'Titel 4', 'Beschreibung 4 auf Deutsch'),
    (5, 'de', 'Titel 5', 'Beschreibung 5 auf Deutsch');
   
   
   select id, title, desp
   
   
   
   
   SELECT 
    tm.id,
    COALESCE(cl.title, tm.title) AS localized_title,
    COALESCE(cl.description, tm.desp) AS localized_description,
FROM 
    tm_samp_data tm
LEFT JOIN 
    category_localized cl ON tm.id = cl.category_id AND cl.locale = 'fr' -- Replace 'fr' with the desired locale
WHERE 
    tm.title = 'Title 6'; -- Replace 'Title 1' with the desired title

    
    select * 
    
    
 SELECT 
    c.id,
    CASE 
        WHEN cl.locale = 'fr' THEN cl.title
        ELSE c.title
    END AS localized_title,
    CASE 
        WHEN cl.locale = 'fr' THEN cl.description
        ELSE c.desp
    END AS localized_description
FROM 
    tm_samp_data c
LEFT JOIN 
    category_localized cl ON c.id = cl.category_id
WHERE 
    cl.locale IS NULL OR cl.locale = 'fr'
    
UNION
    
SELECT 
    tm.id,
    COALESCE(cl.title, tm.title) AS localized_title,
    COALESCE(cl.description, tm.desp) AS localized_description
FROM 
    tm_samp_data tm
LEFT JOIN 
    category_localized cl ON tm.id = cl.category_id AND cl.locale = 'fr';


    
    
    select distinct tm.id,

    case when cl.locale = 'fr'

        then cl.title

        else tm.title

    end as title,

    case when cl.locale = 'fr'

        then cl.description

        else tm.desp

    end as description

from tm_samp_data tm

left join category_localized cl on tm.id = cl.category_id

where cl.locale is null

    or cl.locale = 'en' 
    
    union all
    
    SELECT 
    tm.id,
    COALESCE(cl.title, tm.title) AS localized_title,
    COALESCE(cl.description, tm.desp) AS localized_description
FROM 
    tm_samp_data tm
LEFT JOIN 
    category_localized cl ON tm.id = cl.category_id AND cl.locale = 'fr' -- Replace 'fr' with the desired locale
WHERE 
    tm.title IN (
        'Title 1', 
        (SELECT title FROM category_localized WHERE category_id = tm.id AND locale = 'fr' LIMIT 1)
    );

   
   
   
   CREATE TABLE tm_emp (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    roll VARCHAR(100),
    privilege_id int UNIQUE
);


INSERT INTO tm_emp (name, roll, privilege_id)
VALUES
    ('John Doe', 'Engineer', 1),
    ('Jane Smith', 'Manager', 2),
    ('Michael Johnson', 'Developer', 3),
    ('Emily Davis', 'Designer', 4),
    ('David Brown', 'Analyst', 5);

   
  select * from tm_emp

CREATE TABLE activity_mapping (
    id SERIAL PRIMARY KEY,
    activity_name VARCHAR(100),
    role VARCHAR(100),
    privilege_id INT,
    FOREIGN KEY (role) REFERENCES tm_emp(roll),
    FOREIGN KEY (privilege_id) REFERENCES tm_emp(privilege_id)
);


  
