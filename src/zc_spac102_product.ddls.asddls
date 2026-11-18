//@AbapCatalog.sqlViewName: ''
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'data definition for projection view'
@Metadata.ignorePropagatedAnnotations: true

//@EndUserText.label
//#IDENTIFICATION_REFERENCE!!!!!!!!!!!!!!!
define root view entity ZC_SPAC102_PRODUCT 
 provider contract transactional_query
  as projection on ZR_SPAC102_PRODUCT
{
  @UI.facet: [ {
    label: 'General Information',
    id: 'GeneralInfo',
    purpose: #STANDARD,
    position: 10 ,
    type: #IDENTIFICATION_REFERENCE
  } ]
  @EndUserText.label: 'ProductId'
  @UI.lineItem: [{ position : 10, label :  'Product id'}]
  @UI.identification: [{ position : 10, label : 'Product id'}]
  key ProductId,
  
  @EndUserText.label: 'ProductName'
  @UI.lineItem: [{ position : 20, label :  'Product name'}]
  @UI.identification: [{ position : 20, label : 'Product name'}]
  ProductName,
  
  @EndUserText.label: 'ProductDescription'
  @UI.lineItem: [{ position : 30, label :  'Product description'}]
  @UI.identification: [{ position : 30, label : 'Product description'}]
  ProductDescription,
  
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
}
