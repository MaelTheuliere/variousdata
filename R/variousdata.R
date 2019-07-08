#' sdg indicators
#'
#' A dataset with 73 sdg indicators from the sdg database and gdp per capita from the world bank.
#' Note that the data are only kept for 177 countries and that all the sdg indicators is included for now.
#'
#' @format A data frame with 3676 rows and 77 variables:
#' \describe{
#'   \item{geoareaname}{Country name}
#'   \item{iso_a3}{Country code}
#'   \item{continent}{Continent name}
#'   \item{timeperiod}{Time periode}
#'   \item{ag_fpa_cfpi}{Consumer Food Price Index}
#'   \item{ag_fpa_cfpi}{Consumer Food Price Index}
#'   \item{ag_prd_agvas}{Agriculture value added share of GDP (percent)}
#'   \item{ag_prd_ortind}{Agriculture orientation index for government expenditures}
#'   \item{ag_xpd_agsgb}{Agriculture share of Government Expenditure (percent)}
#'   \item{dc_tof_agrl}{Total official flows (disbursements) for agriculture, by recipient countries (millions of constant 2016 United States dollars)}
#'   \item{dc_tof_hlthl}{Total official development assistance to medical research and basic heath sectors, gross disbursement, by recipient countries (millions of constant 2016 United States dollars)}
#'   \item{dc_tof_hlthnt}{Total official development assistance to medical research and basic heath sectors, net disbursement, by recipient countries (millions of constant 2016 United States dollars)}
#'   \item{er_grf_animkpt}{Number of local breeds kept in the country}
#'   \item{er_grf_animrcnt}{Proportion of local breeds for which sufficient genetic resources are stored for reconstitution (percent)}
#'   \item{er_grf_animrcntn}{Number of local breeds for which sufficient genetic resources are stored for reconstitution}
#'   \item{er_grf_animstor}{Proportion of local breeds with genetic material stored (percent)}
#'   \item{er_grf_animstorn}{Number of local breeds with genetic material stored}
#'   \item{er_grf_plntstor}{Plant breeds for which sufficient genetic resources are stored (number)}
#'   \item{er_nrk_lbred}{Proportion of local breeds classified as known being at risk (percent)}
#'   \item{er_nrk_lbredn}{Local breeds classified as known being at risk (number)}
#'   \item{er_rsk_lbred}{Proportion of local breeds classified as known being not at risk (percent)}
#'   \item{er_rsk_lbredn}{Local breeds classified as known being not at risk (number)}
#'   \item{er_unk_lbred}{Proportion of local breeds classified as being at unknown level of risk of extinction (percent)}
#'   \item{er_unk_lbredn}{Local breeds classified as being at unknown level of risk of extinction (number)}
#'   \item{gdp_per_cap}{GDP per capita, PPP (constant 2011 international $)}
#'   \item{sd_xpd_esed}{Proportion of total government spending on essential services, education (percent)}
#'   \item{sg_dsr_legreg}{Countries with legislative and/or regulatory provisions been made for managing disaster risk (1 = YES; 0 = NO)}
#'   \item{sg_dsr_lgrgsr}{Score of adoption and implementation of national DRR strategies in line with the Sendai Framework}
#'   \item{sg_dsr_siln}{Number of local governments that adopt and implement local DRR strategies in line with national strategies (number)}
#'   \item{sg_dsr_sils}{Proportion of local governments that adopt and implement local disaster risk reduction strategies in line with national disaster risk reduction strategies (percent)}
#'   \item{sg_gov_logv}{Number of local governments (number)}
#'   \item{sh_aap_asmort}{Age-standardized mortality rate attributed to ambient air pollution (deaths per 100,000 population)}
#'   \item{sh_aap_mort}{Crude death rate attributed to ambient air pollution (deaths per 100,000 population)}
#'   \item{sh_acs_dtp3}{Proportion of the target population with access to 3 doses of diphtheria-tetanus-pertussis (DTP3) (percent)}
#'   \item{sh_acs_mcv2}{Proportion of the target population with access to measles-containing-vaccine second-dose (MCV2) (percent)}
#'   \item{sh_acs_pcv3}{Proportion of the target population with access to pneumococcal conjugate 3rd dose (PCV3) (percent)}
#'   \item{sh_acs_unhc}{Universal health coverage (UHC) service coverage index}
#'   \item{sh_hap_asmort}{Age-standardized mortality rate attributed to household air pollution (deaths per 100,000 population)}
#'   \item{sh_hap_mort}{Crude death rate attributed to household air pollution (deaths per 100,000 population)}
#'   \item{sh_ihr_capprd}{Average of 13 International Health Regulations (IHR) core capacities}
#'   \item{sh_sta_airp}{Crude death rate attributed to household and ambient air pollution (deaths per 100,000 population)}
#'   \item{sh_sta_asairp}{Age-standardized mortality rate attributed to household and ambient air pollution (deaths per 100,000 population)}
#'   \item{sh_sta_brtc}{Proportion of births attended by skilled health personnel (percent)}
#'   \item{sh_sta_malr}{Malaria incidence per 1,000 population at risk (per 1,000 population)}
#'   \item{sh_sta_mmr}{Maternal mortality ratio}
#'   \item{sh_sta_traf}{Death rate due to road traffic injuries (per 100,000 population)}
#'   \item{sh_sta_wash}{Mortality rate attributed to unsafe water, unsafe sanitation and lack of hygiene (deaths per 100,000 population)}
#'   \item{sh_tbs_incid}{Tuberculosis incidence (per 100,000 population)}
#'   \item{sh_trp_intvn}{Number of people requiring interventions against neglected tropical diseases (number)}
#'   \item{sh_xpd_earn10}{Proportion of population with large household expenditures on health (greater than 10 percent) as a share of total household expenditure or income (percent)}
#'   \item{sh_xpd_earn25}{Proportion of population with large household expenditures on health (greater than 25 percent) as a share of total household expenditure or income (percent)}
#'   \item{si_cov_lmkt}{[World Bank] Proportion of population covered by labour market programs (percent)}
#'   \item{si_cov_lmktpq}{[World Bank] Poorest quintile covered by labour market programs (percent) }
#'   \item{si_cov_socast}{[World Bank] Proportion of population covered by social assistance programs (percent)}
#'   \item{si_cov_socastpq}{[World Bank] Poorest quintile covered by social assistance programs (percent)}
#'   \item{si_cov_socins}{[World Bank] Proportion of population covered by social insurance programs (percent)}
#'   \item{si_cov_socinspq}{[World Bank] Poorest quintile covered by social insurance programs (percent)}
#'   \item{si_pov_day1}{Proportion of population below international poverty line (percent)}
#'   \item{si_pov_nahc}{Proportion of population living below the national poverty line (percent)}
#'   \item{sn_itk_defc}{Prevalence of undernourishment (percent)}
#'   \item{sn_itk_defcn}{Number of undernourish people (millions)}
#'   \item{vc_dsr_affct}{Number of people affected by disaster (number)}
#'   \item{vc_dsr_agln}{Direct agriculture loss attributed to disasters (millions of current United States dollars)}
#'   \item{vc_dsr_chln}{Direct economic loss to cultural heritage damaged or destroyed attributed to disasters (millions of current United States dollars)}
#'   \item{vc_dsr_ciln}{Direct economic loss resulting from damaged or destroyed critical infrastructure attributed to disasters (millions of current United States dollars)}
#'   \item{vc_dsr_dadn}{Number damaged dwellings attributed to disasters (number)}
#'   \item{vc_dsr_daff}{Number of directly affected persons attributed to disasters per 100,000 population (number)}
#'   \item{vc_dsr_dydn}{Number destroyed dwellings attributed to disasters (number)}
#'   \item{vc_dsr_gdpls}{Direct economic loss attributed to disasters (millions of current United States dollars)}
#'   \item{vc_dsr_holn}{Direct economic loss in the housing sector attributed to disasters (millions of current United States dollars)}
#'   \item{vc_dsr_ijiln}{Number of injured or ill people attributed to disasters (number)}
#'   \item{vc_dsr_lsgp}{Direct economic loss attributed to disasters relative to GDP (percent)}
#'   \item{vc_dsr_miss}{Number of missing persons due to disaster (number)}
#'   \item{vc_dsr_mort}{Number of deaths due to disaster (number)}
#'   \item{vc_dsr_mtmn}{Number of deaths and missing persons attributed to disasters (number)}
#'   \item{vc_dsr_mtmp}{Number of deaths and missing persons attributed to disasters per 100,000 population (number)}
#'   \item{vc_dsr_pdan}{Number of people whose damaged dwellings were attributed to disasters (number)}
#'   \item{vc_dsr_pdln}{Number of people whose livelihoods were disrupted or destroyed, attributed to disasters (number)}
#'   \item{vc_dsr_pdyn}{Number of people whose destroyed dwellings were attributed to disasters (number)}
#' }
#' @source \url{http://unstats.un.org/sdgs/indicators/database}
"sdg_indicators"
