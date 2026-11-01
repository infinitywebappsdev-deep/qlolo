<?php
/**
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive the license and cannot obtain it, please send an email
 * to license@prestashop.com.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize this module for your
 * needs, refer to the Webkul customization guidelines.
 *
 * @author Webkul
 * @copyright  2010-2026 Webkul
 * @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

class AdminErpController extends AdminDashboardControllerCore
{
    public function __construct()
    {
        parent::__construct();

        $this->bootstrap = true;
        $this->display = 'erp_dashboard';
        $this->context->smarty->assign(array(
            'erp_dashboard_link' => $this->context->link->getAdminLink('AdminErpDashboard'),
            'erp_booking_link' => $this->context->link->getAdminLink('AdminErpBooking'),
            'erp_roomops_link' => $this->context->link->getAdminLink('AdminErpRoomOps'),
            'erp_staff_link' => $this->context->link->getAdminLink('AdminErpStaff'),
            'erp_accounting_link' => $this->context->link->getAdminLink('AdminErpAccounting'),
            'erp_analytics_link' => $this->context->link->getAdminLink('AdminErpAnalytics'),
        ));

        $this->addCss($this->_path . 'app.css');
        $this->addJs(_PS_JS_DIR_ . 'admin/elements.js');
    }

    public function initPageHeaderToolbar()
    {
        $this->page_header_toolbar_title = $this->l('Hotel ERP');

        parent::initPageHeaderToolbar();

        $this->page_header_toolbar_btn['erp_demo'] = array(
            'desc' => $this->l('Toggle demo data'),
            'icon' => 'process-icon-toggle-' . (Configuration::get('PS_ERP_DEMO') ? 'on' : 'off'),
            'href' => $this->context->link->getAdminLink('AdminErpDemo'),
        );

        array_pop($this->meta_title);
    }

    public function setMedia()
    {
        parent::setMedia();

        $this->context->controller->addJqueryUI('ui.datepicker');
        $this->context->controller->addCss($this->_path . 'app.css');
        $this->context->controller->addJs(_PS_JS_DIR_ . '/admin/elements.js');
    }

    public function initContent()
    {
        parent::initContent();

        $this->context->smarty->assign(array(
            'erp_active' => true,
            'erp_tab' => Tools::getValue('erp_tab', 'overview'),
        ));
    }
}
