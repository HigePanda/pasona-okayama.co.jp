<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recruiting Information</title>
{literal}
<style type="text/css">
<!--
body {
	background:#fff;
	font:75%/1.5 'メイリオ', 'ＭＳ Ｐゴシック','Hiragino Kaku Gothic Pro','ヒラギノ角ゴ Pro W3','Osaka';
	font-weight:normal;
	font-style:normal;
	color:#000;
	margin: 0;
}

table { font-size:12px; line-height:130%; width:700px; margin:0 auto; border-collapse:collapse; border-spacing:0px; }
table caption { text-align:left; padding-top:15px; width:700px; position: relative; font-size:14px; }
table th { background-color:#ccc; width:75px; white-space:nowrap; font-weight:normal; }
table th, table td { border:1px solid #000; vertical-align:middle; padding:2px 5px; }

input, select { font-size:12px; vertical-align:middle; }
input { width: 250px; }
textarea { width: 100%; font-size:12px; vertical-align:top; }

td.title { font-weight:bold; font-size:16px; text-align:center; letter-spacing:1em; padding-left:1em; }
table td.f_bold { font-weight:bold; }
table caption .right { position: absolute; right:0; }

#operation_menu table th, 
#operation_menu table td { border: none; }

#main_contents table th,
#main_contents table td { border:1px solid #000; }

#header table th, 
#header table td { border: none; }

#footer table th, 
#footer table td { border: none; }

#date { text-align: right; vertical-align: bottom; }
-->
</style>
<script type="text/javascript" src="/common/js/jquery.js"></script>
<script type="text/javascript">
$( function(){
	/* 印刷プレビュー */
	$('#preview').click( function(){
		$('#main_contents input,#main_contents textarea, #header input').each( function(){
			$(this).after( '<span class="del_item">' + $(this).val().replace(/\r\n/g, '\n').replace(/\r/g, '\n').replace(/\n/g, '<br />') + '</span>' );
			$(this).hide();
		});
		$('#edit').show();
		$('#print').show();
		$('#preview').hide();
	});
	$('#print').click( function(){
		window.print();
	});
	$('#edit').click( function(){
		$('.del_item').remove();
		$('#main_contents input,#main_contents textarea, #header input').each( function(){
			$(this).show();
		});
		$('#edit').hide();
		$('#print').hide();
		$('#preview').show();
	});
});
</script>
<style type="text/css">
	@media print{
		#operation_menu { display: none; }
		table th, table td { border:1px solid #000; vertical-align:middle; }
	}
</style>
{/literal}
</head>
<body>
	<center>
		<!-- 帳票操作メニュー -->
		<div id="operation_menu">
			<input type="button" id="preview" name="preview" value="印刷プレビュー" onClick="javascript:void();" style="width: 150px;" />
			<input type="button" id="print" name="print" value="印刷" onClick="javascript:void();" style="width: 80px; display: none;" />
			<input type="button" id="edit" name="edit" value="編集" onClick="javascript:void();" style="width: 80px; display: none;" />
		</div>
		<div id="header">
			<table>
				<tr>
					<td><img src="../img/logo.jpg" border="0"></td>
					<td id="date"><input type="input" value="{$smarty.now|date_format:"%Y年%m月%d日"}" style="width: 150px;" /></td>
				</tr>
				<tr>
					<td colspan="2" class="title"><input type="input" value="求人票({if $arr_get.mode == 1}内示{else}明示{/if})" /></td>
				</tr>
			</table>
		</div>
		<!-- /帳票操作メニュー -->
		<div id="main_contents">
			<table>
				<caption>■企業プロフィール</caption>
				<tr>
					<th>フリガナ</th>
					<td colspan="2" width="255" style="font-size:8pt;">
						<input type="input" value="{if !empty( $t_client["Client.P_Reading"] )}{$t_client["Client.P_Reading"]}{/if}" />
					</td>
					<td colspan="2" rowspan="2" width="310">
						URL<br />
						<input type="input" value="{if !empty( $t_job["Job.P_Url"] )}{$t_job["Job.P_Url"]}{/if}" />
					</td>
				</tr>
				<tr>
					<th>企業名</th>
					<td colspan="2" class="f_bold" width="255">
						<input type="input" value="{if !empty( $t_client["Client.P_Name"] )}{$t_client["Client.P_Name"]}{/if}" />
					</td>
				</tr>
				<tr>
					<th>住所</th>
					<td width="605" colspan="4">
						<table style="border-collapse: collapse; margin:0; width:auto;">
							<tr>
								〒 <input type="input" value="{if !empty( $t_recruiter["Recruiter.P_Zipcode"] )}{$t_recruiter["Recruiter.P_Zipcode"]}{/if}" style="width: 80px;" /> 
								<input type="input" value="{if !empty( $t_recruiter["Recruiter.P_Prefecture"] )}{$t_recruiter["Recruiter.P_Prefecture"]}{/if}" style="width: 60px;" />
								<input type="input" value="{if !empty( $t_recruiter["Recruiter.P_Street"] )}{$t_recruiter["Recruiter.P_Street"]}{/if}" />
							</tr>
						</table>
					</td>
				</tr>
				{if $arr_get.mode == 2}
				<tr>
					<th rowspan="2">採用窓口</th>
					<td width="121" style="font-size:8pt;">部署</td>
					<td width="121" style="font-size:8pt;">役職</td>
					<td colspan="2" width="310" style="font-size:8pt;">採用担当者</td>
				</tr>
				<tr>
					<td width="121">
						<input type="input" value="{if !empty( $t_recruiter["Recruiter.P_Division"] )}{$t_recruiter["Recruiter.P_Division"]}{/if}" style="width: 100px;" />
					</td>
					<td width="121">
						<input type="input" value="{if !empty( $t_recruiter["Recruiter.P_Title"] )}{$t_recruiter["Recruiter.P_Title"]}{/if}" style="width: 100px;" />
					</td>
					<td colspan="2" width="310">
						<input type="input" value="{if !empty( $t_recruiter["Recruiter.P_Name"] )}{$t_recruiter["Recruiter.P_Name"]}{/if}" />
					</td>
				</tr>
				{/if}
				<tr>
					<th>ご連絡先</th>
					<td colspan="2" width="252">
						TEL <input type="input" value="{if !empty( $t_recruiter["Recruiter.P_Telephone"] )}{$t_recruiter["Recruiter.P_Telephone"]}{/if}" style="width: 200px;" />
					</td>
					<td colspan="2" width="310">
						FAX <input type="input" value="{if !empty( $t_recruiter["Recruiter.P_Fax"] )}{$t_recruiter["Recruiter.P_Fax"]}{/if}" style="width: 200px;" />
					</td>
				</tr>
				<tr>
					<th>設立</th>
					<td colspan="2" width="252">
						<input type="input" value="{if !empty( $t_job["Job.P_EstablishmentDateText"] )}{$t_job["Job.P_EstablishmentDateText"]}{/if}" />
					</td>
					<th>資本金</th>
					<td width="252">
						<input type="input" value="{if !empty( $t_job["Job.P_CapitalText"] )}{$t_job["Job.P_CapitalText"]}{/if}" />
					</td>
				</tr>
				<tr>
					<th>従業員数</th>
					<td colspan="2" width="252">
						<input type="input" value="{if !empty( $t_job["Job.P_PayrollsText"] )}{$t_job["Job.P_PayrollsText"]}{/if}" />
					</td>
					<th>売上高</th>
					<td width="252">
						<input type="input" value="{if !empty( $t_job["Job.P_SalesAmountText"] )}{$t_job["Job.P_SalesAmountText"]}{/if}" />
					</td>
				</tr>
				<tr>
					<th>事業内容</th>
					<td colspan="4" width="605" style="font-size:8pt;">
						<textarea rows="5" style="width: 100%;">{if !empty( $t_job["Job.P_IndustrySummary"] )}{$t_job["Job.P_IndustrySummary"]}{/if}</textarea>
					</td>
				</tr>
				{* if $arr_get.mode == 2}
				<tr>
					<th>企業の特徴</th>
					<td colspan="4" width="605" style="font-size:8pt;">
						<textarea rows="5" style="width: 100%;">{if !empty( $t_job["Job.P_CompanyCharacteristics"] )}{$t_job["Job.P_CompanyCharacteristics"]}{/if}</textarea>
					</td>
				</tr>
				<tr>
					<th>社名公開</th>
					<td colspan="2" width="252">
						<input type="text" value="{if $t_job["Job.P_Publish"]["Option.P_Anonymous"]["Option.P_Id"] == 126}実名{else}匿名{/if}" />
					</td>
					<th>サイト公開</th>
					<td width="252">
						<input type="text" value="{if $t_job["Job.P_Phase"]["Option.P_JobOpen"]["Option.P_Id"] == 5}可{else}不可{/if}" />
					</td>
				</tr>
				<tr>
					<th>HPタイトル</th>
					<td colspan="4" width="605">
						<input type="input" value="{$t_job["Job.P_Position"]}" style="width: 100%;" />
					</td>
				</tr>
				{/if *}
			</table>
			<table>
				<caption>
					■勤務条件
					<span class="right">
						JOB ID：{$t_job["Job.P_Id"]}
					</span>
				</caption>
				<tr>
					<th>勤務時間</th>
					<td width="252" colspan="3" style="vertical-align: top;">
						{if !empty( $t_job["Job.P_WokingHours"] )}
							<textarea rows="3">{$t_job["Job.P_WokingHours"]}</textarea>
						{/if}
					</td>
				</tr>
				<tr>
					<th>休日・休暇</th>
					<td colspan="3" width="605">
						<textarea rows="3">{if !empty( $t_job["Job.U_23D293E9CA4B459961B38814460D9B"] )}{$t_job["Job.U_23D293E9CA4B459961B38814460D9B"]}&#13;{/if}{if !empty( $t_job["Job.P_AnnualHoliday"] )} 【年間休日】{$t_job["Job.P_AnnualHoliday"]|number_format}日{/if}</textarea>
					</td>
				</tr>
				{*
				<tr>
					<th>各種手当</th>
					<td colspan="3" width="605">
						<textarea rows="5">{if !empty( $t_job["Job.P_VariousAllowances"] )}{foreach from=$t_job["Job.P_VariousAllowances"] item="various_allowances" key="key" name="loopVariousAllowances"}{$various_allowances["Option.P_Name"]}{if !$smarty.foreach.loopVariousAllowances.last}、{/if}{/foreach}&#13;{/if}{if !empty( $t_job["Job.P_VariousAllowancesMemo"] )}{$t_job["Job.P_VariousAllowancesMemo"]}&#13;{/if}{if !empty( $t_job["Job.P_TransportationCostMemo"] )}{$t_job["Job.P_TransportationCostMemo"]}{/if}</textarea>
					</td>
				</tr>
				*}
				<tr>
					<th>待遇<br />福利厚生</th>
					<td colspan="3" width="605">
						{*
						<textarea rows="5">{if !empty( $t_job["Job.P_Benefit"] )}{foreach from=$t_job["Job.P_Benefit"] item="benefit" key="key" name="loopBenefit"}{$benefit["Option.P_Name"]}{if !$smarty.foreach.loopBenefit.last}、{/if}{/foreach}&#13;{/if}{if !empty( $t_job["Job.P_BenefitMemo"] )}{$t_job["Job.P_BenefitMemo"]}{/if}</textarea><br />
						*}
						<textarea rows="5">{if !empty( $t_job["Job.P_BenefitMemo"] )}{$t_job["Job.P_BenefitMemo"]}{/if}</textarea>
					</td>
				</tr>
				{*
				<tr>
					<th>保険</th>
					<td width="252" style="vertical-align: top;">
						<textarea rows="2">{if !empty( $t_job["Job.P_Insurance"] )}{foreach from=$t_job["Job.P_Insurance"] item="insurance" key="key" name="loopInsurance"}{$insurance["Option.P_Name"]}{if !$smarty.foreach.loopInsurance.last}、{/if}{/foreach}&#13;{/if}{if !empty( $t_job["Job.P_InsuranceMemo"] )}{$t_job["Job.P_InsuranceMemo"]}{/if}</textarea>
					</td>
					<th>住宅</th>
					<td width="252" style="vertical-align: top;">
						<textarea rows="2">{if !empty( $t_job["Job.U_FF38F1D47B771CD0D5B03949F66751"] )}{foreach from=$t_job["Job.U_FF38F1D47B771CD0D5B03949F66751"] item="dormitory" key="key" name="loopDormitory"}{$dormitory["Option.P_Name"]}{if !$smarty.foreach.loopDormitory.last}、{/if}{/foreach}&#13;{/if}{if !empty( $t_job["Job.U_B00F6D3AC7EB56B00568FE35AF3B5C"] )}{$t_job["Job.U_B00F6D3AC7EB56B00568FE35AF3B5C"]}{/if}</textarea>
					</td>
				</tr>
				*}
				<tr>
					<th>賞与</th>
					<td width="252" style="vertical-align: top;">
						賞与：<input type="text" value="{if !empty( $t_job["Job.P_BonusNumber"] )}{$t_job["Job.P_BonusNumber"]|number_format}{/if}" style="width: 50px;" />回
						( <input type="text" value="{if !empty( $t_job["Job.P_BonusNumberLastYear"] )}{$t_job["Job.P_BonusNumberLastYear"]}{/if}" style="width: 50px;" /> )
					</td>
					<th>試用期間</th>
					<td width="252" style="vertical-align: top;">
						<textarea rows="2">{if !empty( $t_job["Job.P_TrialPeriod"] )}{foreach from=$t_job["Job.P_TrialPeriod"] item="trial_period" key="key" name="loopTrialPeriod"}{$trial_period["Option.P_Name"]}{/foreach}{/if}{if !empty( $t_job["Job.P_TrialPeriodMemo"] )} {$t_job["Job.P_TrialPeriodMemo"]}{/if}</textarea>
					</td>
				</tr>
				<tr>
					<th>定年</th>
					<td width="252" style="vertical-align: top;">
						<input type="text" value="{if !empty( $t_job["Job.U_B392405676D67D64CE1500893D9226"] )}{$t_job["Job.U_B392405676D67D64CE1500893D9226"]}{/if}" />
					</td>
					<th>再雇用</th>
					<td width="252" style="vertical-align: top;">
						<textarea rows="2">{if !empty( $t_job["Job.U_C18EB3B98AC1C6DB869BEDA6F0FEE6"] )}{foreach from=$t_job["Job.U_C18EB3B98AC1C6DB869BEDA6F0FEE6"] item="re_employment" key="key" name="loopReEmployment"}{$re_employment["Option.P_Name"]}{if !$smarty.foreach.loopReEmployment.last}、{/if}{/foreach}{/if}</textarea>
					</td>
				</tr>
			</table>
			<table>
				<caption>■募集要件</caption>
				<tr>
					<th>職種</th>
					<td class="f_bold" width="252" style="vertical-align: top;">
						<input type="text" value="{if !empty( $t_job["Job.P_Position"] )}{$t_job["Job.P_Position"]}{/if}" />
					</td>
					<th>採用予定</th>
					<td width="252" style="vertical-align: top;">
						<input type="text" value="{if !empty( $t_job["Job.P_HeadCount"] )}{$t_job["Job.P_HeadCount"]}{/if}" />
					</td>
				</tr>
				<tr>
					<th>雇用形態</th>
					<td width="252" style="vertical-align: top;">
						<textarea rows="2">{if !empty( $t_job["Job.P_EmploymentType"] )}{foreach from=$t_job["Job.P_EmploymentType"] item="employment_type" key="key" name="loopEmploymentType"}{$employment_type["Option.P_Name"]}{if !$smarty.foreach.loopEmploymentType.last}、{/if}{/foreach}{/if}</textarea><br />
					</td>
					<th>契約・更新<br />期間</th>
					<td width="252" style="vertical-align: top;">
						<textarea rows="2">
{foreach from=$t_job['Job.U_5D8FA5BF888A36775756286E8CD136'] item="item" key="key" name="loopJobU_5D8FA5BF888A36775756286E8CD136"}
{$item['Option.P_Name']}
{/foreach}
{if $t_job['Job.U_7F113CFE4BDF3F9D601D0140E1721F'] != NULL}{$t_job['Job.U_7F113CFE4BDF3F9D601D0140E1721F']}{/if}
						</textarea>
					</td>
				</tr>
				{if $arr_get.mode == 1}
				<tr>
					<th>給与形態</th>
					<td>
						<input type="text" style="width: 100%;" value="{$t_job["Job.P_PayrollForm"]["Option.P_MonthlySalary"]["Option.P_Name"]|default:$t_job["Job.P_PayrollForm"]["Option.U_011193"]["Option.P_Name"]}" />{if !empty( $t_job["Job.P_PayrollForm"]["Option.P_MonthlySalary"]["Option.P_Name"] ) || !empty( $t_job["Job.P_PayrollForm"]["Option.U_011193"]["Option.P_Name"] )}<br />{/if}
						<textarea rows="2">{if !empty( $t_job["Job.P_PayrollFormMemo"] )}{$t_job["Job.P_PayrollFormMemo"]}{/if}</textarea>
					</td>
					<th>給与条件</th>
					<td>
							年収：<input type="text" style="width: 80px;" value="{if !empty( $t_job["Job.P_MinSalary"] )}{$t_job["Job.P_MinSalary"]|number_format}{/if}万円" /> <input type="text" style="width: 80px;" value="{if !empty( $t_job["Job.P_MaxSalary"] )}{$t_job["Job.P_MaxSalary"]|number_format}{/if}万円" /> <br />
							月給：<input type="text" style="width: 80px;" value="{if !empty( $t_job["Job.P_MinMonthlySalary"] )}{$t_job["Job.P_MinMonthlySalary"]}{/if}万円" /> <input type="text" style="width: 80px;" value="{if !empty( $t_job["Job.P_MaxMonthlySalary"] )}{$t_job["Job.P_MaxMonthlySalary"]}{/if}万円" />
					</td>
				</tr>
				{else}
				<tr>
					<th>給与形態</th>
					<td>
						<input type="text" style="width: 100%;" value="{$t_job["Job.P_PayrollForm"]["Option.P_MonthlySalary"]["Option.P_Name"]|default:$t_job["Job.P_PayrollForm"]["Option.U_011193"]["Option.P_Name"]}" />{if !empty( $t_job["Job.P_PayrollForm"]["Option.P_MonthlySalary"]["Option.P_Name"] ) || !empty( $t_job["Job.P_PayrollForm"]["Option.U_011193"]["Option.P_Name"] )}<br />{/if}
						<textarea rows="2">{if !empty( $t_job["Job.P_PayrollFormMemo"] )}{$t_job["Job.P_PayrollFormMemo"]}{/if}</textarea>
					</td>
					<th>給与条件</th>
					<td>
							年収：<input type="text" style="width: 80px;" value="{if !empty( $t_job["Job.P_MinSalary"] )}{$t_job["Job.P_MinSalary"]|number_format}{/if}万円" /> <input type="text" style="width: 80px;" value="{if !empty( $t_job["Job.P_MaxSalary"] )}{$t_job["Job.P_MaxSalary"]|number_format}{/if}万円" /> <br />
							月給：<input type="text" style="width: 80px;" value="{if !empty( $t_job["Job.P_MinMonthlySalary"] )}{$t_job["Job.P_MinMonthlySalary"]}{/if}万円" /> <input type="text" style="width: 80px;" value="{if !empty( $t_job["Job.P_MaxMonthlySalary"] )}{$t_job["Job.P_MaxMonthlySalary"]}{/if}万円" />
					</td>
				</tr>
				{/if}
				<tr>
					<th>募集背景</th>
					<td colspan="3" width="604">
						<textarea rows="2">{if !empty( $t_job["Job.P_RecruitmentBackground"] )}{$t_job["Job.P_RecruitmentBackground"]}{/if}</textarea>
					</td>
				</tr>
				<tr>
					<th>業務内容</th>
					<td colspan="3" width="604">
						<textarea rows="10">{if !empty( $t_job["Job.P_JobCategorySummary"] )}{$t_job["Job.P_JobCategorySummary"]}{/if}</textarea>
					</td>
				</tr>
			</table>
			<table style="margin-top:-1px;">
				<tr>
					<th rowspan="2">勤務地</th>
					<td rowspan="2" width="252" colspan="2" style="vertical-align: top;">
						<textarea rows="2">{if !empty( $t_job["Job.U_FFAFB6BA498C2AD80A4977ADBF1F4F"] )}{$t_job["Job.U_FFAFB6BA498C2AD80A4977ADBF1F4F"]}{/if}</textarea>
					</td>
					<th>最寄駅</th>
					<td width="252" style="vertical-align: top;">
						<input type="text" value="{if !empty( $t_job["Job.P_NearestStation"] )}{$t_job["Job.P_NearestStation"]}{/if}" />
					</td>
				</tr>
				<tr>
					<th>転勤</th>
					<td width="252" style="vertical-align: top;">
						<textarea rows="2">{if !empty( $t_job["Job.P_Transfer"] )}{foreach from=$t_job["Job.P_Transfer"] item="transfer" key="key" name="loopTransfer"}{$transfer["Option.P_Name"]}{if !$smarty.foreach.loopTransfer.last}、{/if}{/foreach}{/if}</textarea>
					</td>
				</tr>
				<tr>
					<th>配属先</th>
					<td width="121" style="vertical-align: top;">
						部署名：<input type="text" value="{if !empty( $t_job["Job.P_PlacementDivision"] )}{$t_job["Job.P_PlacementDivision"]}{/if}" style="width: 100px;" />
					</td>
					<td width="121" style="vertical-align: top;">
						人数：<input type="text" value="{if !empty( $t_job["Job.P_PlacementNumber"] )}{$t_job["Job.P_PlacementNumber"]}{/if}" style="width: 100px;" />
					</td>
					<th>配属先備考</th>
					<td width="252" style="vertical-align: top;">
						<textarea rows="2">{if !empty( $t_job["Job.P_PlacementMemo"] )}{$t_job["Job.P_PlacementMemo"]}{/if}</textarea>
					</td>
				</tr>
			</table>
			<table style="margin-top:-1px;">
				<tr>
					<th>経験</th>
					<td colspan="3" width="604">
						<textarea rows="2">{if !empty( $t_job["Job.P_Experience"] )}{$t_job["Job.P_Experience"]}&#13;{/if}{if !empty( $t_job["Job.P_Skill"] )}{foreach from=$t_job["Job.P_Skill"] item="skill" key="key" name="loopSkill"}{$skill["Option.P_Name"]}{if !$smarty.foreach.loopSkill.last}、{/if}{/foreach}&#13;{/if}{if !empty( $t_job["Job.P_SkillMemo"] )}{$t_job["Job.P_SkillMemo"]}{/if}</textarea>
					</td>
				</tr>
				<tr>
					<th>資格</th>
					<td colspan="3" width="604">
						<textarea rows="2">{if !empty( $t_job["Job.P_License"] )}{foreach from=$t_job["Job.P_License"] item="licence" key="key" name="loopLicence"}{$licence["Option.P_Name"]}{if !$smarty.foreach.loopLicence.last}、{/if}{/foreach}&#13;{/if}{if !empty( $t_job["Job.P_LicenseMemo"] )}{$t_job["Job.P_LicenseMemo"]}{/if}</textarea><br />
					</td>
				</tr>
				<tr>
					<th>学歴</th>
					<td width="252" style="vertical-align: top;">
						<textarea rows="2">{if !empty( $t_job["Job.U_C55CC38E922A750899ADB822D70B64"] )}{foreach from=$t_job["Job.U_C55CC38E922A750899ADB822D70B64"] item="graduation" key="key" name="loopGraduation"}{$graduation["Option.P_Name"]}{if !$smarty.foreach.loopGraduation.last}、{/if}{/foreach}{/if}</textarea>
					</td>
					<th>語学力</th>
					<td width="252" style="vertical-align: top;">
						<textarea rows="2">{if !empty( $t_job["Job.P_LanguageSkill"] )}{foreach from=$t_job["Job.P_LanguageSkill"] item="language_skill" key="key" name="loopLanguageSkill"}{$language_skill["Option.P_Name"]}{if !$smarty.foreach.loopLanguageSkill.last}、{/if}{/foreach}&#13;{/if}{if !empty( $t_job["Job.P_LanguageSkillMemo"] )}{$t_job["Job.P_LanguageSkillMemo"]}{/if}</textarea>
					</td>
				</tr>
				<tr>
					<th>選考方法</th>
					<td colspan="3" width="604">
						<textarea rows="2">{if !empty( $t_job["Job.P_SelectionProcess"] )}{$t_job["Job.P_SelectionProcess"]}{/if}</textarea>
					</td>
				</tr>
				<tr>
					<th>求める人物像</th>
					<td colspan="3" width="604">
						<textarea rows="2">{if !empty( $t_job["Job.P_ExpectToCandidate"] )}{$t_job["Job.P_ExpectToCandidate"]}{/if}</textarea>
					</td>
				</tr>
			</table>
			<div style="width:700px; margin: 0 auto; font-size: 6px;">
				{if $arr_get.mode == 1}
					<p style="text-align:left;">※求人票（内示）は、予定求人条件の内示であり、職業安定法第5条の3に基づいた「労働条件等の明示」ではありません。</p>
				{else}
					<p style="text-align:left;">※求人票（明示）で明示する労働条件等の内容が労働契約締結時の労働条件等と異なることがあります</p>
				{/if}
			</div>
		</div>
		<div id="footer">
			<table cellspacing="0" cellpadding="2" width="700" style="margin-top: 10px;">
				<tr height="20" bgcolor="#FFFFFF"> 
					<td align="right">
						株式会社パソナ岡山　Tel：0120-88-4518
					</td>
				</tr>
			</table>
		</div>
	</center>
</body>
