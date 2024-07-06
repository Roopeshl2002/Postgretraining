CREATE TABLE public.orders (
	order_id serial4 NOT NULL,
	order_no int4 NULL,
	customer_id varchar NULL,
	delivery_dt timestamp NULL,
	createdby varchar NULL,
	createddt timestamp NULL,
	CONSTRAINT orders_pkey PRIMARY KEY (order_id)
)
