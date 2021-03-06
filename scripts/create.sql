DROP TABLE IF EXISTS "sample";
CREATE TABLE "sample" (
  "TransactionNumber" text,
  "SubjectiveCode" text,
  "RecordETLID" text,
  "DepartmentFamilyNameCanonical" text,
  "CompanyCode" text,
  "SourceFormat" text,
  "ProjectCode" text,
  "SupplierPostalCode" text,
  "Source" text,
  "SubcategoryDescription" text,
  "SupplierName" text,
  "Contract Number" text,
  "RecordSignature" text,
  "AccountCode" text,
  "SupplierVATNumber" text,
  "VATNumberFormatted" text,
  "SupplierNameURI" text,
  "CostCentre" text,
  "SourceDatasetName" text,
  "EntityName" text,
  "ExpenseArea" text,
  "TaxValue" text,
  "FlagVoluntaryCommunitySector" text,
  "SourceURL" text,
  "SourceDatasetTitle" text,
  "CategoryDescription" text,
  "AmountFormatted" numeric,
  "Date" text,
  "NONSTANDARD" text,
  "BudgetHolder" text,
  "DocumentDate" text,
  "SupplierType" text,
  "EntityNameCanonical" text,
  "ExpenditureType" text,
  "SourcePublisherTitle" text,
  "Claim Number" text,
  "ContractNumber" text,
  "PurchaseType" text,
  "DocumentValue" text,
  "Amount" text,
  "AccountDescription" text,
  "Narrative" text,
  "FlagSME" text,
  "FlagGrant" text,
  "SourceSheetID" text,
  "ProgrammeAdminOrCapital" text,
  "SupplierNameCanonical" text,
  "VendorName" text,
  "Programme" text,
  "Sector" text,
  "InvoiceNumber" text,
  "Maintainer" text,
  "DepartmentFamilyName" text,
  "FlagSoleTrader" text,
  "DocumentNumber" text,
  "InvoiceSource" text,
  "SourceID" text,
  "SourcePublisherName" text,
  "SourceDatasetID" text,
  "DateFormatted" date,
  "ExpenseType" text
);
COPY "sample" FROM '/home/rgrp.public/datasets/gov-spending-gb/cache/sample.csv' WITH CSV HEADER;

DROP TABLE IF EXISTS "latest";
CREATE TABLE "latest" (
  "TransactionNumber" text,
  "SubjectiveCode" text,
  "RecordETLID" text,
  "DepartmentFamilyNameCanonical" text,
  "CompanyCode" text,
  "SourceFormat" text,
  "ProjectCode" text,
  "SupplierPostalCode" text,
  "Source" text,
  "SubcategoryDescription" text,
  "SupplierName" text,
  "Contract Number" text,
  "RecordSignature" text,
  "AccountCode" text,
  "SupplierVATNumber" text,
  "VATNumberFormatted" text,
  "SupplierNameURI" text,
  "CostCentre" text,
  "SourceDatasetName" text,
  "EntityName" text,
  "ExpenseArea" text,
  "TaxValue" text,
  "FlagVoluntaryCommunitySector" text,
  "SourceURL" text,
  "SourceDatasetTitle" text,
  "CategoryDescription" text,
  "AmountFormatted" numeric,
  "Date" text,
  "NONSTANDARD" text,
  "BudgetHolder" text,
  "DocumentDate" text,
  "SupplierType" text,
  "EntityNameCanonical" text,
  "ExpenditureType" text,
  "SourcePublisherTitle" text,
  "Claim Number" text,
  "ContractNumber" text,
  "PurchaseType" text,
  "DocumentValue" text,
  "Amount" text,
  "AccountDescription" text,
  "Narrative" text,
  "FlagSME" text,
  "FlagGrant" text,
  "SourceSheetID" text,
  "ProgrammeAdminOrCapital" text,
  "SupplierNameCanonical" text,
  "VendorName" text,
  "Programme" text,
  "Sector" text,
  "InvoiceNumber" text,
  "Maintainer" text,
  "DepartmentFamilyName" text,
  "FlagSoleTrader" text,
  "DocumentNumber" text,
  "InvoiceSource" text,
  "SourceID" text,
  "SourcePublisherName" text,
  "SourceDatasetID" text,
  "DateFormatted" date,
  "ExpenseType" text
);
COPY "latest" FROM '/home/rgrp.public/datasets/gov-spending-gb/cache/latest.csv' WITH CSV HEADER;
-- create an index
CREATE INDEX dept_idx ON latest ("DepartmentFamilyNameCanonical");
