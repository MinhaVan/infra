DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'auth-db') THEN
        CREATE DATABASE "auth-db";
    END IF;
    
    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'routes-db') THEN
        CREATE DATABASE "routes-db";
    END IF;

    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'payments-db') THEN
        CREATE DATABASE "payments-db";
    END IF;

    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'pessoas-db') THEN
        CREATE DATABASE "pessoas-db";
    END IF;
END
$$;
