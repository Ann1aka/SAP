CLASS lhc_ZR_SPAC102_STOCK DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR zr_spac102_stock RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      REQUEST requested_authorizations FOR zr_spac102_stock RESULT result.

    METHODS checksemantickey
      FOR VALIDATE ON SAVE
      IMPORTING keys
      FOR zr_spac102_stock~checksemantickey.

    METHODS validateAmount
      FOR VALIDATE ON SAVE
      IMPORTING keys
      FOR zr_spac102_stock~validateAmount.

*    DATA failed_record LIKE LINE OF failed-flight.
*    DATA reported_record LIKE LINE OF reported-flight.

ENDCLASS.

CLASS lhc_ZR_SPAC102_STOCK IMPLEMENTATION.



  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD checkSemanticKey.
    READ ENTITIES OF zr_spac102_stock IN LOCAL MODE
      ENTITY zr_spac102_stock
      FIELDS ( ProductId WarehouseId )
        WITH CORRESPONDING #( keys )
*     inputted values saved in internal table for result
      RESULT DATA(stock_entries).

    LOOP AT stock_entries INTO DATA(stock_entry).
*     check whether inputted combination of productId and warehouseId exists in db
      SELECT SINGLE warehouse_id
*       read from table with stock
        FROM zspac102_stock
*       compare db field warehouse_id with the ABAP value @stock_entry-warehouse_id
        WHERE warehouse_id = @stock_entry-WarehouseId
           AND product_id = @stock_entry-ProductId
        INTO @DATA(existing_warehouse).

      IF sy-subrc = 0.
*     success - the combination already exists
      APPEND VALUE #(
*       which stock entry failed denoted by technical key %tky
        %tky = stock_entry-%tky
       ) TO failed-zr_spac102_stock.

      APPEND VALUE #(
        %tky = stock_entry-%tky
        %msg = new_message(
            id = 'ZBP_R_SPAC102_MSG'
            number = '001'
            severity = if_abap_behv_message=>severity-error )
          %element-WarehouseId = if_abap_behv=>mk-on
          %element-ProductId   = if_abap_behv=>mk-on
       ) TO reported-zr_spac102_stock.

      ENDIF.



    ENDLOOP.
  ENDMETHOD.

  METHOD validateAmount.
    READ ENTITIES OF zr_spac102_stock IN LOCAL MODE
      ENTITY zr_spac102_stock
      FIELDS ( Amount )
        WITH CORRESPONDING #( keys )
*     inputted values saved in internal table for result
      RESULT DATA(stock_entries).

    LOOP AT stock_entries INTO DATA(stock_entry).
      IF stock_entry-Amount < 0.

        APPEND VALUE #(
          %tky = stock_entry-%tky
        ) TO failed-zr_spac102_stock.

        APPEND VALUE #(
          %tky = stock_entry-%tky
          %msg = new_message(
            id       = 'ZBP_R_SPAC102_MSG'
            number   = '002'
            severity = if_abap_behv_message=>severity-error )
          %element-Amount = if_abap_behv=>mk-on
        ) TO reported-zr_spac102_stock.

      ENDIF.





**       add error message to reported
*        reported_record-%tky = flight-%tky.
*        reported_record-%msg = new_message(
*                          id       = '/LRN/S4D400'
*                          number   = '101'
*                          severity = ms-error ).
*        APPEND reported_record TO reported-flight.
    ENDLOOP.


  ENDMETHOD.


ENDCLASS.
