{**
 * plugins/blocks/information/block.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site sidebar menu -- information links.
 *
 *}
{if !empty($forReaders) || !empty($forAuthors) || !empty($forLibrarians)}
<ul class="box">
    <li class="item header">{translate key="plugins.block.information.link"}</span>

		{if !empty($forReaders)}<li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="information" op="readers"}">{translate key="navigation.infoForReaders"}</a></li>{/if}
		{if !empty($forAuthors)}<li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="information" op="authors"}">{translate key="navigation.infoForAuthors"}</a></li>{/if}
		{if !empty($forLibrarians)}<li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="information" op="librarians"}">{translate key="navigation.infoForLibrarians"}</a></li>{/if}
</ul>
{/if}
