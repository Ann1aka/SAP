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
  Amount
}
