{**
 * plugins/blocks/languageToggle/block.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site sidebar menu -- language toggle.
 *}
 <ul class="box">
{if $enableLanguageToggle}
<!-- <div class="block" id="sidebarLanguageToggle"> -->
	<span class="item header">{translate key="common.language"}</span>
	<form class="pkp_form" action="#">
		<p>
			<select {if $isPostRequest}disabled="disabled" {/if}class="applyPlugin selectMenu" size="1" name="locale" onchange="location.href={if $languageToggleNoUser}'{$referrerUrl|escape}{if strstr($referrerUrl, '?')}&amp;{else}?{/if}setLocale='+this.options[this.selectedIndex].value{else}('{url|escape:"javascript" router=$smarty.const.ROUTE_PAGE page="user" op="setLocale" path="NEW_LOCALE" source=$smarty.server.REQUEST_URI}'.replace('NEW_LOCALE', this.options[this.selectedIndex].value)){/if}">
				{html_options options=$languageToggleLocales selected=$currentLocale}
			</select>
		</p>
	</form>
<!-- </div> -->
{/if}
</ul>
