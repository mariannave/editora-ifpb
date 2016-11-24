{**
 * lib/pkp/templates/common/header.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site header.
 *}
<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{translate|assign:"pageTitleTranslated" key=$pageTitle}{/if}
{include file="core:common/headerHead.tpl"}
<body>
	<div class="page-container">

		<!-- header -->
		<div id="barra-brasil" style="background:#7F7F7F; height: 20px; padding:0 0 0 10px;display:block;">
			<ul id="menu-barra-temp" style="list-style:none;">
				<li style="display:inline; float:left;padding-right:10px; margin-right:10px; border-right:1px solid #EDEDED"><a href="http://brasil.gov.br" style="font-family:sans,sans-serif; text-decoration:none; color:white;">Portal do Governo Brasileiro</a></li>
				<li><a style="font-family:sans,sans-serif; text-decoration:none; color:white;" href="http://epwg.governoeletronico.gov.br/barra/atualize.html">Atualize sua Barra de Governo</a></li>
			</ul>
		</div>

   		<header class="page-header portal">
      		<div class="content-container">

      			<!-- barra de acessibilidade -->
		        <div class="accessibility-bar">
		          <ul class="link-list first">
		            <li class="item first"><a href="#conteudo">Ir para o conteúdo <span>1</span></a></li>
		            <li class="item"><a href="#sidebarContainer">Ir para menu <span>2</span></a></li>
		            <li class="item"><a href="#topSearchForm">Ir para busca <span>3</span></a></li>
		            <li class="item"><a href="#page-footer">Ir para rodapé <span>4</span></a></li>
		          </ul>
		        </div>

		        <!-- barra de acesso -->
		        <div class="language-bar">
		          <ul class="link-list mid-8">

		            {if $isUserLoggedIn}
		            	<li class="item"><a style="text-decoration: none;" href="{if $multipleContexts}{url router=$smarty.const.ROUTE_PAGE context="index" page="admin" op="index"}{else}{url router=$smarty.const.ROUTE_PAGE page="admin" op="index"}{/if}">{translate key="navigation.admin"}</a></li>

						<li class="item"><a style="text-decoration: none;" href="{url router=$smarty.const.ROUTE_PAGE page="login" op="signOut"}">Sair</a></li>
						{if $isUserLoggedInAs}
							<li class="item"><a style="text-decoration: none;" href="{url router=$smarty.const.ROUTE_PAGE page="login" op="signOutAsUser"}">{translate key="user.logOutAs"} {$loggedInUsername|escape}</a></li>
						{/if}
					{else}
						<li class="item fleft"><a style="text-decoration: none;" href="{url router=$smarty.const.ROUTE_PAGE page="user" op="register"}">{translate key="navigation.register"}</a></li>

						<li class="item"><a style="text-decoration: none;" href="{url router=$smarty.const.ROUTE_PAGE page="login" op="signIn"}">Acesso</a></li>
					{/if}
		          </ul>
		        </div>

		       <!-- page logo -->
		        <div class="center-content">
		          <div class="header-logo">
		            <span>Portal de</span>
		            <h1 class="page-name"><a style="text-decoration: none;" href="{$baseUrl}">Editora IFPB</a></h1>
		            <span>Instituto Federal da Paraíba</span>
		          </div>
		          <form class="form-search-header" id="topSearchForm" action="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="results"}" method="post">
		            <input class="search-input-header ajusteinputsearch" placeholder="Buscar no catálogo" type="text">
		            <button class="search-button ajustebtnbusca">
                   <span class="glyphicon glyphicon-search" aria-hidden="true">
                </button>
		          </form>
		        </div>

		    <!-- social media -->
		    <div class="media-container">
		        <a href="https://www.youtube.com/user/TVIFPB">
		        	<div class="social youtube" style="background-image: url('{$baseUrl}/templates/images/icons/youtuberepo.png');">
		        	</div>
		        </a>

		         <a href="#">
		          	<div class="social feed" style="background-image: url('{$baseUrl}/templates/images/icons/feedrepo.png');">
		          	</div>
		        </a>

		        <a href="https://twitter.com/ifpboficial">
		        	<div class="social twitter" style="background-image: url('{$baseUrl}/templates/images/icons/twitterrepo.png');">
		        	</div>
		        </a>

		        <a href="https://pt-br.facebook.com/pages/IFPB-Oficial/261855270518349">
		          	<div class="social facebook" style="background-image: url('{$baseUrl}/templates/images/icons/facebookrepo.png');">
		          	</div>
		        </a>

		        </div>
		    </div>

		      <!-- actions-bar login/logout-->
		      <div class="actions-bar">
		        <div class="content-container">
		         		<div class="mid-12">
		         		<ul class="list-menu fright">
			         		<li class="item"><a href="#">Equipe</li>
			         		<li class="item"><a href="#">Missão e Visão</li>
			         		<li class="item"><a href="#">Informações ao usuário</li>
			         		<li class="item"><a href="#">Contato</li>
			         	</ul>
			         	</div>
		        </div>
		      </div>
    	</header> <!-- fim do header -->

    <div class="page-content">
	<div class="content-container">
		{include file="core:common/breadcrumbs.tpl"}
				{url|assign:fetchSidebarUrl router=$smarty.const.ROUTE_COMPONENT component="page.PageHandler" op="sidebar" params=$additionalArgs escape=false}
				{load_url_in_div id="sidebarContainer" url=$fetchSidebarUrl}

	  <!-- Meio -->
       	<main class="main-content" id="conteudo">
