ALTER TABLE ods.budget DROP CONSTRAINT budget_ix_if1;
ALTER TABLE ods.budget_fact DROP CONSTRAINT budget_fact_ix_if1;
ALTER TABLE ods.budget_line DROP CONSTRAINT budget_line_ix_if2;
ALTER TABLE ods.budget_line DROP CONSTRAINT budget_line_ix_if3;
ALTER TABLE ods.budget_line DROP CONSTRAINT budget_line_ix_if5;
ALTER TABLE ods.budget_line DROP CONSTRAINT budget_line_ix_if6;
ALTER TABLE ods.contract_review DROP CONSTRAINT contract_review_ix_if1;
ALTER TABLE ods.contract_review DROP CONSTRAINT contract_review_ix_if2;
ALTER TABLE ods.contract_review DROP CONSTRAINT contract_review_ix_if3;
ALTER TABLE ods.contract_review DROP CONSTRAINT contract_review_ix_if4;
ALTER TABLE ods.decision_list DROP CONSTRAINT decision_list_ix_if2;
ALTER TABLE ods.hsg_call_quality_result DROP CONSTRAINT hsg_call_quality_result_ix_if2;
ALTER TABLE ods.hsg_call_quality_result DROP CONSTRAINT hsg_call_quality_result_ix_if3;
ALTER TABLE ods.hsg_chat_quality_result DROP CONSTRAINT hsg_chat_quality_result_ix_if1;
ALTER TABLE ods.hsg_control_doc_findings DROP CONSTRAINT hsg_control_doc_finding_ix_if2;
ALTER TABLE ods.hsg_control_doc_line DROP CONSTRAINT hsg_control_doc_line_ix_if1;
ALTER TABLE ods.hsg_workflow_task DROP CONSTRAINT hsg_workflow_task_ix_if2;
ALTER TABLE ods.invoice DROP CONSTRAINT invoice_ix_if1;
ALTER TABLE ods.invoice DROP CONSTRAINT invoice_ix_if2;
ALTER TABLE ods.invoice DROP CONSTRAINT invoice_ix_if3;
ALTER TABLE ods.pmo_tasks DROP CONSTRAINT pmo_tasks_ix_if1;
ALTER TABLE ods.aml_acam_certification DROP CONSTRAINT aml_acam_certification_ix_pk;
ALTER TABLE ods.aml_blacklist_country DROP CONSTRAINT aml_blacklist_country_ix_pk;
ALTER TABLE ods.aml_cip_letter DROP CONSTRAINT aml_cip_letter_ix_pk;
ALTER TABLE ods.aml_dealer_contracts DROP CONSTRAINT aml_dealer_contracts_ix_pk;
ALTER TABLE ods.aml_fbar_filings DROP CONSTRAINT aml_fbar_filings_ix_pk;
ALTER TABLE ods.aml_fincen DROP CONSTRAINT aml_fincen_ix_pk;
ALTER TABLE ods.aml_foreign_corr_banks DROP CONSTRAINT aml_foreign_corr_banks_ix_pk;
ALTER TABLE ods.aml_policy_procedure DROP CONSTRAINT aml_policy_procedure_ix_pk;
ALTER TABLE ods.aml_qtrly_dealer_review DROP CONSTRAINT aml_qtrly_dealer_review_ix_pk;
ALTER TABLE ods.aml_sar DROP CONSTRAINT aml_sar_ix_pk;
ALTER TABLE ods.aml_training_history DROP CONSTRAINT aml_training_history_ix_pk;
ALTER TABLE ods.budget DROP CONSTRAINT budget_ix_pk;
ALTER TABLE ods.budget_category DROP CONSTRAINT budget_category_ix_pk;
ALTER TABLE ods.budget_fact DROP CONSTRAINT budget_fact_ix_pk;
ALTER TABLE ods.budget_line DROP CONSTRAINT budget_line_ix_pk;
ALTER TABLE ods.contract_review DROP CONSTRAINT contract_review_ix_pk;
ALTER TABLE ods.decision_list DROP CONSTRAINT decision_list_ix_pk;
ALTER TABLE ods.hsg_call_quality_program DROP CONSTRAINT hsg_call_quality_program_ix_pk;
ALTER TABLE ods.hsg_call_quality_question DROP CONSTRAINT hsg_cq_question_ix_pk;
ALTER TABLE ods.hsg_call_quality_result DROP CONSTRAINT hsg_call_quality_result_ix_pk;
ALTER TABLE ods.hsg_chat_quality_question DROP CONSTRAINT hsg_chat_question_ix_pk;
ALTER TABLE ods.hsg_chat_quality_result DROP CONSTRAINT hsg_chat_quality_result_ix_pk;
ALTER TABLE ods.hsg_control_doc_findings DROP CONSTRAINT hsg_control_doc_finding_ix_pk;
ALTER TABLE ods.hsg_control_doc_line DROP CONSTRAINT hsg_control_doc_line_ix_pk;
ALTER TABLE ods.hsg_control_document DROP CONSTRAINT hsg_control_document_ix_pk;
ALTER TABLE ods.hsg_control_documents DROP CONSTRAINT hsg_control_documents_ix_pk;
ALTER TABLE ods.hsg_dealer_fee_analysis DROP CONSTRAINT hsg_dealer_fee_analysis_ix_pk;
ALTER TABLE ods.hsg_project_document DROP CONSTRAINT hsg_project_document_ix_pk;
ALTER TABLE ods.hsg_workflow_task DROP CONSTRAINT hsg_workflow_task_ix_pk;
ALTER TABLE ods.invoice DROP CONSTRAINT invoice_ix_pk;
ALTER TABLE ods.ipm_firm_profiles DROP CONSTRAINT ipm_firm_profiles_ix_pk;
ALTER TABLE ods.ipm_manager_analysis DROP CONSTRAINT ipm_manager_analysis_ix_pk;
ALTER TABLE ods.ipm_manager_updates DROP CONSTRAINT ipm_manager_updates_ix_pk;
ALTER TABLE ods.ipm_meetings DROP CONSTRAINT ipm_meetings_ix_pk;
ALTER TABLE ods.market_timing DROP CONSTRAINT market_timing_ix_pk;
ALTER TABLE ods.pmo_tasks DROP CONSTRAINT pmo_tasks_ix_pk;
ALTER TABLE ods.product_line DROP CONSTRAINT product_line_ix_pk;
ALTER TABLE ods.projects DROP CONSTRAINT projects_ix_pk;
ALTER TABLE ods.spl_hsg_change_control DROP CONSTRAINT spl_hsg_change_control_ix_pk;
ALTER TABLE ods.spl_hsg_change_control_old DROP CONSTRAINT spl_hsg_change_cntl_ix_pk;
ALTER TABLE ods.spl_hsg_complaints DROP CONSTRAINT spl_hsg_complaints_ix_pk;
ALTER TABLE ods.spl_hsg_daily_tasks_maint DROP CONSTRAINT spl_hsg_daily_tasks_maint_pk;
ALTER TABLE ods.spl_hsg_issue_list DROP CONSTRAINT spl_hsg_issue_list_ix_pk;
ALTER TABLE ods.vendor DROP CONSTRAINT vendor_ix_pk;
ALTER TABLE ods.hsg_call_quality_program DROP CONSTRAINT hsg_call_quality_program_ix_ak;
ALTER TABLE ods.hsg_project_document DROP CONSTRAINT hsg_project_document_ix_ak1;
ALTER TABLE ods.hsg_workflow_task DROP CONSTRAINT hsg_workflow_task_ix_ak1;