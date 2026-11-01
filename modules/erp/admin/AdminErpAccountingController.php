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

class AdminErpAccountingController extends AdminController
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

        $this->fields_list = array(
            'date' => array('title' => $this->l('Date'), 'type' => 'date', 'orderby' => true),
            'reference' => array('title' => $this->l('Reference'), 'type' => 'text', 'orderby' => true),
            'category' => array('title' => $this->l('Category'), 'type' => 'text', 'orderby' => true),
            'vendor' => array('title' => $this->l('Vendor'), 'type' => 'text', 'orderby' => true),
            'amount' => array('title' => $this->l('Amount'), 'type' => 'price', 'orderby' => true),
        );

        $this->list_auto_filter = false;
        $this->addRowAction('edit');
        $this->addRowAction('delete');
    }
}
