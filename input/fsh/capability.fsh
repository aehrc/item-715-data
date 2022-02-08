Instance: AUItem715SearchRequirement
InstanceOf: CapabilityStatement
Title: "Item 715 Search Requirement"
Usage: #definition
* name = "AUItem715SearchRequirement"
* description = "Requirements for MBS 715 item form pre-population."
* status = #draft
* experimental = true
* date = "2022-02-03"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml

* rest.mode = #server
/** rest.documentation = """
Requirements for 715 form pre-poulation
"""*/

* rest.security.cors = true
* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "SMART App Launch supported to allow MBS form population"


* rest.resource[0].type = #Patient
* rest.resource[0].profile = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCarePatient"
* rest.resource[0].interaction[0].code = #read
* rest.resource[0].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[0].interaction[0].extension[0].valueCode = #SHALL

* rest.resource[1].type = #Condition
* rest.resource[1].profile = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareCondition"
* rest.resource[1].interaction[0].code = #read
* rest.resource[1].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[1].interaction[0].extension[0].valueCode = #SHALL
* rest.resource[1].interaction[1].code = #search-type
* rest.resource[1].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[1].interaction[1].extension[0].valueCode = #SHALL
* rest.resource[1].searchParam[0].name = "patient"
* rest.resource[1].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[1].searchParam[0].type = #reference
* rest.resource[1].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[1].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[2].type = #FamilyMemberHistory
* rest.resource[2].profile = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFamilyMemberHistory"
* rest.resource[2].interaction[0].code = #read
* rest.resource[2].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[2].interaction[0].extension[0].valueCode = #SHALL
* rest.resource[2].interaction[1].code = #search-type
* rest.resource[2].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[2].interaction[1].extension[0].valueCode = #SHALL
* rest.resource[2].searchParam[0].name = "patient"
* rest.resource[2].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[2].searchParam[0].type = #reference
* rest.resource[2].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[2].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[3].type = #Observation
* rest.resource[3].supportedProfile[0] = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSmokingStatus"
* rest.resource[3].supportedProfile[1] = "http://hl7.org.au/fhir/StructureDefinition/au-bloodpressure"
* rest.resource[3].supportedProfile[2] = "http://hl7.org.au/fhir/StructureDefinition/au-bodyheight"
* rest.resource[3].supportedProfile[3] = "http://hl7.org.au/fhir/StructureDefinition/au-bodyweight"
* rest.resource[3].supportedProfile[4] = "http://hl7.org.au/fhir/StructureDefinition/au-heartrate"
* rest.resource[3].supportedProfile[5] = "http://hl7.org.au/fhir/StructureDefinition/au-bmi"
* rest.resource[3].supportedProfile[6] = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareWaistCircumference"
* rest.resource[3].supportedProfile[7] = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAbsoluteCVDRisk"
* rest.resource[3].supportedProfile[8] = "https://aehrc.com/fhir/StructureDefinition/AUItem715Cholesterol"
* rest.resource[3].supportedProfile[9] = "https://aehrc.com/fhir/StructureDefinition/AUItem715HDLCholesterol"
* rest.resource[3].interaction[0].code = #read
* rest.resource[3].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[3].interaction[0].extension[0].valueCode = #SHALL
* rest.resource[3].interaction[1].code = #search-type
* rest.resource[3].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[3].interaction[1].extension[0].valueCode = #SHALL
* rest.resource[3].searchParam[0].name = "patient"
* rest.resource[3].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[3].searchParam[0].type = #reference
* rest.resource[3].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[3].searchParam[0].extension[0].valueCode = #SHALL
* rest.resource[3].searchParam[1].name = "code"
* rest.resource[3].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[3].searchParam[1].type = #token
* rest.resource[3].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[3].searchParam[1].extension[0].valueCode = #SHALL


// obtain id from launch profile
* rest.resource[4].type = #Encounter
* rest.resource[4].profile = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareEncounter"
* rest.resource[4].interaction[0].code = #read
* rest.resource[4].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[4].interaction[0].extension[0].valueCode = #SHALL

* rest.resource[5].type = #Questionnaire
* rest.resource[5].operation[0].name = "populate"
* rest.resource[5].operation[0].definition = "http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-populate"
* rest.resource[5].operation[0].documentation = "Population operation for referenced or supplied questionnaire"


/*
* rest.interaction[0].code = #batch
* rest.interaction[1].code = #transaction
*/