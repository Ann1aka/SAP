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
  key WarehouseId,
  key ProductId,
  Amount,
  
  _prodAssoc,
  _wahouseAssoc,
  
  _prodAssoc.product_name as ProductName,
  _prodAssoc.product_description as ProductDescription,
  
  _wahouseAssoc.postal_code as PostalCode,
  _wahouseAssoc.city as City,
  _wahouseAssoc.address as Address
  
}
