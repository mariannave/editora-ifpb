{**
 * plugins/blocks/browse/block.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site sidebar menu -- "browse" tools.
 *
 *}


<ul class="box">
	<li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="newReleases"}">{translate key="navigation.newReleases"}</a></li>
  <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">Catálogo</a></li>
  <li class="item"><a href="#">Notícias</a></li>
</ul>

<!-- Usuário -->
{if $isUserLoggedIn}
<ul class="box">
  <li class="item header">Usuário</li>
    <li class="item">
      <a href="{url router=$smarty.const.ROUTE_PAGE page="dashboard" op="index"}">Painel de Controle</a>
    </li>
  <li class="item">
    <a href="{url router=$smarty.const.ROUTE_PAGE page="user" op="profile"}">Meu Perfil</a>
  </li>
  <li class="item">
    <a href="{url router=$smarty.const.ROUTE_PAGE page="login" op="signOut"}">Sair</a>
  </li>
</ul>
{/if}

<ul class="box">
  <li class="item header">Sobre</li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="contact"}">{translate key="about.contact"}</a></li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="description"}">{translate key="about.description"}</a></li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="sponsorship"}">{translate key="about.sponsorship"}</a></li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialTeam"}">{translate key="about.editorialTeam"}</a></li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialPolicies"}">{translate key="about.editorialPolicies"}</a></li>
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="submissions"}">{translate key="about.submissions"}</a></li>
</ul>

<ul class="box">
	<li class="item header">{translate key="plugins.block.browse"}</li>

	<form class="pkp_form" action="#">
		<div id="browseCategoryContainer">
			<select class="applyPlugin selectMenu" size="1" name="browseCategory" onchange="location.href=('{url|escape:"javascript" router=$smarty.const.ROUTE_PAGE page="catalog" op="category" path="CATEGORY_PATH"}'.replace('CATEGORY_PATH', this.options[this.selectedIndex].value))">
				<option disabled="disabled"{if !$browseBlockSelectedCategory} selected="selected"{/if}>{translate key="plugins.block.browse.category"}</option>
				{iterate from=browseCategories item=browseCategory}
					<option {if $browseBlockSelectedCategory == $browseCategory->getPath()}selected="selected"{/if} value="{$browseCategory->getPath()|escape}">{if $browseCategory->getParentId()}&nbsp;&nbsp;{/if}{$browseCategory->getLocalizedTitle()|escape}</option>
				{/iterate}
			</select>
		</div>
		<div id="browseSeriesContainer">
			<select class="applyPlugin selectMenu" size="1" name="browseSeries" onchange="location.href=('{url|escape:"javascript" router=$smarty.const.ROUTE_PAGE page="catalog" op="series" path="SERIES_PATH"}'.replace('SERIES_PATH', this.options[this.selectedIndex].value))">
				<option disabled="disabled"{if !$browseBlockSelectedSeries} selected="selected"{/if}>{translate key="plugins.block.browse.series"}</option>
				{iterate from=browseSeries item=browseSeriesItem}
					<option {if $browseBlockSelectedSeries == $browseSeriesItem->getPath()}selected="selected"{/if} value="{$browseSeriesItem->getPath()|escape}">{$browseSeriesItem->getLocalizedTitle()|escape}</option>
				{/iterate}
			</select>
		</div>
	</form>
</ul>
