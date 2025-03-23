-- +goose Up
-- +goose StatementBegin
CREATE TABLE sources (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  feed_url VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
-- +goose StatementEnd
