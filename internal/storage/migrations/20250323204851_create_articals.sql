-- +goose Up
-- +goose StatementBegin
CREATE TABLE articals (
  id SERIAL PRIMARY KEY,
  source_id INTEGER NOT NULL,
  title VARCHAR(255) NOT NULL,
  link VARCHAR(255) NOT NULL,
  summary TEXT NOT NULL,
  published TIMESTAMP NOT NULL,
  created_at TIMESTAMP NOT NULL,
  posted_at TIMESTAMP,
  CONSTRAINT fk_articals_source_id FOREIGN KEY (source_id) REFERENCES sources(id)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
SELECT 'down SQL query';
-- +goose StatementEnd
