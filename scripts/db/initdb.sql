-- public.devices definition

-- Create extension for uuid
CREATE EXTENSION "uuid-ossp";

-- Drop table
DROP DATABASE IF EXISTS postgres;
DROP TABLE IF EXISTS public.devices;

-- Create tables
CREATE TABLE public.devices (
	id uuid NOT NULL DEFAULT uuid_generate_v1(),
	is_affected bool NOT NULL,
	details json NULL,
	specs json NULL,
	notes json NULL,
	CONSTRAINT devices_pkey PRIMARY KEY (id)
);

INSERT INTO public.devices
(is_affected, details, specs, notes)
VALUES
(false, '{}', '{}', '{}'),
(false, '{}', '{}', '{}'),
(false, '{}', '{}', '{}'),
(false, '{}', '{}', '{}'),
(false, '{}', '{}', '{}');
