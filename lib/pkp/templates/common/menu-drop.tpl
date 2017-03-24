        <!-- script menu -->
          <script type="text/javascript">
            $(function() {ldelim}
                $('.btn-drop').click(function() {ldelim} 
                  $('.content-drop').slideToggle("fast");
                {rdelim});
            {rdelim});

            $(function() {ldelim}
                $('.select-drop').click(function() {ldelim} 
                  var t = $(this);
                  var ul = t.find('ul');
                  var sp = t.find('span');
                  if(ul.css('display') == 'none') {ldelim}
                    ul.slideDown("fast");
                    sp.removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
                  {rdelim} else {ldelim}
                    ul.slideUp("fast");
                    sp.removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
                  {rdelim}

                {rdelim});
            {rdelim});
          </script>
          <!-- fim -->

             <!-- dropdown menu -->
              <div class="barra-drop">
                  <button class="btn-drop">
                      <span class="glyphicon glyphicon-list"></span>&nbsp;MENU
                  </button>

                  <div class="content-drop">
                      
                      <div style="height: 10px;"></div>
                      <div class="links-drop">
                          <ul>
                              <li><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="newReleases"}">{translate key="navigation.newReleases"}</a></li>

                              <li class="ult"><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog"}">Catálogo</a></li>
                          </ul>
                      </div>

                      {if $isUserLoggedIn}
                          {if array_intersect(array(ROLE_ID_MANAGER), $userRoles)}
                              <div class="select-drop">
                                 <li>CONFIGURAÇÕES <span class="glyphicon glyphicon-chevron-down" style="float: right; color: #808080;" aria-hidden="true"></span></li>                            
                                  <ul class="subitem-drop">
                                        <li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="index"}">Todas as configurações</a></li>
                                        <li><a href="{url router=$smarty.const.ROUTE_PAGE page="manageCatalog"}">{translate key="navigation.catalog"}</a></li>
                                        <li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="press"}">{translate key="context.context"}</a></li>
                                        <li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="website"}">Website</a></li>
                                        <li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="publication"}">Fluxo de Trabalho</a></li>
                                        <li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="distribution"}">Distribuição</a></li>
                                        <li><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="settings" path="access"}">{translate key="navigation.access"}</a></li>
                                  </ul>
                              </div>

                              <div class="select-drop">
                                 <li>FERRAMENTAS <span class="glyphicon glyphicon-chevron-down" style="float: right; color: #808080;" aria-hidden="true"></span></li>                            
                                  <ul class="subitem-drop">
                                        <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="manager" op="importexport"}">{translate key="navigation.tools.importExport"}</a></li>
                                        <li class="item"><a href="{url router=$smarty.const.ROUTE_PAGE page="management" op="tools" path="statistics"}">{translate key="navigation.tools.statistics"}</a></li>
                                  </ul>
                              </div>
                          {/if}    
                      {/if}

                       <div class="select-drop">
                           <li>INFORMAÇÕES <span class="glyphicon glyphicon-chevron-down" style="float: right; color: #808080;" aria-hidden="true"></span></li>
                            <ul class="subitem-drop">
                                   <li><a href="{url router=$smarty.const.ROUTE_PAGE page="information" op="readers"}">{translate key="navigation.infoForReaders"}</a></li>
                                   <li><a href="{url router=$smarty.const.ROUTE_PAGE page="information" op="authors"}">{translate key="navigation.infoForAuthors"}</a></li>
                                   <li><a href="{url router=$smarty.const.ROUTE_PAGE page="information" op="librarians"}">{translate key="navigation.infoForLibrarians"}</a></li>
                            </ul>
                        </div>

                        <div class="select-drop ulti">
                           <li class="ulti">SOBRE <span class="glyphicon glyphicon-chevron-down" style="float: right; color: #808080;" aria-hidden="true"></span></li>
                            <ul class="subitem-drop">
                                    <li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="contact"}">{translate key="about.contact"}</a></li>
                                    <li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="description"}">{translate key="about.description"}</a></li>
                                    <li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="sponsorship"}">Patrocínio da editora</a></li>
                                    <li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialTeam"}">{translate key="about.editorialTeam"}</a></li>
                                    <li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="editorialPolicies"}">{translate key="about.editorialPolicies"}</a></li>
                                    <li><a href="{url router=$smarty.const.ROUTE_PAGE page="about" op="submissions"}">{translate key="about.submissions"}</a></li>
                            </ul>
                        </div>

                  </div>

                  <div class="clear"> </div>
              </div>
              <!-- fim menu -->