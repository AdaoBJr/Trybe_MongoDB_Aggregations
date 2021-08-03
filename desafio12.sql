SELECT 
    CONCAT(employe_1.FIRST_NAME,
            ' ',
            employe_1.LAST_NAME) AS 'Nome completo funcionário 1',
    employe_1.SALARY AS 'Salário funcionário 1',
    employe_1.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(employe_2.FIRST_NAME,
            ' ',
            employe_2.LAST_NAME) AS 'Nome completo funcionário 2',
    employe_2.SALARY AS 'Salário funcionário 2',
    employe_2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS employe_1
        INNER JOIN
    hr.employees AS employe_2 ON employe_1.JOB_ID = employe_2.JOB_ID
WHERE
    CONCAT(employe_1.FIRST_NAME,
            ' ',
            employe_1.LAST_NAME) <> CONCAT(employe_2.FIRST_NAME,
            ' ',
            employe_2.LAST_NAME)
ORDER BY 1 , 4;
