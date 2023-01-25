-- 코드를 입력하세요
select a.APNT_NO, p.PT_NAME, a.PT_NO, a.MCDP_CD, d.DR_NAME , a.APNT_YMD
from PATIENT p, DOCTOR d, APPOINTMENT a
where a.PT_NO = p.PT_NO 
and a.MDDR_ID = d.DR_ID
and a.MCDP_CD = 'CS'
and a.APNT_CNCL_YN !='Y'
group by a.APNT_NO
having  a.APNT_YMD like '2022-04-13%'

order by a.APNT_YMD 