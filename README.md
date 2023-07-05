# INSPIRE-Domain-Model-for-Network-Cohort-Studies
## Background
The INSPIRE domain model for network cohort studies was initially funded by [WorldFAIR](https://codata.org/initiatives/decadal-programme2/worldfair/).

<img width="404" alt="image" src="https://github.com/jaygee-on-github/INSPIRE-Domain-Model-for-Network-Cohort-Studies/assets/137520893/1bf67dae-3073-45e0-bb8e-06342457836d">

It is WP7 which was charged with developing a FAIR model for population health research. WP7, in turn, contributes to WP2 -- the [Cross-Domain Interoperability Framework](https://github.com/Cross-Domain-Interoperability-Framework (CDIF). CDIF culls domain-specific schema.org JSON-LD metadata models.

## Scope
Using schemas from [schema.org](https://schema.org) with JSON-LD, INSPIRE has constructed a domain model that is being used to conduct a ***network cohort study***. In a network cohort study the data stays at home while the ***study definition*** and one or more ***data analysis workbenches*** that execute the study definition are shared.

In the INSPIRE domain model the study definition has two parts. In the first part called the ***study scope*** independent and dependent variables are enumerated. Independent variables are exposures and interventions (medical and/or public health). Dependent variables are health conditions. In the second part called the ***study design***, the independent and dependent variables are mapped to ***target*** and ***outcome*** cohorts in that order.

The study definition, in turn, interfaces with one or more data analysis workbenches. The workbenches run the study, They are platform independent which means that the workbenches can run in multiple cloud environments and/or locally in an organization's private network.

Right now the INSPIRE domain model works with the [OHDSI data analysis workbench](https://www.ohdsi.org/software-tools/). It runs on top of the data that stays at home once it has been formatted in line with the [OMOP CDM](https://www.ohdsi.org/data-standardization/). There is a second data analysis workbench called [I-DAIR](https://www.i-dair.org) that is learning to run on top of an OMOP CDM. It is an African-led initiative. The INSPIRE domain model is learning to interface with the I-DAIR data analysis workbench too.
## Upper Model 
### WHO Integrated Disease Surveillance and Response (IDSR) use case
![MedicalObservationalStudy-16](https://github.com/jaygee-on-github/INSPIRE-Domain-Model-for-Network-Cohort-Studies/assets/137520893/637ff30d-e048-4888-9318-0ec9281b8221)



