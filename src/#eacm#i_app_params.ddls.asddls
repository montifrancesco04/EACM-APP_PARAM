@EndUserText.label: 'Parametri applicativi - Root'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity /EACM/I_APP_PARAMS
  as select from /eacm/app_params
{
      @EndUserText.label: 'Applicazione'
  key app_name              as AppName,

      @EndUserText.label: 'Identificativo parametro'
  key parameter_id          as ParameterId,

      @EndUserText.label: 'Valore'
      value                 as Value,

      @EndUserText.label: 'Descrizione'
      description           as Description,

      @Semantics.user.createdBy: true
      created_by            as CreatedBy,

      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt
}
