-- More Groups
INSERT INTO Groups (group_name) VALUES 
('IT'),
('Marketing'),
('Operations');

-- More SubGroups
INSERT INTO SubGroups (name, group_id) VALUES 
('Software Licenses', 3),   -- IT
('Ad Campaigns', 4),        -- Marketing
('Logistics Reports', 5),   -- Operations
('Recruitment Reports', 2), -- HR
('Audit Reports', 1);       -- Finance

-- More User_SubGroups (assign existing users to new subgroups)
INSERT INTO User_SubGroups (user_id, sub_group_id) VALUES
(2, 5),  -- user1 also in Audit Reports
(3, 4);  -- user2 also in Recruitment Reports

-- More Reports
INSERT INTO Reports (name, type, date, folder, sub_group_id) VALUES
('Q2 Software Expense', 'Excel', '2025-06-15', 'Software Licenses', 3),
('Recruitment Drive July', 'PDF', '2025-07-20', 'Recruitment Reports', 4),
('Ad Campaign Results', 'CSV', '2025-08-10', 'Ad Campaigns', 2),
('Operations Monthly Review', 'Excel', '2025-08-25', 'Logistics Reports', 3),
('Year-End Audit Report', 'PDF', '2025-12-31', 'Audit Reports', 5);

-- More Favorites
INSERT INTO Favorites (user_id, report_id) VALUES
(2, 3),
(2, 5),
(3, 2);

-- More Notifications
INSERT INTO Notifications (user_id, report_id) VALUES
(2, 3),
(3, 4),
(2, 5),
(3, 1);
