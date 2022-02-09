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
* rest.documentation = """
Requirements for 715 form pre-poulation
"""

* rest.security.cors = true
* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "SMART App Launch supported to allow MBS form population"


* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://aehrc.com/fhir/StructureDefinition/AUItem715Patient"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[0].extension[0].valueCode = #SHALL

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "http://hl7.org.au/fhir/StructureDefinition/au-practitioner"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[0].extension[0].valueCode = #SHALL

* rest.resource[+].type = #Condition
* rest.resource[=].profile = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareCondition"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[0].extension[0].valueCode = #SHALL
* rest.resource[=].interaction[1].code = #search-type
* rest.resource[=].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[1].extension[0].valueCode = #SHALL
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[0].type = #reference
* rest.resource[=].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[+].type = #FamilyMemberHistory
* rest.resource[=].profile = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareFamilyMemberHistory"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[0].extension[0].valueCode = #SHALL
* rest.resource[=].interaction[1].code = #search-type
* rest.resource[=].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[1].extension[0].valueCode = #SHALL
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[0].type = #reference
* rest.resource[=].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[0].extension[0].valueCode = #SHALL

* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[0] = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareSmokingStatus"
* rest.resource[=].supportedProfile[1] = "http://hl7.org.au/fhir/StructureDefinition/au-bloodpressure"
* rest.resource[=].supportedProfile[2] = "http://hl7.org.au/fhir/StructureDefinition/au-bodyheight"
* rest.resource[=].supportedProfile[3] = "http://hl7.org.au/fhir/StructureDefinition/au-bodyweight"
* rest.resource[=].supportedProfile[4] = "http://hl7.org.au/fhir/StructureDefinition/au-heartrate"
* rest.resource[=].supportedProfile[5] = "http://hl7.org.au/fhir/StructureDefinition/au-bmi"
* rest.resource[=].supportedProfile[6] = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareWaistCircumference"
* rest.resource[=].supportedProfile[7] = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareAbsoluteCVDRisk"
* rest.resource[=].supportedProfile[8] = "https://aehrc.com/fhir/StructureDefinition/AUItem715Cholesterol"
* rest.resource[=].supportedProfile[9] = "https://aehrc.com/fhir/StructureDefinition/AUItem715HDLCholesterol"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[0].extension[0].valueCode = #SHALL
* rest.resource[=].interaction[1].code = #search-type
* rest.resource[=].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[1].extension[0].valueCode = #SHALL
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[0].type = #reference
* rest.resource[=].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[0].extension[0].valueCode = #SHALL
* rest.resource[=].searchParam[1].name = "code"
* rest.resource[=].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[1].type = #token
* rest.resource[=].searchParam[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[1].extension[0].valueCode = #SHALL


// obtain id from launch profile
* rest.resource[+].type = #Encounter
* rest.resource[=].profile = "https://aehrc.com/fhir/StructureDefinition/AUPrimaryCareEncounter"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[0].extension[0].valueCode = #SHALL

* rest.resource[+].type = #Questionnaire
* rest.resource[=].operation[0].name = "populate"
* rest.resource[=].operation[0].definition = "http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-populate"
* rest.resource[=].operation[0].documentation = "Population operation for referenced or supplied questionnaire"

* rest.resource[+].type = #QuestionnaireResponse
* rest.resource[=].profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[0].extension[0].valueCode = #SHALL
* rest.resource[=].interaction[1].code = #search-type
* rest.resource[=].interaction[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[1].extension[0].valueCode = #SHALL
* rest.resource[=].interaction[2].code = #create
* rest.resource[=].interaction[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[2].extension[0].valueCode = #SHALL
* rest.resource[=].interaction[3].code = #update
* rest.resource[=].interaction[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[3].extension[0].valueCode = #SHALL
* rest.resource[=].interaction[4].code = #delete
* rest.resource[=].interaction[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[4].extension[0].valueCode = #SHALL
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-patient"
* rest.resource[=].searchParam[0].type = #reference
* rest.resource[=].searchParam[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[0].extension[0].valueCode = #SHALL


/*
* rest.interaction[0].code = #batch
* rest.interaction[1].code = #transaction
*/