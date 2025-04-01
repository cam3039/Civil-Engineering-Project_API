# Civil Engineering Project API

A Spring Boot-based backend project for managing civil engineering-related entities. The system includes four main entities with relational mappings and provides a complete REST API for handling CRUD operations.

## Project Structure

The project has been reorganized to follow Maven/Spring Boot conventions:

```
src/main/java
 └── com/example/civil
      ├── CivilEngineeringApplication.java
      ├── entity
      │    ├── Contractor.java
      │    ├── Project.java
      │    ├── Engineer.java
      │    └── Building.java
      ├── repository
      │    ├── ContractorRepository.java
      │    ├── ProjectRepository.java
      │    ├── EngineerRepository.java
      │    └── BuildingRepository.java
      ├── service
      │    ├── ContractorService.java
      │    ├── ProjectService.java
      │    ├── EngineerService.java
      │    └── BuildingService.java
      └── controller
           ├── ContractorController.java
           ├── ProjectController.java
           ├── EngineerController.java
           └── BuildingController.java
```

## Prerequisites

- Java JDK 8 or higher
- Maven 3.6 or higher (installation scripts provided)

## How to Run

### Installing Maven

If you don't have Maven installed, use one of the provided installation scripts:

- **Using Batch File**: Right-click `install-maven.bat` and select "Run as administrator"
- **Using PowerShell**: Right-click `install-maven.ps1` and select "Run with PowerShell" (as administrator)

These scripts will download and install Maven 3.9.5 to your system and set up the necessary environment variables. You'll need to restart any open command prompts after installation.

### Quick Start

For Windows users, two scripts are provided for easy startup (after Maven is installed):

- **Using Batch File**: Double-click `run-server.bat`
- **Using PowerShell**: Right-click `run-server.ps1` and select "Run with PowerShell"

These scripts will start the server and automatically open your browser to the H2 console and projects endpoint.

### Manual Start

1. If you installed Maven manually instead of using the provided scripts:
   - Download from: https://maven.apache.org/download.cgi
   - Follow installation instructions: https://maven.apache.org/install.html
   - Verify installation with: `mvn -version`

2. Navigate to the project's Main directory:
   ```
   cd Main
   ```

3. Run the application using Maven:
   ```
   mvn spring-boot:run
   ```

4. Access the API endpoints at:
   - API base URL: http://localhost:8080/api
   - H2 Database Console: http://localhost:8080/api/h2-console

## API Endpoints

### Buildings
- GET `/buildings` - Get all buildings
- GET `/buildings/{id}` - Get building by ID
- POST `/buildings` - Create a new building
- PUT `/buildings/{id}` - Update a building
- DELETE `/buildings/{id}` - Delete a building

### Contractors
- GET `/contractors` - Get all contractors
- GET `/contractors/{id}` - Get contractor by ID
- POST `/contractors` - Create a new contractor
- PUT `/contractors/{id}` - Update a contractor
- DELETE `/contractors/{id}` - Delete a contractor

### Engineers
- GET `/engineers` - Get all engineers
- GET `/engineers/{id}` - Get engineer by ID
- POST `/engineers` - Create a new engineer
- PUT `/engineers/{id}` - Update an engineer
- DELETE `/engineers/{id}` - Delete an engineer

### Projects
- GET `/projects` - Get all projects
- GET `/projects/{id}` - Get project by ID
- POST `/projects` - Create a new project
- PUT `/projects/{id}` - Update a project
- DELETE `/projects/{id}` - Delete a project

## H2 Database Access

This application uses an in-memory H2 database for development and testing. You can access the H2 console at http://localhost:8080/api/h2-console with the following settings:

- JDBC URL: `jdbc:h2:mem:civildb`
- Username: `sa`
- Password: (leave blank)

## Sample Data

The application is pre-loaded with sample data including:
- 3 Contractors
- 3 Projects
- 4 Engineers
- 4 Buildings

Check the `data.sql` file for details on the sample data.
