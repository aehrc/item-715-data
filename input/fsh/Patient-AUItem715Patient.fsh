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

* identifier[MedicareCard] ^type.code = #Identifier
* identifier[MedicareCard] ^type.profile = "http://hl7.org.au/fhir/StructureDefinition/au-medicarecardnumber"
/*
* identifier[MedicareCard].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[MedicareCard].type.coding.code = #MC (exactly)
* identifier[MedicareCard].system = "http://ns.electronichealth.net.au/id/medicare-number" (exactly)
*/

* identifier[HealthCareCard] ^type.code = #Identifier
* identifier[HealthCareCard] ^type.profile = "http://hl7.org.au/fhir/StructureDefinition/au-healthcarecardnumber"
/*
* identifier[HealthCareCard].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[HealthCareCard].type.coding.code = #HC (exactly)
* identifier[HealthCareCard].system = "http://ns.electronichealth.net.au/id/centrelink-customer-reference-number" (exactly)
*/

* identifier[PensionerConcessionCard] ^type.code = #Identifier
* identifier[PensionerConcessionCard] ^type.profile = "http://hl7.org.au/fhir/StructureDefinition/au-pensionerconcessioncardnumber"
/*
* identifier[PensionerConcessionCard].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[PensionerConcessionCard].type.coding.code = #PEN (exactly)
* identifier[PensionerConcessionCard].system = "http://ns.electronichealth.net.au/id/centrelink-customer-reference-number" (exactly)
*/

* gender MS