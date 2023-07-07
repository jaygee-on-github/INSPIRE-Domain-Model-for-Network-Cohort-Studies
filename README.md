# INSPIRE-Domain-Model-for-Network-Cohort-Studies
## Background
[INSPIRE](https://aphrc.org/inspire/) is the Implementation Network for Sharing Population Information from Research Entities. The INSPIRE domain model for network cohort studies was initially funded by [WorldFAIR](https://codata.org/initiatives/decadal-programme2/worldfair/).

<img width="404" alt="image" src="https://github.com/jaygee-on-github/INSPIRE-Domain-Model-for-Network-Cohort-Studies/assets/137520893/1bf67dae-3073-45e0-bb8e-06342457836d">

It is WP7 above which was charged with developing a FAIR model for population health research. INSPIRE got this work in part because it was using [OHDSI](https://www.ohdsi.org). OHDSI is the Observational Health Data Sciences and Informatics initiative. The OHDSI initiative conducts network research across an international community using a data analysis workbench on top of a common data model called the [OMOP CDM](https://www.ohdsi.org/data-standardization/) that hosts standardised clinical, administrative and population health (registries, cohort studies, etc.) data.

It turns out that [a FAIR assessment of OHDSI](https://www.ohdsi.org/wp-content/uploads/2020/05/Implementing-FAIR-in-OHDSI.pdf) had already been undertaken by the [EHDEN project](https://www.ehden.eu). Based on this assessment, as part of a 2020 COVID-19 Study-a-thon that conducted several COVID-19 specific network studies, EHDEN put together [a metadata model for network medical observational studies](https://api.thehyve.nl/uploads/Vos-FAIR-metadata-1.pdf) that was used in the Study-a-thon as a proof-of-concept. As part of WorldFAIR WP7, INSPIRE took this proof-of-concept and has grown it.

WP7, in turn, contributes to WP2 -- the [Cross-Domain Interoperability Framework](https://github.com/Cross-Domain-Interoperability-Framework) (CDIF). CDIF culls all the domain-specific metadata models (WP3-WP13) for common ground. As a matter of fact, many of these metadata models were specified using [schema.org](https://schema.org) and [JSON-LD](https://www.w3.org/TR/json-ld11/).

## Scope
Using schemas from schema.org with JSON-LD, INSPIRE has constructed a domain model that is being used to conduct a ***network cohort study***. In a network cohort study the data stays at home with ministries and/or universities and/or research organizations that own the data while the ***study definition*** and one or more ***data analysis workbenches*** that execute the study definition are shared.

In the INSPIRE domain model, the study definition has two parts. In the first part called the ***study scope*** independent and dependent variables are enumerated. Independent variables are exposures (external exposome), risk factors (internal exposome) and interventions (medical and/or public health). Dependent variables are health conditions. 

<img width="481" alt="image" src="https://github.com/jaygee-on-github/INSPIRE-Domain-Model-for-Network-Cohort-Studies/assets/137520893/0c041bff-d81c-4ef4-b0d2-e24f140da50d">

*From [Use of the exposome in the practice of epidemiology](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5025320/#:~:text=Three%20domains%20of%20the%20exposome,specific%20external%20and%20general%20external.)*

In the second part of the model called the ***study design***, the independent and dependent variables are mapped to ***target*** and ***outcome*** cohorts in that order. Using these cohorts as building blocks, several types of analyses are supported including characterization, causal analyses of the effects of clinical and/or public health interventions and patient-level prediction.

The study definition, in turn, interfaces with one or more data analysis workbenches. The workbenches run the study. They are platform independent which means that the workbenches can run in multiple cloud environments and/or locally in an organization's private network.

Right now the INSPIRE domain model works with the [OHDSI data analysis workbench](https://www.ohdsi.org/software-tools/), sharing a ***machine actionable*** representation of the study definition with other research entities in the network study. A workbench runs this representation, conducting a study on top of data that has been formatted in line with the [OMOP CDM](https://www.ohdsi.org/data-standardization/). There is a second data analysis workbench called [I-DAIR](https://www.i-dair.org) that is learning to run on top of an OMOP CDM. It is an African-led initiative. It is more ***codeless*** than the OHDSI data analysis workbench. The INSPIRE domain model is learning to interface with the I-DAIR data analysis workbench too.
## Upper Model 
#### *WHO Integrated Disease Surveillance and Response (IDSR) use case*
![MedicalObservationalStudy-19](https://github.com/jaygee-on-github/INSPIRE-Domain-Model-for-Network-Cohort-Studies/assets/137520893/5566c336-1847-45dc-9fdf-961da00c14e5)
### Profiles
The upper model is comparable to an outline of the domain model for network studies. Based on the upper model, there are ***profiles*** -- one for each data analysis workbench. *A profile individualizes the upper model so it can interface with a target workbench.* Currently, INSPIRE is in the process of completing a profile that goes with the OHDSI data analysis workbench. At the same time INSPIRE and the I-DAIR data analysis workbench group are beginning a second profile in part to test if there are any gaps in the upper model and, in part, to grow the analysis capabilities of INSPIRE. 

One issue that has surfaced with the upper model is the support that it provides for the reuse of machine learning models for predictive analysis across sites (e.g., [federated learning](https://en.wikipedia.org/wiki/Transfer_learning) and/or [transfer learning](https://en.wikipedia.org/wiki/Federated_learning#)).
