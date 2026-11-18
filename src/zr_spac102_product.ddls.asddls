//@AbapCatalog.sqlViewName: ''
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'data definition'
@Metadata.ignorePropagatedAnnotations: true


//@EndUserText.label
//#IDENTIFICATION_REFERENCE

define root view entity ZR_SPAC102_PRODUCT as select from zspac102_product
{
  //@UI.identification: [{ position : 10, label : 'Product id'},
  //                     { position : 20, label: 'Product name'}
  //                    ]
  key product_id as ProductId,
  product_name as ProductName,
  
  //@UI.lineItem: [{ position : 30, label :  'Product description'}]
  product_description as ProductDescription,
  local_created_by as LocalCreatedBy,
  local_created_at as LocalCreatedAt,
  local_last_changed_by as LocalLastChangedBy,
  local_last_changed_at as LocalLastChangedAt,
  last_changed_at as LastChangedAt
  
}

