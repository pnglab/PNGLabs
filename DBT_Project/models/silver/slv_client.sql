SELECT
    *,
    CASE WHEN Email is not null then true else false end AS FLAG_EMAIL
FROM
    {{ ref('brz_client') }}