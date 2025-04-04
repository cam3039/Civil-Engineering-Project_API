
package com.example.civil.entity;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
public class Project 
{
   @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;
   private LocalDate startDate;
    private LocalDate endDate;

@ManyToOne
    @JoinColumn(name = "contractor_id")
    private Contractor contractor;

 @OneToMany(mappedBy = "project", cascade = CascadeType.ALL)
    private List<Engineer> engineers;

@OneToMany(mappedBy = "project", cascade = CascadeType.ALL)
    private List<Building> buildings;

// Constructors
    public Project() { }

public Project(String name, String description, LocalDate startDate, LocalDate endDate, Contractor contractor) {
        this.name = name;
        this.description = description;
this.startDate = startDate;
        this.endDate = endDate;
        this.contractor = contractor;

   }
    
    // Getters and Setters
    public Long getId() {
        return id;
}
    public String getName() {
        return name;
    }
public String getDescription() {
        return description;
    }
 public LocalDate getStartDate() {
        return startDate;
    }
public LocalDate getEndDate() {
        return endDate;
    }
 public Contractor getContractor() {
        return contractor;
    }
public List<Engineer> getEngineers() {
        return engineers;
    }
 public List<Building> getBuildings() {
        return buildings;
    }
 public void setId(Long id) {
        this.id = id;
    }
 public void setName(String name) {
        this.name = name;
    }
public void setDescription(String description) {
        this.description = description;
    }
public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }
public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }
public void setContractor(Contractor contractor) {
        this.contractor = contractor;
    }
 public void setEngineers(List<Engineer> engineers) {
        this.engineers = engineers;
    }
public void setBuildings(List<Building> buildings) {
        this.buildings = buildings;
    }
}
