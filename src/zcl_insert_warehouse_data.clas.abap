CLASS zcl_insert_warehouse_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_warehouse_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
   DATA lt_material TYPE TABLE OF zmat_master_mut.
   DATA lt_stock TYPE TABLE OF zstock_items_mut.

    lt_material = VALUE #(

      ( material_id = '111'
        name        = 'Laptop'
        unit        = 'PCS' )

      ( material_id = '222'
        name        = 'Mouse'
        unit        = 'PCS' )

      ( material_id = '333'
        name        = 'Keyboard'
        unit        = 'PCS' )

      ( material_id = '444'
        name        = 'Monitor'
        unit        = 'PCS' )

      ( material_id = '555'
        name        = 'Printer'
        unit        = 'PCS' )

    ).
    INSERT zmat_master_mut FROM TABLE @lt_material.

    lt_stock = VALUE #(

      ( warehouse_id = '001'
        material_id  = '111'
        quantity     = 50
        price_per_unit = 1000 )

      ( warehouse_id = '002'
        material_id  = '111'
        quantity     = 70
        price_per_unit = 1000 )

      ( warehouse_id = '001'
        material_id  = '222'
        quantity     = 30
        price_per_unit = 50 )

      ( warehouse_id = '002'
        material_id  = '222'
        quantity     = 20
        price_per_unit = 50 )

      ( warehouse_id = '001'
        material_id  = '333'
        quantity     = 40
        price_per_unit = 80 )

      ( warehouse_id = '002'
        material_id  = '333'
        quantity     = 65
        price_per_unit = 80 )

      ( warehouse_id = '001'
        material_id  = '444'
        quantity     = 15
        price_per_unit = 500 )

      ( warehouse_id = '002'
        material_id  = '444'
        quantity     = 25
        price_per_unit = 500 )

      ( warehouse_id = '001'
        material_id  = '555'
        quantity     = 90
        price_per_unit = 250 )

      ( warehouse_id = '002'
        material_id  = '555'
        quantity     = 40
        price_per_unit = 250 )

    ).

    INSERT zstock_items_mut FROM TABLE @lt_stock.



    out->write( 'Data Inserted Successfully' ).

  ENDMETHOD.
ENDCLASS.
