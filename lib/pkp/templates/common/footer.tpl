{**
 * templates/common/footer.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site footer.
 *}

<<<<<<< HEAD



</div><!-- pkp_structure_main -->

</div><!-- pkp_structure_content -->

</div><!-- pkp_structure_body -->

<div class="img-associacoes">

  <ul class="pkp_structure_content">
    <li><a href="#"><img src="" alt=""/>PERIODICOS</a></li>
    <li><a href="http://www.abecbrasil.org.br/novo/">
      <img src="{$baseUrl}/img/abec.png" alt="Associação Brasileira de Editores Científicos" />
    </a></li>
    <li><a href="http://www.abeu.org.br/farol/abeu/"><img src="{$baseUrl}/img/abeu.png" alt="ASSOCIAÇÃO BRASILEIRA DAS EDITORAS UNIVERSITÁRIAS" />
    </a></li>
    <li><a href="#"><img src="" alt="" />REPOSITORIO</a></li>
  </ul>
</div>

<div class="pkp_structure_foot">

<div class="pkp_structure_subfoot">
	{if $footerCategories|@count > 0}{* include a section if there are footer link categories defined *}
		<div class="pkp_structure_content">
			{foreach from=$footerCategories item=category name=loop}
				{assign var=links value=$category->getLinks()}
				<div class="unit size1of{$footerCategories|@count} {if $smarty.foreach.loop.last}lastUnit{/if}">
					<h4><a href="{url page="links" op="link" path=$category->getPath()|escape}">{$category->getLocalizedTitle()|strip_unsafe_html}</a></h4>
					<ul>
						{foreach from=$links item=link}
							<li><a href="{$link->getLocalizedUrl()}">{$link->getLocalizedTitle()|strip_unsafe_html}</a></li>
						{/foreach}
						{if $links|@count < $maxLinks}
							{section name=padding start=$links|@count loop=$maxLinks step=1}
								<li class="pkp_helpers_invisible">&nbsp;</li>
							{/section}
						{/if}
					</ul>
				</div>
			{/foreach}
		</div><!-- pkp_structure_content -->
	{/if}
	<div class="pkp_structure_content">
	</div><!-- pkp_structure_content -->
	<div class="pkp_structure_content">
		{if $pageFooter}{$pageFooter}{/if}
		{call_hook name="Templates::Common::Footer::PageFooter"}
	</div><!-- pkp_structure_content -->
</div><!-- pkp_structure_subfoot -->
=======
</main>
</div>
</div>

		<footer class="page-footer" id="page-footer">
	        <div class="content-container">
	          <ul class="footer-box">
	            <li class="title"><h4>Assuntos</h4></li>
	            <li class="item">
	              <a href="http://www.agricultura.gov.br/">Agropecuária</a>
	            </li>
	            <li class="item">
	              <a href="http://www.cultura.gov.br/scdc/">Cidadania</a>
	            </li>
	            <li class="item">
	              <a href="http://www.mct.gov.br/">Ciência e Tecnologia</a>
	            </li>
	            <li class="item">
	              <a href="http://www.mc.gov.br/">Comunicações</a>
	            </li>
	            <li class="item">
	              <a href="http://www.cultura.gov.br/">Cultura</a>
	            </li>
	            <li class="item">
	              <a href="http://www.fazenda.gov.br/">Economia</a>
	            </li>
	            <li class="item">
	              <a href="http://www.mec.gov.br/">Educação</a>
	            </li>
	            <li class="item">
	              <a href="http://www.mme.gov.br/">Energia</a>
	            </li>
	            <li class="item">
	              <a href="http://www.senado.gov.br/noticias/Jornal/emdiscussao/dependencia-quimica/iniciativas-do-governo-no-combate-as-drogas/plano-de-enfrentamento-ao-crack-tem-orcamento-modesto.aspx">Enfrentamento às drogas</a>
	            </li>
	            <li class="item">
	              <a href="http://www.esporte.gov.br/">Esporte</a>
	            </li>
	          </ul>
	          <ul class="footer-box">
	            <li class="title"><h4>Sobre</h4></li>
	            <li class="item"><a href="#">Portal do estudante</a></li>
	            <li class="item"><a href="#">Portal de periódicos</a></li>
	            <li class="item"><a href="#">Portal do servidor</a></li>
	            <li class="item"><a href="#">Portal da TI</a></li>
	            <li class="item"><a href="#">Portal da Transferência</a></li>
	          </ul>
>>>>>>> 26b05d988e418d616c18b0fc6a7ef7d45c84271c

	         <ul class="footer-box">
	            <li class="title"><h4>RSS</h4></li>
	            <li class="item">o que é RSS?</li>
	            <li class="item">Assine o nosso RSS</li>
	          </ul>

	          <ul class="footer-box">
	            <li class="title"><h4>Redes Sociais</h4></li>
	            <li class="item">
	              <a href="">Facebook</a>
	            </li>
	            <li class="item">
	              <a href="">Twitter</a>
	            </li>
	            <li class="item">
	              <a href="">Youtube</a>
	            </li>
	            <li class="item">
	              <a href="">Flickr</a>
	            </li>
	            <li class="item">
	              <ul class="footer-box">
	                <li class="title"><h4>Mapa do site</h4></li>
	              </ul>
	            </li>
	          </ul>
	        </div>
	        <div class="sub-footer">
	          <div class="content-container">
	            <div class="left">
	              <img src="{$baseUrl}/templates/images/acesso-a-informacao.png" alt="">
	            </div>
	            <div class="right">
	              <img src="{$baseUrl}/templates/images/brasil.png" alt="">
	            </div>
	          </div>
	        </div>
	    </footer>

<script defer="defer" src="//barra.brasil.gov.br/barra.js" type="text/javascript"></script>
</body>
</html>
