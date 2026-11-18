//@AbapCatalog.sqlViewName: ''
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'data definition for projection view'
@Metadata.ignorePropagatedAnnotations: true
//define view ZC_SPAC102_STOCK as select from ZR_SPAC102_STOCK
define root view entity ZC_SPAC102_STOCK
  provider contract transactional_query
  as projection on ZR_SPAC102_STOCK
{
  @UI.facet: [ {
    label: 'General Information',
    id: 'GeneralInfo',
    purpose: #STANDARD,
    position: 10 ,
    type: #IDENTIFICATION_REFERENCE
  } ]
  @EndUserText.label: 'WarehouseId'
  @UI.lineItem: [{ position : 10, label :  'WarehouseId'}]
  @UI.identification: [{ position : 10, label : 'WarehouseId'}]
  key WarehouseId,
  
  @EndUserText.label: 'ProductId'
  @UI.lineItem: [{ position : 20, label :  'ProductId'}]
  @UI.identification: [{ position : 20, label : 'ProductId'}]
  key ProductId,
  
  @EndUserText.label: 'Amount'
  @UI.lineItem: [{ position : 30, label :  'Amount'}]
  @UI.identification: [{ position : 30, label : 'Amount'}]
  Amount,
  
  _prodAssoc,
  _wahouseAssoc,
  
  @EndUserText.label: 'Product Name'
  @UI.lineItem: [{ position : 40, label :  'Product Name'}]
  @UI.identification: [{ position : 40, label : 'Product Name'}]
  _prodAssoc.product_name as ProductName,
  
  @EndUserText.label: 'Product Description'
  @UI.lineItem: [{ position : 50, label :  'Product Description'}]
  @UI.identification: [{ position : 50, label : 'Product Description'}]
  _prodAssoc.product_description as ProductDescription,
  
  
  @EndUserText.label: 'Postal Code'
  @UI.lineItem: [{ position : 60, label :  'Postal Code'}]
  @UI.identification: [{ position : 60, label : 'Postal Code'}]
  _wahouseAssoc.postal_code as PostalCode,
  
  @EndUserText.label: 'City'
  @UI.lineItem: [{ position : 70, label :  'City'}]
  @UI.identification: [{ position : 70, label : 'City'}]
  _wahouseAssoc.city as City,
  
  
    @EndUserText.label: 'Address'
  @UI.lineItem: [{ position : 80, label :  'Address'}]
  @UI.identification: [{ position : 80, label : 'Address'}]
  _wahouseAssoc.address as Address
  
}
