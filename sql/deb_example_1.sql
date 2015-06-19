select s.nmdp_id, s.subject_typ_id, t.subject_typ_desc, s.subject_classification_id, c.subject_classification_desc, s.subject_guid  
from bio_landing.sip_subject s
join bio_landing.sip_subject_type t on (S.SUBJECT_TYP_ID = T.SUBJECT_TYP_ID)
join bio_landing.sip_subject_classification c 
     on (S.SUBJECT_CLASSIFICATION_ID = C.SUBJECT_CLASSIFICATION_ID)
where NMDP_ID in (1128282,23929)
