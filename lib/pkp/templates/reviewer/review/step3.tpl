{**
 * templates/reviewer/review/step3.tpl
 *
 * Copyright (c) 2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Show the step 3 review page
 *}
<script type="text/javascript">
	$(function() {ldelim}
		// Attach the form handler.
		$('#reviewStep3Form').pkpHandler(
			'$.pkp.controllers.form.reviewer.ReviewerReviewStep3FormHandler'
		);
	{rdelim});
</script>

<form class="pkp_form" id="reviewStep3Form" method="post" action="{url op="saveStep" path=$submission->getId() step="3"}">
	{include file="common/formErrors.tpl"}
{fbvFormArea id="reviewStep3"}
	{fbvFormSection label="common.download" description="reviewer.submission.downloadDescription"}
		{url|assign:reviewFilesGridUrl router=$smarty.const.ROUTE_COMPONENT component="grid.files.review.ReviewerReviewFilesGridHandler" op="fetchGrid" submissionId=$submission->getId() stageId=$reviewAssignment->getStageId() reviewRoundId=$reviewRoundId reviewAssignmentId=$reviewAssignment->getId() escape=false}
		{load_url_in_div id="reviewFiles" url=$reviewFilesGridUrl}
	{/fbvFormSection}

	<br>
	<div id="formAvaliacao">
		<table>
			<thead>
				<td>
					<h3>Formulário de avaliação</h3>
				</td>
				<td class="coladir">
					<!-- <a href="#"><i class="fa fa-plus">&nbsp;</i>Incluir</a> -->
				</td>
			</thead>
		</table>

		<div class="conteudoFormAv">
			<p>Clique para responder o formulário</p>

			<table class="itensFormAv">
				
					<tr>
						<td>
							<a role="button" type="button" style="background-color: #fff;" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Formulário de Avaliação de Livros</a>
						</td>
					</tr>
				
			</table>
		</div>

		  <!-- Modal -->
		  <div class="modal fade" id="myModal" role="dialog">
		    <div class="modal-dialog modal-lg">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title">Formulário de Avaliação de Livros</h4>
		        </div>
		        <div class="modal-body" id="respostasFormAv">
		          	<p><b>1. Avalie a obra segundo sua concordânica ou não com as afirmações listadas na coluna esquerda abaixo.</b></p>

					<p><b>Para cada afirmação qualifique a sua concordância ou discordância segundo a escala nas colunas que varia de "Concordo Totalmente" a "Não Concordo Totalmente".</b></p>

					<div>          
					  <table class="table table-condensed">
					    <thead style="background-color: #fff;">
					      <tr>
					      	<th>&nbsp;</th>
					        <th>Concordo totalmente</th>
					        <th>Concordo parcialmente</th>
					        <th>Não concordo</th>
					        <th>Não se aplica</th>
					      </tr>
					    </thead>
					    <tbody>
					        <tr>
					        	<td name="lb1">O tema é relevante.</td>
					        	<td><input type="radio" name="item1" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item1" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item1" value="Não concordo"></td>
					        	<td><input type="radio" name="item1" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb2">O tema é atual.</td>
					        	<td><input type="radio" name="item2" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item2" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item2" value="Não concordo"></td>
					        	<td><input type="radio" name="item2" value="Não se aplica"></td> 
					        </tr>
					        <tr>
					        	<td name="lb3">A obra comunica pesquisa original.</td>
					        	<td><input type="radio" name="item3" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item3" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item3" value="Não concordo"></td>
					        	<td><input type="radio" name="item3" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb4">A pesquisa é predominantemente qualitativa.</td>
					        	<td><input type="radio" name="item4" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item4" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item4" value="Não concordo"></td>
					        	<td><input type="radio" name="item4" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb5">A pesquisa é predominantemente quantitativa.</td>
					        	<td><input type="radio" name="item5" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item5" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item5" value="Não concordo"></td>
					        	<td><input type="radio" name="item5" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb6">A pesquisa apresenta rigor científico.</td>
					        	<td><input type="radio" name="item6" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item6" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item6" value="Não concordo"></td>
					        	<td><input type="radio" name="item6" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb7">A abordagem do tema é inovadora.</td>
					        	<td><input type="radio" name="item7" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item7" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item7" value="Não concordo"></td>
					        	<td><input type="radio" name="item7" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb8">O título é adequado.</td>
					        	<td><input type="radio" name="item8" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item8" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item8" value="Não concordo"></td>
					        	<td><input type="radio" name="item8" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb9">A escrita é clara e objetiva.</td>
					        	<td><input type="radio" name="item9" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item9" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item9" value="Não concordo"></td>
					        	<td><input type="radio" name="item9" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb10">As ilustrações estão bem preparadas.</td>
					        	<td><input type="radio" name="item10" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item10" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item10" value="Não concordo"></td>
					        	<td><input type="radio" name="item10" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb11">A obra é acessível somente a um público acadêmico especializado.</td>
					        	<td><input type="radio" name="item11" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item11" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item11" value="Não concordo"></td>
					        	<td><input type="radio" name="item11" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb12">A obra é acessível ao público em geral.</td>
					        	<td><input type="radio" name="item12" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item12" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item12" value="Não concordo"></td>
					        	<td><input type="radio" name="item12" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb13">A bibliografia utilizada é representativa dos estudos relevantes sobre o tema.</td>
					        	<td><input type="radio" name="item13" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item13" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item13" value="Não concordo"></td>
					        	<td><input type="radio" name="item13" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb14">A bibliografia utilizada é atual.</td>
					        	<td><input type="radio" name="item14" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item14" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item14" value="Não concordo"></td>
					        	<td><input type="radio" name="item14" value="Não se aplica"></td>
					        </tr>
					    </tbody>
					  </table>
					 </div>

					<div class="radio">
					<p><b name="lb15">2. Existem uma ou mais obras semelhante publicada nos últimos 5 anos?</b></p>
						<label><input style="width: 0px;" type="radio" name="item15" value="Sim">&nbsp;&nbsp;Sim</label>
						<label><input style="width: 0px;" type="radio" name="item15" value="Não">&nbsp;&nbsp;Não</label>
					</div>

					<p><b name="lb16">2.1. Lista de títulos similares</b></p>
						<textarea id="item16" style="width: 320px;"></textarea>
					
					<br>
					<p><b name="lb17">III . Alterações sugeridas  (além das indicadas pontualmente no texto)</b></p>
						<textarea id="item17" style="width: 320px;"></textarea>

					<br>
					<p><b name="lb18">IV. Comente os aspectos positivos. (opcional)</b></p>
						<textarea id="item18" style="width: 320px;"></textarea>

					<br><br>
					<p><b name="lb19">V. Comente os aspectos negativos. (opcional)</b></p>
						<textarea id="item19" style="width: 320px;"></textarea>	

					<br><br>
					<p><b>VI. Em sendo atendidas todas as recomendações:</b></p>
					<table class="table table-condensed">
					    <thead style="background-color: #fff;">
					      <tr>
					      	<th>&nbsp;</th>
					        <th>Concordo totalmente</th>
					        <th>Concordo parcialmente</th>
					        <th>Não concordo</th>
					        <th>Não se aplica</th>
					      </tr>
					    </thead>
					    <tbody>
					        <tr>
					        	<td name="lb20">Altamente recomendável em formato impresso e ebook.</td>
					        	<td><input type="radio" name="item20" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item20" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item20" value="Não concordo"></td>
					        	<td><input type="radio" name="item20" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb21">Altamente recomendável somente em formato ebook.</td>
					        	<td><input type="radio" name="item21" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item21" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item21" value="Não concordo"></td>
					        	<td><input type="radio" name="item21" value="Não se aplica"></td> 
					        </tr>
					        <tr>
					        	<td name="lb22">Recomendável em formato impresso e ebook.</td>
					        	<td><input type="radio" name="item22" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item22" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item22" value="Não concordo"></td>
					        	<td><input type="radio" name="item22" value="Não se aplica"></td>
					        </tr>
					        <tr>
					        	<td name="lb23">Recomendável somente em formato ebook.</td>
					        	<td><input type="radio" name="item23" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item23" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item23" value="Não concordo"></td>
					        	<td><input type="radio" name="item23" value="Não se aplica"></td> 
					        </tr>
					        <tr>
					        	<td name="lb24">Não recomendável.</td>
					        	<td><input type="radio" name="item24" value="Concordo totalmente"></td>
					        	<td><input type="radio" name="item24" value="Concordo parcialmente"></td>
					        	<td><input type="radio" name="item24" value="Não concordo"></td>
					        	<td><input type="radio" name="item24" value="Não se aplica"></td>
					        </tr>
					    </tbody>
					  </table>

					 <br>
					<p><b>VII. Parecerista</b></p>
						<span name="lb25">Indique fato(s) ou evento(s) que possam caracterízar conflito(s) de interesse</span>:<br><input type="text" style="width: 320px;" id="item25tx1"><br>
						<span name="lb26">Nome</span>:<br><input type="text" style="width: 320px;" id="item26tx1"><br>
						<span name="lb27">Data do parecer</span>:<br><input type="date" style="width: 320px;" id="item27tx1"><br>

		        </div>
		        <div class="modal-footer">
		          <button type="button" onclick="respostasForm()" class="btn btn-success" data-dismiss="modal">Concluído</button>
		        </div>
		      </div>
		      
		    </div>
		  </div>

		  {literal}
		  <script type="text/javascript">
			  	
				function respostasForm() {
					console.log("entrou na funcao");
					var texto="Formulário para Avaliação de Livros\n";
			
					console.log("primeiro for");
					//primeiros 15 radio values
					for (var i=1;i<=14;i++) {
						texto += getRadioValue(i, 4);
					}
					console.log("passou primeiro for");

					console.log("primeira chamada");
					texto += getRadioValue(15, 2);//separado pq é radio sim/nao
					//fim primeiros 15 radio values
					console.log("passou primeira chamada");

					console.log("segunda chamada");
					//text area values
					texto += getTextAreaValue(16);
					texto += getTextAreaValue(17);
					console.log("passou segunda chamada");

					console.log("terceira chamada");
					//text area values
					texto += getTextAreaValue(18);
					texto += getTextAreaValue(19);
					console.log("passou terceira chamada");

					console.log("segundo for");
					i=0;
					for (i=20;i<=24;i++) {
						texto += getRadioValue(i, 4);
					}
					//ultimos radio values
					console.log("passou segundo for");

					console.log("quarta chamada");
					texto += getTextValue(25, 1);
					texto += getTextValue(26, 1);
					texto += getTextValue(27, 1);
					//ultimos text values
					console.log("passou quarta chamada");

					//incluindo respostas no textArea #comments
					document.getElementById("comments").innerHTML = "";
					document.getElementById("comments").innerHTML = texto;

				}

				function getLabelValue(num) {

					var pergunta = document.getElementsByName("lb"+num)[0].innerHTML;
						pergunta = tiraPontoFinal(pergunta); 

					return "\n\n"+pergunta+":";
				}

				//funcao
				function getTextAreaValue(num) {
					var lbl;
					var resp="";

					lbl = getLabelValue(num);

					if (document.getElementById("item"+num).value != "") {
						resp += "\n"+document.getElementById("item"+num).value;
					} else {
						return "";
					}

					return lbl+resp;
				}

				//funcao
				function getTextValue(num, rep) {
					var lbl;
					var resp="";
		
					lbl = getLabelValue(num);
					
					for (var i=1;i<=rep;i++) {
						if (document.getElementById("item"+num+"tx"+i).value != "")
							resp += "\n"+document.getElementById("item"+num+"tx"+i).value;
						else
							return "";
					}

					return lbl+resp;
				}

				//funcao
				function getRadioValue(num, rep) {
					var lbl;
					var resp="";

					lbl = getLabelValue(num);
					//alert("teste: "+document.getElementsByName("item1")[1].checked);
					for (var i=0;i<rep;i++) {
						if (document.getElementsByName("item"+num)[i].checked == true) {
							resp = "\n"+document.getElementsByName("item"+num)[i].value;
							break;
						} else {
							continue;
						}
					}

					if (resp != "") {
						return lbl+resp;
					} else {
						return "";
					}

				}

				//funcao
				function tiraPontoFinal(pergunta) {

					if(pergunta.substring(pergunta.length,(pergunta.length - 1)) == '.')
						pergunta = pergunta.substring(0,(pergunta.length - 1));
					else if (pergunta.substring(pergunta.length,(pergunta.length - 1)) == '?')
						pergunta = pergunta.substring(0,(pergunta.length - 1));

					return pergunta;

				}
		  </script>
		  {/literal}

	</div>

	{fbvFormSection label="submission.review" description="reviewer.submission.reviewDescription"}
		{if $viewGuidelinesAction}
			<div id="viewGuidelines" class="pkp_helpers_align_right">
				{include file="linkAction/linkAction.tpl" action=$viewGuidelinesAction contextId="viewGuidelines"}
			</div>
		{/if}
		<textarea id="comments" name="comments"></textarea>
		{* fbvElement type="textarea" id="comments" name="comments" value=$reviewAssignment->getComments()|escape disabled=$reviewIsComplete* }
	{/fbvFormSection}

	{fbvFormSection label="common.upload" description="reviewer.submission.uploadDescription"}
		{url|assign:reviewAttachmentsGridUrl router=$smarty.const.ROUTE_COMPONENT component="grid.files.attachment.ReviewerReviewAttachmentsGridHandler" op="fetchGrid" assocType=$smarty.const.ASSOC_TYPE_REVIEW_ASSIGNMENT assocId=$submission->getReviewId() submissionId=$submission->getId() stageId=$submission->getStageId() reviewIsComplete=$reviewIsComplete escape=false}
		{load_url_in_div id="reviewAttachmentsGridContainer" url=$reviewAttachmentsGridUrl}
	{/fbvFormSection}

	{$additionalFormFields}

	{url|assign:cancelUrl page="reviewer" op="submission" path=$submission->getId() step=2 escape=false}
	{fbvFormButtons submitText="reviewer.submission.submitReview" confirmSubmit="reviewer.confirmSubmit" cancelText="navigation.goBack" cancelUrl=$cancelUrl submitDisabled=$reviewIsComplete}
{/fbvFormArea}
</form>

<p><span class="formRequired">{translate key="common.requiredField"}</span></p>
