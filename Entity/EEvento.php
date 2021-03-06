<?php
/**
 * Class EEvento CLasse utilizzata per realizzare gli Eventi
 */
class EEvento extends EObject
{
    /**
     * @var string Nome dell'evento
     */
    private $nomeEvento;
    /**
     * @var string Categoria Evento
     */
    private $categoria;
    /**
     * @var int flag che serve all'abilitazione delle prenotazioni
     */
    private $flagPrenotazione;
    /**
     * @var ELuogo Luogo in cui si terrà l'evento
     */
    private $luogoEvento;
    /**
     * @var array lista delle fasce orarie dell'evento
     */
    private $listaFasce=array();
    /**
     * @var array lista delle prenotazioni all'evento
     */
    private $listaPrenotazioni=array();
    /**
     * @var string Descrizione dell'evento
     */
    private $testo;

    /**
     * EEvento constructor. Inizializza un oggetto Evento Vuoto
     */
    function __construct()
    {
        parent ::__construct();
    }


     ////////        METODI SET


    /**
     * Metodo per impostare il testo dell'evento
     * @param string $testo
     */
    function setTesto(string $testo){$this->testo=$testo;}

    /**
     * Metodo per impostare la categoria
     * @param string $category
     */
    function setCategoria(string $category){$this->categoria=$category;}

    /**
     * Metodo per impostare il nome dell'evento
     * @param string $nome
     */
    function setNome(string $nome){$this->nomeEvento=$nome;}

    /**
     * Metodo per impostare la possibilità di prenotazione
     * @param bool $flag
     */
   function setFlag(int $flag){
        $this->flagPrenotazione=$flag;
    }

    /**
     * Metodo per impostare il luogo dell'evento
     * @param ELuogo $place
     */
    function setLuogo(ELuogo $place){$this->luogoEvento=$place;}

    /**
     * Metodo per inserire una nuova fascia oraria nell'array
     * @param EFascia $fascia
     */
    function newFascia(EFascia $fascia){array_push($this->listaFasce,$fascia);}

    /**
     * Metodo per inserire una prenotazione nell'array
     * @param EPrenotazione $prenotazione
     */function newPrenotazione(EPrenotazione $prenotazione){array_push($this->listaPrenotazioni,$prenotazione);}


    ////////                                                    METODI GET

    /**
    * Metodo che restituisce il nome dell'evento in formato stringa
    * @return string
    */
    function getNome(): string {return $this->nomeEvento;}

    /**
     * Metodo che restituisce il testo dell'evento
     * @return string
     */
    function getTesto(): string {return $this->testo;}

    /**
     *  Metodo che restituisce la categoria dell'evento
     * @return string
     */

    function getCategoria(): string {return $this->categoria;}

    /**
     * Metodo che restituiscei il valore del flag di prenotazione
     * @return int
     */
    function getFlag():int{return $this->flagPrenotazione;}

    /**
     * Metodo che restituisce il luogo dell'evento
     * @return ELuogo
     */
    function getLuogo():ELuogo{return $this->luogoEvento;}

    /**
     * Metodo che restituisce la data di inizio dell'evento
     * @return DateTime
     */
    function getStartDate():DateTime{
        $fasci=$this->listaFasce;
        $data=($fasci[0])->getData();
        return $data;
    }

    /**
     * Metodo che resstituisce la data di fine dell'evento
     * @return DateTime
     */
    function getEndDate():DateTime{
        $fascia=$this->listaFasce[count($this->listaFasce)-1];
        return $fascia->getData();}

    /**
     * Metodo che restituisce l'array delle fasce orarie
     * @return array
     */
    function getFasce():array{return $this->listaFasce;}

    /**
     * Mmetodo che restituisce l'array delle prenotazioni
     * @return array
     */
    function getPrenotazioni():array{return $this->listaPrenotazioni;}


    /**
     * Metodo utilizzato per il sorting degli eventi per data
     * @param $a
     * @param $b
     * @return int
     */
    function dateSorter(EEvento $a, EEvento $b){
        if ($a->getStartDate()==$b->getStartDate()) return 0;
        return ($a->getStartDate()<$b->getStartDate())?-1:1;
    }

    /**
     * Metodo utilizzato per il sorting degli eventi per luogo
     * @param $a
     * @param $b
     * @return int
     */
    function placeSorter(EEvento $a, EEvento $b){
        if ($a->getLuogo()->getNome()==$b->getLuogo()->getNome()) return 0;
        return ($a->getLuogo()->getNome()<$b->getLuogo()->getNome())?-1:1;
    }
    /**
     * Metodo che controlla se il nome dell'evento inserito è lungo meno di 45  caratteri e ha solo numeri, lettere e spazi
     * @return bool true se le condizioni sono rispettate, false altrimenti
     */
    function validateNome() : bool
    {
        if ($this->nomeEvento && strlen($this->nomeEvento)<=40 && preg_match('/^(\p{L})|([a-zA-Z0-9][a-zA-Z0-9])+$/ui', $this->nomeEvento))
        {
            return true;
        }
        else
            return false;
    }
    /**
     * Metodo che controlla se la descrizione dell'evento inserito è lungo meno di 200  caratteri
     * @return bool true se le condizioni sono rispettate, false altrimenti
     */
    function validateTesto() : bool
    {
        if ($this->testo && strlen($this->testo)<=200)
        {
            return true;
        }
        else
            return false;
    }

    /**
     * Metodo che restituisce l'informazioni dell'evento in forma di stringa
     * @return string
     */


    function __toString()
    {
        $prenotazioni = "";
        $date = "";
        foreach ($this -> getPrenotazioni() as $value) {
            $prenotazioni .= $prenotazioni . " " . $value -> __toString() . "\n";
        }
        foreach ($this -> getFasce() as $value) {

            $date .= " " . date_format($value->getData(),"d/m/Y H:i:s"). "\n";
        }
        return $print = "NOME: " . $this -> getNome() . " | CATEGORIA: " . $this -> getCategoria() . " | DATA DI INIZIO: " .  date_format($this -> getStartDate(),"d/m/Y H:i:s") .
            " | DATA DI FINE: " .date_format($this -> getEndDate(),"d/m/Y H:i:s")  .
            " | FASCE ORARIE: " . $date . " | PRENOTATI: " . $prenotazioni;
    }
}
