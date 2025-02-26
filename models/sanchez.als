sig Patient {
	fuzzy symptoms : some Symptom 
}

abstract sig Symptom {
	fuzzy pathology : set Disease 
}
one sig Temp, Cough, StmPn, ChtPn, Hdche extends Symptom {}

abstract sig Disease {}
one sig ViralFv, Typhoid, StmPrb, Malaria, ChtPrb extends Disease {}

fun diagnosis : Patient -> Disease {
	{ p:Patient, d:Disease | d in max[p .symptoms. pathology] } 
}

fun expert_R : Symptom -> Disease {
	  (0.4**Temp + 0.4**Cough + 0.1**StmPn + 0.1**ChtPn + 0.3**Hdche) -> ViralFv +
	  (0.7**Temp + 0.2**Hdche + 0.7**Cough + 0.1**ChtPn) -> Malaria +
	  (0.3**Temp + 0.2**Cough + 0.1**ChtPn + 0.6**Hdche + 0.2**StmPn) -> Typhoid +
	  (0.1**Temp + 0.2**Cough + 0.8**StmPn + 0.2**ChtPn + 0.2**Hdche) -> StmPrb +
	  (0.1**Temp + 0.2**StmPn + 0.8**ChtPn + 0.2**Cough) -> ChtPrb 
}

run two_diagnosis { 
	some p : Patient | Malaria + ChtPrb in p.diagnosis 
	pathology = expert_R 
} for 1 Patient

run same_diagnosis { 
	some p1, p2 : Patient | p1.diagnosis = p2.diagnosis and no p1.symptoms & p2.symptoms 
	pathology = expert_R 
} for 2 Patient




