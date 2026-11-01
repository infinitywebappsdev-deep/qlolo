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
 * versions in the future. If you wish to customize PrestaShop for your
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

/**
 * Hotel ERP module.
 */

if (!class_exists('Erp', false)) {
    class Erp extends Module
    {
    public function __construct()
    {
        $this->name = 'erp';
        $this->tab = 'administration';
        $this->version = '1.0.0';
        $this->author = 'Webkul';
        $this->need_instance = 0;
        $this->bootstrap = true;
        $this->ps_versions_compliancy = array('min' => '1.6', 'max' => _PS_VERSION_);

        parent::__construct();

        $this->displayName = $this->l('Hotel ERP');
        $this->description = $this->l('Unified hotel_operations, finance and analytics management.');

        $this->confirmUninstall = $this->l('Removing the ERP will hide the Hotel ERP dashboard and its modules. Are you sure?');
    }

    public function install()
    {
        if (!parent::install()) {
            return false;
        }

        $paths = array(
            __DIR__ . '/admin/AdminErpController.php',
            __DIR__ . '/admin/AdminErpBookingController.php',
            __DIR__ . '/admin/AdminErpRoomOpsController.php',
            __DIR__ . '/admin/AdminErpStaffController.php',
            __DIR__ . '/admin/AdminErpAccountingController.php',
            __DIR__ . '/admin/AdminErpAnalyticsController.php',
            __DIR__ . '/admin/AdminErpDemoController.php',
            __DIR__ . '/app.css',
        );

        foreach ($paths as $path) {
            if (!file_exists($path)) {
                return false;
            }
        }

        $this->registerHook('displayAdminErpDashboard');

        return true;
    }

    public function hookDisplayAdminErpDashboard()
    {
        $this->context->controller->setTemplate('erp_dashboard');

        return '';
    }

    public function installTab($class_name, $tab_name, $tab_parent_name = false, $need_tab = true)
    {
        if ($class_name != 'AdminErpController') {
            return parent::installTab($class_name, $tab_name, $tab_parent_name, $need_tab);
        }

        $tab = new Tab();
        $tab->active = 1;
        $tab->class_name = $class_name;
        $tab->name = array();

        foreach (Language::getLanguages(true) as $lang) {
            $tab->name[$lang['id_lang']] = $tab_name;
        }

        if ($tab_parent_name) {
            $tab->id_parent = (int) Tab::getIdFromClassName($tab_parent_name);
        } elseif (!$need_tab) {
            $tab->id_parent = -1;
        } else {
            $tab->id_parent = 0;
        }

        $tab->module = $this->name;

        return $tab->add();
    }
}
