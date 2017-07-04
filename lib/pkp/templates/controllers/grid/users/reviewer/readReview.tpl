{**
 * templates/controllers/grid/users/reviewer/readReview.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Screen to let user read a review.
 *
 *}

<script type="text/javascript">
	$(function() {ldelim}
		// Attach the form handler.
		$('#readReviewForm').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
	{rdelim});
</script>


<form class="pkp_form" id="readReviewForm" method="post" action="{url op="reviewRead"}">
	<input type="hidden" name="reviewAssignmentId" value="{$reviewAssignment->getId()|escape}" />
	<input type="hidden" name="submissionId" value="{$reviewAssignment->getSubmissionId()|escape}" />
	<input type="hidden" name="stageId" value="{$reviewAssignment->getStageId()|escape}" />
	<p>{translate key="editor.review.readConfirmation"}</p>
	<div id="reviewAssignment-{$reviewAssignment->getId()|escape}">
		<h2>{$reviewAssignment->getReviewerFullName()|escape}</h2>
		<span class="pkp_controllers_informationCenter_itemLastEvent">{$reviewAssignment->getDateCompleted()|date_format:$datetimeFormatShort}</span>
		{assign var="contents" value=$reviewerComment->getComments()}

		<br>
		<span>{$contents|nl2br|strip_unsafe_html}</span>
		
		{if $reviewAssignment->getRecommendation()}
			<h3>{translate key="submission.recommendation"}</h3>
			{translate key="editor.article.recommendation"}:
			{$reviewAssignment->getLocalizedRecommendation()}
		{/if}
		{if $reviewAssignment->getCompetingInterests()}
			<h3>{translate key="reviewer.submission.competingInterests"}</h3>
			{$reviewAssignment->getCompetingInterests()|nl2br|strip_unsafe_html}
		{/if}
	</div>
	{fbvFormArea id="readReview"}
		{fbvFormSection}
			{url|assign:reviewAttachmentsGridUrl router=$smarty.const.ROUTE_COMPONENT component="grid.files.attachment.EditorReviewAttachmentsGridHandler" op="fetchGrid" submissionId=$submission->getId() reviewId=$reviewAssignment->getId() stageId=$reviewAssignment->getStageId() escape=false}
			{load_url_in_div id="readReviewAttachmentsGridContainer" url=$reviewAttachmentsGridUrl}
		{/fbvFormSection}
		{fbvFormButtons id="closeButton" hideCancel=false submitText="common.confirm"}
	{/fbvFormArea}
</form>
