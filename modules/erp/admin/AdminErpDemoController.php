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

class AdminErpDemoController extends AdminController
{
    public function __construct()
    {
        $this->bootstrap = true;
        parent::__construct();

        $this->explicit_button_list = array('add', 'view', 'batch', 'delete');
        $this->show_toolbar = true;
        $this->toolbar_btn['new'] = array(
            'short' => $this->l('Refresh demo data'),
            'icon' => 'process-icon-refresh',
        );

        $this->fields_list = array();
    }

    public function initPageHeaderToolbar()
    {
        $this->page_header_toolbar_title = $this->l('Demo data');
        parent::initPageHeaderToolbar();
    }

    public function setMedia()
    {
        parent::setMedia();
        $this->context->controller->addJs(_PS_JS_DIR_.'admin/elements.js');
    }

    public function renderForm()
    {
        return $this->renderList();
    }

    public function renderList()
    {
        $demo = Configuration::get('PS_ERP_DEMO');
        $output = '<div class="erp-demo-refresh">';
        $output .= '<p>'.$this->l('The ERP overview, bookings, housekeeping, staffing, accounting and analytics panels use the following data.').'</p>';
        if ($demo) {
            $output .= '<p class="text-success">'.$this->l('Demo data is currently active.').'</p>';
        } else {
            $output .= '<p class="text-muted">'.($this->l('Real data is active. Connect your POS, payroll and property systems to populate ERP panels.').'</p>');
        }
        $output .= '<button type="button" class="btn btn-default" onclick="refreshErpDemo()">'.$this->l('Refresh demo data').'</button>';
        $output .= '</div>';

        return $output;
    }
}
