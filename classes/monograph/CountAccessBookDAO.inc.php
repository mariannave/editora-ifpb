<?php

/**
 * @file classes/monograph/CountAccessBookDAO.inc.php
 *
 * @class CountAccessArtDAO
 * @ingroup monograph
 * @see CountAccessArtDAO
 *
 * @brief Operations for retrieving and modifying Article objects.
 */

//
// CREATE TABLE acessosLivro (
//   revistaId int,
//   livroId int,
//   access int,
//   CONSTRAINT pk_JA primary key(revistaId,livroId)
// );

import('classes.monograph.CountAccessBookDAO');

class CountAccessBookDAO extends DAO {



  //Construtor
  function CountAccessBookDAO() {
    parent::DAO();
  }


  function create ($pressId, $publishedMonographId) {
    $acessos = 1;

    $this->update(
      sprintf('INSERT INTO acessosLivro(revistaId, livroId, access ) VALUES (%d, %d, %d)', $pressId, $publishedMonographId, $acessos)
    );

  }


  /**
  * Retorna um inteiro com a quantidade de acessos
  *
  * @return int
  **/
  function getAccessById($pressId, $publishedMonographId){
    $result =& $this->retrieve(
      'SELECT access FROM acessosLivro WHERE revistaId = ? AND livroId = ?', array((int)$pressId, (int)$publishedMonographId)
    );

    if ($result->RecordCount() == 0) {
			$returner = null;
		} else {
			$row = $result->FetchRow();
			$returner = $row['access'];
		}

    $result->Close();
		unset($result);

    return $returner;
  }


  function setUpdateAccess($pressId, $publishedMonographId, $newAccess){
    $this->update(
      'UPDATE acessosLivro SET access = ? WHERE revistaId = ? AND livroId = ?', array((int)$newAccess,(int)$pressId, (int)$publishedMonographId)
    );
  }
}
?>
