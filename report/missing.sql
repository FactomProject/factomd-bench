SELECT
  count(*),
  trim('"' FROM block::text )::int as block
FROM (SELECT
e->'log'->'height'::text as block
from fnode0.missing_messages
 where e->'log'->'event'->4 is not null  ) as s
  GROUP by s.block
 ORDER BY block ;
