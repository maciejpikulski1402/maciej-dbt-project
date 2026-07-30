select

    {{ dbt_utils.star(
        from=source('google_sheets','SALES'),
        except=["_ROW","_FIVETRAN_SYNCED"]
    ) }}

from {{ source('google_sheets','SALES') }}
