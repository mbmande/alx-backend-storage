-- Only the first letter of name AND score must be indexed

CREATE INDEX idx_name_first_score ON names(name(1), score)

