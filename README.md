# INSPIRE-Domain-Model-for-Network-Cohort-Studies
## Background
## Scope
Using schemas from [schema.org](https://schema.org) with JSON-LD, INSPIRE has constructed a domain model that is being used to conduct a ***network cohort study***. In a network cohort study the data stays at home while the ***study definition*** and one or more ***data analysis workbenches*** that execute the study definition are shared.

In the INSPIRE domain model the study definition has two parts. In the first part called the ***study scope*** independent and dependent variables are enumerated. Independent variables are exposures and interventions (medical and/or public health). Dependent variables are health conditions. In the second part called the ***study design***, the independent and dependent variables are mapped to ***target*** and ***outcome*** cohorts in that order.

The study definition, in turn, interfaces with one or more data analysis workbenches. The workbenches run the study, They are platform independent which means that the workbenches can run in multiple cloud environments and/or locally in an organization's private network.

Right now the INSPIRE domain model works with the OHDSI data analysis workbench. It runs on top of the data that stays at home once it has been formatted in line with the OMOP CDM. There is a second data analysis platform called [I-DAIR](https://www.i-dair.org) that is learning to run on top of an OMOP CDM. It is an African-led initiative. The INSPIRE domain model is learning to interface with the I-DAIR data analysis workbench too.
## Upper Model 
### WHO Integrated Disease Surveillance and Response (IDSR) use case
![MedicalObservationalStudy-16](https://github.com/jaygee-on-github/INSPIRE-Domain-Model-for-Network-Cohort-Studies/assets/137520893/637ff30d-e048-4888-9318-0ec9281b8221)



