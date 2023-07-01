-- =============================================
-- Create database template
-- =============================================

-- Drop the database if it already exists
IF  EXISTS (
	SELECT name 
		FROM sys.databases 
		WHERE name = 'DWH_Project'
)
DROP DATABASE [DWH_Project]
GO

CREATE DATABASE [DWH_Project]
GO