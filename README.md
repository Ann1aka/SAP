# SAP
This project implements a SAP Fiori application using the ABAP RESTful Application Programming Model (RAP) for managing products, warehouses, and stock. This is done through database tables, CDS view entities, behavior definitions, and OData V4 services.

The imeplementation supports creating, updating, and deleting products, warehouses, and stock records. Associations are used to connect stock entries with their related products and warehouses, allowing product names, descriptions, and warehouse information to be displayed together.

Draft functionality has been implemented to allow users to create and edit records before activating or discarding their changes. Validations ensure that stock quantities cannot be negative, and that the same combination of product ID and warehouse ID cannot be used multiple times. 

ABAP behavior implementation classes contain the validation logic, data loading logic, authorization handling, and interaction with the RAP business objects.
