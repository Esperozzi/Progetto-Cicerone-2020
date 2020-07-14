<?php

/**
 * Semplice classe che identifica un Admin
 */
class EAdmin extends EUtente
{

    /**
     * @return bool 1 poichè è moderatore
     */
    static function getModeratore() : bool
    {
        return true;
    }

}