@EndUserText.label: 'Parametri applicativi'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity /EACM/C_APP_PARAMS
  provider contract transactional_query
  as projection on /EACM/I_APP_PARAMS
{
  key AppName,
  key ParameterId,

      Value,
      Description,

      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt
}
