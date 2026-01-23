SHOW PARAMETER service_names;

-- Add service while keeping existing services
-- Replace <existing_services> with what you see from show parameter
-- Example:
-- ALTER SYSTEM SET service_names='<existing_services>,WAHABDB' SCOPE=BOTH;

ALTER SYSTEM REGISTER;
