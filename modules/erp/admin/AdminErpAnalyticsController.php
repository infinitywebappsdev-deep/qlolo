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

class AdminErpAnalyticsController extends AdminController
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
            'id' => array('title' => $this->l('ID'), 'type' => 'text', 'orderby' => true, 'class' => 'fixed-width-xs'),
            'type' => array('title' => $this->l('Metric'), 'type' => 'text', 'orderby' => true),
            'value' => array('title' => $this->l('Value'), 'type' => 'text', 'orderby' => true),
            'period' => array('title' => $this->l('Period'), 'type' => 'text', 'orderby' => true),
        );

        $this->list_auto_filter = false;
        $this->addRowAction('edit');
        $this->addRowAction('delete');
    }
}
