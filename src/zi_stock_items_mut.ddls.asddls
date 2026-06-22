@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds for stock items'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_STOCK_ITEMS_MUT as select from ZSTOCK_ITEMS_MUT
association to parent ZI_MAT_MASTER_MUT as _Material
on $projection.MaterialId = _Material.MaterialId
{
    key warehouse_id as WarehouseId,
    key material_id as MaterialId,
    quantity as Quantity,
    price_per_unit as PricePerUnit,
    _Material
}
