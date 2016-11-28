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
    <!-- Lançamentos -->

    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="newReleases"}">{translate key="navigation.newReleases"}</a></li>
    <!-- Noticias -->
    <li class="item"><a href="#">Notícias</a></li>
  </ul>

  <!-- Catálogo   -->
  <ul class="box">
    <li class="item header"><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">Catálogo</a></li>
    <!-- Categorias -->
    <form class="pkp_form" action="#">
      <div id="browseCategoryContainer">
        <input class="menu-toggle" type="checkbox" id="menu-toggle-1" />
        <label class="item item-toggle" for="menu-toggle-1">{translate key="plugins.block.browse.category"} <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span></label>
        <ul class="menu">
          {iterate from=browseCategories item=browseCategory}
          <li class="item">
            <a href='{url router=$smarty.const.ROUTE_PAGE page="catalog" op="category" path=$browseCategory->getPath()|escape }'>
              {$browseCategory->getLocalizedTitle()|escape}
            </a>
          </li>
          {/iterate}
        </ul>
      </div>
      <!-- Séries  -->
      <div id="browseSeriesContainer">
        <input class="menu-toggle" type="checkbox" id="menu-toggle-2" />
        <label class="item item-toggle" for="menu-toggle-2">{translate key="plugins.block.browse.series"}<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span></label>
        <ul class="menu">
          {iterate from=browseSeries item=browseSeriesItem}
          <li class="item">
            <a href='{url router=$smarty.const.ROUTE_PAGE page="catalog" op="series" path=$browseSeriesItem->getPath()|escape }'>
              {$browseSeriesItem->getLocalizedTitle()|escape}
            </a>
          </li>
          {/iterate}
        </ul>
      </div>
    </form>
  </ul>



  <!-- Usuário -->
  {if $isUserLoggedIn}
  <ul class="box">
    <li class="item header">Usuário</li>
    {if array_intersect(array(ROLE_ID_MANAGER, ROLE_ID_SUB_EDITOR, ROLE_ID_ASSISTANT, ROLE_ID_REVIEWER, ROLE_ID_AUTHOR), $userRoles)}
    <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="dashboard"}">{translate key="navigation.dashboard"}</a></li>
    {/if}
    {if $currentPress}
      {if array_intersect(array(ROLE_ID_MANAGER, ROLE_ID_SUB_EDITOR), $userRoles)}
      <!-- Gerenciamento -->

        <!-- Configurações -->
        {if array_intersect(array(ROLE_ID_MANAGER), $userRoles)}
        <input class="menu-toggle" type="checkbox" id="menu-toggle-4" />
        <label class="item item-toggle" for="menu-toggle-4">{translate key="navigation.settings"}<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span></label>
        <ul class="menu">
          <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="index"}">Todas as configurações</a></li>
          <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="press"}">{translate key="context.context"}</a></li>
          <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="website"}">Website</a></li>
          <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="publication"}">Fluxo de Trabalho</a></li>
          <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="distribution"}">Distribuição</a></li>
          <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="access"}">{translate key="navigation.access"}</a></li>
        </ul>

        <!-- Ferramentas -->
        <input class="menu-toggle" type="checkbox" id="menu-toggle-5" />
        <label class="item item-toggle" for="menu-toggle-5">{translate key="navigation.tools"}<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span></label>
        <ul class="menu">
          <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="manager" op="importexport"}">{translate key="navigation.tools.importExport"}</a></li>
          <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="tools" path="statistics"}">{translate key="navigation.tools.statistics"}</a></li>
        </ul>
        {/if}

        {/if}{* ROLE_ID_MANAGER || ROLE_ID_SUB_EDITOR *}
        {/if}
      </ul>
      {/if}{* $isUserLoggedIn *}

      <!-- Sobre -->
      <ul class="box">
        <li class="item header">Sobre</li>
        <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="contact"}">{translate key="about.contact"}</a></li>
        <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="description"}">{translate key="about.description"}</a></li>
        <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="sponsorship"}">Patrocínio da editora</a></li>
        <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialTeam"}">{translate key="about.editorialTeam"}</a></li>
        <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialPolicies"}">{translate key="about.editorialPolicies"}</a></li>
        <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="submissions"}">{translate key="about.submissions"}</a></li>
      </ul>
