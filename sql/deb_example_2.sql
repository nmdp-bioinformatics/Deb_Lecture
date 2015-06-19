select d.nmdp_did, dc.dcnum, ddc.recnum
  from bio_landing.STAGE_STRLNK_DONOR_CENTER dc
  join bio_landing.stage_strlnk_dnr_donor_center ddc on (dc.iid = ddc.iid_dnrcenter)
  join bio_landing.slw_dnr_iid d on (ddc.iid_dnr = d.iid)
where dc.dcnum = '081'
   and ddc.recnum = 0235607
   