# Week 8 Assignment: MySQL Database Backup and Restore
# Student: Edapal Danson

# =====================================================
# QUESTION 1: CREATING A COMPLETE DATABASE BACKUP
# =====================================================

# Command:
# mysqldump -u root -p sales --result-file="sales_backup.sql"

# Explanation:
# mysqldump is a MySQL command-line utility used to create
# database backups.
# -u root specifies the MySQL username.
# -p prompts the user to enter the MySQL password.
# sales specifies the database to back up.
# --result-file saves the backup in sales_backup.sql.
#
# This command exports the database structure and data.
# Regular database backups are important because they protect
# information against accidental deletion, hardware failure,
# corruption and other unexpected disasters.
# Backups also make it possible to restore data when needed.


# =====================================================
# QUESTION 2: BACKING UP ALL DATABASES
# =====================================================

# Command:
# mysqldump -u root -p --all-databases --result-file="all_databases_backup.sql"

# Explanation:
# -u root specifies the MySQL root account.
# -p prompts for the database password.
# --all-databases exports every database on the MySQL server.
# --result-file saves the backup in all_databases_backup.sql.
#
# Backing up all databases before migration is important
# because it preserves all databases, tables, records and
# database structures.
# It helps prevent data loss and makes it easier to restore
# databases on the new server.


# =====================================================
# QUESTION 3: CREATING A DATA-ONLY DATABASE BACKUP
# =====================================================

# Suggested answer based on the assignment learning objectives.
#
# Command:
# mysqldump -u root -p --no-create-info sales --result-file="sales_data_only_backup.sql"

# Explanation:
# -u root specifies the MySQL username.
# -p prompts for the database password.
# --no-create-info excludes CREATE TABLE statements.
# sales specifies the database to back up.
# --result-file saves the backup in sales_data_only_backup.sql.
#
# A data-only backup exports the records without the table
# creation statements.
# It is useful when the database structure already exists
# and we only need to transfer or restore the records.