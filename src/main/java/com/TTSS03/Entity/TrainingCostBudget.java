package com.TTSS03.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bdg_component_budgettransaction")
public class TrainingCostBudget {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long sl;

    @Column(name = "budgeted_year")
    private String budgetedYear;

    @Column(name = "training_name")
    private String trainingName;

    @Column(name = "tc_code")
    private String tcCode;

    @Column(name = "estimated_budget")
    private Double estimatedBudget;

    @Column(name = "sanctioned_budget")
    private Double sanctionedBudget;

    @Column(name = "additional_budget")
    private Double additionalBudget;

    @Column(name = "approved_budget")
    private Double approvedBudget;
    
    @Column(name = "record_status")
    private String recordStatus;

	public long getSl() {
		return sl;
	}

	public void setSl(long sl) {
		this.sl = sl;
	}

	public String getBudgetedYear() {
		return budgetedYear;
	}

	public void setBudgetedYear(String budgetedYear) {
		this.budgetedYear = budgetedYear;
	}

	public String getTrainingName() {
		return trainingName;
	}

	public void setTrainingName(String trainingName) {
		this.trainingName = trainingName;
	}

	public String getTcCode() {
		return tcCode;
	}

	public void setTcCode(String tcCode) {
		this.tcCode = tcCode;
	}

	public Double getEstimatedBudget() {
		return estimatedBudget;
	}

	public void setEstimatedBudget(Double estimatedBudget) {
		this.estimatedBudget = estimatedBudget;
	}

	public Double getSanctionedBudget() {
		return sanctionedBudget;
	}

	public void setSanctionedBudget(Double sanctionedBudget) {
		this.sanctionedBudget = sanctionedBudget;
	}

	public Double getAdditionalBudget() {
		return additionalBudget;
	}

	public void setAdditionalBudget(Double additionalBudget) {
		this.additionalBudget = additionalBudget;
	}

	public Double getApprovedBudget() {
		return approvedBudget;
	}

	public void setApprovedBudget(Double approvedBudget) {
		this.approvedBudget = approvedBudget;
	}

	public String getRecordStatus() {
		return recordStatus;
	}

	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
    
    


}
