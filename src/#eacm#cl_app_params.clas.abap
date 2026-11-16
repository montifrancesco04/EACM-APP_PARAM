CLASS /eacm/cl_app_params DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    CLASS-METHODS get_value
      IMPORTING
        iv_app_name     TYPE /eacm/app_params-app_name
        iv_parameter_id TYPE /eacm/app_params-parameter_id
      RETURNING
        VALUE(rv_value) TYPE string
      RAISING
        cx_abap_invalid_value.

ENDCLASS.



CLASS /EACM/CL_APP_PARAMS IMPLEMENTATION.


  METHOD get_value.

    SELECT SINGLE value
      FROM /eacm/app_params
      WHERE app_name = @iv_app_name
        AND parameter_id = @iv_parameter_id
      INTO @rv_value.

    IF sy-subrc <> 0.
      RAISE EXCEPTION TYPE cx_abap_invalid_value.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
