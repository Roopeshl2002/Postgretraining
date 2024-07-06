CREATE TABLE public.userdetails (
	user_id serial NOT NULL,
	user_name varchar(30) NULL,
	description text NULL,
	craeted_at timestamp NULL,
	created_by varchar(30) NULL,
	modified_at timestamp NULL,
	modified_by varchar(30) NULL,
	remarks text NULL,
	CONSTRAINT userdetails_pkey PRIMARY KEY (user_id)
);