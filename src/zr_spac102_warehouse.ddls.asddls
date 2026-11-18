//@AbapCatalog.sqlViewName: ''
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'data definition for ZSPAC102_WAHOUSE'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_SPAC102_WAREHOUSE as select from zspac102_wahouse
{
  key warehouse_id as WarehouseId,
  address as Address,
  city as City,
  postal_code as PostalCode,
  
  
  local_created_by as LocalCreatedBy,
  local_created_at as LocalCreatedAt,
  local_last_changed_by as LocalLastChangedBy,
  local_last_changed_at as LocalLastChangedAt,
  last_changed_at as LastChangedAt
}
