CREATE TABLE audit_logs (
  id varchar(40) PRIMARY KEY,
  user_id varchar(40) NOT NULL,
  action varchar(40) NOT NULL,
  time timestamptz NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  result varchar(40) NOT NULL,
  message varchar(3000) NOT NULL,
  user_agent varchar(2000) NOT NULL,
  ip varchar(20) NOT NULL,
  transaction_id varchar(40)
);

CREATE TABLE token_wallets (
  token_id varchar(40),
  wallet_address varchar(40),
  balance float NOT NULL,
  PRIMARY KEY (token_id, wallet_address)
);

CREATE TABLE credentials (
  user_id varchar(40) PRIMARY KEY,
  password varchar(120) NOT NULL,
  success_time timestamptz,
  fail_time timestamptz,
  fail_count int NOT NULL DEFAULT 0,
  locked_until_time timestamptz,
  password_changed_time timestamptz,
  change_password char(1) NOT NULL
);

CREATE TABLE sign_up_codes (
  user_id varchar(40) PRIMARY KEY,
  code varchar(200) NOT NULL,
  expired_at timestamptz NOT NULL
);

CREATE TABLE devices (
  device_id varchar(40) PRIMARY KEY,
  user_id varchar(40) NOT NULL,
  status char(1) NOT NULL DEFAULT 'A',
  created_at timestamptz DEFAULT (CURRENT_TIMESTAMP),
  created_by varchar(40),
  updated_at timestamptz,
  updated_by varchar(40)
);

CREATE TABLE modules (
  module_id varchar(40) PRIMARY KEY,
  module_name varchar(120) NOT NULL,
  status char(1) NOT NULL DEFAULT 'A',
  path varchar(255),
  resource_key varchar(120) NOT NULL,
  icon varchar(120),
  actions int,
  sequence int NOT NULL DEFAULT 2147483647,
  parent varchar(40) NOT NULL DEFAULT 'main',
  created_at timestamptz DEFAULT (CURRENT_TIMESTAMP),
  created_by varchar(40),
  updated_at timestamptz,
  updated_by varchar(40)
);

CREATE TABLE chains (
  chain_id varchar(40) PRIMARY KEY,
  chain_type varchar(40) NOT NULL,
  chain_name varchar(120) NOT NULL,
  is_active bool NOT NULL DEFAULT 'false'
);

CREATE TABLE prices (
  id varchar(40) PRIMARY KEY,
  token_id varchar(40) NOT NULL,
  symbol varchar(40) NOT NULL,
  created_at timestamptz NOT NULL DEFAULT (CURRENT_TIMESTAMP),
  unit char(3) NOT NULL,
  to_usd float NOT NULL,
  to_thb float NOT NULL,
  price float NOT NULL,
  date timestamptz NOT NULL
);

CREATE TABLE role_modules (
  role_id varchar(40),
  module_id varchar(40),
  permissions int NOT NULL,
  PRIMARY KEY (role_id, module_id)
);

CREATE TABLE roles (
  role_id varchar(40) PRIMARY KEY,
  role_name varchar(120) NOT NULL,
  status char(1) NOT NULL DEFAULT 'A',
  entity_id varchar(40),
  updated_by varchar(40),
  created_at timestamptz DEFAULT (CURRENT_TIMESTAMP),
  created_by varchar(40),
  updated_at timestamptz
);

CREATE TABLE token_details (
  token_details_id varchar(40) PRIMARY KEY,
  smart_contract varchar(64),
  token_id varchar(40) NOT NULL,
  token_type char(10) NOT NULL,
  chain_id varchar(40) NOT NULL,
  decimal int
);

CREATE TABLE tokens (
  token_id varchar(40) PRIMARY KEY,
  symbol varchar(40) NOT NULL,
  name varchar(255) NOT NULL,
  image_url varchar(500),
  homepage_url varchar(500),
  description varchar(500)
);

CREATE TABLE transactions (
  transaction_id varchar(40) PRIMARY KEY,
  transaction_hash char(10) UNIQUE NOT NULL,
  amount varchar(40) NOT NULL,
  unit char(3) NOT NULL,
  from_wallet_address varchar(40) NOT NULL,
  to_wallet_address varchar(40) NOT NULL,
  coin_address varchar(40) NOT NULL,
  requestor varchar(40) NOT NULL,
  request_time timestamptz NOT NULL,
  transaction_time timestamptz,
  transaction_fee char(10) NOT NULL,
  gas_price char(10) NOT NULL,
  block_id char(10) NOT NULL,
  status char(1) NOT NULL
);

CREATE TABLE user_roles (
  user_id varchar(40),
  role_id varchar(40),
  PRIMARY KEY (user_id, role_id)
);

CREATE TABLE users (
  user_id varchar(40) PRIMARY KEY,
  username varchar(40) UNIQUE NOT NULL,
  display_name varchar(120),
  email varchar(120) NOT NULL,
  phone varchar(20),
  status char(1) NOT NULL DEFAULT 'A',
  occupation varchar(50),
  educations varchar(50),
  contact_address jsonb,
  employer_address jsonb,
  investment_purpose varchar(40),
  source_income varchar(40),
  country_income varchar(40),
  average_income varchar(40),
  business_type varchar(40),
  created_at timestamptz DEFAULT (CURRENT_TIMESTAMP),
  created_by varchar(40),
  updated_at timestamptz,
  updated_by varchar(40)
);

CREATE TABLE entities (
  entity_id varchar(40) PRIMARY KEY,
  entity_name varchar(120) NOT NULL,
  email varchar(120),
  phone varchar(20),
  status char(1) NOT NULL DEFAULT 'A',
  created_at timestamptz DEFAULT (CURRENT_TIMESTAMP),
  created_by varchar(40),
  updated_at timestamptz,
  updated_by varchar(40)
);

CREATE TABLE wallets (
  wallet_id varchar(40) PRIMARY KEY,
  chain_id varchar(40) NOT NULL,
  user_id varchar(40) NOT NULL,
  private_key varchar(1000),
  mnemonic varchar(1000)
);

CREATE TABLE wallet_detail (
  wallet_address varchar(40) PRIMARY KEY,
  wallet_id varchar(40) NOT NULL,
  wallet_name varchar(40) NOT NULL,
  deleted_at timestamptz
);

ALTER TABLE user_roles ADD FOREIGN KEY (user_id) REFERENCES users (user_id);

ALTER TABLE user_roles ADD FOREIGN KEY (role_id) REFERENCES roles (role_id);

ALTER TABLE credentials ADD FOREIGN KEY (user_id) REFERENCES users (user_id);

ALTER TABLE devices ADD FOREIGN KEY (device_id) REFERENCES users (user_id);

ALTER TABLE role_modules ADD FOREIGN KEY (role_id) REFERENCES roles (role_id);

ALTER TABLE role_modules ADD FOREIGN KEY (module_id) REFERENCES modules (module_id);

ALTER TABLE wallet_detail ADD FOREIGN KEY (wallet_id) REFERENCES wallets (wallet_id);

ALTER TABLE token_wallets ADD FOREIGN KEY (wallet_address) REFERENCES wallet_detail (wallet_address);

ALTER TABLE wallets ADD FOREIGN KEY (chain_id) REFERENCES chains (chain_id);

ALTER TABLE token_wallets ADD FOREIGN KEY (token_id) REFERENCES tokens (token_id);

ALTER TABLE token_details ADD FOREIGN KEY (token_id) REFERENCES tokens (token_id);

ALTER TABLE token_details ADD FOREIGN KEY (chain_id) REFERENCES chains (chain_id);

ALTER TABLE prices ADD FOREIGN KEY (token_id) REFERENCES tokens (token_id);

ALTER TABLE wallets ADD FOREIGN KEY (user_id) REFERENCES users (user_id);

ALTER TABLE roles ADD FOREIGN KEY (entity_id) REFERENCES entities (entity_id);

ALTER TABLE sign_up_codes ADD FOREIGN KEY (user_id) REFERENCES users (user_id);