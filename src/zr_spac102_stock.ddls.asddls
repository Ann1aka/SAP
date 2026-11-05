//@AbapCatalog.sqlViewName: 'ZVSPAC102STOCK'
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'data definition for ZSPAC102_STOCK'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZR_SPAC102_STOCK as select from zspac102_stock
{
  key warehouse_id as WarehouseId, //aliases
  key product_id as ProductId,
  amount as Amount
}
