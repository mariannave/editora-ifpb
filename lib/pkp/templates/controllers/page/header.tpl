{**
 * templates/controllers/page/header.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site header div contents.
 *}
<script type="text/javascript">
	// Initialise JS handler.
	$(function() {ldelim}
		$('#headerTemplateContainer').pkpHandler(
			'$.pkp.pages.header.HeaderHandler',
			{ldelim}
				requestedPage: '{$requestedPage|escape:"javascript"}',
			{rdelim});
	{rdelim});
</script>
<div class="pkp_structure_content" id="headerTemplateContainer">
	<div class="page-xheader">
		{include file="header/sitenav.tpl"}
		{if $displayPageHeaderTitle && is_array($displayPageHeaderTitle)}
			<div class="logo-container">
				<a href="{$homeUrl}">
					<img src="{$publicFilesDir}/{$displayPageHeaderTitle.uploadName|escape:"url"}"  {if $displayPageHeaderTitleAltText != ''}alt="{$displayPageHeaderTitleAltText|escape}"{else}alt="{translate key="common.pageHeader.altText"}"{/if} />
				</a>
			</div>
		{/if}
		<div class="title-container">
			<a class="home-link" href="{$homeUrl}">
				<h1 class="header-title">Editora IFPB</h1>
			</a>
			<p class="header-subtitle">Instituto Federal de Educação, Ciência e Tecnologia da Paraíba</p>
		</div>
	</div>
</div><!-- pkp_structure_content -->

<div class="header-subbar clearfix">
	<div class="container960">
		<div class="col-xs-12 col-md-6">
			{include file="header/localnav.tpl"}
		</div>
		<div class="col-xs-12 col-md-6">
			<div class="pkp_structure_search">
				<form id="topSearchForm" action="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="results"}" method="post">
					<fieldset>
						<input id="topSearchFormField" name="query" value="{$searchQuery|escape}" type="text" title="{translate key="common.searchCatalog"}..." placeholder="{translate key="common.searchCatalog"}..." />
						<button class="go search-btn"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>