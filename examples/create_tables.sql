DROP TABLE IF EXISTS public.dog_shopping;
DROP TABLE IF EXISTS public.dogs;
DROP TABLE IF EXISTS public.cats;

CREATE TABLE IF NOT EXISTS public.dogs(
    id                      SERIAL NOT NULL,
    dog_name                VARCHAR(100) NOT NULL,
    dog_breed               VARCHAR(100) NOT NULL,
    has_snout               BOOLEAN,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.dog_shopping(
    id                      SERIAL NOT NULL,
    dog_id                  INTEGER NOT NULL,
    shopping_request        VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (dog_id) REFERENCES public.dogs
);

CREATE TABLE IF NOT EXISTS public.cats(
    id                      SERIAL NOT NULL,
    cat_name                VARCHAR(100) NOT NULL,
    cat_breed               VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);


GRANT USAGE, SELECT ON public.dogs_id_seq TO chunk_run_user ;
GRANT USAGE, SELECT ON public.cats_id_seq TO chunk_run_user ;
GRANT SELECT,INSERT,UPDATE,DELETE ON public.dogs TO chunk_run_user ;
GRANT SELECT,INSERT,UPDATE,DELETE ON public.cats TO chunk_run_user ;
GRANT SELECT,INSERT,UPDATE,DELETE ON public.dog_shopping TO chunk_run_user ;
GRANT USAGE, SELECT ON SEQUENCE public.cats_id_seq TO chunk_run_user;
GRANT USAGE, SELECT ON SEQUENCE public.dogs_id_seq TO chunk_run_user;
GRANT USAGE, SELECT ON SEQUENCE public.dog_shopping_id_seq TO chunk_run_user;

INSERT INTO public.dogs(dog_name, dog_breed)
VALUES
    ('Prunella', 'Pug'),
    ('Millicent', 'Pug'),
    ('Daphne', 'French Bulldog'),
    ('Sally', 'Labrador'),
    ('Baby Sweet', 'Jack Russell Terrier'),
    ('Mollykins', 'Jack Russell Terrier'),
    ('Little Chicken', 'Jack Russell Terrier'),
    ('Baby Sweet', 'Jack Russell Terrier'),
    ('Scully', 'Pug'),
    ('Tennison', 'Pug'),
    ('The F.L.S', 'Pug'),
    ('Lou', 'French Bulldog'),
    ('LeRoy', 'French Bulldog'),
    ('Bodie', 'Chihuahua'),
    ('Poppy', 'English Staffordshire Bull Terrier'),
    ('Chrissy', 'Random Terrier Mutt'),
    ('Hamilton', 'Cat'),
    ('Muggins', 'Cat')
;
