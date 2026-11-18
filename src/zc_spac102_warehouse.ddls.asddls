//@AbapCatalog.sqlViewName: ''
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'data definition for projection view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_SPAC102_WAREHOUSE 
 provider contract transactional_query
  as projection on ZR_SPAC102_WAREHOUSE
{
  @UI.facet: [ {
    label: 'General Information',
    id: 'GeneralInfo',
    purpose: #STANDARD,
    position: 10 ,
    type: #IDENTIFICATION_REFERENCE
  } ]
  @EndUserText.label: 'Warehouse Id'
  @UI.lineItem: [{ position : 10, label :  'Warehouse Id'}]
  @UI.identification: [{ position : 10, label : 'Warehouse Id'}]
  key WarehouseId,
  
  @EndUserText.label: 'Address'
  @UI.lineItem: [{ position : 20, label :  'Address'}]
  @UI.identification: [{ position : 20, label : 'Address'}]
  Address,
  
  @EndUserText.label: 'City'
  @UI.lineItem: [{ position : 30, label :  'City'}]
  @UI.identification: [{ position : 30, label : 'City'}]
  City,  

  @EndUserText.label: 'Postal Code'
  @UI.lineItem: [{ position : 30, label :  'Postal Code'}]
  @UI.identification: [{ position : 30, label : 'Postal Code'}]
  PostalCode,
  
  
  
  LocalCreatedBy,  
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
}
