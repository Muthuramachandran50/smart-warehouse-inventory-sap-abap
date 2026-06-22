CLASS zcl_stock_analysis_mut DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_stock_analysis_mut IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    SELECT
      materialid,
      materialname,
      SUM( quantity ) AS total_quantity
      FROM zi_stock_value_mut
      GROUP BY materialid, materialname
      HAVING SUM( quantity ) > 100
      INTO TABLE @DATA(lt_result).

    out->write( lt_result ).


    SELECT
    materialid,
    materialname,
    AVG( priceperunit ) AS avg_price
FROM zi_stock_value_mut
GROUP BY materialid, materialname
HAVING AVG( priceperunit ) > 100
INTO TABLE @DATA(lt_avg).

out->write( lt_avg ).
  ENDMETHOD.
ENDCLASS.
