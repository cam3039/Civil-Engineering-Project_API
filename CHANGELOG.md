# Changelog

## [2025-04-01] Initial Setup

### Added
- Reorganized project structure to follow Maven/Spring Boot conventions
- Created proper directory structure for Java packages
- Added H2 in-memory database configuration
- Fixed file extensions and naming conventions
- Updated controller mappings to match API context path
- Enabled H2 console for database access
- Added startup scripts (run-server.bat and run-server.ps1) for easy application launch
- Created sample data SQL script for database initialization
- Added Maven installation scripts (install-maven.bat and install-maven.ps1) to simplify setup

### Changed
- Moved source files to standard Maven project structure
- Updated controller request mappings to simplify API paths
- Added proper application.properties with database configuration
- Simplified entity relationships and fixed annotations

### Fixed
- Fixed incorrect file extensions (*.javaX to *.java)
- Corrected package declarations in all classes
- Restructured files to match package declarations
- Fixed code indentation and formatting
