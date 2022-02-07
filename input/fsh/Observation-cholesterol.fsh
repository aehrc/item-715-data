Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Profile: AUItem715Cholesterol
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: AUItem715Cholesterol
Title: "AU Item 715 Cholesterol"
Description: "Cholesterol observation"

* status MS 
* status = #final
* code MS

* code.coding 2..

* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[0].path = "code"
* code.coding ^slicing.discriminator[1].type = #value
* code.coding ^slicing.discriminator[1].path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false

* code.coding contains
    CholesterolLOINC 1..1 MS and 
    CholesterolSNOMED 1..1 MS

* code.coding[CholesterolLOINC].system 1..1
* code.coding[CholesterolLOINC].system = $LNC
* code.coding[CholesterolLOINC].code 1..1
* code.coding[CholesterolLOINC].code = #14647-2 //Cholesterol [Moles/volume] in Serum or Plasma
* code.coding[CholesterolSNOMED].system 1..1
* code.coding[CholesterolSNOMED].system = $SCT
* code.coding[CholesterolSNOMED].code 1..1
* code.coding[CholesterolSNOMED].code = #412808005 //Serum total cholesterol measurement (procedure)

* subject 1.. MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM
* valueQuantity.code 1..
* valueQuantity.code = #mmol/L