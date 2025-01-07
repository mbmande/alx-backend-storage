-- Create stored procedure ComputeAverageScoreForUser
DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(
	    IN p_user_id INT
)
BEGIN
    DECLARE avg_score DECIMAL(10,2);

    -- Calculate the average score for the user
    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE user_id = p_user_id;

    -- Update the user's average score in the users table
    UPDATE users
    SET average_score = avg_score
    WHERE id = p_user_id;

END $$

DELIMITER ;

