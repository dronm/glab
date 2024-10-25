
CREATE OR REPLACE FUNCTION rg_bank_flow_balance(in_date_time timestamp,
	
	IN in_bank_account_id_ar int[]
					
	)

  RETURNS TABLE(
	bank_account_id int
	,
	total  numeric(15,2)				
	) AS
$BODY$
	WITH
	cur_per AS (SELECT rg_period('bank_flow'::reg_types, in_date_time) AS v ),
	
	act_forward AS (
		SELECT
			rg_period_balance('bank_flow'::reg_types,in_date_time) - in_date_time >
			(SELECT t.v FROM cur_per t) - in_date_time
			AS v
	),
	
	act_sg AS (SELECT CASE WHEN t.v THEN 1 ELSE -1 END AS v FROM act_forward t)

	SELECT 
	
	sub.bank_account_id
	,SUM(sub.total) AS total				
	FROM(
		(SELECT
		
		b.bank_account_id
		,b.total				
		FROM rg_bank_flow AS b
		WHERE
		
		(
			--date bigger than last calc period
			(in_date_time > rg_period_balance('bank_flow'::reg_types,rg_calc_period('bank_flow'::reg_types)) AND b.date_time = (SELECT rg_current_balance_time()))
			
			OR (
			--forward from previous period
			( (SELECT t.v FROM act_forward t) AND b.date_time = (SELECT t.v FROM cur_per t)-rg_calc_interval('bank_flow'::reg_types)
			)
			--backward from current
			OR			
			( NOT (SELECT t.v FROM act_forward t) AND b.date_time = (SELECT t.v FROM cur_per t)
			)
			
			)
		)	
		
				
		AND ( (in_bank_account_id_ar IS NULL OR ARRAY_LENGTH(in_bank_account_id_ar,1) IS NULL) OR (b.bank_account_id=ANY(in_bank_account_id_ar)))
		
		AND (
		b.total<>0
		)
		)
		
		UNION ALL
		
		(SELECT
		
		act.bank_account_id
		,CASE act.deb
			WHEN TRUE THEN act.total * (SELECT t.v FROM act_sg t)
			ELSE -act.total * (SELECT t.v FROM act_sg t)
		END AS quant
										
		FROM doc_log
		LEFT JOIN ra_bank_flow AS act ON act.doc_type=doc_log.doc_type AND act.doc_id=doc_log.doc_id
		WHERE
		(
			--forward from previous period
			( (SELECT t.v FROM act_forward t) AND
					act.date_time >= (SELECT t.v FROM cur_per t)
					AND act.date_time <= 
						(SELECT l.date_time FROM doc_log l
						WHERE date_trunc('second',l.date_time)<=date_trunc('second',in_date_time)
						ORDER BY l.date_time DESC LIMIT 1
						)
					
			)
			--backward from current
			OR			
			( NOT (SELECT t.v FROM act_forward t) AND
					act.date_time >= 
						(SELECT l.date_time FROM doc_log l
						WHERE date_trunc('second',l.date_time)>=date_trunc('second',in_date_time)
						ORDER BY l.date_time ASC LIMIT 1
						)			
					AND act.date_time <= (SELECT t.v FROM cur_per t)
			)
		)
			
		
		AND (in_bank_account_id_ar IS NULL OR ARRAY_LENGTH(in_bank_account_id_ar,1) IS NULL OR (act.bank_account_id=ANY(in_bank_account_id_ar)))
		
		AND (
		
		act.total<>0
		)
		ORDER BY doc_log.date_time,doc_log.id)
	) AS sub
	WHERE
	 (ARRAY_LENGTH(in_bank_account_id_ar,1) IS NULL OR (sub.bank_account_id=ANY(in_bank_account_id_ar)))
		
	GROUP BY
		
		sub.bank_account_id
	HAVING
		
		SUM(sub.total)<>0
						
	ORDER BY
		
		sub.bank_account_id;
$BODY$
  LANGUAGE sql VOLATILE CALLED ON NULL INPUT
  COST 100;

ALTER FUNCTION rg_bank_flow_balance(in_date_time timestamp,
	
	IN in_bank_account_id_ar int[]
					
	)
 OWNER TO ;

