### Background and Scope

The long-term vision for effective Aboriginal and Torres Strait Islander health checks is of a standards-based health check template that is consistent and interoperable across different systems and applications whilst allowing for local adaptation.

The RACGP and NACCHO established a working group to review the Aboriginal and Torres Strait Islander annual health check templates and have produced five new templates that span the life course:

1. Infants and preschool (birth-5 years)
2. Primary school age (5-12 years)
3. Adolescents and young people (12-24 years)
4. Adults (25-49 years) 
5. Older people (50+ years)

These example templates can be downloaded from the [RACGP](https://www.racgp.org.au/the-racgp/faculties/aboriginal-and-torres-strait-islander-health/guides/resources/2019-mbs-item-715-health-check-templates).

This **draft** implementation guide describes a Smart Form conceptualisation of the template for adults aged 25–49 years. The Smart Form has been defined as a FHIR Questionnaire resource and also contains details for the prepoulation of data from other FHIR clinical resources into a QuestionnaireResponse. It leverages capability described in the [Structured Data Capture FHIR Implementation Guide](http://build.fhir.org/ig/HL7/sdc/index.html).

Specifically included in the implementation guide are:
* Questionnaire resource defining the form content and structure
* CapabilityStatement resource defining the required FHIR API interactions for prepopulation
* Additional resource profiles required for prepoulation

A prototype has also been developed that implements these features as a proof of concept for how a Smart Form based on a template may be delivered within an existing system. It demonstrates how a Smart Form application can be launched from within a system to display a prepopulated health check that can be subseqently completed and written back to the electronic medical record.

A demonstration of this prototype can be viewed here. 

### Must Support

In the context of this implementation guide, "Must Support" means the elements are required for either searching or prepopulating the form.

### Future Development

The content within this implementation guide is draft and for experimental use only. Its current state reflects the development achieved within the scope of the project, however, it is expected to continue to mature. 

During the process there were several learnings. Of particular note, was the emergence of a ["modular" based approach to forms definitions](http://build.fhir.org/ig/HL7/sdc/modular.html). In essence, it allows a Questionnaire to be comprised of "modules", which themselves are also Questionnaire resources, acting as sub-questionnaires. Forms across healthcare often contain the same sections, so the use of modules is potentially a very powerful way to support re-use and consistent data capture. In time, there could be a library of standard definitions of modules from which a form author could use in the assembly of a new Questionnaire. Any future development on the prototype and content contained within this guide, would certainly explore this potential.
 
