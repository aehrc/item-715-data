Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

Profile: AUItem715HDLCholesterol
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: AUItem715HDLCholesterol
Title: "AU Item 715 HDL Cholesterol"
Description: "HDL Cholesterol observation"

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
    HDLCholesterolLOINC 1..1 MS and 
    HDLCholesterolSNOMED 1..1 MS

* code.coding[HDLCholesterolLOINC].system 1..1
* code.coding[HDLCholesterolLOINC].system = $LNC (exactly)
* code.coding[HDLCholesterolLOINC].code 1..1
* code.coding[HDLCholesterolLOINC].code = #14646-4 (exactly) //Cholesterol in HDL [Moles/volume] in Serum or Plasma
* code.coding[HDLCholesterolSNOMED].system 1..1
* code.coding[HDLCholesterolSNOMED].system = $SCT (exactly)
* code.coding[HDLCholesterolSNOMED].code 1..1
* code.coding[HDLCholesterolSNOMED].code = #166832000 (exactly) //Serum high density lipoprotein cholesterol measurement (procedure)

* subject 1.. MS

* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #mmol/L (exactly)