<?php
/**
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize Martignayas for your
 * needs please refer to the Webkul customization guidelines.
 *
 * @author Webkul
 * @copyright  2010-2026 Webkul
 * @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

class AdminErpBookingController extends AdminController
{
    public function __construct()
    {
        $this->bootstrap = true;
        parent::__construct();

        $this->explicit_button_list = array('add', 'view', 'batch', 'delete');
        $this->show_toolbar = true;
        $this->toolbar_btn['new'] = array(
            'short' => $this->l('New'),
            'icon' => 'process-icon-plus',
        );

        $this->button_cache = array();
        $this->lang = new Language((int)Configuration::get('PS_LANG_DEFAULT'));
        $this->fields_list = array(
            'id' => array('title' => $this->l('ID'), 'type' => 'text', 'orderby' => true, 'class' => 'fixed-width-xs'),
            'room_name' => array('title' => $this->l('Room'), 'type' => 'text', 'orderby' => true),
            'guest_name' => array('title' => $this->l('Guest'), 'type' => 'text', 'orderby' => true),
            'check_in' => array('title' => $this->l('Check in'), 'type' => 'date', 'orderby' => true),
            'check_out' => array('title' => $this->l('Check out'), 'type' => 'date', 'orderby' => true),
            'nights' => array('title' => $this->l('Nights'), 'type' => 'text', 'orderby' => true),
            'status' => array('title' => $this->l('Status'), 'type' => 'status', 'orderby' => true),
            'total_paid_tax_excl' => array('title' => $this->l('Total'), 'type' => 'price', 'orderby' => true),
        );

        $this->list_auto_filter = false;
        $this->addRowAction('edit');
        $this->addRowAction('delete');
    }

    public function renderList()
    {
        $this->addJqueryUI('ui.datepicker');
        parent::renderList();
    }

    public function initPageHeaderToolbar()
    {
        parent::initPageHeaderToolbar();
        $this->page_header_toolbar_btn['search'] = array(
            'short' => $this->l('Search'),
            'icon' => 'process-icon-search',
            'href' => '#',
        );
    }

    public function renderView()
    {
        $this->context->smarty->assign(array(
            'page_title' => $this->l('Reservation details'),
        ));
        return parent::renderView();
    }
}
