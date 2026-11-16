CLASS /eacm/cl_test_app_params DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.



CLASS /EACM/CL_TEST_APP_PARAMS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    TRY.
        DATA(parameter_value) = /eacm/cl_app_params=>get_value(
          iv_app_name     = 'MTE'
          iv_parameter_id = 'TIPO_DOCCONTR'
        ).

        out->write( |Valore restituito: [{ parameter_value }]| ).

        IF parameter_value = 'KA'.
          out->write( 'TEST OK: il valore corrisponde a KA.' ).
        ELSE.
          out->write( 'TEST FALLITO: il valore atteso era KA.' ).
        ENDIF.

      CATCH cx_abap_invalid_value.
        out->write(
          'Parametro MTE / TIPO_DOCCONTR non trovato.'
        ).
    ENDTRY.

  ENDMETHOD.
ENDCLASS.
