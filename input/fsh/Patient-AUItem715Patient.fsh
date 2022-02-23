Profile: AUItem715Patient
Parent: https://aehrc.com/fhir/StructureDefinition/AUPrimaryCarePatient
Id: AUItem715Patient
Title: "AU Item 715 Patient"
Description: "An AU Primary Care Patient extended to included additional Must Support Flags required for AU Item 715."


* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type.coding.system"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false

* identifier contains
    MedicareCard 0..1 MS and 
    HealthCareCard 0..1 MS and 
    PensionerConcessionCard 0..1 MS

* identifier[MedicareCard] only http://hl7.org.au/fhir/StructureDefinition/au-medicarecardnumber
* identifier[HealthCareCard] only http://hl7.org.au/fhir/StructureDefinition/au-healthcarecardnumber
* identifier[PensionerConcessionCard] only http://hl7.org.au/fhir/StructureDefinition/au-pensionerconcessioncardnumber

* gender MS
