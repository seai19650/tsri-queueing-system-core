INSERT INTO public.trfai_app_keywordphrasepairanalysisprojectstatus
(id, name_th, name_en, created_at, created_by, updated_at, updated_by)
VALUES 
(nextval('trfai_app_keywordphrasepairanalysisprojectstatus_id_seq'), 'แบบร่าง', 'Draft', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
,(nextval('trfai_app_keywordphrasepairanalysisprojectstatus_id_seq'), 'กำลังประมวลผล', 'Processing', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
,(nextval('trfai_app_keywordphrasepairanalysisprojectstatus_id_seq'), 'ประมวลผลไม่สำเร็จ', 'Processing Not Success', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
,(nextval('trfai_app_keywordphrasepairanalysisprojectstatus_id_seq'), 'ประมวลผลสำเร็จ', 'Processing Success', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
;

INSERT INTO public.trfai_app_keywordphrasepairevaluationprojectstatus
(id, name_th, name_en, created_at, created_by, updated_at, updated_by)
VALUES 
(nextval('trfai_app_keywordphrasepairevaluationprojectstatus_id_seq'), 'แบบร่าง', 'Draft', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
,(nextval('trfai_app_keywordphrasepairevaluationprojectstatus_id_seq'), 'รอการประเมิน', 'Waiting for Evaluation', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
,(nextval('trfai_app_keywordphrasepairevaluationprojectstatus_id_seq'), 'ประเมินเสร็จสิ้น', 'Evaluation Success', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
;

INSERT INTO public.trfai_app_proposalanalysisprojectstatus
(id, name_th, name_en, created_at, created_by, updated_at, updated_by)
VALUES 
(nextval('trfai_app_proposalanalysisprojectstatus_id_seq'), 'แบบร่าง', 'Draft', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
,(nextval('trfai_app_proposalanalysisprojectstatus_id_seq'), 'กำลังประมวลผล', 'Processing', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
,(nextval('trfai_app_proposalanalysisprojectstatus_id_seq'), 'ประมวลผลไม่สำเร็จ', 'Processing Not Success', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
,(nextval('trfai_app_proposalanalysisprojectstatus_id_seq'), 'ประมวลผลสำเร็จ', 'Processing Success', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1)
;

INSERT INTO public.trfai_app_strategyplan
(id, full_doc_name, full_doc_path, full_doc_type
	, name_th, name_en, description, issue_year, deleted_flag, created_at, created_by, updated_at, updated_by)
VALUES (nextval('trfai_app_strategyplan_id_seq'), 'Policy_and_strategy.pdf','/app/assets/media/strategic_plan//Policy_and_strategy.pdf','pdf'
	,'นโยบายและยุทธศาสตร์การอุดมศึกษา วิทยาศาสตร์ วิจัยและนวัตกรรม พ.ศ. ๒๕๖๓ - ๒๕๗๐', '', '', 2563, false, CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1);

INSERT INTO public.trfai_app_strategysection
(id, section_doc_name, section_doc_path, section_doc_type, name_th, name_en, created_at, created_by, updated_at, updated_by, strategy_plan_id, order_by)
VALUES 
(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog1.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog1.docx','docx'
	,'โปรแกรมที่ ๑ สร้างระบบผลิตและพัฒนากำลังคนให้มีคุณภาพ', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 1)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog2.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog2.docx','docx'
	,'โปรแกรมที่ ๒ การพัฒนากำลังคนระดับสูงรองรับ EEC และระบบเศรษฐกิจสังคมของประเทศ', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 2)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog3.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog3.docx','docx'
	,'โปรแกรมที่ ๓ ส่งเสริมการเรียนรู้ตลอดชีวิตและพัฒนาทักษะเพื่ออนาคต', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 3)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog4.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog4.docx','docx'
	,'โปรแกรมที่ ๔ ส่งเสริมปัญญาประดิษฐ์เป็นฐานขับเคลื่อนประเทศในอนาคต (AI for All)', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 4)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog5.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog5.docx','docx'
	,'โปรแกรมที่ ๕ ส่งเสริมการวิจัยขั้นแนวหน้า และการวิจัยพื้นฐานที่ประเทศไทยมีศักยภาพ', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 4)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog6.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog6.docx','docx'
	,'โปรแกรมที่ ๖ พัฒนาโครงสร้างพื้นฐานทางการวิจัยที่สำคัญ', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 6)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog7.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog7.docx','docx'
	,'โปรแกรมที่ ๗ โจทย์ท้าทายด้านทรัพยากร สิ่งแวดล้อม และการเกษตร', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 7)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog8.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog8.docx','docx'
	,'โปรแกรมที่ ๘ สังคมสูงวัย', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 8)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog9.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog9.docx','docx'
	,'โปรแกรมที่ ๙ สังคมคุณภาพและความมั่นคง', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 9)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog10.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog10.docx','docx'
	,'โปรแกรมที่ ๑๐ ยกระดับความสามารถการแข่งขันและวางรากฐานทางเศรษฐกิจ', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 10)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog11.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog11.docx','docx'
	,'โปรแกรมที่ ๑๑ สร้างและยกระดับศักยภาพวิสาหกิจเริ่มต้น (Startup) พัฒนาระบบนิเวศนวัตกรรม และพื้นที่เศรษฐกิจนวัตกรรม', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 11)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog12.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog12.docx','docx'
	,'โปรแกรมที่ ๑๒ โครงสร้างพื้นฐานทางคุณภาพและบริการ', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 12)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog13.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog13.docx','docx'
	,'โปรแกรมที่ ๑๓ นวัตกรรมสำหรับเศรษฐกิจฐานรากและชุมชนนวัตกรรม', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 13)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog14.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog14.docx','docx'
	,'โปรแกรมที่ ๑๔ ขจัดความยากจนแบบเบ็ดเสร็จและแม่นยำ', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 14)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog15.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog15.docx','docx'
	,'โปรแกรมที่ ๑๕ เมืองน่าอยู่และการกระจายศูนย์กลางความเจริญ', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 15)
,(nextval('trfai_app_strategysection_id_seq'),'Policy_and_strategy_only_prog16.docx','/app/assets/media/strategic_plan//Policy_and_strategy_only_prog16.docx','docx'
	,'โปรแกรมที่ ๑๖ ปฏิรูประบบการอุดมศึกษา วิทยาศาสตร์ วิจัย และนวัตกรรม (Reinventing Universities & Research Institutes)', '', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1, 16)
;

INSERT INTO public.trfai_app_menu
(id, name_th, name_en, url, order_by)
VALUES 
(nextval('trfai_app_menu_id_seq'), 'แหล่งองค์ความรู้', 'Knowledge Source', '', 1)
,(nextval('trfai_app_menu_id_seq'), 'คู่คำ/วลี', 'Keyword Phrase/Pair', '', 2)
,(nextval('trfai_app_menu_id_seq'), 'ข้อเสนอโครงการวิจัย', 'Proposal', '', 3)
,(nextval('trfai_app_menu_id_seq'), 'ส่วนของผู้ดูแลระบบ', 'Administrator', '', 4)
;

INSERT INTO public.trfai_app_submenu
(id, name_th, name_en, url, order_by, main_menu_id)
VALUES 
(nextval('trfai_app_submenu_id_seq'), 'รายงานวิจัยฉบับสมบูรณ์', 'Final Project Report', 'final_project_report', 1, 1)
,(nextval('trfai_app_submenu_id_seq'), 'การวิเคราะห์สกัดคู่คำ/วลี', 'Keyword Phrase/Pair Analysis Project', 'keyword_phrase_analysis_project', 2, 1)
,(nextval('trfai_app_submenu_id_seq'), 'โครงการประเมินคู่คำ/วลี', 'Keyword Phrase/Pair Evaluation Project', 'keyword_phrase_pair_project', 1, 2)
,(nextval('trfai_app_submenu_id_seq'), 'การประเมินคู่คำ/วลี', 'Keyword Phrase/Pair Evaluation', 'keyword_phrase_pair_evaluation', 2, 2)
,(nextval('trfai_app_submenu_id_seq'), 'ยุทธศาสตร์ อววน.', 'Strategic', 'strategic_plan', 1, 3)
,(nextval('trfai_app_submenu_id_seq'), 'ข้อเสนอโครงการวิจัย', 'Proposal Project', 'proposal_project', 2, 3)
,(nextval('trfai_app_submenu_id_seq'), 'การวิเคราะห์ข้อเสนอโครงการวิจัย', 'Proposal Analysis Project', 'proposal_analysis_project', 3, 3)
,(nextval('trfai_app_submenu_id_seq'), 'จัดการกรรมการ', 'Committee Management', 'committee', 1, 4)
;

INSERT INTO public.auth_group
(id, name)
VALUES 
(nextval('auth_group_id_seq'), 'Administrator')
,(nextval('auth_group_id_seq'), 'IT Staff')
,(nextval('auth_group_id_seq'), 'Genaral Staff')
,(nextval('auth_group_id_seq'), 'Committee')
;

INSERT INTO public.trfai_app_groupmenupermission
(id, group_id, main_menu_id)
VALUES 
(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 1)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 2)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 3)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 4)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 1)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 2)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 3)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 4)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Genaral Staff'), 1)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Genaral Staff'), 2)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Genaral Staff'), 3)
,(nextval('trfai_app_groupmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Committee'), 2)
;

INSERT INTO public.trfai_app_groupsubmenupermission
(id, group_id, sub_menu_id)
VALUES 
(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 1)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 2)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 3)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 4)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 5)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 6)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 7)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Administrator'), 8)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 1)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 2)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 3)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 5)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 6)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 7)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'IT Staff'), 8)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Genaral Staff'), 1)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Genaral Staff'), 2)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Genaral Staff'), 3)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Genaral Staff'), 5)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Genaral Staff'), 6)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Genaral Staff'), 7)
,(nextval('trfai_app_groupsubmenupermission_id_seq'), (select g.id from public.auth_group g where g.name = 'Committee'), 4)
;

INSERT INTO public.trfai_app_question
(id, description, created_at, created_by, updated_at, updated_by, "number")
VALUES 
(nextval('trfai_app_question_id_seq'), 'คุณคิดว่าคู่คำสอดคล้องกับจุดแข็งของสกว. หรือไม่', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 1)
,(nextval('trfai_app_question_id_seq'), 'คุณคิดว่าคู่คำสอดคล้องกับจุดที่ควรส่งเสริมหรือไม่', CURRENT_TIMESTAMP, 1, CURRENT_TIMESTAMP, 1, 2)
;



