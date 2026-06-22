@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds for mat master'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_MAT_MASTER_MUT as select from ZMAT_MASTER_MUT
composition [0..*] of ZI_STOCK_ITEMS_MUT as _StockItems
{
    key material_id as MaterialId,
    name as Name,
    unit as Unit,
    _StockItems // Make association public
}
