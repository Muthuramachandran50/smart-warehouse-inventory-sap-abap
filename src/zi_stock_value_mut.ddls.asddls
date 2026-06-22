@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'join stock value'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_STOCK_VALUE_MUT as select from zstock_items_mut as S
inner join zmat_master_mut as M
on S.material_id = M.material_id
{
    key S.material_id    as MaterialId,

        M.name           as MaterialName,

        S.warehouse_id   as WarehouseId,

        S.quantity       as Quantity,

        S.price_per_unit as PricePerUnit,

        ( S.quantity * S.price_per_unit ) as StockValue
}
